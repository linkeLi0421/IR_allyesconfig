; ModuleID = '/llk/IR_all_yes/drivers/thermal/qcom/tsens.c_pt.bc'
source_filename = "../drivers/thermal/qcom/tsens.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tsens_plat_data = type { i32, ptr, ptr, ptr, ptr }
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.tsens_priv = type { ptr, i32, ptr, ptr, i32, %struct.spinlock, [320 x ptr], %struct.tsens_context, ptr, ptr, ptr, ptr, ptr, [0 x %struct.tsens_sensor] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tsens_context = type { i32, i32 }
%struct.tsens_sensor = type { ptr, ptr, i32, i32, i32, i32 }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
%struct.tsens_features = type { i32, i8, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.tsens_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tsens_irq_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@compute_intercept_slope.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qcom_tsens\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"compute_intercept_slope\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/thermal/qcom/tsens.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: sensor%d - data_point1:%#x data_point2:%#x\0A\00", [48 x i8] zeroinitializer }, align 32
@compute_intercept_slope.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: offset:%d\0A\00", [17 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@init_common._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tsens_srot_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.13, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"tsens:765:(&tsens_srot_config)->lock\00", [59 x i8] zeroinitializer }, align 32
@init_common._key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tsens_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.14, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"tsens:783:(&tsens_config)->lock\00", [32 x i8] zeroinitializer }, align 32
@init_common._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 831, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: device not enabled\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"init_common\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@init_common._entry_ptr = internal global ptr @init_common._entry, section ".printk_index", align 4
@init_common.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&priv->ul_lock\00", [17 x i8] zeroinitializer }, align 32
@__initcall__kmod_qcom_tsens__252_1184_tsens_driver_init6 = internal global ptr @tsens_driver_init, section ".initcall6.init", align 4
@tsens_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tsens_probe, ptr @tsens_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.25, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tsens_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tsens_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tsens_driver_exit = internal global ptr @tsens_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file253 = internal constant [48 x i8] c"qcom_tsens.file=drivers/thermal/qcom/qcom_tsens\00", section ".modinfo", align 1
@__UNIQUE_ID_license254 = internal constant [26 x i8] c"qcom_tsens.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description255 = internal constant [54 x i8] c"qcom_tsens.description=QCOM Temperature Sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias256 = internal constant [37 x i8] c"qcom_tsens.alias=platform:qcom-tsens\00", section ".modinfo", align 1
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"srot\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tm\00", [29 x i8] zeroinitializer }, align 32
@tsens_enable_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 586, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: failed to enable interrupts\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tsens_enable_irq\00", [47 x i8] zeroinitializer }, align 32
@tsens_enable_irq._entry_ptr = internal global ptr @tsens_enable_irq._entry, section ".printk_index", align 4
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tsens\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@dbg_version_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dbg_version_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sensors\00", [24 x i8] zeroinitializer }, align 32
@dbg_sensors_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dbg_sensors_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%d.%d.%d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.1.0\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max: %2d\0Anum: %2d\0A\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"      id    slope   offset\0A--------------------------\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%8d %8d %8d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qcom-tsens\00", [21 x i8] zeroinitializer }, align 32
@tsens_table = internal constant { [10 x %struct.of_device_id], [504 x i8] } { [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,ipq8064-tsens\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @data_8960 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,mdm9607-tsens\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @data_9607 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8916-tsens\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @data_8916 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8939-tsens\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @data_8939 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8974-tsens\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @data_8974 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8976-tsens\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @data_8976 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8996-tsens\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @data_8996 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,tsens-v1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @data_tsens_v1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,tsens-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @data_tsens_v2 }, %struct.of_device_id zeroinitializer], [504 x i8] zeroinitializer }, align 32
@tsens_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tsens_suspend, ptr @tsens_resume, ptr @tsens_suspend, ptr @tsens_resume, ptr @tsens_suspend, ptr @tsens_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@data_8960 = external dso_local global %struct.tsens_plat_data, align 4
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"#qcom,sensors\00", [18 x i8] zeroinitializer }, align 32
@tsens_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 1118, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: invalid number of sensors\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tsens_probe\00", [20 x i8] zeroinitializer }, align 32
@tsens_probe._entry_ptr = internal global ptr @tsens_probe._entry, section ".printk_index", align 4
@tsens_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 1147, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: init failed\0A\00", [47 x i8] zeroinitializer }, align 32
@tsens_probe._entry_ptr.31 = internal global ptr @tsens_probe._entry.29, section ".printk_index", align 4
@tsens_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.2, i32 1155, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: calibration failed\0A\00", [40 x i8] zeroinitializer }, align 32
@tsens_probe._entry_ptr.34 = internal global ptr @tsens_probe._entry.32, section ".printk_index", align 4
@tsens_of_ops = internal constant { %struct.thermal_zone_of_device_ops, [44 x i8] } { %struct.thermal_zone_of_device_ops { ptr @tsens_get_temp, ptr @tsens_get_trend, ptr @tsens_set_trips, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uplow\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"critical\00", [23 x i8] zeroinitializer }, align 32
@tsens_set_trips.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 -118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tsens_set_trips\00", [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[%u] %s: proposed thresholds: (%d:%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@tsens_set_trips.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.39, i8 0, i8 -113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%u] %s: (%d:%d)->(%d:%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@tsens_read_irq_state.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 0, i8 88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tsens_read_irq_state\00", [43 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"[%u] %s%s: status(%u|%u|%u) | clr(%u|%u|%u) | mask(%u|%u|%u)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"(V)\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@tsens_read_irq_state.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.44, i8 0, i8 89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[%u] %s%s: thresh: (%d:%d:%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@tsens_set_interrupt.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 0, i8 67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tsens_set_interrupt\00", [44 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%u] %s: %s -> %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"UP\00", [29 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CRITICAL\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LOW\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@degc_to_code.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.53, i8 0, i8 28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"degc_to_code\00", [19 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: raw_code: 0x%llx, degc:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@tsens_register_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 1039, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: failed to get irq\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tsens_register_irq\00", [45 x i8] zeroinitializer }, align 32
@tsens_register_irq._entry_ptr = internal global ptr @tsens_register_irq._entry, section ".printk_index", align 4
@tsens_irq_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 477, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[%u] %s: error reading sensor\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tsens_irq_thread\00", [47 x i8] zeroinitializer }, align 32
@tsens_irq_thread._entry_ptr = internal global ptr @tsens_irq_thread._entry, section ".printk_index", align 4
@tsens_irq_thread.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.58, i8 0, i8 122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%u] %s: re-arm upper\0A\00", [41 x i8] zeroinitializer }, align 32
@tsens_irq_thread.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.59, i8 0, i8 125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[%u] %s: re-arm low\0A\00", [43 x i8] zeroinitializer }, align 32
@tsens_irq_thread.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.60, i8 0, i8 -128, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[%u] %s: TZ update trigger (%d mC)\0A\00", [60 x i8] zeroinitializer }, align 32
@tsens_irq_thread.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.61, i8 0, i8 -127, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%u] %s: no violation:  %d\0A\00", [36 x i8] zeroinitializer }, align 32
@tsens_critical_irq_thread.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.63, i8 0, i8 102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tsens_critical_irq_thread\00", [38 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: watchdog count: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@tsens_critical_irq_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.62, ptr @.str.2, i32 427, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@tsens_critical_irq_thread._entry_ptr = internal global ptr @tsens_critical_irq_thread._entry, section ".printk_index", align 4
@data_9607 = external dso_local global %struct.tsens_plat_data, align 4
@data_8916 = external dso_local global %struct.tsens_plat_data, align 4
@data_8939 = external dso_local global %struct.tsens_plat_data, align 4
@data_8974 = external dso_local global %struct.tsens_plat_data, align 4
@data_8976 = external dso_local global %struct.tsens_plat_data, align 4
@data_8996 = external dso_local global %struct.tsens_plat_data, align 4
@data_tsens_v1 = external dso_local global %struct.tsens_plat_data, align 4
@data_tsens_v2 = external dso_local global %struct.tsens_plat_data, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 85, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 105, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [18 x i8] c"tsens_srot_config\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 734, i32 35 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 764, i32 20 }
@___asan_gen_.89 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [13 x i8] c"tsens_config\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 727, i32 35 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 783, i32 18 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 831, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 914, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [13 x i8] c"tsens_driver\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1175, i32 31 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 735, i32 11 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 728, i32 11 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 585, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 708, i32 24 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 714, i32 24 }
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"dbg_version_fops\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 700, i32 1 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 721, i32 22 }
@___asan_gen_.149 = private unnamed_addr constant [17 x i8] c"dbg_sensors_fops\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 701, i32 1 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 692, i32 17 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 694, i32 15 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 663, i32 16 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 666, i32 14 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 668, i32 17 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1179, i32 11 }
@___asan_gen_.170 = private unnamed_addr constant [12 x i8] c"tsens_table\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 968, i32 34 }
@___asan_gen_.173 = private unnamed_addr constant [13 x i8] c"tsens_pm_ops\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 966, i32 8 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1115, i32 28 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1118, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1147, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1155, i32 5 }
@___asan_gen_.200 = private unnamed_addr constant [13 x i8] c"tsens_of_ops\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1001, i32 48 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1078, i32 33 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1083, i32 34 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 551, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 572, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 350, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 356, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 266, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 114, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1038, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 476, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 489, i32 5 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 500, i32 5 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 512, i32 4 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 517, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 409, i32 5 }
@___asan_gen_.296 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.297 = private constant [32 x i8] c"../drivers/thermal/qcom/tsens.c\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 426, i32 4 }
@llvm.compiler.used = appending global [93 x ptr] [ptr @__UNIQUE_ID_alias256, ptr @__UNIQUE_ID_description255, ptr @__UNIQUE_ID_file253, ptr @__UNIQUE_ID_license254, ptr @__exitcall_tsens_driver_exit, ptr @__initcall__kmod_qcom_tsens__252_1184_tsens_driver_init6, ptr @init_common._entry, ptr @init_common._entry_ptr, ptr @tsens_critical_irq_thread._entry, ptr @tsens_critical_irq_thread._entry_ptr, ptr @tsens_driver_exit, ptr @tsens_enable_irq._entry, ptr @tsens_enable_irq._entry_ptr, ptr @tsens_irq_thread._entry, ptr @tsens_irq_thread._entry_ptr, ptr @tsens_probe._entry, ptr @tsens_probe._entry.29, ptr @tsens_probe._entry.32, ptr @tsens_probe._entry_ptr, ptr @tsens_probe._entry_ptr.31, ptr @tsens_probe._entry_ptr.34, ptr @tsens_register_irq._entry, ptr @tsens_register_irq._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @init_common._key, ptr @tsens_srot_config, ptr @.str.5, ptr @init_common._key.6, ptr @tsens_config, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @init_common.__key, ptr @.str.12, ptr @tsens_driver, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @dbg_version_fops, ptr @.str.19, ptr @dbg_sensors_fops, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @tsens_table, ptr @tsens_pm_ops, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @tsens_of_ops, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63], section "llvm.metadata"
@0 = internal global [78 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_common._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsens_srot_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_common._key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsens_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_common._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_common.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsens_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsens_enable_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_version_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_sensors_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsens_table to i32), i32 1960, i32 2464, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsens_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsens_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsens_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsens_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsens_of_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsens_register_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsens_irq_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsens_critical_irq_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qfprom_read(ptr noundef %dev, ptr noundef %cname) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #6
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !164
  %call = tail call ptr @nvmem_cell_get(ptr noundef %dev, ptr noundef %cname) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = call ptr @nvmem_cell_read(ptr noundef %call, ptr noundef nonnull %data) #6
  call void @nvmem_cell_put(ptr noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #6
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmem_cell_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmem_cell_read(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmem_cell_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @compute_intercept_slope(ptr nocapture noundef %priv, ptr nocapture noundef readonly %p1, ptr nocapture noundef readonly %p2, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_sensors = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %num_sensors to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_sensors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp78.not = icmp eq i32 %1, 0
  br i1 %cmp78.not, label %entry.for.end_crit_edge, label %do.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mode)
  %cmp11 = icmp eq i32 %mode, 3
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %do.body.lr.ph
  %i.079 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %for.inc.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @compute_intercept_slope.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@compute_intercept_slope, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !165

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %arrayidx = getelementptr i32, ptr %p1, i32 %i.079
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %arrayidx3 = getelementptr i32, ptr %p2, i32 %i.079
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @compute_intercept_slope.__UNIQUE_ID_ddebug227, ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %i.079, i32 noundef %5, i32 noundef %7) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %slope = getelementptr %struct.tsens_priv, ptr %priv, i32 0, i32 13, i32 %i.079, i32 4
  %8 = ptrtoint ptr %slope to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %slope, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %if.then6, label %do.end.if.end10_crit_edge

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %slope to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3200, ptr %slope, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %do.end.if.end10_crit_edge
  br i1 %cmp11, label %if.then12, label %if.end10.if.end18_crit_edge

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx13 = getelementptr i32, ptr %p2, i32 %i.079
  %11 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx13, align 4
  %arrayidx14 = getelementptr i32, ptr %p1, i32 %i.079
  %13 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx14, align 4
  %sub = sub i32 %12, %14
  %mul = mul i32 %sub, 1000
  %div = sdiv i32 %mul, 90
  %15 = ptrtoint ptr %slope to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div, ptr %slope, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %if.end10.if.end18_crit_edge
  %arrayidx19 = getelementptr i32, ptr %p1, i32 %i.079
  %16 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx19, align 4
  %mul20 = mul i32 %17, 1000
  %18 = ptrtoint ptr %slope to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %slope, align 4
  %mul24.neg = mul i32 %19, -30
  %sub25 = add i32 %mul24.neg, %mul20
  %offset = getelementptr %struct.tsens_priv, ptr %priv, i32 0, i32 13, i32 %i.079, i32 2
  %20 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub25, ptr %offset, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @compute_intercept_slope.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@compute_intercept_slope, %if.then40)) #6
          to label %for.inc [label %if.then40], !srcloc !165

if.then40:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv, align 4
  %23 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @compute_intercept_slope.__UNIQUE_ID_ddebug228, ptr noundef %22, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %24) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then40, %if.end18
  %inc = add nuw i32 %i.079, 1
  %25 = ptrtoint ptr %num_sensors to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_sensors, align 4
  %cmp = icmp ult i32 %inc, %26
  br i1 %cmp, label %for.inc.do.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_temp_tsens_valid(ptr nocapture noundef readonly %s, ptr nocapture noundef writeonly %temp) local_unnamed_addr #0 align 64 {
entry:
  %temp.i = alloca i32, align 4
  %valid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s, align 4
  %hw_id2 = getelementptr inbounds %struct.tsens_sensor, ptr %s, i32 0, i32 3
  %2 = ptrtoint ptr %hw_id2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw_id2, align 4
  %add = add i32 %3, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %valid) #6
  %4 = ptrtoint ptr %valid to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %valid, align 4, !annotation !164
  %feat.i = getelementptr inbounds %struct.tsens_priv, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %feat.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %feat.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %entry.get_temp_crit_edge, label %if.end

entry.get_temp_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_temp

if.end:                                           ; preds = %entry
  %add3 = add i32 %3, 25
  %call4 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call4, 20000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 616) #6
  %arrayidx = getelementptr %struct.tsens_priv, ptr %1, i32 0, i32 6, i32 %add3
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %call1574 = call i32 @regmap_field_read(ptr noundef %10, ptr noundef nonnull %valid) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1574)
  %tobool.not75 = icmp eq i32 %call1574, 0
  br i1 %tobool.not75, label %if.end.lor.lhs.false_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then29.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge
  %11 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool16.not = icmp eq i32 %12, 0
  br i1 %tobool16.not, label %land.lhs.true, label %lor.lhs.false.get_temp_crit_edge

lor.lhs.false.get_temp_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_temp

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call20 = call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call20, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call20, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then29

if.then29:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #6
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %call15 = call i32 @regmap_field_read(ptr noundef %14, ptr noundef nonnull %valid) #6
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.then29.lor.lhs.false_crit_edge, label %if.then29.cleanup_crit_edge

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then29.lor.lhs.false_crit_edge:                ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %call26 = call i32 @regmap_field_read(ptr noundef %16, ptr noundef nonnull %valid) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool32.not = icmp eq i32 %call26, 0
  br i1 %tobool32.not, label %lor.rhs, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.rhs:                                          ; preds = %for.end
  %17 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load i32, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool33.not = icmp eq i32 %.pr, 0
  br i1 %tobool33.not, label %lor.rhs.cleanup_crit_edge, label %lor.rhs.get_temp_crit_edge

lor.rhs.get_temp_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_temp

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

get_temp:                                         ; preds = %lor.rhs.get_temp_crit_edge, %lor.lhs.false.get_temp_crit_edge, %entry.get_temp_crit_edge
  %18 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i) #6
  %20 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %temp.i, align 4
  %fields.i = getelementptr inbounds %struct.tsens_priv, ptr %19, i32 0, i32 9
  %21 = ptrtoint ptr %fields.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fields.i, align 4
  %msb.i = getelementptr %struct.reg_field, ptr %22, i32 9, i32 2
  %23 = ptrtoint ptr %msb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %msb.i, align 4
  %lsb.i = getelementptr %struct.reg_field, ptr %22, i32 9, i32 1
  %25 = ptrtoint ptr %lsb.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lsb.i, align 4
  %arrayidx4.i = getelementptr %struct.tsens_priv, ptr %19, i32 0, i32 6, i32 %add
  %27 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx4.i, align 4
  %call.i = call i32 @regmap_field_read(ptr noundef %28, ptr noundef nonnull %temp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %get_temp.tsens_hw_to_mC.exit_crit_edge

get_temp.tsens_hw_to_mC.exit_crit_edge:           ; preds = %get_temp
  call void @__sanitizer_cov_trace_pc() #8
  br label %tsens_hw_to_mC.exit

if.end.i:                                         ; preds = %get_temp
  %feat.i59 = getelementptr inbounds %struct.tsens_priv, ptr %19, i32 0, i32 8
  %29 = ptrtoint ptr %feat.i59 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %feat.i59, align 4
  %adc.i = getelementptr inbounds %struct.tsens_features, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %adc.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load.i = load i8, ptr %adc.i, align 4
  %32 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool5.not.i = icmp eq i8 %32, 0
  %33 = ptrtoint ptr %temp.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %temp.i, align 4
  br i1 %tobool5.not.i, label %if.end8.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  %mul.i.i = mul i32 %34, 1000
  %offset.i.i = getelementptr inbounds %struct.tsens_sensor, ptr %s, i32 0, i32 2
  %35 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %offset.i.i, align 4
  %sub.i.i = sub i32 %mul.i.i, %36
  %slope.i.i = getelementptr inbounds %struct.tsens_sensor, ptr %s, i32 0, i32 4
  %37 = ptrtoint ptr %slope.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %slope.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  %div.i.i = sdiv i32 %38, 2
  %add.i.i = add i32 %div.i.i, %sub.i.i
  br label %code_to_degc.exit.i

if.else.i.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp1.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.else.i.i.code_to_degc.exit.i_crit_edge

if.else.i.i.code_to_degc.exit.i_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %code_to_degc.exit.i

if.then2.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %div3.neg.i.i = sdiv i32 %38, -2
  %sub4.i.i = add i32 %div3.neg.i.i, %sub.i.i
  br label %code_to_degc.exit.i

code_to_degc.exit.i:                              ; preds = %if.then2.i.i, %if.else.i.i.code_to_degc.exit.i_crit_edge, %if.then.i.i
  %degc.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %sub4.i.i, %if.then2.i.i ], [ 0, %if.else.i.i.code_to_degc.exit.i_crit_edge ]
  %div7.i.i = sdiv i32 %degc.0.i.i, %38
  %mul.i = mul i32 %div7.i.i, 1000
  br label %tsens_hw_to_mC.exit

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.neg.i = sub i32 31, %24
  %conv.i.i = add i32 %sub.neg.i, %26
  %conv1.i.i = and i32 %conv.i.i, 255
  %shl.i.i = shl i32 %34, %conv1.i.i
  %shr.i.i = ashr i32 %shl.i.i, %conv1.i.i
  %mul10.i = mul i32 %shr.i.i, 100
  br label %tsens_hw_to_mC.exit

