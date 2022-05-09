; ModuleID = '/llk/IR_all_yes/drivers/thermal/qoriq_thermal.c_pt.bc'
source_filename = "../drivers/thermal/qoriq_thermal.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_range = type { i32, i32 }
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
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
%struct.qoriq_tmu_data = type { i32, ptr, ptr, [16 x %struct.qoriq_sensor] }
%struct.qoriq_sensor = type { i32 }

@__initcall__kmod_qoriq_thermal__170_384_qoriq_tmu_init6 = internal global ptr @qoriq_tmu_init, section ".initcall6.init", align 4
@qoriq_tmu = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qoriq_tmu_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qoriq_tmu_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qoriq_tmu_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qoriq_tmu_exit = internal global ptr @qoriq_tmu_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [55 x i8] c"qoriq_thermal.author=Jia Hongtao <hongtao.jia@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [63 x i8] c"qoriq_thermal.description=QorIQ Thermal Monitoring Unit driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [49 x i8] c"qoriq_thermal.file=drivers/thermal/qoriq_thermal\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [29 x i8] c"qoriq_thermal.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qoriq_thermal\00", [18 x i8] zeroinitializer }, align 32
@qoriq_tmu_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,qoriq-tmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mq-tmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@qoriq_tmu_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @qoriq_tmu_suspend, ptr @qoriq_tmu_resume, ptr @qoriq_tmu_suspend, ptr @qoriq_tmu_resume, ptr @qoriq_tmu_suspend, ptr @qoriq_tmu_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"little-endian\00", [18 x i8] zeroinitializer }, align 32
@qoriq_wr_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @qoriq_yes_ranges, i32 5, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@qoriq_rd_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @qoriq_yes_ranges, i32 6, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@qoriq_tmu_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 289, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get memory region\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qoriq_tmu_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/thermal/qoriq_thermal.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qoriq_tmu_probe._entry_ptr = internal global ptr @qoriq_tmu_probe._entry, section ".printk_index", align 4
@qoriq_tmu_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"qoriq_thermal:293:(&regmap_config)->lock\00", [55 x i8] zeroinitializer }, align 32
@qoriq_tmu_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 296, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to init regmap (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@qoriq_tmu_probe._entry_ptr.10 = internal global ptr @qoriq_tmu_probe._entry.8, section ".printk_index", align 4
@qoriq_tmu_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 306, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@qoriq_tmu_probe._entry_ptr.13 = internal global ptr @qoriq_tmu_probe._entry.11, section ".printk_index", align 4
@qoriq_tmu_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 317, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to read IP block version\0A\00", [63 x i8] zeroinitializer }, align 32
@qoriq_tmu_probe._entry_ptr.16 = internal global ptr @qoriq_tmu_probe._entry.14, section ".printk_index", align 4
@qoriq_tmu_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 330, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to register sensors\0A\00", [36 x i8] zeroinitializer }, align 32
@qoriq_tmu_probe._entry_ptr.19 = internal global ptr @qoriq_tmu_probe._entry.17, section ".printk_index", align 4
@qoriq_yes_ranges = internal constant { [6 x %struct.regmap_range], [48 x i8] } { [6 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 132 }, %struct.regmap_range { i32 3856, i32 3868 }, %struct.regmap_range { i32 3840, i32 3848 }, %struct.regmap_range { i32 772, i32 1012 }, %struct.regmap_range { i32 3064, i32 3068 }, %struct.regmap_range { i32 256, i32 496 }], [48 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl,tmu-range\00", [18 x i8] zeroinitializer }, align 32
@qoriq_tmu_calibration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 180, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid range data.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qoriq_tmu_calibration\00", [42 x i8] zeroinitializer }, align 32
@qoriq_tmu_calibration._entry_ptr = internal global ptr @qoriq_tmu_calibration._entry, section ".printk_index", align 4
@qoriq_tmu_calibration._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.4, i32 186, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to read range data.\0A\00", [36 x i8] zeroinitializer }, align 32
@qoriq_tmu_calibration._entry_ptr.25 = internal global ptr @qoriq_tmu_calibration._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fsl,tmu-calibration\00", [44 x i8] zeroinitializer }, align 32
@qoriq_tmu_calibration._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.22, ptr @.str.4, i32 196, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid calibration data.\0A\00", [37 x i8] zeroinitializer }, align 32
@qoriq_tmu_calibration._entry_ptr.29 = internal global ptr @qoriq_tmu_calibration._entry.27, section ".printk_index", align 4
@tmu_tz_ops = internal constant { %struct.thermal_zone_of_device_ops, [44 x i8] } { %struct.thermal_zone_of_device_ops { ptr @tmu_get_temp, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@qoriq_tmu_register_tmu_zone._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 163, ptr @.str.32, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to add hwmon sysfs attributes\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qoriq_tmu_register_tmu_zone\00", [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@qoriq_tmu_register_tmu_zone._entry_ptr = internal global ptr @qoriq_tmu_register_tmu_zone._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@___asan_gen_.33 = private unnamed_addr constant [10 x i8] c"qoriq_tmu\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 376, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 378, i32 12 }
@___asan_gen_.39 = private unnamed_addr constant [16 x i8] c"qoriq_tmu_match\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 369, i32 34 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"qoriq_tmu_pm_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 366, i32 8 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 267, i32 55 }
@___asan_gen_.48 = private unnamed_addr constant [15 x i8] c"qoriq_wr_table\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 242, i32 41 }
@___asan_gen_.51 = private unnamed_addr constant [15 x i8] c"qoriq_rd_table\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 247, i32 41 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 289, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 293, i32 17 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 296, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 306, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 317, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 330, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"qoriq_yes_ranges\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 232, i32 34 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 178, i32 40 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 180, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 186, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 194, i32 36 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 196, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [11 x i8] c"tmu_tz_ops\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 125, i32 48 }
@___asan_gen_.135 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.145 = private constant [35 x i8] c"../drivers/thermal/qoriq_thermal.c\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 162, i32 4 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_qoriq_tmu_exit, ptr @__initcall__kmod_qoriq_thermal__170_384_qoriq_tmu_init6, ptr @qoriq_tmu_calibration._entry, ptr @qoriq_tmu_calibration._entry.23, ptr @qoriq_tmu_calibration._entry.27, ptr @qoriq_tmu_calibration._entry_ptr, ptr @qoriq_tmu_calibration._entry_ptr.25, ptr @qoriq_tmu_calibration._entry_ptr.29, ptr @qoriq_tmu_exit, ptr @qoriq_tmu_probe._entry, ptr @qoriq_tmu_probe._entry.11, ptr @qoriq_tmu_probe._entry.14, ptr @qoriq_tmu_probe._entry.17, ptr @qoriq_tmu_probe._entry.8, ptr @qoriq_tmu_probe._entry_ptr, ptr @qoriq_tmu_probe._entry_ptr.10, ptr @qoriq_tmu_probe._entry_ptr.13, ptr @qoriq_tmu_probe._entry_ptr.16, ptr @qoriq_tmu_probe._entry_ptr.19, ptr @qoriq_tmu_register_tmu_zone._entry, ptr @qoriq_tmu_register_tmu_zone._entry_ptr, ptr @qoriq_tmu, ptr @.str, ptr @qoriq_tmu_match, ptr @qoriq_tmu_pm_ops, ptr @.str.1, ptr @qoriq_wr_table, ptr @qoriq_rd_table, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @qoriq_tmu_probe._key, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @qoriq_yes_ranges, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @tmu_tz_ops, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qoriq_tmu to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qoriq_tmu_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qoriq_tmu_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qoriq_wr_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qoriq_rd_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qoriq_tmu_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qoriq_tmu_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qoriq_tmu_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qoriq_tmu_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qoriq_tmu_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qoriq_tmu_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qoriq_yes_ranges to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qoriq_tmu_calibration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qoriq_tmu_calibration._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qoriq_tmu_calibration._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmu_tz_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qoriq_tmu_register_tmu_zone._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qoriq_tmu_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qoriq_tmu, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qoriq_tmu_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @qoriq_tmu) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qoriq_tmu_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %len.i = alloca i32, align 4
  %range.i = alloca [4 x i32], align 4
  %ver = alloca i32, align 4
  %regmap_config = alloca %struct.regmap_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ver) #5
  %0 = ptrtoint ptr %ver to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ver, align 4, !annotation !87
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef null) #5
  %tobool.i.not = icmp eq ptr %call.i, null
  %cond = select i1 %tobool.i.not, i32 1, i32 2
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %regmap_config) #5
  %3 = call ptr @memset(ptr %regmap_config, i32 0, i32 172)
  %reg_bits = getelementptr inbounds %struct.regmap_config, ptr %regmap_config, i32 0, i32 1
  %4 = ptrtoint ptr %reg_bits to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 32, ptr %reg_bits, align 4
  %reg_stride = getelementptr inbounds %struct.regmap_config, ptr %regmap_config, i32 0, i32 2
  %5 = ptrtoint ptr %reg_stride to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %reg_stride, align 4
  %val_bits = getelementptr inbounds %struct.regmap_config, ptr %regmap_config, i32 0, i32 4
  %6 = ptrtoint ptr %val_bits to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 32, ptr %val_bits, align 4
  %max_register = getelementptr inbounds %struct.regmap_config, ptr %regmap_config, i32 0, i32 19
  %7 = ptrtoint ptr %max_register to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4096, ptr %max_register, align 4
  %wr_table = getelementptr inbounds %struct.regmap_config, ptr %regmap_config, i32 0, i32 20
  %8 = ptrtoint ptr %wr_table to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @qoriq_wr_table, ptr %wr_table, align 4
  %rd_table = getelementptr inbounds %struct.regmap_config, ptr %regmap_config, i32 0, i32 21
  %9 = ptrtoint ptr %rd_table to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @qoriq_rd_table, ptr %rd_table, align 4
  %val_format_endian = getelementptr inbounds %struct.regmap_config, ptr %regmap_config, i32 0, i32 39
  %10 = ptrtoint ptr %val_format_endian to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond, ptr %val_format_endian, align 4
  %call.i107 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 76, i32 noundef 3520) #5
  %tobool4.not = icmp eq ptr %call.i107, null
  br i1 %tobool4.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %cmp.i.i.not = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %call5 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call5, ptr noundef nonnull %regmap_config, ptr noundef nonnull @qoriq_tmu_probe._key, ptr noundef nonnull @.str.7) #5
  %regmap = getelementptr inbounds %struct.qoriq_tmu_data, ptr %call.i107, i32 0, i32 1
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call10, ptr %regmap, align 4
  %cmp.i.i108.not = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i108.not, label %do.end17, label %if.end18