tsens_hw_to_mC.exit:                              ; preds = %if.end8.i, %code_to_degc.exit.i, %get_temp.tsens_hw_to_mC.exit_crit_edge
  %retval.0.i60 = phi i32 [ %mul.i, %code_to_degc.exit.i ], [ %mul10.i, %if.end8.i ], [ %call.i, %get_temp.tsens_hw_to_mC.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #6
  %39 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %retval.0.i60, ptr %temp, align 4
  br label %cleanup

cleanup:                                          ; preds = %tsens_hw_to_mC.exit, %lor.rhs.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then29.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %tsens_hw_to_mC.exit ], [ %call1574, %if.end.cleanup_crit_edge ], [ %call26, %for.end.cleanup_crit_edge ], [ -110, %lor.rhs.cleanup_crit_edge ], [ %call15, %if.then29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %valid) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_read(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tsens_hw_to_mC(ptr nocapture noundef readonly %s, i32 noundef %field) unnamed_addr #0 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #6
  %2 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %temp, align 4
  %fields = getelementptr inbounds %struct.tsens_priv, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %fields to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fields, align 4
  %msb = getelementptr %struct.reg_field, ptr %4, i32 9, i32 2
  %5 = ptrtoint ptr %msb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msb, align 4
  %lsb = getelementptr %struct.reg_field, ptr %4, i32 9, i32 1
  %7 = ptrtoint ptr %lsb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lsb, align 4
  %arrayidx4 = getelementptr %struct.tsens_priv, ptr %1, i32 0, i32 6, i32 %field
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx4, align 4
  %call = call i32 @regmap_field_read(ptr noundef %10, ptr noundef nonnull %temp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %feat = getelementptr inbounds %struct.tsens_priv, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %feat, align 4
  %adc = getelementptr inbounds %struct.tsens_features, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %adc to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %adc, align 4
  %14 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool5.not = icmp eq i8 %14, 0
  %15 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %temp, align 4
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  %mul.i = mul i32 %16, 1000
  %offset.i = getelementptr inbounds %struct.tsens_sensor, ptr %s, i32 0, i32 2
  %17 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset.i, align 4
  %sub.i = sub i32 %mul.i, %18
  %slope.i = getelementptr inbounds %struct.tsens_sensor, ptr %s, i32 0, i32 4
  %19 = ptrtoint ptr %slope.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %slope.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %div.i = sdiv i32 %20, 2
  %add.i = add i32 %div.i, %sub.i
  br label %code_to_degc.exit

if.else.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp slt i32 %sub.i, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.else.i.code_to_degc.exit_crit_edge

if.else.i.code_to_degc.exit_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %code_to_degc.exit

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %div3.neg.i = sdiv i32 %20, -2
  %sub4.i = add i32 %div3.neg.i, %sub.i
  br label %code_to_degc.exit

code_to_degc.exit:                                ; preds = %if.then2.i, %if.else.i.code_to_degc.exit_crit_edge, %if.then.i
  %degc.0.i = phi i32 [ %add.i, %if.then.i ], [ %sub4.i, %if.then2.i ], [ 0, %if.else.i.code_to_degc.exit_crit_edge ]
  %div7.i = sdiv i32 %degc.0.i, %20
  %mul = mul i32 %div7.i, 1000
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sub.neg = sub i32 31, %6
  %conv.i = add i32 %sub.neg, %8
  %conv1.i = and i32 %conv.i, 255
  %shl.i = shl i32 %16, %conv1.i
  %shr.i = ashr i32 %shl.i, %conv1.i
  %mul10 = mul i32 %shr.i, 100
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %code_to_degc.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %mul, %code_to_degc.exit ], [ %mul10, %if.end8 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_temp_common(ptr nocapture noundef readonly %s, ptr nocapture noundef writeonly %temp) local_unnamed_addr #0 align 64 {
entry:
  %last_temp = alloca i32, align 4
  %trdy = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s, align 4
  %hw_id2 = getelementptr inbounds %struct.tsens_sensor, ptr %s, i32 0, i32 3
  %2 = ptrtoint ptr %hw_id2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw_id2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last_temp) #6
  %4 = ptrtoint ptr %last_temp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %last_temp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trdy) #6
  %5 = ptrtoint ptr %trdy to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %trdy, align 4, !annotation !164
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %call.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 100
  %spec.select.i.neg32 = select i1 %cmp.i, i32 -1073741822, i32 -1
  %feat.i = getelementptr inbounds %struct.tsens_priv, ptr %1, i32 0, i32 8
  %arrayidx = getelementptr %struct.tsens_priv, ptr %1, i32 0, i32 6, i32 7
  %add.neg = sub i32 %spec.select.i.neg32, %6
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %7 = ptrtoint ptr %feat.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %feat.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then, label %do.body.if.end9_crit_edge

do.body.if.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then:                                          ; preds = %do.body
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %call4 = call i32 @regmap_field_read(ptr noundef %12, ptr noundef nonnull %trdy) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %13 = ptrtoint ptr %trdy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %trdy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool6.not = icmp eq i32 %14, 0
  br i1 %tobool6.not, label %do.cond, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.end9:                                          ; preds = %if.end.if.end9_crit_edge, %do.body.if.end9_crit_edge
  %add11 = add i32 %3, 9
  %arrayidx12 = getelementptr %struct.tsens_priv, ptr %1, i32 0, i32 6, i32 %add11
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx12, align 4
  %call13 = call i32 @regmap_field_read(ptr noundef %16, ptr noundef nonnull %last_temp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %17 = ptrtoint ptr %last_temp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %last_temp, align 4
  %mul.i = mul i32 %18, 1000
  %offset.i = getelementptr inbounds %struct.tsens_sensor, ptr %s, i32 0, i32 2
  %19 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset.i, align 4
  %sub.i = sub i32 %mul.i, %20
  %slope.i = getelementptr inbounds %struct.tsens_sensor, ptr %s, i32 0, i32 4
  %21 = ptrtoint ptr %slope.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %slope.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i31 = icmp sgt i32 %sub.i, 0
  br i1 %cmp.i31, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %div.i = sdiv i32 %22, 2
  %add.i = add i32 %div.i, %sub.i
  br label %code_to_degc.exit

if.else.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp slt i32 %sub.i, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.else.i.code_to_degc.exit_crit_edge

if.else.i.code_to_degc.exit_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %code_to_degc.exit

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %div3.neg.i = sdiv i32 %22, -2
  %sub4.i = add i32 %div3.neg.i, %sub.i
  br label %code_to_degc.exit

code_to_degc.exit:                                ; preds = %if.then2.i, %if.else.i.code_to_degc.exit_crit_edge, %if.then.i
  %degc.0.i = phi i32 [ %add.i, %if.then.i ], [ %sub4.i, %if.then2.i ], [ 0, %if.else.i.code_to_degc.exit_crit_edge ]
  %div7.i = sdiv i32 %degc.0.i, %22
  %mul = mul i32 %div7.i, 1000
  %23 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul, ptr %temp, align 4
  br label %cleanup

do.cond:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %24
  %cmp18 = icmp slt i32 %sub, 0
  br i1 %cmp18, label %do.cond.do.body_crit_edge, label %do.cond.cleanup_crit_edge

do.cond.cleanup_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

cleanup:                                          ; preds = %do.cond.cleanup_crit_edge, %code_to_degc.exit, %if.end9.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %code_to_degc.exit ], [ %call13, %if.end9.cleanup_crit_edge ], [ -110, %do.cond.cleanup_crit_edge ], [ %call4, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trdy) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last_temp) #6
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_common(ptr noundef %priv) local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  %ver_minor = alloca i32, align 4
  %enabled = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ver_minor) #6
  %2 = ptrtoint ptr %ver_minor to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ver_minor, align 4, !annotation !164
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enabled) #6
  %3 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %enabled, align 4, !annotation !164
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_find_device_by_node(ptr noundef %5) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup273_crit_edge, label %if.end

entry.cleanup273_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup273

if.end:                                           ; preds = %entry
  %num_resources = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 6
  %6 = ptrtoint ptr %num_resources to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_resources, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp ugt i32 %7, 1
  %tm_offset = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 4
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %8 = ptrtoint ptr %tm_offset to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %tm_offset, align 4
  %call4 = tail call ptr @platform_get_resource(ptr noundef nonnull %call, i32 noundef 512, i32 noundef 1) #6
  %call5 = tail call ptr @devm_ioremap_resource(ptr noundef %1, ptr noundef %call4) #6
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call5 to i32
  br label %err_put_device

if.end9:                                          ; preds = %if.then3
  %call10 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %1, ptr noundef null, ptr noundef %call5, ptr noundef nonnull @tsens_srot_config, ptr noundef nonnull @init_common._key, ptr noundef nonnull @.str.5) #6
  %srot_map = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 3
  %10 = ptrtoint ptr %srot_map to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call10, ptr %srot_map, align 4
  %cmp.i499 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i499, label %if.then13, label %if.end9.if.end18_crit_edge

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %call10 to i32
  br label %err_put_device

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %tm_offset to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4096, ptr %tm_offset, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end9.if.end18_crit_edge
  %feat.i = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 8
  %13 = ptrtoint ptr %feat.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %feat.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp20.not = icmp eq i32 %16, 0
  br i1 %cmp20.not, label %if.else30, label %if.then21

if.then21:                                        ; preds = %if.end18
  %call22 = tail call ptr @platform_get_resource(ptr noundef nonnull %call, i32 noundef 512, i32 noundef 0) #6
  %call23 = tail call ptr @devm_ioremap_resource(ptr noundef %1, ptr noundef %call22) #6
  %cmp.i500 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i500, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %call23 to i32
  br label %err_put_device

if.end27:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %call29 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %1, ptr noundef null, ptr noundef %call23, ptr noundef nonnull @tsens_config, ptr noundef nonnull @init_common._key.6, ptr noundef nonnull @.str.7) #6
  br label %if.end39.sink.split

if.else30:                                        ; preds = %if.end18
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 4
  %parent32 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %parent32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent32, align 8
  %tobool33.not = icmp eq ptr %21, null
  br i1 %tobool33.not, label %if.else30.if.end39_crit_edge, label %if.then34

if.else30.if.end39_crit_edge:                     ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then34:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #8
  %of_node35 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 27
  %22 = ptrtoint ptr %of_node35 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node35, align 8
  %call36 = tail call ptr @syscon_node_to_regmap(ptr noundef %23) #6
  br label %if.end39.sink.split

if.end39.sink.split:                              ; preds = %if.then34, %if.end27
  %call36.sink = phi ptr [ %call36, %if.then34 ], [ %call29, %if.end27 ]
  %tm_map37 = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 2
  %24 = ptrtoint ptr %tm_map37 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call36.sink, ptr %tm_map37, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.end39.sink.split, %if.else30.if.end39_crit_edge
  %tm_map40 = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 2
  %25 = ptrtoint ptr %tm_map40 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tm_map40, align 4
  %tobool.not.i = icmp eq ptr %26, null
  %cmp.i501 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i501
  br i1 %spec.select.i, label %if.then42, label %if.end50

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %26 to i32
  %spec.select = select i1 %tobool.not.i, i32 -19, i32 %27
  br label %err_put_device

if.end50:                                         ; preds = %if.end39
  %srot_map51 = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 3
  %28 = ptrtoint ptr %srot_map51 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %srot_map51, align 4
  %tobool52.not = icmp eq ptr %29, null
  br i1 %tobool52.not, label %if.then53, label %if.end50.if.end56_crit_edge

if.end50.if.end56_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %srot_map51 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %26, ptr %srot_map51, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.end50.if.end56_crit_edge
  %31 = ptrtoint ptr %feat.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %feat.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp58 = icmp ugt i32 %34, 1
  br i1 %cmp58, label %for.cond.preheader, label %if.end56.if.end78_crit_edge

if.end56.if.end78_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

for.cond.preheader:                               ; preds = %if.end56
  %fields = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 9
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0526, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader
  %i.0526 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.cond.for.body_crit_edge ]
  %35 = ptrtoint ptr %srot_map51 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %srot_map51, align 4
  %37 = ptrtoint ptr %fields to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fields, align 4
  %arrayidx = getelementptr %struct.reg_field, ptr %38, i32 %i.0526
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %.unpack487 = load i32, ptr %arrayidx, align 4
  %40 = insertvalue [5 x i32] undef, i32 %.unpack487, 0
  %.elt488 = getelementptr inbounds [5 x i32], ptr %arrayidx, i32 0, i32 1
  %41 = ptrtoint ptr %.elt488 to i32
  call void @__asan_load4_noabort(i32 %41)
  %.unpack489 = load i32, ptr %.elt488, align 4
  %42 = insertvalue [5 x i32] %40, i32 %.unpack489, 1
  %.elt490 = getelementptr inbounds [5 x i32], ptr %arrayidx, i32 0, i32 2
  %43 = ptrtoint ptr %.elt490 to i32
  call void @__asan_load4_noabort(i32 %43)
  %.unpack491 = load i32, ptr %.elt490, align 4
  %44 = insertvalue [5 x i32] %42, i32 %.unpack491, 2
  %.elt492 = getelementptr inbounds [5 x i32], ptr %arrayidx, i32 0, i32 3
  %45 = ptrtoint ptr %.elt492 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.unpack493 = load i32, ptr %.elt492, align 4
  %46 = insertvalue [5 x i32] %44, i32 %.unpack493, 3
  %.elt494 = getelementptr inbounds [5 x i32], ptr %arrayidx, i32 0, i32 4
  %47 = ptrtoint ptr %.elt494 to i32
  call void @__asan_load4_noabort(i32 %47)
  %.unpack495 = load i32, ptr %.elt494, align 4
  %48 = insertvalue [5 x i32] %46, i32 %.unpack495, 4
  %call62 = tail call ptr @devm_regmap_field_alloc(ptr noundef %1, ptr noundef %36, [5 x i32] %48) #6
  %arrayidx63 = getelementptr %struct.tsens_priv, ptr %priv, i32 0, i32 6, i32 %i.0526
  %49 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call62, ptr %arrayidx63, align 4
  %cmp.i503 = icmp ugt ptr %call62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i503, label %if.then67, label %for.cond

if.then67:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %call62 to i32
  br label %err_put_device

for.end:                                          ; preds = %for.cond
  %arrayidx73 = getelementptr %struct.tsens_priv, ptr %priv, i32 0, i32 6, i32 1
  %51 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx73, align 4
  %call74 = call i32 @regmap_field_read(ptr noundef %52, ptr noundef nonnull %ver_minor) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %for.end.if.end78_crit_edge, label %for.end.err_put_device_crit_edge

for.end.err_put_device_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_put_device

for.end.if.end78_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

if.end78:                                         ; preds = %for.end.if.end78_crit_edge, %if.end56.if.end78_crit_edge
  %53 = ptrtoint ptr %srot_map51 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %srot_map51, align 4
  %fields80 = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 9
  %55 = ptrtoint ptr %fields80 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fields80, align 4
  %arrayidx81 = getelementptr %struct.reg_field, ptr %56, i32 3
  %57 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %57)
  %.unpack = load i32, ptr %arrayidx81, align 4
  %58 = insertvalue [5 x i32] undef, i32 %.unpack, 0
  %.elt416 = getelementptr %struct.reg_field, ptr %56, i32 3, i32 1
  %59 = ptrtoint ptr %.elt416 to i32
  call void @__asan_load4_noabort(i32 %59)
  %.unpack417 = load i32, ptr %.elt416, align 4
  %60 = insertvalue [5 x i32] %58, i32 %.unpack417, 1
  %.elt418 = getelementptr %struct.reg_field, ptr %56, i32 3, i32 2
  %61 = ptrtoint ptr %.elt418 to i32
  call void @__asan_load4_noabort(i32 %61)
  %.unpack419 = load i32, ptr %.elt418, align 4
  %62 = insertvalue [5 x i32] %60, i32 %.unpack419, 2
  %.elt420 = getelementptr %struct.reg_field, ptr %56, i32 3, i32 3
  %63 = ptrtoint ptr %.elt420 to i32
  call void @__asan_load4_noabort(i32 %63)
  %.unpack421 = load i32, ptr %.elt420, align 4
  %64 = insertvalue [5 x i32] %62, i32 %.unpack421, 3
  %.elt422 = getelementptr %struct.reg_field, ptr %56, i32 3, i32 4
  %65 = ptrtoint ptr %.elt422 to i32
  call void @__asan_load4_noabort(i32 %65)
  %.unpack423 = load i32, ptr %.elt422, align 4
  %66 = insertvalue [5 x i32] %64, i32 %.unpack423, 4
  %call82 = call ptr @devm_regmap_field_alloc(ptr noundef %1, ptr noundef %54, [5 x i32] %66) #6
  %arrayidx84 = getelementptr %struct.tsens_priv, ptr %priv, i32 0, i32 6, i32 3
  %67 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call82, ptr %arrayidx84, align 4
  %cmp.i504 = icmp ugt ptr %call82, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i504, label %if.then88, label %if.end92

if.then88:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %call82 to i32
  br label %err_put_device

if.end92:                                         ; preds = %if.end78
  %69 = ptrtoint ptr %feat.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %feat.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp94 = icmp eq i32 %72, 0
  br i1 %cmp94, label %if.then95, label %if.end92.if.end99_crit_edge

if.end92.if.end99_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end99

if.then95:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 @regmap_field_update_bits_base(ptr noundef %call82, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end99

if.end99:                                         ; preds = %if.then95, %if.end92.if.end99_crit_edge
  %73 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx84, align 4
  %call102 = call i32 @regmap_field_read(ptr noundef %74, ptr noundef nonnull %enabled) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end105, label %if.end99.err_put_device_crit_edge

if.end99.err_put_device_crit_edge:                ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_put_device

if.end105:                                        ; preds = %if.end99
  %75 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool106.not = icmp eq i32 %76, 0
  br i1 %tobool106.not, label %do.end, label %if.end108

do.end:                                           ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #9
  br label %err_put_device

if.end108:                                        ; preds = %if.end105
  %77 = ptrtoint ptr %srot_map51 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %srot_map51, align 4
  %79 = ptrtoint ptr %fields80 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %fields80, align 4
  %arrayidx111 = getelementptr %struct.reg_field, ptr %80, i32 5
  %81 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %81)
  %.unpack424 = load i32, ptr %arrayidx111, align 4
  %82 = insertvalue [5 x i32] undef, i32 %.unpack424, 0
  %.elt425 = getelementptr %struct.reg_field, ptr %80, i32 5, i32 1
  %83 = ptrtoint ptr %.elt425 to i32
  call void @__asan_load4_noabort(i32 %83)
  %.unpack426 = load i32, ptr %.elt425, align 4
  %84 = insertvalue [5 x i32] %82, i32 %.unpack426, 1
  %.elt427 = getelementptr %struct.reg_field, ptr %80, i32 5, i32 2
  %85 = ptrtoint ptr %.elt427 to i32
  call void @__asan_load4_noabort(i32 %85)
  %.unpack428 = load i32, ptr %.elt427, align 4
  %86 = insertvalue [5 x i32] %84, i32 %.unpack428, 2
  %.elt429 = getelementptr %struct.reg_field, ptr %80, i32 5, i32 3
  %87 = ptrtoint ptr %.elt429 to i32
  call void @__asan_load4_noabort(i32 %87)
  %.unpack430 = load i32, ptr %.elt429, align 4
  %88 = insertvalue [5 x i32] %86, i32 %.unpack430, 3
  %.elt431 = getelementptr %struct.reg_field, ptr %80, i32 5, i32 4
  %89 = ptrtoint ptr %.elt431 to i32
  call void @__asan_load4_noabort(i32 %89)
  %.unpack432 = load i32, ptr %.elt431, align 4
  %90 = insertvalue [5 x i32] %88, i32 %.unpack432, 4
  %call112 = call ptr @devm_regmap_field_alloc(ptr noundef %1, ptr noundef %78, [5 x i32] %90) #6
  %arrayidx114 = getelementptr %struct.tsens_priv, ptr %priv, i32 0, i32 6, i32 5
  %91 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call112, ptr %arrayidx114, align 4
  %cmp.i506 = icmp ugt ptr %call112, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i506, label %if.then118, label %if.end122

if.then118:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #8
  %92 = ptrtoint ptr %call112 to i32
  br label %err_put_device

if.end122:                                        ; preds = %if.end108
  %93 = ptrtoint ptr %tm_map40 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %tm_map40, align 4
  %95 = ptrtoint ptr %fields80 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %fields80, align 4
  %arrayidx125 = getelementptr %struct.reg_field, ptr %96, i32 8
  %97 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %97)
  %.unpack433 = load i32, ptr %arrayidx125, align 4
  %98 = insertvalue [5 x i32] undef, i32 %.unpack433, 0
  %.elt434 = getelementptr %struct.reg_field, ptr %96, i32 8, i32 1
  %99 = ptrtoint ptr %.elt434 to i32
  call void @__asan_load4_noabort(i32 %99)
  %.unpack435 = load i32, ptr %.elt434, align 4
  %100 = insertvalue [5 x i32] %98, i32 %.unpack435, 1
  %.elt436 = getelementptr %struct.reg_field, ptr %96, i32 8, i32 2
  %101 = ptrtoint ptr %.elt436 to i32
  call void @__asan_load4_noabort(i32 %101)
  %.unpack437 = load i32, ptr %.elt436, align 4
  %102 = insertvalue [5 x i32] %100, i32 %.unpack437, 2
  %.elt438 = getelementptr %struct.reg_field, ptr %96, i32 8, i32 3
  %103 = ptrtoint ptr %.elt438 to i32
  call void @__asan_load4_noabort(i32 %103)
  %.unpack439 = load i32, ptr %.elt438, align 4
  %104 = insertvalue [5 x i32] %102, i32 %.unpack439, 3
  %.elt440 = getelementptr %struct.reg_field, ptr %96, i32 8, i32 4
  %105 = ptrtoint ptr %.elt440 to i32
  call void @__asan_load4_noabort(i32 %105)
  %.unpack441 = load i32, ptr %.elt440, align 4
  %106 = insertvalue [5 x i32] %104, i32 %.unpack441, 4
  %call126 = call ptr @devm_regmap_field_alloc(ptr noundef %1, ptr noundef %94, [5 x i32] %106) #6
  %arrayidx128 = getelementptr %struct.tsens_priv, ptr %priv, i32 0, i32 6, i32 8
  %107 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call126, ptr %arrayidx128, align 4
  %cmp.i507 = icmp ugt ptr %call126, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i507, label %if.then132, label %if.end136

if.then132:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #8
  %108 = ptrtoint ptr %call126 to i32
  br label %err_put_device

if.end136:                                        ; preds = %if.end122
  %109 = ptrtoint ptr %srot_map51 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %srot_map51, align 4
  %111 = ptrtoint ptr %fields80 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %fields80, align 4
  %arrayidx139 = getelementptr %struct.reg_field, ptr %112, i32 4
  %113 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load4_noabort(i32 %113)
  %.unpack442 = load i32, ptr %arrayidx139, align 4
  %114 = insertvalue [5 x i32] undef, i32 %.unpack442, 0
  %.elt443 = getelementptr %struct.reg_field, ptr %112, i32 4, i32 1
  %115 = ptrtoint ptr %.elt443 to i32
  call void @__asan_load4_noabort(i32 %115)
  %.unpack444 = load i32, ptr %.elt443, align 4
  %116 = insertvalue [5 x i32] %114, i32 %.unpack444, 1
  %.elt445 = getelementptr %struct.reg_field, ptr %112, i32 4, i32 2
  %117 = ptrtoint ptr %.elt445 to i32
  call void @__asan_load4_noabort(i32 %117)
  %.unpack446 = load i32, ptr %.elt445, align 4
  %118 = insertvalue [5 x i32] %116, i32 %.unpack446, 2
  %.elt447 = getelementptr %struct.reg_field, ptr %112, i32 4, i32 3
  %119 = ptrtoint ptr %.elt447 to i32
  call void @__asan_load4_noabort(i32 %119)
  %.unpack448 = load i32, ptr %.elt447, align 4
  %120 = insertvalue [5 x i32] %118, i32 %.unpack448, 3
  %.elt449 = getelementptr %struct.reg_field, ptr %112, i32 4, i32 4
  %121 = ptrtoint ptr %.elt449 to i32
  call void @__asan_load4_noabort(i32 %121)
  %.unpack450 = load i32, ptr %.elt449, align 4
  %122 = insertvalue [5 x i32] %120, i32 %.unpack450, 4
  %call140 = call ptr @devm_regmap_field_alloc(ptr noundef %1, ptr noundef %110, [5 x i32] %122) #6
  %arrayidx142 = getelementptr %struct.tsens_priv, ptr %priv, i32 0, i32 6, i32 4
  %123 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call140, ptr %arrayidx142, align 4
  %cmp.i508 = icmp ugt ptr %call140, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i508, label %if.then146, label %if.end150

if.then146:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #8
  %124 = ptrtoint ptr %call140 to i32
  br label %err_put_device

if.end150:                                        ; preds = %if.end136
  %125 = ptrtoint ptr %tm_map40 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %tm_map40, align 4
  %127 = ptrtoint ptr %fields80 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %fields80, align 4
  %arrayidx153 = getelementptr %struct.reg_field, ptr %128, i32 7
  %129 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load4_noabort(i32 %129)
  %.unpack451 = load i32, ptr %arrayidx153, align 4
  %130 = insertvalue [5 x i32] undef, i32 %.unpack451, 0
  %.elt452 = getelementptr %struct.reg_field, ptr %128, i32 7, i32 1
  %131 = ptrtoint ptr %.elt452 to i32
  call void @__asan_load4_noabort(i32 %131)
  %.unpack453 = load i32, ptr %.elt452, align 4
  %132 = insertvalue [5 x i32] %130, i32 %.unpack453, 1
  %.elt454 = getelementptr %struct.reg_field, ptr %128, i32 7, i32 2
  %133 = ptrtoint ptr %.elt454 to i32
  call void @__asan_load4_noabort(i32 %133)
  %.unpack455 = load i32, ptr %.elt454, align 4
  %134 = insertvalue [5 x i32] %132, i32 %.unpack455, 2
  %.elt456 = getelementptr %struct.reg_field, ptr %128, i32 7, i32 3
  %135 = ptrtoint ptr %.elt456 to i32
  call void @__asan_load4_noabort(i32 %135)
  %.unpack457 = load i32, ptr %.elt456, align 4
  %136 = insertvalue [5 x i32] %134, i32 %.unpack457, 3
  %.elt458 = getelementptr %struct.reg_field, ptr %128, i32 7, i32 4
  %137 = ptrtoint ptr %.elt458 to i32
  call void @__asan_load4_noabort(i32 %137)
  %.unpack459 = load i32, ptr %.elt458, align 4
  %138 = insertvalue [5 x i32] %136, i32 %.unpack459, 4
  %call154 = call ptr @devm_regmap_field_alloc(ptr noundef %1, ptr noundef %126, [5 x i32] %138) #6
  %arrayidx156 = getelementptr %struct.tsens_priv, ptr %priv, i32 0, i32 6, i32 7
  %139 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %call154, ptr %arrayidx156, align 4
  %cmp.i509 = icmp ugt ptr %call154, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i509, label %if.then160, label %if.end150.for.cond168.preheader_crit_edge

if.end150.for.cond168.preheader_crit_edge:        ; preds = %if.end150
  br label %for.cond168.preheader

if.then160:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #8
  %140 = ptrtoint ptr %call154 to i32
  br label %err_put_device

for.cond168.preheader:                            ; preds = %for.inc188.for.cond168.preheader_crit_edge, %if.end150.for.cond168.preheader_crit_edge
  %j.0530 = phi i32 [ %add189, %for.inc188.for.cond168.preheader_crit_edge ], [ 9, %if.end150.for.cond168.preheader_crit_edge ]
  %141 = ptrtoint ptr %feat.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %feat.i, align 4
  %max_sensors527 = getelementptr inbounds %struct.tsens_features, ptr %142, i32 0, i32 2
  %143 = ptrtoint ptr %max_sensors527 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %max_sensors527, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %cmp169528.not = icmp eq i32 %144, 0
  br i1 %cmp169528.not, label %for.cond168.preheader.for.inc188_crit_edge, label %for.cond168.preheader.for.body170_crit_edge

for.cond168.preheader.for.body170_crit_edge:      ; preds = %for.cond168.preheader
  br label %for.body170

for.cond168.preheader.for.inc188_crit_edge:       ; preds = %for.cond168.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc188

for.cond168:                                      ; preds = %for.body170
  %inc186 = add nuw i32 %i.1529, 1
  %145 = ptrtoint ptr %feat.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %feat.i, align 4
  %max_sensors = getelementptr inbounds %struct.tsens_features, ptr %146, i32 0, i32 2
  %147 = ptrtoint ptr %max_sensors to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %max_sensors, align 4
  %cmp169 = icmp ult i32 %inc186, %148
  br i1 %cmp169, label %for.cond168.for.body170_crit_edge, label %for.cond168.for.inc188_crit_edge

for.cond168.for.inc188_crit_edge:                 ; preds = %for.cond168
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc188

for.cond168.for.body170_crit_edge:                ; preds = %for.cond168
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body170

for.body170:                                      ; preds = %for.cond168.for.body170_crit_edge, %for.cond168.preheader.for.body170_crit_edge
  %i.1529 = phi i32 [ %inc186, %for.cond168.for.body170_crit_edge ], [ 0, %for.cond168.preheader.for.body170_crit_edge ]
  %add = add i32 %i.1529, %j.0530
  %149 = ptrtoint ptr %tm_map40 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %tm_map40, align 4
  %151 = ptrtoint ptr %fields80 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %fields80, align 4
  %arrayidx173 = getelementptr %struct.reg_field, ptr %152, i32 %add
  %153 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_load4_noabort(i32 %153)
  %.unpack478 = load i32, ptr %arrayidx173, align 4
  %154 = insertvalue [5 x i32] undef, i32 %.unpack478, 0
  %.elt479 = getelementptr inbounds [5 x i32], ptr %arrayidx173, i32 0, i32 1
  %155 = ptrtoint ptr %.elt479 to i32
  call void @__asan_load4_noabort(i32 %155)
  %.unpack480 = load i32, ptr %.elt479, align 4
  %156 = insertvalue [5 x i32] %154, i32 %.unpack480, 1
  %.elt481 = getelementptr inbounds [5 x i32], ptr %arrayidx173, i32 0, i32 2
  %157 = ptrtoint ptr %.elt481 to i32
  call void @__asan_load4_noabort(i32 %157)
  %.unpack482 = load i32, ptr %.elt481, align 4
  %158 = insertvalue [5 x i32] %156, i32 %.unpack482, 2
  %.elt483 = getelementptr inbounds [5 x i32], ptr %arrayidx173, i32 0, i32 3
  %159 = ptrtoint ptr %.elt483 to i32
  call void @__asan_load4_noabort(i32 %159)
  %.unpack484 = load i32, ptr %.elt483, align 4
  %160 = insertvalue [5 x i32] %158, i32 %.unpack484, 3
  %.elt485 = getelementptr inbounds [5 x i32], ptr %arrayidx173, i32 0, i32 4
  %161 = ptrtoint ptr %.elt485 to i32
  call void @__asan_load4_noabort(i32 %161)
  %.unpack486 = load i32, ptr %.elt485, align 4
  %162 = insertvalue [5 x i32] %160, i32 %.unpack486, 4
  %call174 = call ptr @devm_regmap_field_alloc(ptr noundef %1, ptr noundef %150, [5 x i32] %162) #6
  %arrayidx176 = getelementptr %struct.tsens_priv, ptr %priv, i32 0, i32 6, i32 %add
  %163 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %call174, ptr %arrayidx176, align 4
  %cmp.i510 = icmp ugt ptr %call174, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i510, label %cleanup, label %for.cond168

cleanup:                                          ; preds = %for.body170
  call void @__sanitizer_cov_trace_pc() #8
  %164 = ptrtoint ptr %call174 to i32
  br label %err_put_device

for.inc188:                                       ; preds = %for.cond168.for.inc188_crit_edge, %for.cond168.preheader.for.inc188_crit_edge
  %add189 = add nuw nsw i32 %j.0530, 16
  %cmp166 = icmp ult i32 %j.0530, 185
  br i1 %cmp166, label %for.inc188.for.cond168.preheader_crit_edge, label %for.end190

for.inc188.for.cond168.preheader_crit_edge:       ; preds = %for.inc188
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond168.preheader

for.end190:                                       ; preds = %for.inc188
  %165 = ptrtoint ptr %feat.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %feat.i, align 4
  %crit_int = getelementptr inbounds %struct.tsens_features, ptr %166, i32 0, i32 1
  %167 = ptrtoint ptr %crit_int to i32
  call void @__asan_load1_noabort(i32 %167)
  %bf.load = load i8, ptr %crit_int, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool192.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool192.not, label %lor.lhs.false, label %for.end190.for.cond199.preheader.preheader_crit_edge

for.end190.for.cond199.preheader.preheader_crit_edge: ; preds = %for.end190
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond199.preheader.preheader

lor.lhs.false:                                    ; preds = %for.end190
  %168 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %166, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %cmp194 = icmp eq i32 %169, 0
  br i1 %cmp194, label %lor.lhs.false.for.cond199.preheader.preheader_crit_edge, label %lor.lhs.false.if.end229_crit_edge

lor.lhs.false.if.end229_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end229

lor.lhs.false.for.cond199.preheader.preheader_crit_edge: ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond199.preheader.preheader

for.cond199.preheader.preheader:                  ; preds = %lor.lhs.false.for.cond199.preheader.preheader_crit_edge, %for.end190.for.cond199.preheader.preheader_crit_edge
  br label %for.cond199.preheader

for.cond199.preheader:                            ; preds = %for.inc226.for.cond199.preheader_crit_edge, %for.cond199.preheader.preheader
  %j.1535 = phi i32 [ %add227, %for.inc226.for.cond199.preheader_crit_edge ], [ 201, %for.cond199.preheader.preheader ]
  %170 = ptrtoint ptr %feat.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %feat.i, align 4
  %max_sensors201532 = getelementptr inbounds %struct.tsens_features, ptr %171, i32 0, i32 2
  %172 = ptrtoint ptr %max_sensors201532 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %max_sensors201532, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %cmp202533.not = icmp eq i32 %173, 0
  br i1 %cmp202533.not, label %for.cond199.preheader.for.inc226_crit_edge, label %for.cond199.preheader.for.body203_crit_edge

for.cond199.preheader.for.body203_crit_edge:      ; preds = %for.cond199.preheader
  br label %for.body203

for.cond199.preheader.for.inc226_crit_edge:       ; preds = %for.cond199.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc226

for.cond199:                                      ; preds = %for.body203
  %inc224 = add nuw i32 %i.2534, 1
  %174 = ptrtoint ptr %feat.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %feat.i, align 4
  %max_sensors201 = getelementptr inbounds %struct.tsens_features, ptr %175, i32 0, i32 2
  %176 = ptrtoint ptr %max_sensors201 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %max_sensors201, align 4
  %cmp202 = icmp ult i32 %inc224, %177
  br i1 %cmp202, label %for.cond199.for.body203_crit_edge, label %for.cond199.for.inc226_crit_edge

for.cond199.for.inc226_crit_edge:                 ; preds = %for.cond199
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc226

for.cond199.for.body203_crit_edge:                ; preds = %for.cond199
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body203

for.body203:                                      ; preds = %for.cond199.for.body203_crit_edge, %for.cond199.preheader.for.body203_crit_edge
  %i.2534 = phi i32 [ %inc224, %for.cond199.for.body203_crit_edge ], [ 0, %for.cond199.preheader.for.body203_crit_edge ]
  %add205 = add i32 %i.2534, %j.1535
  %178 = ptrtoint ptr %tm_map40 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %tm_map40, align 4
  %180 = ptrtoint ptr %fields80 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %fields80, align 4
  %arrayidx208 = getelementptr %struct.reg_field, ptr %181, i32 %add205
  %182 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_load4_noabort(i32 %182)
  %.unpack469 = load i32, ptr %arrayidx208, align 4
  %183 = insertvalue [5 x i32] undef, i32 %.unpack469, 0
  %.elt470 = getelementptr inbounds [5 x i32], ptr %arrayidx208, i32 0, i32 1
  %184 = ptrtoint ptr %.elt470 to i32
  call void @__asan_load4_noabort(i32 %184)
  %.unpack471 = load i32, ptr %.elt470, align 4
  %185 = insertvalue [5 x i32] %183, i32 %.unpack471, 1
  %.elt472 = getelementptr inbounds [5 x i32], ptr %arrayidx208, i32 0, i32 2
  %186 = ptrtoint ptr %.elt472 to i32
  call void @__asan_load4_noabort(i32 %186)
  %.unpack473 = load i32, ptr %.elt472, align 4
  %187 = insertvalue [5 x i32] %185, i32 %.unpack473, 2
  %.elt474 = getelementptr inbounds [5 x i32], ptr %arrayidx208, i32 0, i32 3
  %188 = ptrtoint ptr %.elt474 to i32
  call void @__asan_load4_noabort(i32 %188)
  %.unpack475 = load i32, ptr %.elt474, align 4
  %189 = insertvalue [5 x i32] %187, i32 %.unpack475, 3
  %.elt476 = getelementptr inbounds [5 x i32], ptr %arrayidx208, i32 0, i32 4
  %190 = ptrtoint ptr %.elt476 to i32
  call void @__asan_load4_noabort(i32 %190)
  %.unpack477 = load i32, ptr %.elt476, align 4
  %191 = insertvalue [5 x i32] %189, i32 %.unpack477, 4
  %call209 = call ptr @devm_regmap_field_alloc(ptr noundef %1, ptr noundef %179, [5 x i32] %191) #6
  %arrayidx211 = getelementptr %struct.tsens_priv, ptr %priv, i32 0, i32 6, i32 %add205
  %192 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %call209, ptr %arrayidx211, align 4
  %cmp.i512 = icmp ugt ptr %call209, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i512, label %cleanup220, label %for.cond199

cleanup220:                                       ; preds = %for.body203
  call void @__sanitizer_cov_trace_pc() #8
  %193 = ptrtoint ptr %call209 to i32
  br label %err_put_device

for.inc226:                                       ; preds = %for.cond199.for.inc226_crit_edge, %for.cond199.preheader.for.inc226_crit_edge
  %add227 = add nuw nsw i32 %j.1535, 16
  %cmp197 = icmp ult i32 %j.1535, 265
  br i1 %cmp197, label %for.inc226.for.cond199.preheader_crit_edge, label %for.inc226.if.end229_crit_edge

for.inc226.if.end229_crit_edge:                   ; preds = %for.inc226
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end229