do.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %call10 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %13) #8
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  %call19 = call ptr @devm_clk_get_optional(ptr noundef %dev, ptr noundef null) #5
  %clk = getelementptr inbounds %struct.qoriq_tmu_data, ptr %call.i107, i32 0, i32 2
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call19, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %call19 to i32
  br label %cleanup

if.end25:                                         ; preds = %if.end18
  %call.i110 = call i32 @clk_prepare(ptr noundef %call19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %tobool.not.i = icmp eq i32 %call.i110, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end25.do.end32_crit_edge

if.end25.do.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end32

if.end.i:                                         ; preds = %if.end25
  %call1.i = call i32 @clk_enable(ptr noundef %call19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end33, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @clk_unprepare(ptr noundef %call19) #5
  br label %do.end32

do.end32:                                         ; preds = %if.then3.i, %if.end25.do.end32_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i110, %if.end25.do.end32_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #8
  br label %cleanup

if.end33:                                         ; preds = %if.end.i
  %call.i111 = call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @qoriq_tmu_action, ptr noundef nonnull %call.i107) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %tobool.not.i112 = icmp eq i32 %call.i111, 0
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  br i1 %tobool.not.i112, label %if.end37, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = call i32 @regmap_write(ptr noundef %17, i32 noundef 0, i32 noundef 0) #5
  %18 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %19) #5
  call void @clk_unprepare(ptr noundef %19) #5
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  %call39 = call i32 @regmap_read(ptr noundef %17, i32 noundef 3064, ptr noundef nonnull %ver) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end46, label %do.end44

do.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #8
  br label %cleanup

if.end46:                                         ; preds = %if.end37
  %20 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ver, align 4
  %shr = lshr i32 %21, 8
  %and = and i32 %shr, 255
  %22 = ptrtoint ptr %call.i107 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and, ptr %call.i107, align 4
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %call.i114 = call i32 @regmap_write(ptr noundef %24, i32 noundef 32, i32 noundef 0) #5
  %25 = ptrtoint ptr %call.i107 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %call.i107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp.i115 = icmp eq i32 %26, 1
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  br i1 %cmp.i115, label %if.then.i116, label %if.else.i

if.then.i116:                                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i = call i32 @regmap_write(ptr noundef %28, i32 noundef 8, i32 noundef 15) #5
  br label %qoriq_tmu_init_device.exit

if.else.i:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i = call i32 @regmap_write(ptr noundef %28, i32 noundef 12, i32 noundef 15) #5
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %call6.i = call i32 @regmap_write(ptr noundef %30, i32 noundef 3840, i32 noundef 1358994432) #5
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %call9.i = call i32 @regmap_write(ptr noundef %32, i32 noundef 772, i32 noundef 14) #5
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %call9.1.i = call i32 @regmap_write(ptr noundef %34, i32 noundef 788, i32 noundef 14) #5
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %call9.2.i = call i32 @regmap_write(ptr noundef %36, i32 noundef 804, i32 noundef 14) #5
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap, align 4
  %call9.3.i = call i32 @regmap_write(ptr noundef %38, i32 noundef 820, i32 noundef 14) #5
  %39 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap, align 4
  %call9.4.i = call i32 @regmap_write(ptr noundef %40, i32 noundef 836, i32 noundef 14) #5
  %41 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap, align 4
  %call9.5.i = call i32 @regmap_write(ptr noundef %42, i32 noundef 852, i32 noundef 14) #5
  %43 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap, align 4
  %call9.6.i = call i32 @regmap_write(ptr noundef %44, i32 noundef 868, i32 noundef 14) #5
  %45 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap, align 4
  %call9.7.i = call i32 @regmap_write(ptr noundef %46, i32 noundef 884, i32 noundef 14) #5
  %47 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap, align 4
  %call9.8.i = call i32 @regmap_write(ptr noundef %48, i32 noundef 900, i32 noundef 14) #5
  %49 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap, align 4
  %call9.9.i = call i32 @regmap_write(ptr noundef %50, i32 noundef 916, i32 noundef 14) #5
  %51 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap, align 4
  %call9.10.i = call i32 @regmap_write(ptr noundef %52, i32 noundef 932, i32 noundef 14) #5
  %53 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap, align 4
  %call9.11.i = call i32 @regmap_write(ptr noundef %54, i32 noundef 948, i32 noundef 14) #5
  %55 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap, align 4
  %call9.12.i = call i32 @regmap_write(ptr noundef %56, i32 noundef 964, i32 noundef 14) #5
  %57 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap, align 4
  %call9.13.i = call i32 @regmap_write(ptr noundef %58, i32 noundef 980, i32 noundef 14) #5
  %59 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap, align 4
  %call9.14.i = call i32 @regmap_write(ptr noundef %60, i32 noundef 996, i32 noundef 14) #5
  %61 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap, align 4
  %call9.15.i = call i32 @regmap_write(ptr noundef %62, i32 noundef 1012, i32 noundef 14) #5
  br label %qoriq_tmu_init_device.exit