for.inc226.for.cond199.preheader_crit_edge:       ; preds = %for.inc226
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond199.preheader

if.end229:                                        ; preds = %for.inc226.if.end229_crit_edge, %lor.lhs.false.if.end229_crit_edge
  %194 = ptrtoint ptr %feat.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %feat.i, align 4
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %195, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %197)
  %cmp231 = icmp ugt i32 %197, 2
  br i1 %cmp231, label %land.lhs.true, label %if.end229.do.body263_crit_edge

if.end229.do.body263_crit_edge:                   ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body263

land.lhs.true:                                    ; preds = %if.end229
  %198 = ptrtoint ptr %ver_minor to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %ver_minor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %199)
  %cmp232 = icmp ugt i32 %199, 2
  br i1 %cmp232, label %if.then233, label %land.lhs.true.do.body263_crit_edge

land.lhs.true.do.body263_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body263

if.then233:                                       ; preds = %land.lhs.true
  %has_watchdog = getelementptr inbounds %struct.tsens_features, ptr %195, i32 0, i32 1
  %200 = ptrtoint ptr %has_watchdog to i32
  call void @__asan_load1_noabort(i32 %200)
  %bf.load235 = load i8, ptr %has_watchdog, align 4
  %bf.set = or i8 %bf.load235, 16
  store i8 %bf.set, ptr %has_watchdog, align 4
  br label %for.body238

for.cond236:                                      ; preds = %for.body238
  %inc254 = add nuw nsw i32 %i.3537, 1
  %exitcond542.not = icmp eq i32 %inc254, 288
  br i1 %exitcond542.not, label %for.end255, label %for.cond236.for.body238_crit_edge

for.cond236.for.body238_crit_edge:                ; preds = %for.cond236
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body238

for.body238:                                      ; preds = %for.cond236.for.body238_crit_edge, %if.then233
  %i.3537 = phi i32 [ 281, %if.then233 ], [ %inc254, %for.cond236.for.body238_crit_edge ]
  %201 = ptrtoint ptr %tm_map40 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %tm_map40, align 4
  %203 = ptrtoint ptr %fields80 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %fields80, align 4
  %arrayidx241 = getelementptr %struct.reg_field, ptr %204, i32 %i.3537
  %205 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_load4_noabort(i32 %205)
  %.unpack460 = load i32, ptr %arrayidx241, align 4
  %206 = insertvalue [5 x i32] undef, i32 %.unpack460, 0
  %.elt461 = getelementptr inbounds [5 x i32], ptr %arrayidx241, i32 0, i32 1
  %207 = ptrtoint ptr %.elt461 to i32
  call void @__asan_load4_noabort(i32 %207)
  %.unpack462 = load i32, ptr %.elt461, align 4
  %208 = insertvalue [5 x i32] %206, i32 %.unpack462, 1
  %.elt463 = getelementptr inbounds [5 x i32], ptr %arrayidx241, i32 0, i32 2
  %209 = ptrtoint ptr %.elt463 to i32
  call void @__asan_load4_noabort(i32 %209)
  %.unpack464 = load i32, ptr %.elt463, align 4
  %210 = insertvalue [5 x i32] %208, i32 %.unpack464, 2
  %.elt465 = getelementptr inbounds [5 x i32], ptr %arrayidx241, i32 0, i32 3
  %211 = ptrtoint ptr %.elt465 to i32
  call void @__asan_load4_noabort(i32 %211)
  %.unpack466 = load i32, ptr %.elt465, align 4
  %212 = insertvalue [5 x i32] %210, i32 %.unpack466, 3
  %.elt467 = getelementptr inbounds [5 x i32], ptr %arrayidx241, i32 0, i32 4
  %213 = ptrtoint ptr %.elt467 to i32
  call void @__asan_load4_noabort(i32 %213)
  %.unpack468 = load i32, ptr %.elt467, align 4
  %214 = insertvalue [5 x i32] %212, i32 %.unpack468, 4
  %call242 = call ptr @devm_regmap_field_alloc(ptr noundef %1, ptr noundef %202, [5 x i32] %214) #6
  %arrayidx244 = getelementptr %struct.tsens_priv, ptr %priv, i32 0, i32 6, i32 %i.3537
  %215 = ptrtoint ptr %arrayidx244 to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %call242, ptr %arrayidx244, align 4
  %cmp.i514 = icmp ugt ptr %call242, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i514, label %if.then248, label %for.cond236

if.then248:                                       ; preds = %for.body238
  call void @__sanitizer_cov_trace_pc() #8
  %216 = ptrtoint ptr %call242 to i32
  br label %err_put_device

for.end255:                                       ; preds = %for.cond236
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx257 = getelementptr %struct.tsens_priv, ptr %priv, i32 0, i32 6, i32 283
  %217 = ptrtoint ptr %arrayidx257 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %arrayidx257, align 4
  %call.i515 = call i32 @regmap_field_update_bits_base(ptr noundef %218, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %arrayidx260 = getelementptr %struct.tsens_priv, ptr %priv, i32 0, i32 6, i32 287
  %219 = ptrtoint ptr %arrayidx260 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %arrayidx260, align 4
  %call.i516 = call i32 @regmap_field_update_bits_base(ptr noundef %220, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %do.body263

do.body263:                                       ; preds = %for.end255, %land.lhs.true.do.body263_crit_edge, %if.end229.do.body263_crit_edge
  %ul_lock = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 5
  call void @__raw_spin_lock_init(ptr noundef %ul_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @init_common.__key, i16 noundef signext 3) #6
  %221 = ptrtoint ptr %feat.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %feat.i, align 4
  %223 = ptrtoint ptr %222 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %222, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %cmp268.not = icmp eq i32 %224, 0
  br i1 %cmp268.not, label %do.body263.if.end271_crit_edge, label %if.then269

do.body263.if.end271_crit_edge:                   ; preds = %do.body263
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end271

if.then269:                                       ; preds = %do.body263
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @tsens_enable_irq(ptr noundef %priv)
  br label %if.end271

if.end271:                                        ; preds = %if.then269, %do.body263.if.end271_crit_edge
  call fastcc void @tsens_debug_init(ptr noundef nonnull %call)
  br label %err_put_device

err_put_device:                                   ; preds = %if.end271, %if.then248, %cleanup220, %cleanup, %if.then160, %if.then146, %if.then132, %if.then118, %do.end, %if.end99.err_put_device_crit_edge, %if.then88, %for.end.err_put_device_crit_edge, %if.then67, %if.then42, %if.then25, %if.then13, %if.then7
  %ret.7 = phi i32 [ %9, %if.then7 ], [ %11, %if.then13 ], [ %17, %if.then25 ], [ %50, %if.then67 ], [ %call74, %for.end.err_put_device_crit_edge ], [ %68, %if.then88 ], [ %call102, %if.end99.err_put_device_crit_edge ], [ %92, %if.then118 ], [ %108, %if.then132 ], [ %124, %if.then146 ], [ %140, %if.then160 ], [ %164, %cleanup ], [ %193, %cleanup220 ], [ %216, %if.then248 ], [ 0, %if.end271 ], [ -19, %do.end ], [ %spec.select, %if.then42 ]
  %dev272 = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  call void @put_device(ptr noundef %dev272) #6
  br label %cleanup273

cleanup273:                                       ; preds = %err_put_device, %entry.cleanup273_crit_edge
  %retval.0 = phi i32 [ %ret.7, %err_put_device ], [ -22, %entry.cleanup273_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enabled) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ver_minor) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tsens_enable_irq(ptr nocapture noundef readonly %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %feat.i = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %feat.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %feat.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ugt i32 %3, 2
  %cond = select i1 %cmp, i32 7, i32 1
  %arrayidx = getelementptr %struct.tsens_priv, ptr %priv, i32 0, i32 6, i32 8
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %5, i32 noundef -1, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2 = icmp slt i32 %call.i, 0
  br i1 %cmp2, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tsens_debug_init(ptr noundef %pdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call ptr @debugfs_lookup(ptr noundef nonnull @.str.17, ptr noundef null) #6
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.17, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call1.sink = phi ptr [ %call2, %if.then ], [ %call1, %entry.if.end_crit_edge ]
  %2 = getelementptr inbounds %struct.tsens_priv, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1.sink, ptr %2, align 4
  %call5 = tail call ptr @debugfs_lookup(ptr noundef nonnull @.str.18, ptr noundef %call1.sink) #6
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then7, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %2, align 4
  %call9 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.18, i16 noundef zeroext 292, ptr noundef %5, ptr noundef %pdev, ptr noundef nonnull @dbg_version_fops) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end10.dev_name.exit_crit_edge

if.end10.dev_name.exit_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end10.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %if.end10.dev_name.exit_crit_edge ]
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %2, align 4
  %call13 = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i, ptr noundef %11) #6
  %debug = getelementptr inbounds %struct.tsens_priv, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %debug to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call13, ptr %debug, align 4
  %call15 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.19, i16 noundef zeroext 292, ptr noundef %call13, ptr noundef %pdev, ptr noundef nonnull @dbg_sensors_fops) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tsens_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tsens_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tsens_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @tsens_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dbg_version_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @dbg_version_show, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dbg_version_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  %maj_ver = alloca i32, align 4
  %min_ver = alloca i32, align 4
  %step_ver = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %maj_ver) #6
  %4 = ptrtoint ptr %maj_ver to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %maj_ver, align 4, !annotation !164
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min_ver) #6
  %5 = ptrtoint ptr %min_ver to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %min_ver, align 4, !annotation !164
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %step_ver) #6
  %6 = ptrtoint ptr %step_ver to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %step_ver, align 4, !annotation !164
  %feat.i = getelementptr inbounds %struct.tsens_priv, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %feat.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %feat.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp ugt i32 %10, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %rf = getelementptr inbounds %struct.tsens_priv, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rf, align 4
  %call2 = call i32 @regmap_field_read(ptr noundef %12, ptr noundef nonnull %maj_ver) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %arrayidx5 = getelementptr %struct.tsens_priv, ptr %3, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx5, align 4
  %call6 = call i32 @regmap_field_read(ptr noundef %14, ptr noundef nonnull %min_ver) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %arrayidx11 = getelementptr %struct.tsens_priv, ptr %3, i32 0, i32 6, i32 2
  %15 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx11, align 4
  %call12 = call i32 @regmap_field_read(ptr noundef %16, ptr noundef nonnull %step_ver) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %maj_ver to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %maj_ver, align 4
  %19 = ptrtoint ptr %min_ver to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %min_ver, align 4
  %21 = ptrtoint ptr %step_ver to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %step_ver, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.20, i32 noundef %18, i32 noundef %20, i32 noundef %22) #6
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.21) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end15, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ], [ %call12, %if.end9.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.end15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %step_ver) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_ver) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %maj_ver) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dbg_sensors_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @dbg_sensors_show, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dbg_sensors_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %feat = getelementptr inbounds %struct.tsens_priv, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %feat, align 4
  %max_sensors = getelementptr inbounds %struct.tsens_features, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %max_sensors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_sensors, align 4
  %num_sensors = getelementptr inbounds %struct.tsens_priv, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %num_sensors to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_sensors, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.22, i32 noundef %7, i32 noundef %9) #6
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.23) #6
  %10 = ptrtoint ptr %num_sensors to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_sensors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp18.not = icmp eq i32 %11, 0
  br i1 %cmp18.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.019 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %hw_id = getelementptr %struct.tsens_priv, ptr %3, i32 0, i32 13, i32 %i.019, i32 3
  %12 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hw_id, align 4
  %slope = getelementptr %struct.tsens_priv, ptr %3, i32 0, i32 13, i32 %i.019, i32 4
  %14 = ptrtoint ptr %slope to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %slope, align 4
  %offset = getelementptr %struct.tsens_priv, ptr %3, i32 0, i32 13, i32 %i.019, i32 2
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.24, i32 noundef %13, i32 noundef %15, i32 noundef %17) #6
  %inc = add nuw i32 %i.019, 1
  %18 = ptrtoint ptr %num_sensors to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_sensors, align 4
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsens_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %num_sensors = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_sensors) #6
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %dev.0 = phi ptr [ %dev1, %if.then ], [ %3, %if.else ]
  %of_node4 = getelementptr inbounds %struct.device, ptr %dev.0, i32 0, i32 27
  %4 = ptrtoint ptr %of_node4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node4, align 8
  %call = tail call ptr @of_match_node(ptr noundef nonnull @tsens_table, ptr noundef %5) #6
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %data7 = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data7, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %data.0 = phi ptr [ %7, %if.then6 ], [ @data_8960, %if.end.if.end9_crit_edge ]
  %8 = ptrtoint ptr %data.0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data.0, align 4
  %10 = ptrtoint ptr %num_sensors to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %num_sensors, align 4
  %tobool11.not = icmp eq ptr %5, null
  br i1 %tobool11.not, label %if.end9.if.end14_crit_edge, label %if.then12

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.26, ptr noundef nonnull %num_sensors, i32 noundef 1, i32 noundef 0) #6
  %11 = ptrtoint ptr %num_sensors to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %num_sensors, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end9.if.end14_crit_edge
  %12 = phi i32 [ %.pr, %if.then12 ], [ %9, %if.end9.if.end14_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %do.end, label %if.end16

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end14
  %13 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %12, i32 24) #6
  %14 = extractvalue { i32, i1 } %13, 1
  %15 = extractvalue { i32, i1 } %13, 0
  %spec.select.i = call i32 @llvm.uadd.sat.i32(i32 %15, i32 1372) #6
  %retval.0.i = select i1 %14, i32 -1, i32 %spec.select.i
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.0, i32 noundef %retval.0.i, i32 noundef 3520) #6
  %tobool19.not = icmp eq ptr %call.i, null
  br i1 %tobool19.not, label %if.end16.cleanup_crit_edge, label %if.end21

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev.0, ptr %call.i, align 4
  %17 = ptrtoint ptr %num_sensors to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_sensors, align 4
  %num_sensors23 = getelementptr inbounds %struct.tsens_priv, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %num_sensors23 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %num_sensors23, align 4
  %ops = getelementptr inbounds %struct.tsens_plat_data, ptr %data.0, i32 0, i32 1
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops, align 4
  %ops24 = getelementptr inbounds %struct.tsens_priv, ptr %call.i, i32 0, i32 10
  %22 = ptrtoint ptr %ops24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %ops24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp26128.not = icmp eq i32 %18, 0
  br i1 %cmp26128.not, label %if.end21.for.end_crit_edge, label %for.body.lr.ph

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end21
  %hw_ids = getelementptr inbounds %struct.tsens_plat_data, ptr %data.0, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0129 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %23 = ptrtoint ptr %hw_ids to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw_ids, align 4
  %tobool27.not = icmp eq ptr %24, null
  br i1 %tobool27.not, label %for.body.for.inc_crit_edge, label %if.then28

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then28:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr i32, ptr %24, i32 %i.0129
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then28, %for.body.for.inc_crit_edge
  %.sink = phi i32 [ %26, %if.then28 ], [ %i.0129, %for.body.for.inc_crit_edge ]
  %27 = getelementptr %struct.tsens_priv, ptr %call.i, i32 0, i32 13, i32 %i.0129, i32 3
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink, ptr %27, align 4
  %inc = add nuw i32 %i.0129, 1
  %29 = ptrtoint ptr %num_sensors23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_sensors23, align 4
  %cmp26 = icmp ult i32 %inc, %30
  br i1 %cmp26, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end21.for.end_crit_edge
  %feat = getelementptr inbounds %struct.tsens_plat_data, ptr %data.0, i32 0, i32 3
  %31 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %feat, align 4
  %feat36 = getelementptr inbounds %struct.tsens_priv, ptr %call.i, i32 0, i32 8
  %33 = ptrtoint ptr %feat36 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %feat36, align 4
  %fields = getelementptr inbounds %struct.tsens_plat_data, ptr %data.0, i32 0, i32 4
  %34 = ptrtoint ptr %fields to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fields, align 4
  %fields37 = getelementptr inbounds %struct.tsens_priv, ptr %call.i, i32 0, i32 9
  %36 = ptrtoint ptr %fields37 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %fields37, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %37 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %38 = ptrtoint ptr %ops24 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops24, align 4
  %tobool39.not = icmp eq ptr %39, null
  br i1 %tobool39.not, label %for.end.cleanup_crit_edge, label %lor.lhs.false

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.end
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %tobool41.not = icmp eq ptr %41, null
  br i1 %tobool41.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false42

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false42:                                  ; preds = %lor.lhs.false
  %get_temp = getelementptr inbounds %struct.tsens_ops, ptr %39, i32 0, i32 2
  %42 = ptrtoint ptr %get_temp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %get_temp, align 4
  %tobool44.not = icmp eq ptr %43, null
  br i1 %tobool44.not, label %lor.lhs.false42.cleanup_crit_edge, label %if.end46

lor.lhs.false42.cleanup_crit_edge:                ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end46:                                         ; preds = %lor.lhs.false42
  %call49 = call i32 %41(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %do.end54, label %if.end55

do.end54:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.0, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28) #9
  br label %cleanup

if.end55:                                         ; preds = %if.end46
  %44 = ptrtoint ptr %ops24 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops24, align 4
  %calibrate = getelementptr inbounds %struct.tsens_ops, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %calibrate to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %calibrate, align 4
  %tobool57.not = icmp eq ptr %47, null
  br i1 %tobool57.not, label %if.end55.if.end71_crit_edge, label %if.then58

if.end55.if.end71_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.then58:                                        ; preds = %if.end55
  %call61 = call i32 %47(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.then63, label %if.then58.if.end71_crit_edge

if.then58.if.end71_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.then63:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call61)
  %cmp64.not = icmp eq i32 %call61, -517
  br i1 %cmp64.not, label %if.then63.cleanup_crit_edge, label %do.end68

if.then63.cleanup_crit_edge:                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end68:                                         ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.0, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.28) #9
  br label %cleanup