qoriq_tmu_init_device.exit:                       ; preds = %if.else.i, %if.then.i116
  %63 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap, align 4
  %call11.i = call i32 @regmap_write(ptr noundef %64, i32 noundef 0, i32 noundef 0) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %range.i) #5
  %65 = call ptr @memset(ptr %range.i, i32 255, i32 16)
  %66 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %of_node, align 8
  %call.i.i118 = call i32 @of_property_count_elems_of_size(ptr noundef %67, ptr noundef nonnull @.str.20, i32 noundef 4) #5
  %68 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %call.i.i118, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i118)
  %69 = icmp ugt i32 %call.i.i118, 4
  br i1 %69, label %qoriq_tmu_calibration.exit, label %if.end.i119

if.end.i119:                                      ; preds = %qoriq_tmu_init_device.exit
  %call.i56.i = call i32 @of_property_read_variable_u32_array(ptr noundef %67, ptr noundef nonnull @.str.20, ptr noundef nonnull %range.i, i32 noundef %call.i.i118, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i56.i)
  %cmp3.not.i = icmp sgt i32 %call.i56.i, -1
  br i1 %cmp3.not.i, label %for.cond.preheader.i, label %if.end.i119.qoriq_tmu_calibration.exit.thread_crit_edge

if.end.i119.qoriq_tmu_calibration.exit.thread_crit_edge: ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #7
  br label %qoriq_tmu_calibration.exit.thread

for.cond.preheader.i:                             ; preds = %if.end.i119
  %70 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp958.i = icmp sgt i32 %71, 0
  br i1 %cmp958.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.059.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %72 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap, align 4
  %mul.i = shl i32 %i.059.i, 2
  %add.i = add i32 %mul.i, 3856
  %arrayidx.i = getelementptr [4 x i32], ptr %range.i, i32 0, i32 %i.059.i
  %74 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i, align 4
  %call10.i = call i32 @regmap_write(ptr noundef %73, i32 noundef %add.i, i32 noundef %75) #5
  %inc.i = add nuw nsw i32 %i.059.i, 1
  %76 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %len.i, align 4
  %cmp9.i = icmp slt i32 %inc.i, %77
  br i1 %cmp9.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %call11.i121 = call ptr @of_get_property(ptr noundef %67, ptr noundef nonnull @.str.26, ptr noundef nonnull %len.i) #5
  %cmp12.i = icmp eq ptr %call11.i121, null
  br i1 %cmp12.i, label %for.end.i.qoriq_tmu_calibration.exit.thread_crit_edge, label %lor.lhs.false13.i