if.end71:                                         ; preds = %if.then58.if.end71_crit_edge, %if.end55.if.end71_crit_edge
  %call72 = call fastcc i32 @tsens_register(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %do.end68, %if.then63.cleanup_crit_edge, %do.end54, %lor.lhs.false42.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call49, %do.end54 ], [ %call72, %if.end71 ], [ -12, %if.end16.cleanup_crit_edge ], [ -22, %lor.lhs.false42.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %for.end.cleanup_crit_edge ], [ %call61, %do.end68 ], [ -517, %if.then63.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_sensors) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsens_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %debug_root = getelementptr inbounds %struct.tsens_priv, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %debug_root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debug_root, align 4
  tail call void @debugfs_remove(ptr noundef %3) #6
  %arrayidx.i = getelementptr %struct.tsens_priv, ptr %1, i32 0, i32 6, i32 8
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %5, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %ops = getelementptr inbounds %struct.tsens_priv, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %disable = getelementptr inbounds %struct.tsens_ops, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %disable, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %9(ptr noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tsens_register(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_sensors = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %num_sensors to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_sensors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp88.not = icmp eq i32 %1, 0
  br i1 %cmp88.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ops = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.089 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.tsens_priv, ptr %priv, i32 0, i32 13, i32 %i.089
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %priv, ptr %arrayidx, align 4
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %hw_id = getelementptr %struct.tsens_priv, ptr %priv, i32 0, i32 13, i32 %i.089, i32 3
  %5 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hw_id, align 4
  %call = tail call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %4, i32 noundef %6, ptr noundef %arrayidx, ptr noundef nonnull @tsens_of_ops) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %tzd9 = getelementptr %struct.tsens_priv, ptr %priv, i32 0, i32 13, i32 %i.089, i32 1
  %7 = ptrtoint ptr %tzd9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %tzd9, align 4
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %enable = getelementptr inbounds %struct.tsens_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %enable, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %if.then10

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 %11(ptr noundef %priv, i32 noundef %i.089) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.089, 1
  %12 = ptrtoint ptr %num_sensors to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_sensors, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %feat.i = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 8
  %14 = ptrtoint ptr %feat.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %feat.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp16 = icmp eq i32 %17, 0
  br i1 %cmp16, label %if.then17, label %for.end.if.end28_crit_edge

for.end.if.end28_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then17:                                        ; preds = %for.end
  %arrayidx18 = getelementptr %struct.tsens_priv, ptr %priv, i32 0, i32 6, i32 265
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx18, align 4
  %sensor19 = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 13
  %20 = ptrtoint ptr %sensor19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sensor19, align 4
  %feat.i65 = getelementptr inbounds %struct.tsens_priv, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %feat.i65 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %feat.i65, align 4
  %adc.i = getelementptr inbounds %struct.tsens_features, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %adc.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i = load i8, ptr %adc.i, align 4
  %25 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %if.then17.tsens_mC_to_hw.exit_crit_edge, label %if.then.i

if.then17.tsens_mC_to_hw.exit_crit_edge:          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %tsens_mC_to_hw.exit

if.then.i:                                        ; preds = %if.then17
  %slope.i.i = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 1, i32 4
  %26 = ptrtoint ptr %slope.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %slope.i.i, align 4
  %conv1.i.i = sext i32 %27 to i64
  %mul.i.i = mul nsw i64 %conv1.i.i, 120
  %offset.i.i = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 1, i32 2
  %28 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offset.i.i, align 4
  %conv2.i.i = sext i32 %29 to i64
  %add.i.i = add nsw i64 %mul.i.i, %conv2.i.i
  %30 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %add.i.i, i32 0) #10, !srcloc !166
  %asmresult.i.i.i.i.i = extractvalue { i64, i32 } %30, 0
  %asmresult4.i.i.i.i.i = extractvalue { i64, i32 } %30, 1
  %31 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %add.i.i, i64 %asmresult.i.i.i.i.i, i32 %asmresult4.i.i.i.i.i) #10, !srcloc !167
  %asmresult10.i.i.i.i.i = extractvalue { i64, i32 } %31, 0
  %div1581.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i, 9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @degc_to_code.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tsens_register, %if.then.i.i)) #6
          to label %degc_to_code.exit.i [label %if.then.i.i], !srcloc !165

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @degc_to_code.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.52, i64 noundef %div1581.i.i.i.i, i32 noundef 120) #6
  br label %degc_to_code.exit.i

degc_to_code.exit.i:                              ; preds = %if.then.i.i, %if.then.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 523776, i64 %asmresult10.i.i.i.i.i)
  %cmp9.i.i = icmp ult i64 %asmresult10.i.i.i.i.i, 523776
  %extract.t.i.i = trunc i64 %div1581.i.i.i.i to i32
  %cond14.off0.i.i = select i1 %cmp9.i.i, i32 %extract.t.i.i, i32 1023
  br label %tsens_mC_to_hw.exit

tsens_mC_to_hw.exit:                              ; preds = %degc_to_code.exit.i, %if.then17.tsens_mC_to_hw.exit_crit_edge
  %retval.0.i = phi i32 [ %cond14.off0.i.i, %degc_to_code.exit.i ], [ 1200, %if.then17.tsens_mC_to_hw.exit_crit_edge ]
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %19, i32 noundef -1, i32 noundef %retval.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %arrayidx23 = getelementptr %struct.tsens_priv, ptr %priv, i32 0, i32 6, i32 266
  %32 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx23, align 4
  %34 = ptrtoint ptr %sensor19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sensor19, align 4
  %feat.i66 = getelementptr inbounds %struct.tsens_priv, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %feat.i66 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %feat.i66, align 4
  %adc.i67 = getelementptr inbounds %struct.tsens_features, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %adc.i67 to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load.i68 = load i8, ptr %adc.i67, align 4
  %39 = and i8 %bf.load.i68, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i69 = icmp eq i8 %39, 0
  br i1 %tobool.not.i69, label %tsens_mC_to_hw.exit.tsens_mC_to_hw.exit86_crit_edge, label %if.then.i78

tsens_mC_to_hw.exit.tsens_mC_to_hw.exit86_crit_edge: ; preds = %tsens_mC_to_hw.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %tsens_mC_to_hw.exit86

if.then.i78:                                      ; preds = %tsens_mC_to_hw.exit
  %offset.i.i72 = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 1, i32 2
  %40 = ptrtoint ptr %offset.i.i72 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %offset.i.i72, align 4
  %conv2.i.i73 = sext i32 %41 to i64
  %42 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %conv2.i.i73, i32 0) #10, !srcloc !166
  %asmresult.i.i.i.i.i74 = extractvalue { i64, i32 } %42, 0
  %asmresult4.i.i.i.i.i75 = extractvalue { i64, i32 } %42, 1
  %43 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %conv2.i.i73, i64 %asmresult.i.i.i.i.i74, i32 %asmresult4.i.i.i.i.i75) #10, !srcloc !167
  %asmresult10.i.i.i.i.i76 = extractvalue { i64, i32 } %43, 0
  %div1581.i.i.i.i77 = lshr i64 %asmresult10.i.i.i.i.i76, 9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @degc_to_code.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tsens_register, %if.then.i.i79)) #6
          to label %degc_to_code.exit.i83 [label %if.then.i.i79], !srcloc !165

if.then.i.i79:                                    ; preds = %if.then.i78
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @degc_to_code.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.52, i64 noundef %div1581.i.i.i.i77, i32 noundef 0) #6
  br label %degc_to_code.exit.i83

degc_to_code.exit.i83:                            ; preds = %if.then.i.i79, %if.then.i78
  call void @__sanitizer_cov_trace_const_cmp8(i64 523776, i64 %asmresult10.i.i.i.i.i76)
  %cmp9.i.i80 = icmp ult i64 %asmresult10.i.i.i.i.i76, 523776
  %extract.t.i.i81 = trunc i64 %div1581.i.i.i.i77 to i32
  %cond14.off0.i.i82 = select i1 %cmp9.i.i80, i32 %extract.t.i.i81, i32 1023
  br label %tsens_mC_to_hw.exit86

tsens_mC_to_hw.exit86:                            ; preds = %degc_to_code.exit.i83, %tsens_mC_to_hw.exit.tsens_mC_to_hw.exit86_crit_edge
  %retval.0.i85 = phi i32 [ %cond14.off0.i.i82, %degc_to_code.exit.i83 ], [ 0, %tsens_mC_to_hw.exit.tsens_mC_to_hw.exit86_crit_edge ]
  %call.i87 = tail call i32 @regmap_field_update_bits_base(ptr noundef %33, i32 noundef -1, i32 noundef %retval.0.i85, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end28

if.end28:                                         ; preds = %tsens_mC_to_hw.exit86, %for.end.if.end28_crit_edge
  %call29 = tail call fastcc i32 @tsens_register_irq(ptr noundef %priv, ptr noundef nonnull @.str.35, ptr noundef nonnull @tsens_irq_thread)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.end28.cleanup_crit_edge, label %if.end32

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  %44 = ptrtoint ptr %feat.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %feat.i, align 4
  %crit_int = getelementptr inbounds %struct.tsens_features, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %crit_int to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load = load i8, ptr %crit_int, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool33.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool33.not, label %if.end32.cleanup_crit_edge, label %if.then34

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %call35 = tail call fastcc i32 @tsens_register_irq(ptr noundef %priv, ptr noundef nonnull @.str.36, ptr noundef nonnull @tsens_critical_irq_thread)
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %if.end32.cleanup_crit_edge, %if.end28.cleanup_crit_edge
  %retval.0 = phi i32 [ %call29, %if.end28.cleanup_crit_edge ], [ %call35, %if.then34 ], [ %call29, %if.end32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tsens_register_irq(ptr noundef %priv, ptr noundef %irqname, ptr noundef %thread_fn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_find_device_by_node(ptr noundef %3) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @platform_get_irq_byname(ptr noundef nonnull %call, ptr noundef %irqname) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call1)
  %cmp3 = icmp eq i32 %call1, -6
  %spec.store.select = select i1 %cmp3, i32 0, i32 %call1
  br label %if.end25

if.else:                                          ; preds = %if.end
  %feat.i = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 8
  %4 = ptrtoint ptr %feat.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %feat.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7 = icmp eq i32 %7, 0
  %dev9 = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %cmp7, label %if.then8, label %if.else13

if.then8:                                         ; preds = %if.else
  br i1 %tobool.not.i, label %if.end.i, label %if.then8.dev_name.exit_crit_edge

if.then8.dev_name.exit_crit_edge:                 ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev9, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then8.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.end.i ], [ %9, %if.then8.dev_name.exit_crit_edge ]
  %call12 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev9, i32 noundef %call1, ptr noundef %thread_fn, ptr noundef null, i32 noundef 1, ptr noundef %retval.0.i, ptr noundef %priv) #6
  br label %if.end18

if.else13:                                        ; preds = %if.else
  br i1 %tobool.not.i, label %if.end.i48, label %if.else13.dev_name.exit50_crit_edge

if.else13.dev_name.exit50_crit_edge:              ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit50

if.end.i48:                                       ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev9, align 4
  br label %dev_name.exit50

dev_name.exit50:                                  ; preds = %if.end.i48, %if.else13.dev_name.exit50_crit_edge
  %retval.0.i49 = phi ptr [ %13, %if.end.i48 ], [ %9, %if.else13.dev_name.exit50_crit_edge ]
  %call17 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev9, i32 noundef %call1, ptr noundef null, ptr noundef %thread_fn, i32 noundef 8192, ptr noundef %retval.0.i49, ptr noundef %priv) #6
  br label %if.end18

if.end18:                                         ; preds = %dev_name.exit50, %dev_name.exit
  %ret.0 = phi i32 [ %call12, %dev_name.exit ], [ %call17, %dev_name.exit50 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool19.not = icmp eq i32 %ret.0, 0
  br i1 %tobool19.not, label %if.else22, label %do.end

do.end:                                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %dev21 = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55) #9
  br label %if.end25

if.else22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %call1, i32 noundef 1) #6
  br label %if.end25

if.end25:                                         ; preds = %if.else22, %do.end, %if.then2
  %ret.1 = phi i32 [ %spec.store.select, %if.then2 ], [ %ret.0, %do.end ], [ 0, %if.else22 ]
  %dev26 = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  tail call void @put_device(ptr noundef %dev26) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.end25 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsens_irq_thread(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  %d = alloca %struct.tsens_irq_data, align 4
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %d) #6
  %0 = call ptr @memset(ptr %d, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #6
  %1 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %temp, align 4, !annotation !164
  %num_sensors = getelementptr inbounds %struct.tsens_priv, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %num_sensors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_sensors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp209.not = icmp eq i32 %3, 0
  br i1 %cmp209.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %low_viol.i = getelementptr inbounds %struct.tsens_irq_data, ptr %d, i32 0, i32 4
  %feat.i = getelementptr inbounds %struct.tsens_priv, ptr %data, i32 0, i32 8
  %crit_viol.i = getelementptr inbounds %struct.tsens_irq_data, ptr %d, i32 0, i32 8
  %ul_lock = getelementptr inbounds %struct.tsens_priv, ptr %data, i32 0, i32 5
  %up_irq_mask = getelementptr inbounds %struct.tsens_irq_data, ptr %d, i32 0, i32 2
  %up_thresh = getelementptr inbounds %struct.tsens_irq_data, ptr %d, i32 0, i32 1
  %low_irq_mask = getelementptr inbounds %struct.tsens_irq_data, ptr %d, i32 0, i32 6
  %low_thresh = getelementptr inbounds %struct.tsens_irq_data, ptr %d, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0210 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.tsens_priv, ptr %data, i32 0, i32 13, i32 %i.0210
  %hw_id1 = getelementptr %struct.tsens_priv, ptr %data, i32 0, i32 13, i32 %i.0210, i32 3
  %4 = ptrtoint ptr %hw_id1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw_id1, align 4
  %tzd = getelementptr %struct.tsens_priv, ptr %data, i32 0, i32 13, i32 %i.0210, i32 1
  %6 = ptrtoint ptr %tzd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tzd, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %add.i = add i32 %5, 121
  %arrayidx.i = getelementptr %struct.tsens_priv, ptr %data, i32 0, i32 6, i32 %add.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %call.i = call i32 @regmap_field_read(ptr noundef %9, ptr noundef nonnull %d) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end.i:                                         ; preds = %if.end
  %add2.i = add i32 %5, 41
  %arrayidx3.i = getelementptr %struct.tsens_priv, ptr %data, i32 0, i32 6, i32 %add2.i
  %10 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx3.i, align 4
  %call4.i = call i32 @regmap_field_read(ptr noundef %11, ptr noundef %low_viol.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.if.end4_crit_edge

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end7.i:                                        ; preds = %if.end.i
  %12 = ptrtoint ptr %feat.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %feat.i, align 4
  %crit_int.i = getelementptr inbounds %struct.tsens_features, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %crit_int.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %crit_int.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool8.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool8.not.i, label %if.end7.i.if.end17.i_crit_edge, label %if.then9.i

if.end7.i.if.end17.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

if.then9.i:                                       ; preds = %if.end7.i
  %add11.i = add i32 %5, 201
  %arrayidx12.i = getelementptr %struct.tsens_priv, ptr %data, i32 0, i32 6, i32 %add11.i
  %15 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx12.i, align 4
  %call13.i = call i32 @regmap_field_read(ptr noundef %16, ptr noundef %crit_viol.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.then9.i.if.end17.i_crit_edge, label %if.then9.i.if.end4_crit_edge

if.then9.i.if.end4_crit_edge:                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then9.i.if.end17.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then9.i.if.end17.i_crit_edge, %if.end7.i.if.end17.i_crit_edge
  %17 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %d, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool19.not.i = icmp eq i32 %18, 0
  br i1 %tobool19.not.i, label %lor.lhs.false.i, label %if.end17.i.if.end4_crit_edge

if.end17.i.if.end4_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

lor.lhs.false.i:                                  ; preds = %if.end17.i
  %19 = ptrtoint ptr %low_viol.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %low_viol.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool21.not.i = icmp eq i32 %20, 0
  br i1 %tobool21.not.i, label %tsens_threshold_violated.exit, label %lor.lhs.false.i.if.end4_crit_edge

lor.lhs.false.i.if.end4_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

tsens_threshold_violated.exit:                    ; preds = %lor.lhs.false.i
  %21 = ptrtoint ptr %crit_viol.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %crit_viol.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool24.not.i.not = icmp eq i32 %22, 0
  br i1 %tobool24.not.i.not, label %tsens_threshold_violated.exit.for.inc_crit_edge, label %tsens_threshold_violated.exit.if.end4_crit_edge

tsens_threshold_violated.exit.if.end4_crit_edge:  ; preds = %tsens_threshold_violated.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

tsens_threshold_violated.exit.for.inc_crit_edge:  ; preds = %tsens_threshold_violated.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end4:                                          ; preds = %tsens_threshold_violated.exit.if.end4_crit_edge, %lor.lhs.false.i.if.end4_crit_edge, %if.end17.i.if.end4_crit_edge, %if.then9.i.if.end4_crit_edge, %if.end.i.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %call5 = call i32 @get_temp_tsens_valid(ptr noundef %arrayidx, ptr noundef nonnull %temp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.body10, label %do.end

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.56, i32 noundef %5, ptr noundef nonnull @.str.57) #9
  br label %for.inc

do.body10:                                        ; preds = %if.end4
  %call13 = call i32 @_raw_spin_lock_irqsave(ptr noundef %ul_lock) #6
  call fastcc void @tsens_read_irq_state(ptr noundef %data, i32 noundef %5, ptr noundef %arrayidx, ptr noundef nonnull %d)
  %25 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %d, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool19.not = icmp eq i32 %26, 0
  br i1 %tobool19.not, label %do.body10.if.else41_crit_edge, label %land.lhs.true

do.body10.if.else41_crit_edge:                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else41

land.lhs.true:                                    ; preds = %do.body10
  %27 = ptrtoint ptr %up_irq_mask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %up_irq_mask, align 4
  %29 = ptrtoint ptr %feat.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %feat.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %32)
  %cmp.i = icmp ult i32 %32, 3
  %shl.i = shl nuw i32 1, %5
  %and.i = and i32 %28, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool22.not207 = icmp eq i32 %and.i, 0
  %tobool22.not = select i1 %cmp.i, i1 true, i1 %tobool22.not207
  br i1 %tobool22.not, label %if.then23, label %land.lhs.true.if.else41_crit_edge

land.lhs.true.if.else41_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else41

if.then23:                                        ; preds = %land.lhs.true
  call fastcc void @tsens_set_interrupt(ptr noundef %data, i32 noundef %5, i32 noundef 1, i1 noundef zeroext false)
  %33 = ptrtoint ptr %up_thresh to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %up_thresh, align 4
  %35 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %temp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp25 = icmp sgt i32 %34, %36
  br i1 %cmp25, label %do.body28, label %if.then23.if.end73_crit_edge

if.then23.if.end73_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

do.body28:                                        ; preds = %if.then23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsens_irq_thread.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tsens_irq_thread, %if.then34)) #6
          to label %do.end38 [label %if.then34], !srcloc !165

if.then34:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsens_irq_thread.__UNIQUE_ID_ddebug238, ptr noundef %38, ptr noundef nonnull @.str.58, i32 noundef %5, ptr noundef nonnull @.str.57) #6
  br label %do.end38

do.end38:                                         ; preds = %if.then34, %do.body28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsens_set_interrupt.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tsens_irq_thread, %if.then.i)) #6
          to label %do.end.i [label %if.then.i], !srcloc !165

if.then.i:                                        ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsens_set_interrupt.__UNIQUE_ID_ddebug234, ptr noundef %40, ptr noundef nonnull @.str.46, i32 noundef %5, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.50) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end38
  %41 = ptrtoint ptr %feat.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %feat.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp9.i = icmp ugt i32 %44, 2
  %. = select i1 %cmp9.i, i32 169, i32 153
  br label %do.body96.sink.split

if.else41:                                        ; preds = %land.lhs.true.if.else41_crit_edge, %do.body10.if.else41_crit_edge
  %45 = ptrtoint ptr %low_viol.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %low_viol.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool42.not = icmp eq i32 %46, 0
  br i1 %tobool42.not, label %if.else41.do.body96_crit_edge, label %land.lhs.true43

if.else41.do.body96_crit_edge:                    ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body96

land.lhs.true43:                                  ; preds = %if.else41
  %47 = ptrtoint ptr %low_irq_mask to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %low_irq_mask, align 4
  %49 = ptrtoint ptr %feat.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %feat.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %52)
  %cmp.i182 = icmp ult i32 %52, 3
  %shl.i183 = shl nuw i32 1, %5
  %and.i184 = and i32 %48, %shl.i183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i184)
  %tobool46.not208 = icmp eq i32 %and.i184, 0
  %tobool46.not = select i1 %cmp.i182, i1 true, i1 %tobool46.not208
  br i1 %tobool46.not, label %if.then47, label %land.lhs.true43.do.body96_crit_edge

land.lhs.true43.do.body96_crit_edge:              ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body96

if.then47:                                        ; preds = %land.lhs.true43
  call fastcc void @tsens_set_interrupt(ptr noundef %data, i32 noundef %5, i32 noundef 0, i1 noundef zeroext false)
  %53 = ptrtoint ptr %low_thresh to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %low_thresh, align 4
  %55 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %temp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp49 = icmp slt i32 %54, %56
  br i1 %cmp49, label %do.body52, label %if.then47.if.end73_crit_edge

if.then47.if.end73_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