for.end.i.qoriq_tmu_calibration.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qoriq_tmu_calibration.exit.thread

lor.lhs.false13.i:                                ; preds = %for.end.i
  %78 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %len.i, align 4
  %80 = and i32 %79, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i122 = icmp eq i32 %80, 0
  br i1 %tobool.not.i122, label %for.cond19.preheader.i, label %lor.lhs.false13.i.qoriq_tmu_calibration.exit.thread_crit_edge

lor.lhs.false13.i.qoriq_tmu_calibration.exit.thread_crit_edge: ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qoriq_tmu_calibration.exit.thread

for.cond19.preheader.i:                           ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp2060.i = icmp sgt i32 %79, 0
  br i1 %cmp2060.i, label %for.cond19.preheader.i.for.body21.i_crit_edge, label %for.cond19.preheader.i.qoriq_tmu_calibration.exit.thread142_crit_edge

for.cond19.preheader.i.qoriq_tmu_calibration.exit.thread142_crit_edge: ; preds = %for.cond19.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qoriq_tmu_calibration.exit.thread142

for.cond19.preheader.i.for.body21.i_crit_edge:    ; preds = %for.cond19.preheader.i
  br label %for.body21.i

for.body21.i:                                     ; preds = %for.body21.i.for.body21.i_crit_edge, %for.cond19.preheader.i.for.body21.i_crit_edge
  %calibration.062.i = phi ptr [ %add.ptr31.i, %for.body21.i.for.body21.i_crit_edge ], [ %call11.i121, %for.cond19.preheader.i.for.body21.i_crit_edge ]
  %i.161.i = phi i32 [ %add30.i, %for.body21.i.for.body21.i_crit_edge ], [ 0, %for.cond19.preheader.i.for.body21.i_crit_edge ]
  %81 = ptrtoint ptr %calibration.062.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %calibration.062.i, align 4
  %83 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regmap, align 4
  %call24.i = call i32 @regmap_write(ptr noundef %84, i32 noundef 128, i32 noundef %82) #5
  %add.ptr.i = getelementptr i32, ptr %calibration.062.i, i32 1
  %85 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %add.ptr.i, align 4
  %87 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regmap, align 4
  %call28.i = call i32 @regmap_write(ptr noundef %88, i32 noundef 132, i32 noundef %86) #5
  %add30.i = add i32 %i.161.i, 8
  %add.ptr31.i = getelementptr i32, ptr %calibration.062.i, i32 2
  %89 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %len.i, align 4
  %cmp20.i = icmp slt i32 %add30.i, %90
  br i1 %cmp20.i, label %for.body21.i.for.body21.i_crit_edge, label %for.body21.i.qoriq_tmu_calibration.exit.thread142_crit_edge

for.body21.i.qoriq_tmu_calibration.exit.thread142_crit_edge: ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qoriq_tmu_calibration.exit.thread142

for.body21.i.for.body21.i_crit_edge:              ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body21.i

qoriq_tmu_calibration.exit.thread:                ; preds = %lor.lhs.false13.i.qoriq_tmu_calibration.exit.thread_crit_edge, %for.end.i.qoriq_tmu_calibration.exit.thread_crit_edge, %if.end.i119.qoriq_tmu_calibration.exit.thread_crit_edge
  %.str.24.sink = phi ptr [ @.str.24, %if.end.i119.qoriq_tmu_calibration.exit.thread_crit_edge ], [ @.str.28, %lor.lhs.false13.i.qoriq_tmu_calibration.exit.thread_crit_edge ], [ @.str.28, %for.end.i.qoriq_tmu_calibration.exit.thread_crit_edge ]
  %retval.0.i123.ph = phi i32 [ %call.i56.i, %if.end.i119.qoriq_tmu_calibration.exit.thread_crit_edge ], [ -19, %lor.lhs.false13.i.qoriq_tmu_calibration.exit.thread_crit_edge ], [ -19, %for.end.i.qoriq_tmu_calibration.exit.thread_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.24.sink) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %range.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #5
  br label %cleanup

qoriq_tmu_calibration.exit.thread142:             ; preds = %for.body21.i.qoriq_tmu_calibration.exit.thread142_crit_edge, %for.cond19.preheader.i.qoriq_tmu_calibration.exit.thread142_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %range.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #5
  br label %if.end50