do.body52:                                        ; preds = %if.then47
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsens_irq_thread.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tsens_irq_thread, %if.then64)) #6
          to label %do.end68 [label %if.then64], !srcloc !165

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsens_irq_thread.__UNIQUE_ID_ddebug239, ptr noundef %58, ptr noundef nonnull @.str.59, i32 noundef %5, ptr noundef nonnull @.str.57) #6
  br label %do.end68

do.end68:                                         ; preds = %if.then64, %do.body52
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsens_set_interrupt.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tsens_irq_thread, %if.then.i186)) #6
          to label %do.end.i189 [label %if.then.i186], !srcloc !165

if.then.i186:                                     ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsens_set_interrupt.__UNIQUE_ID_ddebug234, ptr noundef %60, ptr noundef nonnull @.str.46, i32 noundef %5, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50) #6
  br label %do.end.i189

do.end.i189:                                      ; preds = %if.then.i186, %do.end68
  %61 = ptrtoint ptr %feat.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %feat.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %64)
  %cmp9.i188 = icmp ugt i32 %64, 2
  %.213 = select i1 %cmp9.i188, i32 89, i32 73
  br label %do.body96.sink.split

if.end73:                                         ; preds = %if.then47.if.end73_crit_edge, %if.then23.if.end73_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %ul_lock, i32 noundef %call13) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsens_irq_thread.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tsens_irq_thread, %if.then89)) #6
          to label %do.end93 [label %if.then89], !srcloc !165

if.then89:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data, align 4
  %67 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %temp, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsens_irq_thread.__UNIQUE_ID_ddebug240, ptr noundef %66, ptr noundef nonnull @.str.60, i32 noundef %5, ptr noundef nonnull @.str.57, i32 noundef %68) #6
  br label %do.end93

do.end93:                                         ; preds = %if.then89, %if.end73
  %69 = ptrtoint ptr %tzd to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tzd, align 4
  call void @thermal_zone_device_update(ptr noundef %70, i32 noundef 0) #6
  br label %cleanup

do.body96.sink.split:                             ; preds = %do.end.i189, %do.end.i
  %..sink = phi i32 [ %., %do.end.i ], [ %.213, %do.end.i189 ]
  %add.i.i = add i32 %5, %..sink
  %arrayidx.i.i = getelementptr %struct.tsens_priv, ptr %data, i32 0, i32 6, i32 %add.i.i
  %71 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i29.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %72, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %do.body96

do.body96:                                        ; preds = %do.body96.sink.split, %land.lhs.true43.do.body96_crit_edge, %if.else41.do.body96_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %ul_lock, i32 noundef %call13) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsens_irq_thread.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tsens_irq_thread, %if.then108)) #6
          to label %cleanup [label %if.then108], !srcloc !165

if.then108:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data, align 4
  %75 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %temp, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsens_irq_thread.__UNIQUE_ID_ddebug241, ptr noundef %74, ptr noundef nonnull @.str.61, i32 noundef %5, ptr noundef nonnull @.str.57, i32 noundef %76) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then108, %do.body96, %do.end93
  %77 = ptrtoint ptr %feat.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %feat.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp115 = icmp eq i32 %80, 0
  br i1 %cmp115, label %cleanup.for.end_crit_edge, label %cleanup.for.inc_crit_edge

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc:                                          ; preds = %cleanup.for.inc_crit_edge, %do.end, %tsens_threshold_violated.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0210, 1
  %81 = ptrtoint ptr %num_sensors to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %num_sensors, align 4
  %cmp = icmp ult i32 %inc, %82
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %d) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsens_critical_irq_thread(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %d = alloca %struct.tsens_irq_data, align 4
  %temp = alloca i32, align 4
  %wdog_status = alloca i32, align 4
  %wdog_count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %d) #6
  %0 = call ptr @memset(ptr %d, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wdog_status) #6
  %1 = ptrtoint ptr %wdog_status to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %wdog_status, align 4, !annotation !164
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wdog_count) #6
  %2 = ptrtoint ptr %wdog_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %wdog_count, align 4, !annotation !164
  %feat = getelementptr inbounds %struct.tsens_priv, ptr %data, i32 0, i32 8
  %3 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %feat, align 4
  %has_watchdog = getelementptr inbounds %struct.tsens_features, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %has_watchdog to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %has_watchdog, align 4
  %6 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.if.end27_crit_edge, label %if.then

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.tsens_priv, ptr %data, i32 0, i32 6, i32 281
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %call = call i32 @regmap_field_read(ptr noundef %8, ptr noundef nonnull %wdog_status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %if.then.cleanup53_crit_edge

if.then.cleanup53_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup53

if.end:                                           ; preds = %if.then
  %9 = ptrtoint ptr %wdog_status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wdog_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.not = icmp eq i32 %10, 0
  br i1 %tobool3.not, label %if.end.if.end27_crit_edge, label %if.then4

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then4:                                         ; preds = %if.end
  %arrayidx6 = getelementptr %struct.tsens_priv, ptr %data, i32 0, i32 6, i32 282
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx6, align 4
  %call.i = call i32 @regmap_field_update_bits_base(ptr noundef %12, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx6, align 4
  %call.i85 = call i32 @regmap_field_update_bits_base(ptr noundef %14, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %arrayidx12 = getelementptr %struct.tsens_priv, ptr %data, i32 0, i32 6, i32 284
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx12, align 4
  %call13 = call i32 @regmap_field_read(ptr noundef %16, ptr noundef nonnull %wdog_count) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.then4.cleanup53_crit_edge

if.then4.cleanup53_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup53

if.end16:                                         ; preds = %if.then4
  %17 = ptrtoint ptr %wdog_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wdog_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool17.not = icmp eq i32 %18, 0
  br i1 %tobool17.not, label %if.end16.if.end27_crit_edge, label %do.body

if.end16.if.end27_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

do.body:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsens_critical_irq_thread.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tsens_critical_irq_thread, %if.then23)) #6
          to label %if.end27 [label %if.then23], !srcloc !165

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %21 = ptrtoint ptr %wdog_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wdog_count, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsens_critical_irq_thread.__UNIQUE_ID_ddebug237, ptr noundef %20, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.62, i32 noundef %22) #6
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %do.body, %if.end16.if.end27_crit_edge, %if.end.if.end27_crit_edge, %entry.if.end27_crit_edge
  %num_sensors = getelementptr inbounds %struct.tsens_priv, ptr %data, i32 0, i32 1
  %23 = ptrtoint ptr %num_sensors to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_sensors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp94.not = icmp eq i32 %24, 0
  br i1 %cmp94.not, label %if.end27.cleanup53_crit_edge, label %for.body.lr.ph

if.end27.cleanup53_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup53

for.body.lr.ph:                                   ; preds = %if.end27
  %low_viol.i = getelementptr inbounds %struct.tsens_irq_data, ptr %d, i32 0, i32 4
  %crit_viol.i = getelementptr inbounds %struct.tsens_irq_data, ptr %d, i32 0, i32 8
  %crit_irq_mask = getelementptr inbounds %struct.tsens_irq_data, ptr %d, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.095 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx28 = getelementptr %struct.tsens_priv, ptr %data, i32 0, i32 13, i32 %i.095
  %hw_id29 = getelementptr %struct.tsens_priv, ptr %data, i32 0, i32 13, i32 %i.095, i32 3
  %25 = ptrtoint ptr %hw_id29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hw_id29, align 4
  %tzd = getelementptr %struct.tsens_priv, ptr %data, i32 0, i32 13, i32 %i.095, i32 1
  %27 = ptrtoint ptr %tzd to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tzd, align 4
  %tobool30.not = icmp eq ptr %28, null
  br i1 %tobool30.not, label %for.body.cleanup_crit_edge, label %if.end32

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32:                                         ; preds = %for.body
  %add.i = add i32 %26, 121
  %arrayidx.i = getelementptr %struct.tsens_priv, ptr %data, i32 0, i32 6, i32 %add.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  %call.i86 = call i32 @regmap_field_read(ptr noundef %30, ptr noundef nonnull %d) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86)
  %tobool.not.i = icmp eq i32 %call.i86, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end32.if.end36_crit_edge

if.end32.if.end36_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.end.i:                                         ; preds = %if.end32
  %add2.i = add i32 %26, 41
  %arrayidx3.i = getelementptr %struct.tsens_priv, ptr %data, i32 0, i32 6, i32 %add2.i
  %31 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx3.i, align 4
  %call4.i = call i32 @regmap_field_read(ptr noundef %32, ptr noundef %low_viol.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.if.end36_crit_edge

if.end.i.if.end36_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.end7.i:                                        ; preds = %if.end.i
  %33 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %feat, align 4
  %crit_int.i = getelementptr inbounds %struct.tsens_features, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %crit_int.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load.i = load i8, ptr %crit_int.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool8.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool8.not.i, label %if.end7.i.if.end17.i_crit_edge, label %if.then9.i

if.end7.i.if.end17.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

if.then9.i:                                       ; preds = %if.end7.i
  %add11.i = add i32 %26, 201
  %arrayidx12.i = getelementptr %struct.tsens_priv, ptr %data, i32 0, i32 6, i32 %add11.i
  %36 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx12.i, align 4
  %call13.i = call i32 @regmap_field_read(ptr noundef %37, ptr noundef %crit_viol.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.then9.i.if.end17.i_crit_edge, label %if.then9.i.if.end36_crit_edge

if.then9.i.if.end36_crit_edge:                    ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then9.i.if.end17.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then9.i.if.end17.i_crit_edge, %if.end7.i.if.end17.i_crit_edge
  %38 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %d, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool19.not.i = icmp eq i32 %39, 0
  br i1 %tobool19.not.i, label %lor.lhs.false.i, label %if.end17.i.if.end36_crit_edge

if.end17.i.if.end36_crit_edge:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

lor.lhs.false.i:                                  ; preds = %if.end17.i
  %40 = ptrtoint ptr %low_viol.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %low_viol.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool21.not.i = icmp eq i32 %41, 0
  br i1 %tobool21.not.i, label %tsens_threshold_violated.exit, label %lor.lhs.false.i.if.end36_crit_edge

lor.lhs.false.i.if.end36_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

tsens_threshold_violated.exit:                    ; preds = %lor.lhs.false.i
  %42 = ptrtoint ptr %crit_viol.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %crit_viol.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool24.not.i.not = icmp eq i32 %43, 0
  br i1 %tobool24.not.i.not, label %tsens_threshold_violated.exit.cleanup_crit_edge, label %tsens_threshold_violated.exit.if.end36_crit_edge

tsens_threshold_violated.exit.if.end36_crit_edge: ; preds = %tsens_threshold_violated.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

tsens_threshold_violated.exit.cleanup_crit_edge:  ; preds = %tsens_threshold_violated.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end36:                                         ; preds = %tsens_threshold_violated.exit.if.end36_crit_edge, %lor.lhs.false.i.if.end36_crit_edge, %if.end17.i.if.end36_crit_edge, %if.then9.i.if.end36_crit_edge, %if.end.i.if.end36_crit_edge, %if.end32.if.end36_crit_edge
  %call37 = call i32 @get_temp_tsens_valid(ptr noundef %arrayidx28, ptr noundef nonnull %temp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end44, label %do.end42

do.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.56, i32 noundef %26, ptr noundef nonnull @.str.62) #9
  br label %cleanup

if.end44:                                         ; preds = %if.end36
  call fastcc void @tsens_read_irq_state(ptr noundef %data, i32 noundef %26, ptr noundef %arrayidx28, ptr noundef nonnull %d)
  %46 = ptrtoint ptr %crit_viol.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %crit_viol.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool46.not = icmp eq i32 %47, 0
  br i1 %tobool46.not, label %if.end44.cleanup_crit_edge, label %land.lhs.true

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end44
  %48 = ptrtoint ptr %crit_irq_mask to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %crit_irq_mask, align 4
  %50 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %feat, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %53)
  %cmp.i = icmp ult i32 %53, 3
  %shl.i = shl nuw i32 1, %26
  %and.i = and i32 %49, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool49.not93 = icmp eq i32 %and.i, 0
  %tobool49.not = select i1 %cmp.i, i1 true, i1 %tobool49.not93
  br i1 %tobool49.not, label %if.then50, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then50:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @tsens_set_interrupt(ptr noundef %data, i32 noundef %26, i32 noundef 2, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %land.lhs.true.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %do.end42, %tsens_threshold_violated.exit.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.095, 1
  %54 = ptrtoint ptr %num_sensors to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_sensors, align 4
  %cmp = icmp ult i32 %inc, %55
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.cleanup53_crit_edge

cleanup.cleanup53_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup53

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup53:                                        ; preds = %cleanup.cleanup53_crit_edge, %if.end27.cleanup53_crit_edge, %if.then4.cleanup53_crit_edge, %if.then.cleanup53_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup53_crit_edge ], [ %call13, %if.then4.cleanup53_crit_edge ], [ 1, %if.end27.cleanup53_crit_edge ], [ 1, %cleanup.cleanup53_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wdog_count) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wdog_status) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %d) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsens_get_temp(ptr noundef %data, ptr noundef %temp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %ops = getelementptr inbounds %struct.tsens_priv, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %get_temp = getelementptr inbounds %struct.tsens_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %get_temp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_temp, align 4
  %call = tail call i32 %5(ptr noundef %data, ptr noundef %temp) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsens_get_trend(ptr noundef %data, i32 noundef %trip, ptr noundef %trend) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %ops = getelementptr inbounds %struct.tsens_priv, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %get_trend = getelementptr inbounds %struct.tsens_ops, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %get_trend to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_trend, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %5(ptr noundef %data, ptr noundef %trend) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -524, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsens_set_trips(ptr nocapture noundef readonly %_sensor, i32 noundef %low, i32 noundef %high) #0 align 64 {
entry:
  %d = alloca %struct.tsens_irq_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_sensor, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %d) #6
  %4 = call ptr @memset(ptr %d, i32 255, i32 48)
  %hw_id3 = getelementptr inbounds %struct.tsens_sensor, ptr %_sensor, i32 0, i32 3
  %5 = ptrtoint ptr %hw_id3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hw_id3, align 4
  %feat.i = getelementptr inbounds %struct.tsens_priv, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %feat.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %feat.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  %spec.select = select i1 %cmp, i32 0, i32 %6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsens_set_trips.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tsens_set_trips, %if.then7)) #6
          to label %do.end [label %if.then7], !srcloc !165

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsens_set_trips.__UNIQUE_ID_ddebug242, ptr noundef %3, ptr noundef nonnull @.str.38, i32 noundef %spec.select, ptr noundef nonnull @.str.37, i32 noundef %low, i32 noundef %high) #6
  br label %do.end

do.end:                                           ; preds = %if.then7, %entry
  %11 = tail call i32 @llvm.smax.i32(i32 %high, i32 -40000)
  %12 = tail call i32 @llvm.smin.i32(i32 %11, i32 120000)
  %13 = tail call i32 @llvm.smax.i32(i32 %low, i32 -40000)
  %14 = tail call i32 @llvm.smin.i32(i32 %13, i32 120000)
  %15 = ptrtoint ptr %_sensor to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %_sensor, align 4
  %feat.i98 = getelementptr inbounds %struct.tsens_priv, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %feat.i98 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %feat.i98, align 4
  %adc.i = getelementptr inbounds %struct.tsens_features, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %adc.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i = load i8, ptr %adc.i, align 4
  %20 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %do.end
  %div.i = sdiv i32 %12, 1000
  %conv.i.i = sext i32 %div.i to i64
  %slope.i.i = getelementptr inbounds %struct.tsens_sensor, ptr %_sensor, i32 0, i32 4
  %21 = ptrtoint ptr %slope.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %slope.i.i, align 4
  %conv1.i.i = sext i32 %22 to i64
  %mul.i.i = mul nsw i64 %conv1.i.i, %conv.i.i
  %offset.i.i = getelementptr inbounds %struct.tsens_sensor, ptr %_sensor, i32 0, i32 2
  %23 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset.i.i, align 4
  %conv2.i.i = sext i32 %24 to i64
  %add.i.i = add nsw i64 %mul.i.i, %conv2.i.i
  %25 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %add.i.i, i32 0) #10, !srcloc !166
  %asmresult.i.i.i.i.i = extractvalue { i64, i32 } %25, 0
  %asmresult4.i.i.i.i.i = extractvalue { i64, i32 } %25, 1
  %26 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %add.i.i, i64 %asmresult.i.i.i.i.i, i32 %asmresult4.i.i.i.i.i) #10, !srcloc !167
  %asmresult10.i.i.i.i.i = extractvalue { i64, i32 } %26, 0
  %div1581.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i, 9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @degc_to_code.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tsens_set_trips, %if.then.i.i)) #6
          to label %degc_to_code.exit.i [label %if.then.i.i], !srcloc !165

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @degc_to_code.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.52, i64 noundef %div1581.i.i.i.i, i32 noundef %div.i) #6
  br label %degc_to_code.exit.i

degc_to_code.exit.i:                              ; preds = %if.then.i.i, %if.then.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 523776, i64 %asmresult10.i.i.i.i.i)
  %cmp9.i.i = icmp ult i64 %asmresult10.i.i.i.i.i, 523776
  %extract.t.i.i = trunc i64 %div1581.i.i.i.i to i32
  %cond14.off0.i.i = select i1 %cmp9.i.i, i32 %extract.t.i.i, i32 1023
  br label %tsens_mC_to_hw.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %div2.i = sdiv i32 %12, 100
  br label %tsens_mC_to_hw.exit

tsens_mC_to_hw.exit:                              ; preds = %if.end.i, %degc_to_code.exit.i
  %retval.0.i99 = phi i32 [ %cond14.off0.i.i, %degc_to_code.exit.i ], [ %div2.i, %if.end.i ]
  %27 = ptrtoint ptr %_sensor to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %_sensor, align 4
  %feat.i100 = getelementptr inbounds %struct.tsens_priv, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %feat.i100 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %feat.i100, align 4
  %adc.i101 = getelementptr inbounds %struct.tsens_features, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %adc.i101 to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load.i102 = load i8, ptr %adc.i101, align 4
  %32 = and i8 %bf.load.i102, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i103 = icmp eq i8 %32, 0
  br i1 %tobool.not.i103, label %if.end.i123, label %if.then.i116

if.then.i116:                                     ; preds = %tsens_mC_to_hw.exit
  %div.i104 = sdiv i32 %14, 1000
  %conv.i.i105 = sext i32 %div.i104 to i64
  %slope.i.i106 = getelementptr inbounds %struct.tsens_sensor, ptr %_sensor, i32 0, i32 4
  %33 = ptrtoint ptr %slope.i.i106 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %slope.i.i106, align 4
  %conv1.i.i107 = sext i32 %34 to i64
  %mul.i.i108 = mul nsw i64 %conv1.i.i107, %conv.i.i105
  %offset.i.i109 = getelementptr inbounds %struct.tsens_sensor, ptr %_sensor, i32 0, i32 2
  %35 = ptrtoint ptr %offset.i.i109 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %offset.i.i109, align 4
  %conv2.i.i110 = sext i32 %36 to i64
  %add.i.i111 = add nsw i64 %mul.i.i108, %conv2.i.i110
  %37 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %add.i.i111, i32 0) #10, !srcloc !166
  %asmresult.i.i.i.i.i112 = extractvalue { i64, i32 } %37, 0
  %asmresult4.i.i.i.i.i113 = extractvalue { i64, i32 } %37, 1
  %38 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %add.i.i111, i64 %asmresult.i.i.i.i.i112, i32 %asmresult4.i.i.i.i.i113) #10, !srcloc !167
  %asmresult10.i.i.i.i.i114 = extractvalue { i64, i32 } %38, 0
  %div1581.i.i.i.i115 = lshr i64 %asmresult10.i.i.i.i.i114, 9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @degc_to_code.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tsens_set_trips, %if.then.i.i117)) #6
          to label %degc_to_code.exit.i121 [label %if.then.i.i117], !srcloc !165

if.then.i.i117:                                   ; preds = %if.then.i116
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @degc_to_code.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.52, i64 noundef %div1581.i.i.i.i115, i32 noundef %div.i104) #6
  br label %degc_to_code.exit.i121

degc_to_code.exit.i121:                           ; preds = %if.then.i.i117, %if.then.i116
  call void @__sanitizer_cov_trace_const_cmp8(i64 523776, i64 %asmresult10.i.i.i.i.i114)
  %cmp9.i.i118 = icmp ult i64 %asmresult10.i.i.i.i.i114, 523776
  %extract.t.i.i119 = trunc i64 %div1581.i.i.i.i115 to i32
  %cond14.off0.i.i120 = select i1 %cmp9.i.i118, i32 %extract.t.i.i119, i32 1023
  br label %tsens_mC_to_hw.exit125

if.end.i123:                                      ; preds = %tsens_mC_to_hw.exit
  call void @__sanitizer_cov_trace_pc() #8
  %div2.i122 = sdiv i32 %14, 100
  br label %tsens_mC_to_hw.exit125

tsens_mC_to_hw.exit125:                           ; preds = %if.end.i123, %degc_to_code.exit.i121
  %retval.0.i124 = phi i32 [ %cond14.off0.i.i120, %degc_to_code.exit.i121 ], [ %div2.i122, %if.end.i123 ]
  %ul_lock = getelementptr inbounds %struct.tsens_priv, ptr %1, i32 0, i32 5
  %call36 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ul_lock) #6
  call fastcc void @tsens_read_irq_state(ptr noundef %1, i32 noundef %spec.select, ptr noundef %_sensor, ptr noundef nonnull %d)
  %add = add i32 %spec.select, 105
  %arrayidx = getelementptr %struct.tsens_priv, ptr %1, i32 0, i32 6, i32 %add
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx, align 4
  %call.i = call i32 @regmap_field_update_bits_base(ptr noundef %40, i32 noundef -1, i32 noundef %retval.0.i124, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %add44 = add i32 %spec.select, 185
  %arrayidx45 = getelementptr %struct.tsens_priv, ptr %1, i32 0, i32 6, i32 %add44
  %41 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx45, align 4
  %call.i126 = call i32 @regmap_field_update_bits_base(ptr noundef %42, i32 noundef -1, i32 noundef %retval.0.i99, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsens_set_interrupt.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tsens_set_trips, %if.then.i127)) #6
          to label %do.end.i [label %if.then.i127], !srcloc !165

if.then.i127:                                     ; preds = %tsens_mC_to_hw.exit125
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsens_set_interrupt.__UNIQUE_ID_ddebug234, ptr noundef %44, ptr noundef nonnull @.str.46, i32 noundef %spec.select, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i127, %tsens_mC_to_hw.exit125
  %45 = ptrtoint ptr %feat.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %feat.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %48)
  %cmp9.i = icmp ugt i32 %48, 2
  %. = select i1 %cmp9.i, i32 89, i32 73
  %add3.i.i = add i32 %spec.select, %.
  %arrayidx.i.i = getelementptr %struct.tsens_priv, ptr %1, i32 0, i32 6, i32 %add3.i.i
  %49 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i29.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %50, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsens_set_interrupt.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tsens_set_trips, %if.then.i128)) #6
          to label %do.end.i131 [label %if.then.i128], !srcloc !165

if.then.i128:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsens_set_interrupt.__UNIQUE_ID_ddebug234, ptr noundef %52, ptr noundef nonnull @.str.46, i32 noundef %spec.select, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.50) #6
  br label %do.end.i131

do.end.i131:                                      ; preds = %if.then.i128, %do.end.i
  %53 = ptrtoint ptr %feat.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %feat.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %cmp9.i130 = icmp ugt i32 %56, 2
  %.144 = select i1 %cmp9.i130, i32 169, i32 153
  %add.i.i133 = add i32 %spec.select, %.144
  %arrayidx.i.i134 = getelementptr %struct.tsens_priv, ptr %1, i32 0, i32 6, i32 %add.i.i133
  %57 = ptrtoint ptr %arrayidx.i.i134 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i.i134, align 4
  %call.i29.i.i135 = call i32 @regmap_field_update_bits_base(ptr noundef %58, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @_raw_spin_unlock_irqrestore(ptr noundef %ul_lock, i32 noundef %call36) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsens_set_trips.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tsens_set_trips, %if.then60)) #6
          to label %do.end63 [label %if.then60], !srcloc !165

if.then60:                                        ; preds = %do.end.i131
  call void @__sanitizer_cov_trace_pc() #8
  %low_thresh = getelementptr inbounds %struct.tsens_irq_data, ptr %d, i32 0, i32 5
  %59 = ptrtoint ptr %low_thresh to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %low_thresh, align 4
  %up_thresh = getelementptr inbounds %struct.tsens_irq_data, ptr %d, i32 0, i32 1
  %61 = ptrtoint ptr %up_thresh to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %up_thresh, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsens_set_trips.__UNIQUE_ID_ddebug251, ptr noundef %3, ptr noundef nonnull @.str.39, i32 noundef %spec.select, ptr noundef nonnull @.str.37, i32 noundef %60, i32 noundef %62, i32 noundef %14, i32 noundef %12) #6
  br label %do.end63

do.end63:                                         ; preds = %if.then60, %do.end.i131
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %d) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tsens_read_irq_state(ptr nocapture noundef readonly %priv, i32 noundef %hw_id, ptr nocapture noundef readonly %s, ptr noundef %d) unnamed_addr #0 align 64 {
entry:
  %temp.i7 = alloca i32, align 4
  %temp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %hw_id, 153
  %arrayidx = getelementptr %struct.tsens_priv, ptr %priv, i32 0, i32 6, i32 %add
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %up_irq_clear = getelementptr inbounds %struct.tsens_irq_data, ptr %d, i32 0, i32 3
  %call = tail call i32 @regmap_field_read(ptr noundef %1, ptr noundef %up_irq_clear) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add2 = add i32 %hw_id, 73
  %arrayidx3 = getelementptr %struct.tsens_priv, ptr %priv, i32 0, i32 6, i32 %add2
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx3, align 4
  %low_irq_clear = getelementptr inbounds %struct.tsens_irq_data, ptr %d, i32 0, i32 7
  %call4 = tail call i32 @regmap_field_read(ptr noundef %3, ptr noundef %low_irq_clear) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %feat.i = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 8
  %4 = ptrtoint ptr %feat.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %feat.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp ugt i32 %7, 2
  br i1 %cmp, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end7
  %add11 = add i32 %hw_id, 169
  %arrayidx12 = getelementptr %struct.tsens_priv, ptr %priv, i32 0, i32 6, i32 %add11
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx12, align 4
  %up_irq_mask = getelementptr inbounds %struct.tsens_irq_data, ptr %d, i32 0, i32 2
  %call13 = tail call i32 @regmap_field_read(ptr noundef %9, ptr noundef %up_irq_mask) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.then9
  %add18 = add i32 %hw_id, 89
  %arrayidx19 = getelementptr %struct.tsens_priv, ptr %priv, i32 0, i32 6, i32 %add18
  %10 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx19, align 4
  %low_irq_mask = getelementptr inbounds %struct.tsens_irq_data, ptr %d, i32 0, i32 6
  %call20 = tail call i32 @regmap_field_read(ptr noundef %11, ptr noundef %low_irq_mask) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %if.end16
  %add25 = add i32 %hw_id, 233
  %arrayidx26 = getelementptr %struct.tsens_priv, ptr %priv, i32 0, i32 6, i32 %add25
  %12 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx26, align 4
  %crit_irq_clear = getelementptr inbounds %struct.tsens_irq_data, ptr %d, i32 0, i32 11
  %call27 = tail call i32 @regmap_field_read(ptr noundef %13, ptr noundef %crit_irq_clear) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end30:                                         ; preds = %if.end23
  %add32 = add i32 %hw_id, 249
  %arrayidx33 = getelementptr %struct.tsens_priv, ptr %priv, i32 0, i32 6, i32 %add32
  %14 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx33, align 4
  %crit_irq_mask = getelementptr inbounds %struct.tsens_irq_data, ptr %d, i32 0, i32 10
  %call34 = tail call i32 @regmap_field_read(ptr noundef %15, ptr noundef %crit_irq_mask) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end37:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %add38 = add i32 %hw_id, 265
  %call39 = tail call fastcc i32 @tsens_hw_to_mC(ptr noundef %s, i32 noundef %add38)
  br label %if.end45

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %up_irq_mask40 = getelementptr inbounds %struct.tsens_irq_data, ptr %d, i32 0, i32 2
  %16 = ptrtoint ptr %up_irq_mask40 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %up_irq_mask40, align 4
  %low_irq_mask41 = getelementptr inbounds %struct.tsens_irq_data, ptr %d, i32 0, i32 6
  %17 = ptrtoint ptr %low_irq_mask41 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %low_irq_mask41, align 4
  %crit_irq_clear42 = getelementptr inbounds %struct.tsens_irq_data, ptr %d, i32 0, i32 11
  %18 = ptrtoint ptr %crit_irq_clear42 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %crit_irq_clear42, align 4
  %crit_irq_mask43 = getelementptr inbounds %struct.tsens_irq_data, ptr %d, i32 0, i32 10
  %19 = ptrtoint ptr %crit_irq_mask43 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %crit_irq_mask43, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.end37
  %.sink = phi i32 [ 0, %if.else ], [ %call39, %if.end37 ]
  %crit_thresh44 = getelementptr inbounds %struct.tsens_irq_data, ptr %d, i32 0, i32 9
  %20 = ptrtoint ptr %crit_thresh44 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink, ptr %crit_thresh44, align 4
  %add46 = add i32 %hw_id, 185
  %21 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i) #6
  %23 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %temp.i, align 4
  %fields.i = getelementptr inbounds %struct.tsens_priv, ptr %22, i32 0, i32 9
  %24 = ptrtoint ptr %fields.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fields.i, align 4
  %msb.i = getelementptr %struct.reg_field, ptr %25, i32 9, i32 2
  %26 = ptrtoint ptr %msb.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %msb.i, align 4
  %lsb.i = getelementptr %struct.reg_field, ptr %25, i32 9, i32 1
  %28 = ptrtoint ptr %lsb.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lsb.i, align 4
  %arrayidx4.i = getelementptr %struct.tsens_priv, ptr %22, i32 0, i32 6, i32 %add46
  %30 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx4.i, align 4
  %call.i = call i32 @regmap_field_read(ptr noundef %31, ptr noundef nonnull %temp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end45.tsens_hw_to_mC.exit_crit_edge

if.end45.tsens_hw_to_mC.exit_crit_edge:           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %tsens_hw_to_mC.exit

if.end.i:                                         ; preds = %if.end45
  %feat.i5 = getelementptr inbounds %struct.tsens_priv, ptr %22, i32 0, i32 8
  %32 = ptrtoint ptr %feat.i5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %feat.i5, align 4
  %adc.i = getelementptr inbounds %struct.tsens_features, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %adc.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load.i = load i8, ptr %adc.i, align 4
  %35 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool5.not.i = icmp eq i8 %35, 0
  %36 = ptrtoint ptr %temp.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %temp.i, align 4
  br i1 %tobool5.not.i, label %if.end8.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  %mul.i.i = mul i32 %37, 1000
  %offset.i.i = getelementptr inbounds %struct.tsens_sensor, ptr %s, i32 0, i32 2
  %38 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %offset.i.i, align 4
  %sub.i.i = sub i32 %mul.i.i, %39
  %slope.i.i = getelementptr inbounds %struct.tsens_sensor, ptr %s, i32 0, i32 4
  %40 = ptrtoint ptr %slope.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %slope.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  %div.i.i = sdiv i32 %41, 2
  %add.i.i = add i32 %div.i.i, %sub.i.i
  br label %code_to_degc.exit.i

if.else.i.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp1.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.else.i.i.code_to_degc.exit.i_crit_edge

if.else.i.i.code_to_degc.exit.i_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %code_to_degc.exit.i

if.then2.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %div3.neg.i.i = sdiv i32 %41, -2
  %sub4.i.i = add i32 %div3.neg.i.i, %sub.i.i
  br label %code_to_degc.exit.i

code_to_degc.exit.i:                              ; preds = %if.then2.i.i, %if.else.i.i.code_to_degc.exit.i_crit_edge, %if.then.i.i
  %degc.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %sub4.i.i, %if.then2.i.i ], [ 0, %if.else.i.i.code_to_degc.exit.i_crit_edge ]
  %div7.i.i = sdiv i32 %degc.0.i.i, %41
  %mul.i = mul i32 %div7.i.i, 1000
  br label %tsens_hw_to_mC.exit

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.neg.i = sub i32 31, %27
  %conv.i.i = add i32 %sub.neg.i, %29
  %conv1.i.i = and i32 %conv.i.i, 255
  %shl.i.i = shl i32 %37, %conv1.i.i
  %shr.i.i = ashr i32 %shl.i.i, %conv1.i.i
  %mul10.i = mul i32 %shr.i.i, 100
  br label %tsens_hw_to_mC.exit

tsens_hw_to_mC.exit:                              ; preds = %if.end8.i, %code_to_degc.exit.i, %if.end45.tsens_hw_to_mC.exit_crit_edge
  %retval.0.i6 = phi i32 [ %mul.i, %code_to_degc.exit.i ], [ %mul10.i, %if.end8.i ], [ %call.i, %if.end45.tsens_hw_to_mC.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #6
  %up_thresh = getelementptr inbounds %struct.tsens_irq_data, ptr %d, i32 0, i32 1
  %42 = ptrtoint ptr %up_thresh to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %retval.0.i6, ptr %up_thresh, align 4
  %add48 = add i32 %hw_id, 105
  %43 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i7) #6
  %45 = ptrtoint ptr %temp.i7 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %temp.i7, align 4
  %fields.i8 = getelementptr inbounds %struct.tsens_priv, ptr %44, i32 0, i32 9
  %46 = ptrtoint ptr %fields.i8 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fields.i8, align 4
  %msb.i9 = getelementptr %struct.reg_field, ptr %47, i32 9, i32 2
  %48 = ptrtoint ptr %msb.i9 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %msb.i9, align 4
  %lsb.i10 = getelementptr %struct.reg_field, ptr %47, i32 9, i32 1
  %50 = ptrtoint ptr %lsb.i10 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %lsb.i10, align 4
  %arrayidx4.i11 = getelementptr %struct.tsens_priv, ptr %44, i32 0, i32 6, i32 %add48
  %52 = ptrtoint ptr %arrayidx4.i11 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx4.i11, align 4
  %call.i12 = call i32 @regmap_field_read(ptr noundef %53, ptr noundef nonnull %temp.i7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %tobool.not.i13 = icmp eq i32 %call.i12, 0
  br i1 %tobool.not.i13, label %if.end.i18, label %tsens_hw_to_mC.exit.tsens_hw_to_mC.exit45_crit_edge

tsens_hw_to_mC.exit.tsens_hw_to_mC.exit45_crit_edge: ; preds = %tsens_hw_to_mC.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %tsens_hw_to_mC.exit45

if.end.i18:                                       ; preds = %tsens_hw_to_mC.exit
  %feat.i14 = getelementptr inbounds %struct.tsens_priv, ptr %44, i32 0, i32 8
  %54 = ptrtoint ptr %feat.i14 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %feat.i14, align 4
  %adc.i15 = getelementptr inbounds %struct.tsens_features, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %adc.i15 to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load.i16 = load i8, ptr %adc.i15, align 4
  %57 = and i8 %bf.load.i16, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool5.not.i17 = icmp eq i8 %57, 0
  %58 = ptrtoint ptr %temp.i7 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %temp.i7, align 4
  br i1 %tobool5.not.i17, label %if.end8.i43, label %if.then6.i24

if.then6.i24:                                     ; preds = %if.end.i18
  %mul.i.i19 = mul i32 %59, 1000
  %offset.i.i20 = getelementptr inbounds %struct.tsens_sensor, ptr %s, i32 0, i32 2
  %60 = ptrtoint ptr %offset.i.i20 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %offset.i.i20, align 4
  %sub.i.i21 = sub i32 %mul.i.i19, %61
  %slope.i.i22 = getelementptr inbounds %struct.tsens_sensor, ptr %s, i32 0, i32 4
  %62 = ptrtoint ptr %slope.i.i22 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %slope.i.i22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i21)
  %cmp.i.i23 = icmp sgt i32 %sub.i.i21, 0
  br i1 %cmp.i.i23, label %if.then.i.i27, label %if.else.i.i29

if.then.i.i27:                                    ; preds = %if.then6.i24
  call void @__sanitizer_cov_trace_pc() #8
  %div.i.i25 = sdiv i32 %63, 2
  %add.i.i26 = add i32 %div.i.i25, %sub.i.i21
  br label %code_to_degc.exit.i36

if.else.i.i29:                                    ; preds = %if.then6.i24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i21)
  %cmp1.i.i28 = icmp slt i32 %sub.i.i21, 0
  br i1 %cmp1.i.i28, label %if.then2.i.i32, label %if.else.i.i29.code_to_degc.exit.i36_crit_edge

if.else.i.i29.code_to_degc.exit.i36_crit_edge:    ; preds = %if.else.i.i29
  call void @__sanitizer_cov_trace_pc() #8
  br label %code_to_degc.exit.i36

if.then2.i.i32:                                   ; preds = %if.else.i.i29
  call void @__sanitizer_cov_trace_pc() #8
  %div3.neg.i.i30 = sdiv i32 %63, -2
  %sub4.i.i31 = add i32 %div3.neg.i.i30, %sub.i.i21
  br label %code_to_degc.exit.i36

code_to_degc.exit.i36:                            ; preds = %if.then2.i.i32, %if.else.i.i29.code_to_degc.exit.i36_crit_edge, %if.then.i.i27
  %degc.0.i.i33 = phi i32 [ %add.i.i26, %if.then.i.i27 ], [ %sub4.i.i31, %if.then2.i.i32 ], [ 0, %if.else.i.i29.code_to_degc.exit.i36_crit_edge ]
  %div7.i.i34 = sdiv i32 %degc.0.i.i33, %63
  %mul.i35 = mul i32 %div7.i.i34, 1000
  br label %tsens_hw_to_mC.exit45

if.end8.i43:                                      ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #8
  %sub.neg.i37 = sub i32 31, %49
  %conv.i.i38 = add i32 %sub.neg.i37, %51
  %conv1.i.i39 = and i32 %conv.i.i38, 255
  %shl.i.i40 = shl i32 %59, %conv1.i.i39
  %shr.i.i41 = ashr i32 %shl.i.i40, %conv1.i.i39
  %mul10.i42 = mul i32 %shr.i.i41, 100
  br label %tsens_hw_to_mC.exit45

tsens_hw_to_mC.exit45:                            ; preds = %if.end8.i43, %code_to_degc.exit.i36, %tsens_hw_to_mC.exit.tsens_hw_to_mC.exit45_crit_edge
  %retval.0.i44 = phi i32 [ %mul.i35, %code_to_degc.exit.i36 ], [ %mul10.i42, %if.end8.i43 ], [ %call.i12, %tsens_hw_to_mC.exit.tsens_hw_to_mC.exit45_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i7) #6
  %low_thresh = getelementptr inbounds %struct.tsens_irq_data, ptr %d, i32 0, i32 5
  %64 = ptrtoint ptr %low_thresh to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %retval.0.i44, ptr %low_thresh, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsens_read_irq_state.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tsens_read_irq_state, %if.then54)) #6
          to label %do.body68 [label %if.then54], !srcloc !165