qoriq_tmu_calibration.exit:                       ; preds = %qoriq_tmu_init_device.exit
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #8
  %91 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %len.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %range.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp = icmp slt i32 %92, 0
  br i1 %cmp, label %qoriq_tmu_calibration.exit.cleanup_crit_edge, label %qoriq_tmu_calibration.exit.if.end50_crit_edge

qoriq_tmu_calibration.exit.if.end50_crit_edge:    ; preds = %qoriq_tmu_calibration.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

qoriq_tmu_calibration.exit.cleanup_crit_edge:     ; preds = %qoriq_tmu_calibration.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end50:                                         ; preds = %qoriq_tmu_calibration.exit.if.end50_crit_edge, %qoriq_tmu_calibration.exit.thread142
  %93 = ptrtoint ptr %call.i107 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %call.i107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %94)
  %cmp.i124 = icmp eq i32 %94, 1
  %95 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regmap, align 4
  br i1 %cmp.i124, label %if.then.i127, label %if.else.i130

if.then.i127:                                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  %call.i126 = call i32 @regmap_write(ptr noundef %96, i32 noundef 0, i32 noundef -1946091521) #5
  br label %for.body.i133.preheader

if.else.i130:                                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i128 = call i32 @regmap_write(ptr noundef %96, i32 noundef 8, i32 noundef 65535) #5
  %97 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regmap, align 4
  %call4.i129 = call i32 @regmap_write(ptr noundef %98, i32 noundef 0, i32 noundef -2097152000) #5
  br label %for.body.i133.preheader

for.body.i133.preheader:                          ; preds = %if.else.i130, %if.then.i127
  br label %for.body.i133

for.body.i133:                                    ; preds = %for.inc.i.for.body.i133_crit_edge, %for.body.i133.preheader
  %id.041.i = phi i32 [ %inc.i135, %for.inc.i.for.body.i133_crit_edge ], [ 0, %for.body.i133.preheader ]
  %arrayidx.i132 = getelementptr %struct.qoriq_tmu_data, ptr %call.i107, i32 0, i32 3, i32 %id.041.i
  %99 = ptrtoint ptr %arrayidx.i132 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %id.041.i, ptr %arrayidx.i132, align 4
  %call8.i = call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %dev, i32 noundef %id.041.i, ptr noundef %arrayidx.i132, ptr noundef nonnull @tmu_tz_ops) #5
  %cmp.i.i.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  %100 = ptrtoint ptr %call8.i to i32
  %spec.select.i.i = select i1 %cmp.i.i.i, i32 %100, i32 0
  %101 = zext i32 %spec.select.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values)
  switch i32 %spec.select.i.i, label %qoriq_tmu_register_tmu_zone.exit [
    i32 0, label %if.end16.i
    i32 -19, label %for.body.i133.for.inc.i_crit_edge
  ]

for.body.i133.for.inc.i_crit_edge:                ; preds = %for.body.i133
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end16.i:                                       ; preds = %for.body.i133
  %call17.i = call i32 @devm_thermal_add_hwmon_sysfs(ptr noundef %call8.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end16.i.for.inc.i_crit_edge, label %do.end.i134

if.end16.i.for.inc.i_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

do.end.i134:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.30) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i134, %if.end16.i.for.inc.i_crit_edge, %for.body.i133.for.inc.i_crit_edge
  %inc.i135 = add nuw nsw i32 %id.041.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i135, 16
  br i1 %exitcond.not.i, label %for.inc.i.if.end57_crit_edge, label %for.inc.i.for.body.i133_crit_edge

for.inc.i.for.body.i133_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i133

for.inc.i.if.end57_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

qoriq_tmu_register_tmu_zone.exit:                 ; preds = %for.body.i133
  %102 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regmap, align 4
  %call15.i = call i32 @regmap_write(ptr noundef %103, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i)
  %cmp52 = icmp slt i32 %spec.select.i.i, 0
  br i1 %cmp52, label %do.end56, label %qoriq_tmu_register_tmu_zone.exit.if.end57_crit_edge

qoriq_tmu_register_tmu_zone.exit.if.end57_crit_edge: ; preds = %qoriq_tmu_register_tmu_zone.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

do.end56:                                         ; preds = %qoriq_tmu_register_tmu_zone.exit
  call void @__sanitizer_cov_trace_pc() #7
  %104 = ptrtoint ptr %call8.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #8
  br label %cleanup