if.then54:                                        ; preds = %tsens_hw_to_mC.exit45
  %65 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %priv, align 4
  %67 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %d, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool55.not = icmp eq i32 %68, 0
  br i1 %tobool55.not, label %lor.lhs.false, label %if.then54.lor.end_crit_edge

if.then54.lor.end_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

lor.lhs.false:                                    ; preds = %if.then54
  %low_viol = getelementptr inbounds %struct.tsens_irq_data, ptr %d, i32 0, i32 4
  %69 = ptrtoint ptr %low_viol to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %low_viol, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool56.not = icmp eq i32 %70, 0
  br i1 %tobool56.not, label %lor.rhs, label %lor.lhs.false.lor.end_crit_edge

lor.lhs.false.lor.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %crit_viol = getelementptr inbounds %struct.tsens_irq_data, ptr %d, i32 0, i32 8
  %71 = ptrtoint ptr %crit_viol to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %crit_viol, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool57.not = icmp eq i32 %72, 0
  %phi.sel1 = select i1 %tobool57.not, ptr @.str.43, ptr @.str.42
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.lor.end_crit_edge, %if.then54.lor.end_crit_edge
  %73 = phi ptr [ @.str.42, %lor.lhs.false.lor.end_crit_edge ], [ @.str.42, %if.then54.lor.end_crit_edge ], [ %phi.sel1, %lor.rhs ]
  %low_viol58 = getelementptr inbounds %struct.tsens_irq_data, ptr %d, i32 0, i32 4
  %74 = ptrtoint ptr %low_viol58 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %low_viol58, align 4
  %crit_viol60 = getelementptr inbounds %struct.tsens_irq_data, ptr %d, i32 0, i32 8
  %76 = ptrtoint ptr %crit_viol60 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %crit_viol60, align 4
  %78 = ptrtoint ptr %low_irq_clear to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %low_irq_clear, align 4
  %80 = ptrtoint ptr %up_irq_clear to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %up_irq_clear, align 4
  %crit_irq_clear63 = getelementptr inbounds %struct.tsens_irq_data, ptr %d, i32 0, i32 11
  %82 = ptrtoint ptr %crit_irq_clear63 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %crit_irq_clear63, align 4
  %low_irq_mask64 = getelementptr inbounds %struct.tsens_irq_data, ptr %d, i32 0, i32 6
  %84 = ptrtoint ptr %low_irq_mask64 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %low_irq_mask64, align 4
  %up_irq_mask65 = getelementptr inbounds %struct.tsens_irq_data, ptr %d, i32 0, i32 2
  %86 = ptrtoint ptr %up_irq_mask65 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %up_irq_mask65, align 4
  %crit_irq_mask66 = getelementptr inbounds %struct.tsens_irq_data, ptr %d, i32 0, i32 10
  %88 = ptrtoint ptr %crit_irq_mask66 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %crit_irq_mask66, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsens_read_irq_state.__UNIQUE_ID_ddebug235, ptr noundef %66, ptr noundef nonnull @.str.41, i32 noundef %hw_id, ptr noundef nonnull @.str.40, ptr noundef nonnull %73, i32 noundef %75, i32 noundef %68, i32 noundef %77, i32 noundef %79, i32 noundef %81, i32 noundef %83, i32 noundef %85, i32 noundef %87, i32 noundef %89) #6
  br label %do.body68

do.body68:                                        ; preds = %lor.end, %tsens_hw_to_mC.exit45
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsens_read_irq_state.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tsens_read_irq_state, %if.then80)) #6
          to label %cleanup [label %if.then80], !srcloc !165

if.then80:                                        ; preds = %do.body68
  %90 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %priv, align 4
  %92 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %d, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool83.not = icmp eq i32 %93, 0
  br i1 %tobool83.not, label %lor.lhs.false84, label %if.then80.lor.end90_crit_edge

if.then80.lor.end90_crit_edge:                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end90

lor.lhs.false84:                                  ; preds = %if.then80
  %low_viol85 = getelementptr inbounds %struct.tsens_irq_data, ptr %d, i32 0, i32 4
  %94 = ptrtoint ptr %low_viol85 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %low_viol85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool86.not = icmp eq i32 %95, 0
  br i1 %tobool86.not, label %lor.rhs87, label %lor.lhs.false84.lor.end90_crit_edge

lor.lhs.false84.lor.end90_crit_edge:              ; preds = %lor.lhs.false84
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end90

lor.rhs87:                                        ; preds = %lor.lhs.false84
  call void @__sanitizer_cov_trace_pc() #8
  %crit_viol88 = getelementptr inbounds %struct.tsens_irq_data, ptr %d, i32 0, i32 8
  %96 = ptrtoint ptr %crit_viol88 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %crit_viol88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool89.not = icmp eq i32 %97, 0
  %phi.sel = select i1 %tobool89.not, ptr @.str.43, ptr @.str.42
  br label %lor.end90

lor.end90:                                        ; preds = %lor.rhs87, %lor.lhs.false84.lor.end90_crit_edge, %if.then80.lor.end90_crit_edge
  %98 = phi ptr [ @.str.42, %lor.lhs.false84.lor.end90_crit_edge ], [ @.str.42, %if.then80.lor.end90_crit_edge ], [ %phi.sel, %lor.rhs87 ]
  %99 = ptrtoint ptr %low_thresh to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %low_thresh, align 4
  %101 = ptrtoint ptr %up_thresh to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %up_thresh, align 4
  %crit_thresh94 = getelementptr inbounds %struct.tsens_irq_data, ptr %d, i32 0, i32 9
  %103 = ptrtoint ptr %crit_thresh94 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %crit_thresh94, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsens_read_irq_state.__UNIQUE_ID_ddebug236, ptr noundef %91, ptr noundef nonnull @.str.44, i32 noundef %hw_id, ptr noundef nonnull @.str.40, ptr noundef nonnull %98, i32 noundef %100, i32 noundef %102, i32 noundef %104) #6
  br label %cleanup

cleanup:                                          ; preds = %lor.end90, %do.body68, %if.end30.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tsens_set_interrupt(ptr nocapture noundef readonly %priv, i32 noundef %hw_id, i32 noundef %irq_type, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsens_set_interrupt.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tsens_set_interrupt, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !165

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq_type)
  %tobool4.not = icmp eq i32 %irq_type, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %irq_type)
  %cmp = icmp eq i32 %irq_type, 1
  %cond = select i1 %cmp, ptr @.str.47, ptr @.str.48
  %cond5 = select i1 %tobool4.not, ptr @.str.49, ptr %cond
  %cond7 = select i1 %enable, ptr @.str.50, ptr @.str.51
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsens_set_interrupt.__UNIQUE_ID_ddebug234, ptr noundef %1, ptr noundef nonnull @.str.46, i32 noundef %hw_id, ptr noundef nonnull @.str.45, ptr noundef nonnull %cond5, ptr noundef nonnull %cond7) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %feat.i = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 8
  %2 = ptrtoint ptr %feat.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %feat.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp9 = icmp ugt i32 %5, 2
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %do.end
  %6 = zext i32 %irq_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %irq_type, label %if.then10.sw.epilog.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 0, label %sw.bb2.i
    i32 2, label %sw.bb5.i
  ]

if.then10.sw.epilog.i_crit_edge:                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %add.i = add i32 %hw_id, 169
  %add1.i = add i32 %hw_id, 153
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %add3.i = add i32 %hw_id, 89
  %add4.i = add i32 %hw_id, 73
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %add6.i = add i32 %hw_id, 249
  %add7.i = add i32 %hw_id, 233
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb5.i, %sw.bb2.i, %sw.bb.i, %if.then10.sw.epilog.i_crit_edge
  %index_mask.0.i = phi i32 [ 0, %if.then10.sw.epilog.i_crit_edge ], [ %add6.i, %sw.bb5.i ], [ %add3.i, %sw.bb2.i ], [ %add.i, %sw.bb.i ]
  %index_clear.0.i = phi i32 [ 0, %if.then10.sw.epilog.i_crit_edge ], [ %add7.i, %sw.bb5.i ], [ %add4.i, %sw.bb2.i ], [ %add1.i, %sw.bb.i ]
  %arrayidx.i = getelementptr %struct.tsens_priv, ptr %priv, i32 0, i32 6, i32 %index_mask.0.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  br i1 %enable, label %sw.epilog.i.tsens_set_interrupt_v2.exit_crit_edge, label %if.else.i

sw.epilog.i.tsens_set_interrupt_v2.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tsens_set_interrupt_v2.exit

if.else.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i27.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %8, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %arrayidx12.i = getelementptr %struct.tsens_priv, ptr %priv, i32 0, i32 6, i32 %index_clear.0.i
  %9 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx12.i, align 4
  %call.i28.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %10, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %11 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx12.i, align 4
  br label %tsens_set_interrupt_v2.exit

tsens_set_interrupt_v2.exit:                      ; preds = %if.else.i, %sw.epilog.i.tsens_set_interrupt_v2.exit_crit_edge
  %.sink.i = phi ptr [ %12, %if.else.i ], [ %8, %sw.epilog.i.tsens_set_interrupt_v2.exit_crit_edge ]
  %call.i29.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %.sink.i, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end13

if.else:                                          ; preds = %do.end
  %13 = zext i32 %irq_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %irq_type, label %if.else.sw.epilog.i27_crit_edge [
    i32 1, label %sw.bb.i25
    i32 0, label %sw.bb1.i
    i32 2, label %if.else.if.end13_crit_edge
  ]

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.else.sw.epilog.i27_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i27

sw.bb.i25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %add.i24 = add i32 %hw_id, 153
  br label %sw.epilog.i27

sw.bb1.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %add2.i = add i32 %hw_id, 73
  br label %sw.epilog.i27

sw.epilog.i27:                                    ; preds = %sw.bb1.i, %sw.bb.i25, %if.else.sw.epilog.i27_crit_edge
  %index.0.i = phi i32 [ 0, %if.else.sw.epilog.i27_crit_edge ], [ %add2.i, %sw.bb1.i ], [ %add.i24, %sw.bb.i25 ]
  %arrayidx.i26 = getelementptr %struct.tsens_priv, ptr %priv, i32 0, i32 6, i32 %index.0.i
  %14 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i26, align 4
  %not.enable.i = xor i1 %enable, true
  %cond.i = zext i1 %not.enable.i to i32
  %call.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %15, i32 noundef -1, i32 noundef %cond.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end13

if.end13:                                         ; preds = %sw.epilog.i27, %if.else.if.end13_crit_edge, %tsens_set_interrupt_v2.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_update(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsens_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ops = getelementptr inbounds %struct.tsens_priv, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %suspend = getelementptr inbounds %struct.tsens_ops, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %suspend, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 %5(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsens_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ops = getelementptr inbounds %struct.tsens_priv, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %resume = getelementptr inbounds %struct.tsens_ops, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resume, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 %5(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !30, !31, !33, !35, !37, !39, !41, !43, !45, !46, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !91, !93, !95, !96, !97, !99, !100, !102, !103, !104, !105, !106, !108, !109, !111, !112, !113, !114, !115, !116, !117, !118, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !146, !147, !148, !150, !151, !153}
!llvm.module.flags = !{!155, !156, !157, !158, !159, !160, !161, !162}
!llvm.ident = !{!163}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/thermal/qcom/tsens.c", i32 85, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @compute_intercept_slope.__UNIQUE_ID_ddebug227, !1, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/thermal/qcom/tsens.c", i32 105, i32 3}
!8 = !{ptr @compute_intercept_slope.__UNIQUE_ID_ddebug228, !7, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!9 = !{ptr @init_common._key, !10, !"_key", i1 false, i1 false}
!10 = !{!"../drivers/thermal/qcom/tsens.c", i32 764, i32 20}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @init_common._key.6, !13, !"_key", i1 false, i1 false}
!13 = !{!"../drivers/thermal/qcom/tsens.c", i32 783, i32 18}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/thermal/qcom/tsens.c", i32 831, i32 3}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @init_common._entry, !16, !"_entry", i1 false, i1 false}
!21 = !{ptr @init_common._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @init_common.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/thermal/qcom/tsens.c", i32 914, i32 2}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @__initcall__kmod_qcom_tsens__252_1184_tsens_driver_init6, !26, !"__initcall__kmod_qcom_tsens__252_1184_tsens_driver_init6", i1 false, i1 false}
!26 = !{!"../drivers/thermal/qcom/tsens.c", i32 1184, i32 1}
!27 = !{ptr @__exitcall_tsens_driver_exit, !26, !"__exitcall_tsens_driver_exit", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_file253, !29, !"__UNIQUE_ID_file253", i1 false, i1 false}
!29 = !{!"../drivers/thermal/qcom/tsens.c", i32 1186, i32 1}
!30 = !{ptr @__UNIQUE_ID_license254, !29, !"__UNIQUE_ID_license254", i1 false, i1 false}
!31 = !{ptr @__UNIQUE_ID_description255, !32, !"__UNIQUE_ID_description255", i1 false, i1 false}
!32 = !{!"../drivers/thermal/qcom/tsens.c", i32 1187, i32 1}
!33 = !{ptr @__UNIQUE_ID_alias256, !34, !"__UNIQUE_ID_alias256", i1 false, i1 false}
!34 = !{!"../drivers/thermal/qcom/tsens.c", i32 1188, i32 1}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/thermal/qcom/tsens.c", i32 735, i32 11}
!37 = !{ptr @tsens_srot_config, !38, !"tsens_srot_config", i1 false, i1 false}
!38 = !{!"../drivers/thermal/qcom/tsens.c", i32 734, i32 35}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/thermal/qcom/tsens.c", i32 728, i32 11}
!41 = !{ptr @tsens_config, !42, !"tsens_config", i1 false, i1 false}
!42 = !{!"../drivers/thermal/qcom/tsens.c", i32 727, i32 35}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/thermal/qcom/tsens.c", i32 585, i32 3}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @tsens_enable_irq._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @tsens_enable_irq._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/thermal/qcom/tsens.c", i32 708, i32 24}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/thermal/qcom/tsens.c", i32 714, i32 24}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/thermal/qcom/tsens.c", i32 721, i32 22}
!54 = !{ptr @dbg_version_fops, !55, !"dbg_version_fops", i1 false, i1 false}
!55 = !{!"../drivers/thermal/qcom/tsens.c", i32 700, i32 1}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/thermal/qcom/tsens.c", i32 692, i32 17}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/thermal/qcom/tsens.c", i32 694, i32 15}
!60 = !{ptr @dbg_sensors_fops, !61, !"dbg_sensors_fops", i1 false, i1 false}
!61 = !{!"../drivers/thermal/qcom/tsens.c", i32 701, i32 1}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/thermal/qcom/tsens.c", i32 663, i32 16}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/thermal/qcom/tsens.c", i32 666, i32 14}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/thermal/qcom/tsens.c", i32 668, i32 17}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/thermal/qcom/tsens.c", i32 1179, i32 11}
!70 = !{ptr @tsens_driver, !71, !"tsens_driver", i1 false, i1 false}
!71 = !{!"../drivers/thermal/qcom/tsens.c", i32 1175, i32 31}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/thermal/qcom/tsens.c", i32 1115, i32 28}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/thermal/qcom/tsens.c", i32 1118, i32 3}
!76 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @tsens_probe._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @tsens_probe._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/thermal/qcom/tsens.c", i32 1147, i32 3}
!81 = !{ptr @tsens_probe._entry.29, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @tsens_probe._entry_ptr.31, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/thermal/qcom/tsens.c", i32 1155, i32 5}
!85 = !{ptr @tsens_probe._entry.32, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @tsens_probe._entry_ptr.34, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/thermal/qcom/tsens.c", i32 1078, i32 33}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/thermal/qcom/tsens.c", i32 1083, i32 34}
!91 = !{ptr @tsens_of_ops, !92, !"tsens_of_ops", i1 false, i1 false}
!92 = !{!"../drivers/thermal/qcom/tsens.c", i32 1001, i32 48}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/thermal/qcom/tsens.c", i32 551, i32 2}
!95 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @tsens_set_trips.__UNIQUE_ID_ddebug242, !94, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!97 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/thermal/qcom/tsens.c", i32 572, i32 2}
!99 = !{ptr @tsens_set_trips.__UNIQUE_ID_ddebug251, !98, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/thermal/qcom/tsens.c", i32 350, i32 2}
!102 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @tsens_read_irq_state.__UNIQUE_ID_ddebug235, !101, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!104 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/thermal/qcom/tsens.c", i32 356, i32 2}
!108 = !{ptr @tsens_read_irq_state.__UNIQUE_ID_ddebug236, !107, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!109 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/thermal/qcom/tsens.c", i32 266, i32 2}
!111 = !{ptr @.str.46, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @tsens_set_interrupt.__UNIQUE_ID_ddebug234, !110, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!113 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.52, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/thermal/qcom/tsens.c", i32 114, i32 2}
!120 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @degc_to_code.__UNIQUE_ID_ddebug229, !119, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!122 = !{ptr @.str.54, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/thermal/qcom/tsens.c", i32 1038, i32 4}
!124 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @tsens_register_irq._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @tsens_register_irq._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.56, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/thermal/qcom/tsens.c", i32 476, i32 4}
!129 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @tsens_irq_thread._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @tsens_irq_thread._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.58, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/thermal/qcom/tsens.c", i32 489, i32 5}
!134 = !{ptr @tsens_irq_thread.__UNIQUE_ID_ddebug238, !133, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!135 = !{ptr @.str.59, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/thermal/qcom/tsens.c", i32 500, i32 5}
!137 = !{ptr @tsens_irq_thread.__UNIQUE_ID_ddebug239, !136, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!138 = !{ptr @.str.60, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/thermal/qcom/tsens.c", i32 512, i32 4}
!140 = !{ptr @tsens_irq_thread.__UNIQUE_ID_ddebug240, !139, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!141 = !{ptr @.str.61, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/thermal/qcom/tsens.c", i32 517, i32 4}
!143 = !{ptr @tsens_irq_thread.__UNIQUE_ID_ddebug241, !142, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!144 = !{ptr @.str.62, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/thermal/qcom/tsens.c", i32 409, i32 5}
!146 = !{ptr @.str.63, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @tsens_critical_irq_thread.__UNIQUE_ID_ddebug237, !145, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!148 = !{ptr @tsens_critical_irq_thread._entry, !149, !"_entry", i1 false, i1 false}
!149 = !{!"../drivers/thermal/qcom/tsens.c", i32 426, i32 4}
!150 = !{ptr @tsens_critical_irq_thread._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @tsens_table, !152, !"tsens_table", i1 false, i1 false}
!152 = !{!"../drivers/thermal/qcom/tsens.c", i32 968, i32 34}
!153 = !{ptr @tsens_pm_ops, !154, !"tsens_pm_ops", i1 false, i1 false}
!154 = !{!"../drivers/thermal/qcom/tsens.c", i32 966, i32 8}
!155 = !{i32 1, !"wchar_size", i32 2}
!156 = !{i32 1, !"min_enum_size", i32 4}
!157 = !{i32 8, !"branch-target-enforcement", i32 0}
!158 = !{i32 8, !"sign-return-address", i32 0}
!159 = !{i32 8, !"sign-return-address-all", i32 0}
!160 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!161 = !{i32 7, !"uwtable", i32 1}
!162 = !{i32 7, !"frame-pointer", i32 2}
!163 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!164 = !{!"auto-init"}
!165 = !{i64 2148516885, i64 2148516890, i64 2148516903, i64 2148516947, i64 2148516981, i64 2148517002}
!166 = !{i64 1056528, i64 1056555, i64 1056577, i64 1056605}
!167 = !{i64 1056936, i64 1056963, i64 1056996, i64 1057017, i64 1057044, i64 1057070}