if.end57:                                         ; preds = %qoriq_tmu_register_tmu_zone.exit.if.end57_crit_edge, %for.inc.i.if.end57_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %105 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call.i107, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %do.end56, %qoriq_tmu_calibration.exit.cleanup_crit_edge, %qoriq_tmu_calibration.exit.thread, %do.end44, %devm_add_action_or_reset.exit, %do.end32, %if.then22, %do.end17, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %do.end ], [ %13, %do.end17 ], [ %15, %if.then22 ], [ %retval.0.i.ph, %do.end32 ], [ %call39, %do.end44 ], [ %104, %do.end56 ], [ 0, %if.end57 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i111, %devm_add_action_or_reset.exit ], [ %92, %qoriq_tmu_calibration.exit.cleanup_crit_edge ], [ %retval.0.i123.ph, %qoriq_tmu_calibration.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %regmap_config) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ver) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qoriq_tmu_action(ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.qoriq_tmu_data, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 0, i32 noundef 0) #5
  %clk = getelementptr inbounds %struct.qoriq_tmu_data, ptr %p, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #5
  tail call void @clk_unprepare(ptr noundef %3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_thermal_add_hwmon_sysfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmu_get_temp(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %temp) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  %.neg.i = mul i32 %1, -4
  %idx.neg.i = add i32 %.neg.i, -12
  %add.ptr.i = getelementptr i8, ptr %p, i32 %idx.neg.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !87
  %call1 = tail call i64 @ktime_get() #5
  %add.i = add i64 %call1, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 114) #5
  %regmap = getelementptr inbounds %struct.qoriq_tmu_data, ptr %add.ptr.i, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %5 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %p, align 4
  %mul70 = shl i32 %6, 4
  %add71 = add i32 %mul70, 256
  %call972 = call i32 @regmap_read(ptr noundef %4, i32 noundef %add71, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call972)
  %tobool.not73 = icmp eq i32 %call972, 0
  br i1 %tobool.not73, label %entry.lor.lhs.false_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then25.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %tobool10.not = icmp sgt i32 %8, -1
  br i1 %tobool10.not, label %land.lhs.true, label %lor.lhs.false.if.end36_crit_edge

lor.lhs.false.if.end36_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call14 = call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call14, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call14, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then25

if.then25:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #5
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %11 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %p, align 4
  %mul = shl i32 %12, 4
  %add = add i32 %mul, 256
  %call9 = call i32 @regmap_read(ptr noundef %10, i32 noundef %add, ptr noundef nonnull %val) #5
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.then25.lor.lhs.false_crit_edge, label %if.then25.cleanup_crit_edge

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then25.lor.lhs.false_crit_edge:                ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %15 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %p, align 4
  %mul20 = shl i32 %16, 4
  %add21 = add i32 %mul20, 256
  %call22 = call i32 @regmap_read(ptr noundef %14, i32 noundef %add21, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool28.not = icmp eq i32 %call22, 0
  br i1 %tobool28.not, label %lor.rhs, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.rhs:                                          ; preds = %for.end
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool30 = icmp slt i32 %.pr, 0
  br i1 %tobool30, label %lor.rhs.if.end36_crit_edge, label %lor.rhs.cleanup_crit_edge

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.rhs.if.end36_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.end36:                                         ; preds = %lor.rhs.if.end36_crit_edge, %lor.lhs.false.if.end36_crit_edge
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp37 = icmp eq i32 %19, 1
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  br i1 %cmp37, label %if.then38, label %if.else

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %and39 = and i32 %21, 255
  %mul40 = mul nuw nsw i32 %and39, 1000
  br label %if.end43

if.else:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %and41 = and i32 %21, 511
  %mul.i = mul nuw nsw i32 %and41, 1000
  %add.i.i = add nsw i32 %mul.i, -273150
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then38
  %storemerge = phi i32 [ %add.i.i, %if.else ], [ %mul40, %if.then38 ]
  %22 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %storemerge, ptr %temp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %lor.rhs.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then25.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end43 ], [ -61, %for.end.cleanup_crit_edge ], [ -61, %lor.rhs.cleanup_crit_edge ], [ -61, %entry.cleanup_crit_edge ], [ -61, %if.then25.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qoriq_tmu_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.qoriq_tmu_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 0, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %clk = getelementptr inbounds %struct.qoriq_tmu_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qoriq_tmu_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.qoriq_tmu_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %3) #5
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %regmap = getelementptr inbounds %struct.qoriq_tmu_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i6 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i6, %if.end ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !47, !49, !51, !53, !54, !55, !56, !58, !59, !60, !62, !64, !65, !66, !68, !69, !70, !71, !72, !74, !76}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @__initcall__kmod_qoriq_thermal__170_384_qoriq_tmu_init6, !1, !"__initcall__kmod_qoriq_thermal__170_384_qoriq_tmu_init6", i1 false, i1 false}
!1 = !{!"../drivers/thermal/qoriq_thermal.c", i32 384, i32 1}
!2 = !{ptr @__exitcall_qoriq_tmu_exit, !1, !"__exitcall_qoriq_tmu_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author171, !4, !"__UNIQUE_ID_author171", i1 false, i1 false}
!4 = !{!"../drivers/thermal/qoriq_thermal.c", i32 386, i32 1}
!5 = !{ptr @__UNIQUE_ID_description172, !6, !"__UNIQUE_ID_description172", i1 false, i1 false}
!6 = !{!"../drivers/thermal/qoriq_thermal.c", i32 387, i32 1}
!7 = !{ptr @__UNIQUE_ID_file173, !8, !"__UNIQUE_ID_file173", i1 false, i1 false}
!8 = !{!"../drivers/thermal/qoriq_thermal.c", i32 388, i32 1}
!9 = !{ptr @__UNIQUE_ID_license174, !8, !"__UNIQUE_ID_license174", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/thermal/qoriq_thermal.c", i32 378, i32 12}
!12 = !{ptr @qoriq_tmu, !13, !"qoriq_tmu", i1 false, i1 false}
!13 = !{!"../drivers/thermal/qoriq_thermal.c", i32 376, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/thermal/qoriq_thermal.c", i32 267, i32 55}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/thermal/qoriq_thermal.c", i32 289, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @qoriq_tmu_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @qoriq_tmu_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @qoriq_tmu_probe._key, !25, !"_key", i1 false, i1 false}
!25 = !{!"../drivers/thermal/qoriq_thermal.c", i32 293, i32 17}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/thermal/qoriq_thermal.c", i32 296, i32 3}
!29 = !{ptr @qoriq_tmu_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @qoriq_tmu_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/thermal/qoriq_thermal.c", i32 306, i32 3}
!33 = !{ptr @qoriq_tmu_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @qoriq_tmu_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/thermal/qoriq_thermal.c", i32 317, i32 3}
!37 = !{ptr @qoriq_tmu_probe._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @qoriq_tmu_probe._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/thermal/qoriq_thermal.c", i32 330, i32 3}
!41 = !{ptr @qoriq_tmu_probe._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @qoriq_tmu_probe._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @qoriq_wr_table, !44, !"qoriq_wr_table", i1 false, i1 false}
!44 = !{!"../drivers/thermal/qoriq_thermal.c", i32 242, i32 41}
!45 = !{ptr @qoriq_yes_ranges, !46, !"qoriq_yes_ranges", i1 false, i1 false}
!46 = !{!"../drivers/thermal/qoriq_thermal.c", i32 232, i32 34}
!47 = !{ptr @qoriq_rd_table, !48, !"qoriq_rd_table", i1 false, i1 false}
!48 = !{!"../drivers/thermal/qoriq_thermal.c", i32 247, i32 41}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/thermal/qoriq_thermal.c", i32 178, i32 40}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/thermal/qoriq_thermal.c", i32 180, i32 3}
!53 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @qoriq_tmu_calibration._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @qoriq_tmu_calibration._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/thermal/qoriq_thermal.c", i32 186, i32 3}
!58 = !{ptr @qoriq_tmu_calibration._entry.23, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @qoriq_tmu_calibration._entry_ptr.25, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/thermal/qoriq_thermal.c", i32 194, i32 36}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/thermal/qoriq_thermal.c", i32 196, i32 3}
!64 = !{ptr @qoriq_tmu_calibration._entry.27, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @qoriq_tmu_calibration._entry_ptr.29, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/thermal/qoriq_thermal.c", i32 162, i32 4}
!68 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @qoriq_tmu_register_tmu_zone._entry, !67, !"_entry", i1 false, i1 false}
!71 = !{ptr @qoriq_tmu_register_tmu_zone._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @tmu_tz_ops, !73, !"tmu_tz_ops", i1 false, i1 false}
!73 = !{!"../drivers/thermal/qoriq_thermal.c", i32 125, i32 48}
!74 = !{ptr @qoriq_tmu_match, !75, !"qoriq_tmu_match", i1 false, i1 false}
!75 = !{!"../drivers/thermal/qoriq_thermal.c", i32 369, i32 34}
!76 = !{ptr @qoriq_tmu_pm_ops, !77, !"qoriq_tmu_pm_ops", i1 false, i1 false}
!77 = !{!"../drivers/thermal/qoriq_thermal.c", i32 366, i32 8}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{!"auto-init"}
