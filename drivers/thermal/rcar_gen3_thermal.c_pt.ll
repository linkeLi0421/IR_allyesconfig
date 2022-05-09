; ModuleID = '/llk/IR_all_yes/drivers/thermal/rcar_gen3_thermal.c_pt.bc'
source_filename = "../drivers/thermal/rcar_gen3_thermal.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.rcar_gen3_thermal_priv = type { [5 x ptr], i32, ptr, [3 x i32] }
%struct.rcar_gen3_thermal_tsc = type { ptr, ptr, %struct.equation_coefs, i32, [3 x i32] }
%struct.equation_coefs = type { i32, i32, i32, i32 }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.thermal_zone_params = type { [20 x i8], i8, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thermal_zone_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_rcar_gen3_thermal__188_578_rcar_gen3_thermal_driver_init6 = internal global ptr @rcar_gen3_thermal_driver_init, section ".initcall6.init", align 4
@rcar_gen3_thermal_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rcar_gen3_thermal_probe, ptr @rcar_gen3_thermal_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rcar_gen3_thermal_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_gen3_thermal_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rcar_gen3_thermal_driver_exit = internal global ptr @rcar_gen3_thermal_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file189 = internal constant [57 x i8] c"rcar_gen3_thermal.file=drivers/thermal/rcar_gen3_thermal\00", section ".modinfo", align 1
@__UNIQUE_ID_license190 = internal constant [33 x i8] c"rcar_gen3_thermal.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description191 = internal constant [67 x i8] c"rcar_gen3_thermal.description=R-Car Gen3 THS thermal sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author192 = internal constant [73 x i8] c"rcar_gen3_thermal.author=Wolfram Sang <wsa+renesas@sang-engineering.com>\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rcar_gen3_thermal\00", [46 x i8] zeroinitializer }, align 32
@rcar_gen3_thermal_dt_ids = internal constant { [10 x %struct.of_device_id], [504 x i8] } { [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a774a1-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen3_ths_tj_1_m3_w }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a774b1-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen3_ths_tj_1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a774e1-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen3_ths_tj_1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7795-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen3_ths_tj_1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7796-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen3_ths_tj_1_m3_w }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a77961-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen3_ths_tj_1_m3_w }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a77965-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen3_ths_tj_1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a77980-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen3_ths_tj_1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a779a0-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen3_ths_tj_1 }, %struct.of_device_id zeroinitializer], [504 x i8] zeroinitializer }, align 32
@rcar_gen3_thermal_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr @rcar_gen3_thermal_resume, ptr null, ptr @rcar_gen3_thermal_resume, ptr null, ptr @rcar_gen3_thermal_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@r8a7795es1 = internal constant { [2 x %struct.soc_device_attribute], [40 x i8] } { [2 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr null, ptr @.str.13, ptr null, ptr @.str.14, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], [40 x i8] zeroinitializer }, align 32
@rcar_gen3_tz_of_ops = internal global { %struct.thermal_zone_of_device_ops, [44 x i8] } { %struct.thermal_zone_of_device_ops { ptr @rcar_gen3_thermal_get_temp, ptr null, ptr @rcar_gen3_thermal_set_trips, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@rcar_gen3_thermal_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 502, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"No calibration values fused, fallback to driver values\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rcar_gen3_thermal_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/thermal/rcar_gen3_thermal.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rcar_gen3_thermal_probe._entry_ptr = internal global ptr @rcar_gen3_thermal_probe._entry, section ".printk_index", align 4
@rcar_gen3_thermal_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 510, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Can't register thermal zone\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rcar_gen3_thermal_probe._entry_ptr.9 = internal global ptr @rcar_gen3_thermal_probe._entry.6, section ".printk_index", align 4
@rcar_gen3_thermal_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 532, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"TSC%u: Loaded %d trip points\0A\00", [34 x i8] zeroinitializer }, align 32
@rcar_gen3_thermal_probe._entry_ptr.12 = internal global ptr @rcar_gen3_thermal_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ES1.*\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r8a7795\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s:ch%d\00", [24 x i8] zeroinitializer }, align 32
@rcar_gen3_thermal_read_fuses.thcodes = internal constant { [5 x [3 x i32]], [36 x i8] } { [5 x [3 x i32]] [[3 x i32] [i32 3397, i32 2800, i32 2221], [3 x i32] [i32 3393, i32 2795, i32 2216], [3 x i32] [i32 3389, i32 2805, i32 2237], [3 x i32] [i32 3415, i32 2694, i32 2195], [3 x i32] [i32 3356, i32 2724, i32 2244]], [36 x i8] zeroinitializer }, align 32
@rcar_gen3_ths_tj_1_m3_w = internal constant { i32, [28 x i8] } { i32 116, [28 x i8] zeroinitializer }, align 32
@rcar_gen3_ths_tj_1 = internal constant { i32, [28 x i8] } { i32 126, [28 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant [25 x i8] c"rcar_gen3_thermal_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 569, i32 31 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 571, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [25 x i8] c"rcar_gen3_thermal_dt_ids\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 365, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant [25 x i8] c"rcar_gen3_thermal_pm_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 566, i32 8 }
@___asan_gen_.28 = private unnamed_addr constant [11 x i8] c"r8a7795es1\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 250, i32 42 }
@___asan_gen_.31 = private unnamed_addr constant [20 x i8] c"rcar_gen3_tz_of_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 228, i32 42 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 502, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 510, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 532, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 251, i32 37 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 251, i32 14 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 436, i32 45 }
@___asan_gen_.76 = private unnamed_addr constant [8 x i8] c"thcodes\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 264, i32 20 }
@___asan_gen_.79 = private unnamed_addr constant [24 x i8] c"rcar_gen3_ths_tj_1_m3_w\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 364, i32 18 }
@___asan_gen_.82 = private unnamed_addr constant [19 x i8] c"rcar_gen3_ths_tj_1\00", align 1
@___asan_gen_.83 = private constant [39 x i8] c"../drivers/thermal/rcar_gen3_thermal.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 363, i32 18 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author192, ptr @__UNIQUE_ID_description191, ptr @__UNIQUE_ID_file189, ptr @__UNIQUE_ID_license190, ptr @__exitcall_rcar_gen3_thermal_driver_exit, ptr @__initcall__kmod_rcar_gen3_thermal__188_578_rcar_gen3_thermal_driver_init6, ptr @rcar_gen3_thermal_driver_exit, ptr @rcar_gen3_thermal_probe._entry, ptr @rcar_gen3_thermal_probe._entry.10, ptr @rcar_gen3_thermal_probe._entry.6, ptr @rcar_gen3_thermal_probe._entry_ptr, ptr @rcar_gen3_thermal_probe._entry_ptr.12, ptr @rcar_gen3_thermal_probe._entry_ptr.9, ptr @rcar_gen3_thermal_driver, ptr @.str, ptr @rcar_gen3_thermal_dt_ids, ptr @rcar_gen3_thermal_pm_ops, ptr @r8a7795es1, ptr @rcar_gen3_tz_of_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @rcar_gen3_thermal_read_fuses.thcodes, ptr @rcar_gen3_ths_tj_1_m3_w, ptr @rcar_gen3_ths_tj_1], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen3_thermal_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen3_thermal_dt_ids to i32), i32 1960, i32 2464, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen3_thermal_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a7795es1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen3_tz_of_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen3_thermal_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen3_thermal_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen3_thermal_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen3_thermal_read_fuses.thcodes to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen3_ths_tj_1_m3_w to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen3_ths_tj_1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_gen3_thermal_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rcar_gen3_thermal_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rcar_gen3_thermal_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @rcar_gen3_thermal_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_gen3_thermal_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #5
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 40, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup77_crit_edge, label %if.end

entry.cleanup77_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup77

if.end:                                           ; preds = %entry
  %thermal_init = getelementptr inbounds %struct.rcar_gen3_thermal_priv, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %thermal_init to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @rcar_gen3_thermal_init, ptr %thermal_init, align 4
  %call3 = tail call ptr @soc_device_match(ptr noundef nonnull @r8a7795es1) #5
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %thermal_init to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @rcar_gen3_thermal_init_r8a7795es1, ptr %thermal_init, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %call.i138 = tail call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %cmp2.i = icmp slt i32 %call.i138, 0
  br i1 %cmp2.i, label %if.end7.if.then10_crit_edge, label %if.end.i

if.end7.if.then10_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

for.cond.i:                                       ; preds = %if.end6.i
  %call.1.i = tail call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp2.1.i = icmp slt i32 %call.1.i, 0
  br i1 %cmp2.1.i, label %for.cond.i.if.then10_crit_edge, label %if.end.1.i

for.cond.i.if.then10_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.end.1.i:                                       ; preds = %for.cond.i
  %3 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.1.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.1.i, label %if.end.i.1.i, label %if.end.1.i.dev_name.exit.1.i_crit_edge

if.end.1.i.dev_name.exit.1.i_crit_edge:           ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.1.i

if.end.i.1.i:                                     ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit.1.i

dev_name.exit.1.i:                                ; preds = %if.end.i.1.i, %if.end.1.i.dev_name.exit.1.i_crit_edge
  %retval.0.i.1.i = phi ptr [ %6, %if.end.i.1.i ], [ %4, %if.end.1.i.dev_name.exit.1.i_crit_edge ]
  %call4.1.i = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1, i32 noundef 3264, ptr noundef nonnull @.str.15, ptr noundef %retval.0.i.1.i, i32 noundef 1) #5
  %tobool.not.1.i = icmp eq ptr %call4.1.i, null
  br i1 %tobool.not.1.i, label %dev_name.exit.1.i.if.then10_crit_edge, label %rcar_gen3_thermal_request_irqs.exit

dev_name.exit.1.i.if.then10_crit_edge:            ; preds = %dev_name.exit.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.end.i:                                         ; preds = %if.end7
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.dev_name.exit.i_crit_edge

if.end.i.dev_name.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %if.end.i.dev_name.exit.i_crit_edge ]
  %call4.i = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1, i32 noundef 3264, ptr noundef nonnull @.str.15, ptr noundef %retval.0.i.i, i32 noundef 0) #5
  %tobool.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i, label %dev_name.exit.i.if.then10_crit_edge, label %if.end6.i

dev_name.exit.i.if.then10_crit_edge:              ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.end6.i:                                        ; preds = %dev_name.exit.i
  %call7.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call.i138, ptr noundef null, ptr noundef nonnull @rcar_gen3_thermal_irq, i32 noundef 8192, ptr noundef nonnull %call4.i, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %for.cond.i, label %if.end6.i.if.then10_crit_edge

if.end6.i.if.then10_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

rcar_gen3_thermal_request_irqs.exit:              ; preds = %dev_name.exit.1.i
  %call7.1.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call.1.i, ptr noundef null, ptr noundef nonnull @rcar_gen3_thermal_irq, i32 noundef 8192, ptr noundef nonnull %call4.1.i, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.1.i)
  %tobool9.not = icmp eq i32 %call7.1.i, 0
  br i1 %tobool9.not, label %rcar_gen3_thermal_request_irqs.exit.if.end11_crit_edge, label %rcar_gen3_thermal_request_irqs.exit.if.then10_crit_edge

rcar_gen3_thermal_request_irqs.exit.if.then10_crit_edge: ; preds = %rcar_gen3_thermal_request_irqs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

rcar_gen3_thermal_request_irqs.exit.if.end11_crit_edge: ; preds = %rcar_gen3_thermal_request_irqs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then10:                                        ; preds = %rcar_gen3_thermal_request_irqs.exit.if.then10_crit_edge, %if.end6.i.if.then10_crit_edge, %dev_name.exit.i.if.then10_crit_edge, %dev_name.exit.1.i.if.then10_crit_edge, %for.cond.i.if.then10_crit_edge, %if.end7.if.then10_crit_edge
  store ptr null, ptr getelementptr inbounds (%struct.thermal_zone_of_device_ops, ptr @rcar_gen3_tz_of_ops, i32 0, i32 2), align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %rcar_gen3_thermal_request_irqs.exit.if.end11_crit_edge
  tail call void @pm_runtime_enable(ptr noundef %dev1) #5
  %call.i139 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #5
  %call13 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end11.for.end_crit_edge, label %if.end16

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end16:                                         ; preds = %if.end11
  %call.i140 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 40, i32 noundef 3520) #5
  %tobool18.not = icmp eq ptr %call.i140, null
  br i1 %tobool18.not, label %if.end16.error_unregister_crit_edge, label %if.end20

if.end16.error_unregister_crit_edge:              ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_unregister

if.end20:                                         ; preds = %if.end16
  %call21 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call13) #5
  %11 = ptrtoint ptr %call.i140 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call21, ptr %call.i140, align 4
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end20.if.then24_crit_edge, label %for.inc

if.end20.if.then24_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24

if.then24:                                        ; preds = %if.end20.4.if.then24_crit_edge, %if.end20.3.if.then24_crit_edge, %if.end20.2.if.then24_crit_edge, %if.end20.1.if.then24_crit_edge, %if.end20.if.then24_crit_edge
  %call21.lcssa = phi ptr [ %call21, %if.end20.if.then24_crit_edge ], [ %call21.1, %if.end20.1.if.then24_crit_edge ], [ %call21.2, %if.end20.2.if.then24_crit_edge ], [ %call21.3, %if.end20.3.if.then24_crit_edge ], [ %call21.4, %if.end20.4.if.then24_crit_edge ]
  %12 = ptrtoint ptr %call21.lcssa to i32
  br label %error_unregister

for.inc:                                          ; preds = %if.end20
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i140, ptr %call.i, align 4
  %call13.1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #5
  %tobool14.not.1 = icmp eq ptr %call13.1, null
  br i1 %tobool14.not.1, label %for.inc.for.end_crit_edge, label %if.end16.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end16.1:                                       ; preds = %for.inc
  %call.i140.1 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 40, i32 noundef 3520) #5
  %tobool18.not.1 = icmp eq ptr %call.i140.1, null
  br i1 %tobool18.not.1, label %if.end16.1.error_unregister_crit_edge, label %if.end20.1

if.end16.1.error_unregister_crit_edge:            ; preds = %if.end16.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_unregister

if.end20.1:                                       ; preds = %if.end16.1
  %call21.1 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call13.1) #5
  %14 = ptrtoint ptr %call.i140.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call21.1, ptr %call.i140.1, align 4
  %cmp.i.1 = icmp ugt ptr %call21.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %if.end20.1.if.then24_crit_edge, label %for.inc.1

if.end20.1.if.then24_crit_edge:                   ; preds = %if.end20.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24

for.inc.1:                                        ; preds = %if.end20.1
  %arrayidx.1 = getelementptr [5 x ptr], ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i140.1, ptr %arrayidx.1, align 4
  %call13.2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 2) #5
  %tobool14.not.2 = icmp eq ptr %call13.2, null
  br i1 %tobool14.not.2, label %for.inc.1.for.end_crit_edge, label %if.end16.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end16.2:                                       ; preds = %for.inc.1
  %call.i140.2 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 40, i32 noundef 3520) #5
  %tobool18.not.2 = icmp eq ptr %call.i140.2, null
  br i1 %tobool18.not.2, label %if.end16.2.error_unregister_crit_edge, label %if.end20.2

if.end16.2.error_unregister_crit_edge:            ; preds = %if.end16.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_unregister

if.end20.2:                                       ; preds = %if.end16.2
  %call21.2 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call13.2) #5
  %16 = ptrtoint ptr %call.i140.2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call21.2, ptr %call.i140.2, align 4
  %cmp.i.2 = icmp ugt ptr %call21.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2, label %if.end20.2.if.then24_crit_edge, label %for.inc.2

if.end20.2.if.then24_crit_edge:                   ; preds = %if.end20.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24

for.inc.2:                                        ; preds = %if.end20.2
  %arrayidx.2 = getelementptr [5 x ptr], ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i140.2, ptr %arrayidx.2, align 4
  %call13.3 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 3) #5
  %tobool14.not.3 = icmp eq ptr %call13.3, null
  br i1 %tobool14.not.3, label %for.inc.2.for.end_crit_edge, label %if.end16.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end16.3:                                       ; preds = %for.inc.2
  %call.i140.3 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 40, i32 noundef 3520) #5
  %tobool18.not.3 = icmp eq ptr %call.i140.3, null
  br i1 %tobool18.not.3, label %if.end16.3.error_unregister_crit_edge, label %if.end20.3

if.end16.3.error_unregister_crit_edge:            ; preds = %if.end16.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_unregister

if.end20.3:                                       ; preds = %if.end16.3
  %call21.3 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call13.3) #5
  %18 = ptrtoint ptr %call.i140.3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call21.3, ptr %call.i140.3, align 4
  %cmp.i.3 = icmp ugt ptr %call21.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3, label %if.end20.3.if.then24_crit_edge, label %for.inc.3

if.end20.3.if.then24_crit_edge:                   ; preds = %if.end20.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24

for.inc.3:                                        ; preds = %if.end20.3
  %arrayidx.3 = getelementptr [5 x ptr], ptr %call.i, i32 0, i32 3
  %19 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i140.3, ptr %arrayidx.3, align 4
  %call13.4 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 4) #5
  %tobool14.not.4 = icmp eq ptr %call13.4, null
  br i1 %tobool14.not.4, label %for.inc.3.for.end_crit_edge, label %if.end16.4

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end16.4:                                       ; preds = %for.inc.3
  %call.i140.4 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 40, i32 noundef 3520) #5
  %tobool18.not.4 = icmp eq ptr %call.i140.4, null
  br i1 %tobool18.not.4, label %if.end16.4.error_unregister_crit_edge, label %if.end20.4

if.end16.4.error_unregister_crit_edge:            ; preds = %if.end16.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_unregister

if.end20.4:                                       ; preds = %if.end16.4
  %call21.4 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call13.4) #5
  %20 = ptrtoint ptr %call.i140.4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call21.4, ptr %call.i140.4, align 4
  %cmp.i.4 = icmp ugt ptr %call21.4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.4, label %if.end20.4.if.then24_crit_edge, label %for.inc.4

if.end20.4.if.then24_crit_edge:                   ; preds = %if.end20.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24

for.inc.4:                                        ; preds = %if.end20.4
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.4 = getelementptr [5 x ptr], ptr %call.i, i32 0, i32 4
  %21 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i140.4, ptr %arrayidx.4, align 4
  br label %for.end

for.end:                                          ; preds = %for.inc.4, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %if.end11.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end11.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ 3, %for.inc.2.for.end_crit_edge ], [ 4, %for.inc.3.for.end_crit_edge ], [ 5, %for.inc.4 ]
  %num_tscs = getelementptr inbounds %struct.rcar_gen3_thermal_priv, ptr %call.i, i32 0, i32 1
  %22 = ptrtoint ptr %num_tscs to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %i.0.lcssa, ptr %num_tscs, align 4
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 104
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  %28 = and i32 %27, 12582912
  call void @__sanitizer_cov_trace_const_cmp4(i32 12582912, i32 %28)
  %cmp.not.i = icmp eq i32 %28, 12582912
  br i1 %cmp.not.i, label %if.end.i141, label %if.then.i

if.then.i:                                        ; preds = %for.end
  %ptat.i = getelementptr inbounds %struct.rcar_gen3_thermal_priv, ptr %call.i, i32 0, i32 3
  %29 = ptrtoint ptr %ptat.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2631, ptr %ptat.i, align 4
  %arrayidx3.i = getelementptr %struct.rcar_gen3_thermal_priv, ptr %call.i, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1509, ptr %arrayidx3.i, align 4
  %arrayidx5.i = getelementptr %struct.rcar_gen3_thermal_priv, ptr %call.i, i32 0, i32 3, i32 2
  %31 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 435, ptr %arrayidx5.i, align 4
  %32 = ptrtoint ptr %num_tscs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_tscs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp696.not.i = icmp eq i32 %33, 0
  br i1 %cmp696.not.i, label %if.then.i.do.end_crit_edge, label %if.then.i.for.body.i_crit_edge

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  br label %for.body.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.i.for.body.i_crit_edge
  %i.097.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.i.for.body.i_crit_edge ]
  %arrayidx8.i = getelementptr [5 x ptr], ptr %call.i, i32 0, i32 %i.097.i
  %34 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx8.i, align 4
  %arrayidx9.i = getelementptr [5 x [3 x i32]], ptr @rcar_gen3_thermal_read_fuses.thcodes, i32 0, i32 %i.097.i
  %36 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx9.i, align 4
  %thcode.i = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, ptr %35, i32 0, i32 4
  %38 = ptrtoint ptr %thcode.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %thcode.i, align 4
  %arrayidx13.i = getelementptr [5 x [3 x i32]], ptr @rcar_gen3_thermal_read_fuses.thcodes, i32 0, i32 %i.097.i, i32 1
  %39 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx13.i, align 4
  %arrayidx15.i = getelementptr %struct.rcar_gen3_thermal_tsc, ptr %35, i32 0, i32 4, i32 1
  %41 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx15.i, align 4
  %arrayidx17.i = getelementptr [5 x [3 x i32]], ptr @rcar_gen3_thermal_read_fuses.thcodes, i32 0, i32 %i.097.i, i32 2
  %42 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx17.i, align 4
  %arrayidx19.i = getelementptr %struct.rcar_gen3_thermal_tsc, ptr %35, i32 0, i32 4, i32 2
  %44 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx19.i, align 4
  %inc.i = add nuw i32 %i.097.i, 1
  %45 = ptrtoint ptr %num_tscs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_tscs, align 4
  %cmp6.i = icmp ult i32 %inc.i, %46
  br i1 %cmp6.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.rcar_gen3_thermal_read_fuses.exit_crit_edge

for.body.i.rcar_gen3_thermal_read_fuses.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcar_gen3_thermal_read_fuses.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end.i141:                                      ; preds = %for.end
  %47 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %add.ptr.i89.i = getelementptr i8, ptr %50, i32 92
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i89.i) #5, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  %52 = and i32 %51, -15794176
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #5
  %ptat24.i = getelementptr inbounds %struct.rcar_gen3_thermal_priv, ptr %call.i, i32 0, i32 3
  %54 = ptrtoint ptr %ptat24.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %ptat24.i, align 4
  %55 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %add.ptr.i90.i = getelementptr i8, ptr %58, i32 96
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i90.i) #5, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  %60 = and i32 %59, -15794176
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #5
  %arrayidx31.i = getelementptr %struct.rcar_gen3_thermal_priv, ptr %call.i, i32 0, i32 3, i32 1
  %62 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %arrayidx31.i, align 4
  %63 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %add.ptr.i91.i = getelementptr i8, ptr %66, i32 100
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i91.i) #5, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  %68 = and i32 %67, -15794176
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #5
  %arrayidx37.i = getelementptr %struct.rcar_gen3_thermal_priv, ptr %call.i, i32 0, i32 3, i32 2
  %70 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %arrayidx37.i, align 4
  %71 = ptrtoint ptr %num_tscs to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_tscs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp4098.not.i = icmp eq i32 %72, 0
  br i1 %cmp4098.not.i, label %if.end.i141.error_unregister_crit_edge, label %if.end.i141.for.body41.i_crit_edge

if.end.i141.for.body41.i_crit_edge:               ; preds = %if.end.i141
  br label %for.body41.i

if.end.i141.error_unregister_crit_edge:           ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_unregister

for.body41.i:                                     ; preds = %for.body41.i.for.body41.i_crit_edge, %if.end.i141.for.body41.i_crit_edge
  %i.199.i = phi i32 [ %inc58.i, %for.body41.i.for.body41.i_crit_edge ], [ 0, %if.end.i141.for.body41.i_crit_edge ]
  %arrayidx44.i = getelementptr [5 x ptr], ptr %call.i, i32 0, i32 %i.199.i
  %73 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx44.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %add.ptr.i92.i = getelementptr i8, ptr %76, i32 80
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i92.i) #5, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  %78 = and i32 %77, -15794176
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #5
  %thcode47.i = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, ptr %74, i32 0, i32 4
  %80 = ptrtoint ptr %thcode47.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %thcode47.i, align 4
  %81 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %74, align 4
  %add.ptr.i93.i = getelementptr i8, ptr %82, i32 84
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i93.i) #5, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  %84 = and i32 %83, -15794176
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #5
  %arrayidx52.i = getelementptr %struct.rcar_gen3_thermal_tsc, ptr %74, i32 0, i32 4, i32 1
  %86 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %arrayidx52.i, align 4
  %87 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %74, align 4
  %add.ptr.i94.i = getelementptr i8, ptr %88, i32 88
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i94.i) #5, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  %90 = and i32 %89, -15794176
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #5
  %arrayidx56.i = getelementptr %struct.rcar_gen3_thermal_tsc, ptr %74, i32 0, i32 4, i32 2
  %92 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %arrayidx56.i, align 4
  %inc58.i = add nuw i32 %i.199.i, 1
  %93 = ptrtoint ptr %num_tscs to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %num_tscs, align 4
  %cmp40.i = icmp ult i32 %inc58.i, %94
  br i1 %cmp40.i, label %for.body41.i.for.body41.i_crit_edge, label %for.body41.i.rcar_gen3_thermal_read_fuses.exit_crit_edge

for.body41.i.rcar_gen3_thermal_read_fuses.exit_crit_edge: ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcar_gen3_thermal_read_fuses.exit

for.body41.i.for.body41.i_crit_edge:              ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body41.i

rcar_gen3_thermal_read_fuses.exit:                ; preds = %for.body41.i.rcar_gen3_thermal_read_fuses.exit_crit_edge, %for.body.i.rcar_gen3_thermal_read_fuses.exit_crit_edge
  br i1 %cmp.not.i, label %rcar_gen3_thermal_read_fuses.exit.if.end30_crit_edge, label %rcar_gen3_thermal_read_fuses.exit.do.end_crit_edge

rcar_gen3_thermal_read_fuses.exit.do.end_crit_edge: ; preds = %rcar_gen3_thermal_read_fuses.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

rcar_gen3_thermal_read_fuses.exit.if.end30_crit_edge: ; preds = %rcar_gen3_thermal_read_fuses.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

do.end:                                           ; preds = %rcar_gen3_thermal_read_fuses.exit.do.end_crit_edge, %if.then.i.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %if.end30

if.end30:                                         ; preds = %do.end, %rcar_gen3_thermal_read_fuses.exit.if.end30_crit_edge
  %95 = ptrtoint ptr %num_tscs to i32
  call void @__asan_load4_noabort(i32 %95)
  %.pr = load i32, ptr %num_tscs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp33173.not = icmp eq i32 %.pr, 0
  br i1 %cmp33173.not, label %if.end30.error_unregister_crit_edge, label %for.body34.lr.ph

if.end30.error_unregister_crit_edge:              ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_unregister

for.body34.lr.ph:                                 ; preds = %if.end30
  %ptat.i143 = getelementptr inbounds %struct.rcar_gen3_thermal_priv, ptr %call.i, i32 0, i32 3
  %arrayidx.i = getelementptr %struct.rcar_gen3_thermal_priv, ptr %call.i, i32 0, i32 3, i32 1
  %arrayidx2.i = getelementptr %struct.rcar_gen3_thermal_priv, ptr %call.i, i32 0, i32 3, i32 2
  br label %for.body34

for.body34:                                       ; preds = %for.inc69.for.body34_crit_edge, %for.body34.lr.ph
  %i.1174 = phi i32 [ 0, %for.body34.lr.ph ], [ %inc70, %for.inc69.for.body34_crit_edge ]
  %arrayidx37 = getelementptr [5 x ptr], ptr %call.i, i32 0, i32 %i.1174
  %96 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx37, align 4
  %call38 = tail call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %dev1, i32 noundef %i.1174, ptr noundef %97, ptr noundef nonnull @rcar_gen3_tz_of_ops) #5
  %cmp.i142 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i142, label %do.end43, label %if.end45

do.end43:                                         ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #8
  %98 = ptrtoint ptr %call38 to i32
  br label %error_unregister

if.end45:                                         ; preds = %for.body34
  %zone46 = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, ptr %97, i32 0, i32 1
  %99 = ptrtoint ptr %zone46 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call38, ptr %zone46, align 4
  %100 = ptrtoint ptr %thermal_init to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %thermal_init, align 4
  tail call void %101(ptr noundef %97) #5
  %102 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %call, align 4
  %104 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx.i, align 4
  %106 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx2.i, align 4
  %sub.i = sub i32 %105, %107
  %sub3.i = shl i32 %103, 7
  %mul.i = add i32 %sub3.i, 5248
  %shl.i = mul i32 %sub.i, %mul.i
  %108 = ptrtoint ptr %ptat.i143 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %ptat.i143, align 4
  %sub8.i = sub i32 %109, %107
  %div.i = sdiv i32 %shl.i, %sub8.i
  %add.i = add i32 %div.i, -5248
  %tj_t.i = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, ptr %97, i32 0, i32 3
  %110 = ptrtoint ptr %tj_t.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %add.i, ptr %tj_t.i, align 4
  %thcode.i144 = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, ptr %97, i32 0, i32 4
  %arrayidx9.i145 = getelementptr %struct.rcar_gen3_thermal_tsc, ptr %97, i32 0, i32 4, i32 1
  %111 = ptrtoint ptr %arrayidx9.i145 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx9.i145, align 4
  %arrayidx11.i = getelementptr %struct.rcar_gen3_thermal_tsc, ptr %97, i32 0, i32 4, i32 2
  %113 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx11.i, align 4
  %sub12.i = sub i32 %112, %114
  %shl13.i = shl i32 %sub12.i, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shl13.i)
  %cmp.i146 = icmp slt i32 %shl13.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.i)
  %cmp17.i = icmp sgt i32 %div.i, 0
  %cmp19.i = xor i1 %cmp17.i, %cmp.i146
  %add22.pn.v.v.i = select i1 %cmp19.i, i32 2, i32 -2
  %add22.pn.v.i = sdiv i32 %div.i, %add22.pn.v.v.i
  %add22.pn.i = add i32 %shl13.i, %add22.pn.v.i
  %cond.i = sdiv i32 %add22.pn.i, %div.i
  %coef.i = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, ptr %97, i32 0, i32 2
  %115 = ptrtoint ptr %coef.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %cond.i, ptr %coef.i, align 4
  %shl29.i = shl i32 %114, 7
  %mul32.neg.i = mul i32 %cond.i, 41
  %sub33.i = add i32 %mul32.neg.i, %shl29.i
  %b1.i = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, ptr %97, i32 0, i32 2, i32 1
  %116 = ptrtoint ptr %b1.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %sub33.i, ptr %b1.i, align 4
  %117 = ptrtoint ptr %thcode.i144 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %thcode.i144, align 4
  %sub40.i = sub i32 %112, %118
  %shl41.i = shl i32 %sub40.i, 14
  %shl45.neg.i = mul i32 %103, -128
  %sub46.i = add i32 %add.i, %shl45.neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shl41.i)
  %cmp48.i = icmp slt i32 %shl41.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub46.i)
  %cmp50.i = icmp sgt i32 %sub46.i, 0
  %cmp52.i = xor i1 %cmp50.i, %cmp48.i
  %add56.pn.v.v.i = select i1 %cmp52.i, i32 2, i32 -2
  %add56.pn.v.i = sdiv i32 %sub46.i, %add56.pn.v.v.i
  %add56.pn.i = add i32 %shl41.i, %add56.pn.v.i
  %cond63.i = sdiv i32 %add56.pn.i, %sub46.i
  %a2.i = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, ptr %97, i32 0, i32 2, i32 2
  %119 = ptrtoint ptr %a2.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %cond63.i, ptr %a2.i, align 4
  %shl67.i = shl i32 %118, 7
  %mul70.i = mul i32 %cond63.i, %103
  %sub71.i = sub i32 %shl67.i, %mul70.i
  %b2.i = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, ptr %97, i32 0, i32 2, i32 3
  %120 = ptrtoint ptr %b2.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %sub71.i, ptr %b2.i, align 4
  %121 = ptrtoint ptr %zone46 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %zone46, align 4
  %tzp = getelementptr inbounds %struct.thermal_zone_device, ptr %122, i32 0, i32 21
  %123 = ptrtoint ptr %tzp to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %tzp, align 8
  %no_hwmon = getelementptr inbounds %struct.thermal_zone_params, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %no_hwmon to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 0, ptr %no_hwmon, align 4
  %126 = load ptr, ptr %zone46, align 4
  %call50 = tail call i32 @thermal_add_hwmon_sysfs(ptr noundef %126) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end45.error_unregister_crit_edge

if.end45.error_unregister_crit_edge:              ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_unregister

if.end53:                                         ; preds = %if.end45
  %call.i147 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @rcar_gen3_hwmon_action, ptr noundef %call38) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147)
  %tobool.not.i148 = icmp eq i32 %call.i147, 0
  br i1 %tobool.not.i148, label %if.end57, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @thermal_remove_hwmon_sysfs(ptr noundef %call38) #5
  br label %error_unregister

if.end57:                                         ; preds = %if.end53
  %127 = ptrtoint ptr %zone46 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %zone46, align 4
  %call59 = tail call i32 @of_thermal_get_ntrips(ptr noundef %128) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %if.end57.error_unregister_crit_edge, label %for.inc69

if.end57.error_unregister_crit_edge:              ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_unregister

for.inc69:                                        ; preds = %if.end57
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %i.1174, i32 noundef %call59) #8
  %inc70 = add nuw i32 %i.1174, 1
  %129 = ptrtoint ptr %num_tscs to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %num_tscs, align 4
  %cmp33 = icmp ult i32 %inc70, %130
  br i1 %cmp33, label %for.inc69.for.body34_crit_edge, label %for.end71

for.inc69.for.body34_crit_edge:                   ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body34

for.end71:                                        ; preds = %for.inc69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %phi.cmp = icmp eq i32 %130, 0
  br i1 %phi.cmp, label %for.end71.error_unregister_crit_edge, label %for.end71.cleanup77_crit_edge

for.end71.cleanup77_crit_edge:                    ; preds = %for.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup77

for.end71.error_unregister_crit_edge:             ; preds = %for.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_unregister

error_unregister:                                 ; preds = %for.end71.error_unregister_crit_edge, %if.end57.error_unregister_crit_edge, %devm_add_action_or_reset.exit, %if.end45.error_unregister_crit_edge, %do.end43, %if.end30.error_unregister_crit_edge, %if.end.i141.error_unregister_crit_edge, %if.end16.4.error_unregister_crit_edge, %if.end16.3.error_unregister_crit_edge, %if.end16.2.error_unregister_crit_edge, %if.end16.1.error_unregister_crit_edge, %if.then24, %if.end16.error_unregister_crit_edge
  %ret.3 = phi i32 [ -19, %for.end71.error_unregister_crit_edge ], [ %12, %if.then24 ], [ %call.i147, %devm_add_action_or_reset.exit ], [ %98, %do.end43 ], [ -12, %if.end16.4.error_unregister_crit_edge ], [ -12, %if.end16.3.error_unregister_crit_edge ], [ -12, %if.end16.2.error_unregister_crit_edge ], [ -12, %if.end16.1.error_unregister_crit_edge ], [ -12, %if.end16.error_unregister_crit_edge ], [ -19, %if.end30.error_unregister_crit_edge ], [ -19, %if.end.i141.error_unregister_crit_edge ], [ %call50, %if.end45.error_unregister_crit_edge ], [ %call59, %if.end57.error_unregister_crit_edge ]
  %call.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #5
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #5
  br label %cleanup77

cleanup77:                                        ; preds = %error_unregister, %for.end71.cleanup77_crit_edge, %entry.cleanup77_crit_edge
  %retval.0 = phi i32 [ %ret.3, %error_unregister ], [ -12, %entry.cleanup77_crit_edge ], [ 0, %for.end71.cleanup77_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_gen3_thermal_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #5
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_gen3_thermal_init(ptr nocapture noundef readonly %tsc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tsc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tsc, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 32
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  %3 = and i32 %2, -1073741825
  %4 = ptrtoint ptr %tsc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tsc, align 4
  %add.ptr.i12 = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %3) #5, !srcloc !63
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %6 = ptrtoint ptr %tsc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tsc, align 4
  %add.ptr.i13 = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 0) #5, !srcloc !63
  %8 = ptrtoint ptr %tsc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tsc, align 4
  %add.ptr.i14 = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 0) #5, !srcloc !63
  %zone = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, ptr %tsc, i32 0, i32 1
  %10 = ptrtoint ptr %zone to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %zone, align 4
  %ops = getelementptr inbounds %struct.thermal_zone_device, ptr %11, i32 0, i32 20
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %set_trips = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %set_trips to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_trips, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %tsc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tsc, align 4
  %add.ptr.i15 = getelementptr i8, ptr %17, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 167772160) #5, !srcloc !63
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %18 = ptrtoint ptr %tsc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tsc, align 4
  %add.ptr.i16 = getelementptr i8, ptr %19, i32 32
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16) #5, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  %21 = or i32 %20, 16777216
  %22 = ptrtoint ptr %tsc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tsc, align 4
  %add.ptr.i17 = getelementptr i8, ptr %23, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %21) #5, !srcloc !63
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_gen3_thermal_init_r8a7795es1(ptr nocapture noundef readonly %tsc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tsc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tsc, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 536870912) #5, !srcloc !63
  %2 = ptrtoint ptr %tsc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tsc, align 4
  %add.ptr.i9 = getelementptr i8, ptr %3, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 0) #5, !srcloc !63
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %4 = ptrtoint ptr %tsc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tsc, align 4
  %add.ptr.i10 = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 65536) #5, !srcloc !63
  %6 = ptrtoint ptr %tsc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tsc, align 4
  %add.ptr.i11 = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 1056964608) #5, !srcloc !63
  %8 = ptrtoint ptr %tsc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tsc, align 4
  %add.ptr.i12 = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 0) #5, !srcloc !63
  %zone = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, ptr %tsc, i32 0, i32 1
  %10 = ptrtoint ptr %zone to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %zone, align 4
  %ops = getelementptr inbounds %struct.thermal_zone_device, ptr %11, i32 0, i32 20
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %set_trips = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %set_trips to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_trips, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %tsc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tsc, align 4
  %add.ptr.i13 = getelementptr i8, ptr %17, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 167772160) #5, !srcloc !63
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %18 = ptrtoint ptr %tsc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tsc, align 4
  %add.ptr.i14 = getelementptr i8, ptr %19, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 -1342111744) #5, !srcloc !63
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #5
  %20 = ptrtoint ptr %tsc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tsc, align 4
  %add.ptr.i15 = getelementptr i8, ptr %21, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 -1291780096) #5, !srcloc !63
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_add_hwmon_sysfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_gen3_hwmon_action(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @thermal_remove_hwmon_sysfs(ptr noundef %data) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_thermal_get_ntrips(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_gen3_thermal_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %num_tscs = getelementptr inbounds %struct.rcar_gen3_thermal_priv, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %num_tscs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_tscs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp13.not = icmp eq i32 %1, 0
  br i1 %cmp13.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [5 x ptr], ptr %data, i32 0, i32 %i.014
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %add.ptr.i12 = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 0) #5, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %zone = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %zone to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %zone, align 4
  tail call void @thermal_zone_device_update(ptr noundef %14, i32 noundef 0) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.014, 1
  %15 = ptrtoint ptr %num_tscs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_tscs, align 4
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_update(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_gen3_thermal_get_temp(ptr nocapture noundef readonly %devdata, ptr nocapture noundef writeonly %temp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 40
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  %3 = and i32 %2, -15794176
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %arrayidx = getelementptr %struct.rcar_gen3_thermal_tsc, ptr %devdata, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.not = icmp sgt i32 %4, %6
  %b2 = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, ptr %devdata, i32 0, i32 2, i32 3
  %a2 = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, ptr %devdata, i32 0, i32 2, i32 2
  %coef = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, ptr %devdata, i32 0, i32 2
  %b1 = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, ptr %devdata, i32 0, i32 2, i32 1
  %a2.sink = select i1 %cmp.not, ptr %a2, ptr %coef
  %.pn.in = select i1 %cmp.not, ptr %b2, ptr %b1
  %shl13 = shl nuw nsw i32 %4, 7
  %7 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load i32, ptr %.pn.in, align 4
  %shl16.sink58.in = sub i32 %shl13, %.pn
  %shl16.sink58 = shl i32 %shl16.sink58.in, 7
  %8 = ptrtoint ptr %a2.sink to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %a2.sink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shl16.sink58)
  %cmp20 = icmp slt i32 %shl16.sink58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp22 = icmp sgt i32 %9, 0
  %cmp24 = xor i1 %cmp22, %cmp20
  %add28.pn.v.v = select i1 %cmp24, i32 2, i32 -2
  %add28.pn.v = sdiv i32 %9, %add28.pn.v.v
  %add28.pn = add i32 %shl16.sink58, %add28.pn.v
  %cond35 = sdiv i32 %add28.pn, %9
  %mul = mul i32 %cond35, 1000
  %shr = ashr i32 %mul, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mul)
  %cmp.i = icmp sgt i32 %mul, -1
  %cond.i = select i1 %cmp.i, i32 250, i32 -250
  %add.i = add nsw i32 %cond.i, %shr
  %10 = srem i32 %add.i, 500
  %mul.i = sub nsw i32 %add.i, %10
  %11 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul.i, ptr %temp, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_gen3_thermal_set_trips(ptr nocapture noundef readonly %devdata, i32 noundef %low, i32 noundef %high) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483647, i32 %low)
  %cmp.not = icmp eq i32 %low, -2147483647
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %low)
  %cmp.i = icmp sgt i32 %low, 0
  %cond.in.v.i = select i1 %cmp.i, i32 500, i32 -500
  %cond.in.i = add i32 %cond.in.v.i, %low
  %cond.i = sdiv i32 %cond.in.i, 1000
  %tj_t.i = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, ptr %devdata, i32 0, i32 3
  %0 = ptrtoint ptr %tj_t.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tj_t.i, align 4
  %shr.i = ashr i32 %1, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %shr.i)
  %cmp8.not.i = icmp sgt i32 %cond.i, %shr.i
  %a2.i = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, ptr %devdata, i32 0, i32 2, i32 2
  %b2.i = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, ptr %devdata, i32 0, i32 2, i32 3
  %coef.i = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, ptr %devdata, i32 0, i32 2
  %b1.i = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, ptr %devdata, i32 0, i32 2, i32 1
  %b2.sink.i = select i1 %cmp8.not.i, ptr %b2.i, ptr %b1.i
  %.pn.in.i = select i1 %cmp8.not.i, ptr %a2.i, ptr %coef.i
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load i32, ptr %.pn.in.i, align 4
  %mul13.sink.i = mul i32 %.pn.i, %cond.i
  %3 = ptrtoint ptr %b2.sink.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %b2.sink.i, align 4
  %add15.i = add i32 %mul13.sink.i, %4
  %shr16.i = ashr i32 %add15.i, 7
  %5 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %devdata, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %7 = tail call i32 @llvm.bswap.i32(i32 %shr16.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #5, !srcloc !63
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %irqmsk.0 = phi i32 [ 8, %if.then ], [ 0, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %high)
  %cmp1.not = icmp eq i32 %high, 2147483647
  br i1 %cmp1.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %or3 = or i32 %irqmsk.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %high)
  %cmp.i14 = icmp sgt i32 %high, 0
  %cond.in.v.i15 = select i1 %cmp.i14, i32 500, i32 -500
  %cond.in.i16 = add i32 %cond.in.v.i15, %high
  %cond.i17 = sdiv i32 %cond.in.i16, 1000
  %tj_t.i18 = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, ptr %devdata, i32 0, i32 3
  %8 = ptrtoint ptr %tj_t.i18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tj_t.i18, align 4
  %shr.i19 = ashr i32 %9, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i17, i32 %shr.i19)
  %cmp8.not.i20 = icmp sgt i32 %cond.i17, %shr.i19
  %a2.i24 = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, ptr %devdata, i32 0, i32 2, i32 2
  %b2.i25 = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, ptr %devdata, i32 0, i32 2, i32 3
  %coef.i21 = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, ptr %devdata, i32 0, i32 2
  %b1.i22 = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, ptr %devdata, i32 0, i32 2, i32 1
  %b2.sink.i27 = select i1 %cmp8.not.i20, ptr %b2.i25, ptr %b1.i22
  %.pn.in.i28 = select i1 %cmp8.not.i20, ptr %a2.i24, ptr %coef.i21
  %10 = ptrtoint ptr %.pn.in.i28 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i29 = load i32, ptr %.pn.in.i28, align 4
  %mul13.sink.i30 = mul i32 %.pn.i29, %cond.i17
  %11 = ptrtoint ptr %b2.sink.i27 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %b2.sink.i27, align 4
  %add15.i31 = add i32 %mul13.sink.i30, %12
  %shr16.i32 = ashr i32 %add15.i31, 7
  %13 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %devdata, align 4
  %add.ptr.i34 = getelementptr i8, ptr %14, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %15 = tail call i32 @llvm.bswap.i32(i32 %shr16.i32) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %15) #5, !srcloc !63
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %irqmsk.1 = phi i32 [ %or3, %if.then2 ], [ %irqmsk.0, %if.end.if.end5_crit_edge ]
  %16 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %devdata, align 4
  %add.ptr.i35 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %18 = tail call i32 @llvm.bswap.i32(i32 %irqmsk.1) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %18) #5, !srcloc !63
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_remove_hwmon_sysfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_gen3_thermal_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %num_tscs = getelementptr inbounds %struct.rcar_gen3_thermal_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %num_tscs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_tscs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11.not = icmp eq i32 %3, 0
  br i1 %cmp11.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %thermal_init = getelementptr inbounds %struct.rcar_gen3_thermal_priv, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr [5 x ptr], ptr %1, i32 0, i32 %i.012
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %zone1 = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %zone1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %zone1, align 4
  %8 = ptrtoint ptr %thermal_init to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %thermal_init, align 4
  tail call void %9(ptr noundef %5) #5
  %ops = getelementptr inbounds %struct.thermal_zone_device, ptr %7, i32 0, i32 20
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %set_trips = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %set_trips to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_trips, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %prev_low_trip = getelementptr inbounds %struct.thermal_zone_device, ptr %7, i32 0, i32 17
  %14 = ptrtoint ptr %prev_low_trip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %prev_low_trip, align 8
  %prev_high_trip = getelementptr inbounds %struct.thermal_zone_device, ptr %7, i32 0, i32 18
  %16 = ptrtoint ptr %prev_high_trip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %prev_high_trip, align 4
  %call2 = tail call i32 @rcar_gen3_thermal_set_trips(ptr noundef %5, i32 noundef %15, i32 noundef %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %inc = add nuw i32 %i.012, 1
  %18 = ptrtoint ptr %num_tscs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_tscs, align 4
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @__initcall__kmod_rcar_gen3_thermal__188_578_rcar_gen3_thermal_driver_init6, !1, !"__initcall__kmod_rcar_gen3_thermal__188_578_rcar_gen3_thermal_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/thermal/rcar_gen3_thermal.c", i32 578, i32 1}
!2 = !{ptr @__exitcall_rcar_gen3_thermal_driver_exit, !1, !"__exitcall_rcar_gen3_thermal_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file189, !4, !"__UNIQUE_ID_file189", i1 false, i1 false}
!4 = !{!"../drivers/thermal/rcar_gen3_thermal.c", i32 580, i32 1}
!5 = !{ptr @__UNIQUE_ID_license190, !4, !"__UNIQUE_ID_license190", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description191, !7, !"__UNIQUE_ID_description191", i1 false, i1 false}
!7 = !{!"../drivers/thermal/rcar_gen3_thermal.c", i32 581, i32 1}
!8 = !{ptr @__UNIQUE_ID_author192, !9, !"__UNIQUE_ID_author192", i1 false, i1 false}
!9 = !{!"../drivers/thermal/rcar_gen3_thermal.c", i32 582, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/thermal/rcar_gen3_thermal.c", i32 571, i32 11}
!12 = !{ptr @rcar_gen3_thermal_driver, !13, !"rcar_gen3_thermal_driver", i1 false, i1 false}
!13 = !{!"../drivers/thermal/rcar_gen3_thermal.c", i32 569, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/thermal/rcar_gen3_thermal.c", i32 502, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rcar_gen3_thermal_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @rcar_gen3_thermal_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/thermal/rcar_gen3_thermal.c", i32 510, i32 4}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @rcar_gen3_thermal_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @rcar_gen3_thermal_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/thermal/rcar_gen3_thermal.c", i32 532, i32 3}
!29 = !{ptr @rcar_gen3_thermal_probe._entry.10, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @rcar_gen3_thermal_probe._entry_ptr.12, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/thermal/rcar_gen3_thermal.c", i32 251, i32 37}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/thermal/rcar_gen3_thermal.c", i32 251, i32 14}
!35 = !{ptr @r8a7795es1, !36, !"r8a7795es1", i1 false, i1 false}
!36 = !{!"../drivers/thermal/rcar_gen3_thermal.c", i32 250, i32 42}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/thermal/rcar_gen3_thermal.c", i32 436, i32 45}
!39 = !{ptr @rcar_gen3_tz_of_ops, !40, !"rcar_gen3_tz_of_ops", i1 false, i1 false}
!40 = !{!"../drivers/thermal/rcar_gen3_thermal.c", i32 228, i32 42}
!41 = !{ptr @rcar_gen3_thermal_read_fuses.thcodes, !42, !"thcodes", i1 false, i1 false}
!42 = !{!"../drivers/thermal/rcar_gen3_thermal.c", i32 264, i32 20}
!43 = !{ptr @rcar_gen3_thermal_dt_ids, !44, !"rcar_gen3_thermal_dt_ids", i1 false, i1 false}
!44 = !{!"../drivers/thermal/rcar_gen3_thermal.c", i32 365, i32 34}
!45 = !{ptr @rcar_gen3_ths_tj_1_m3_w, !46, !"rcar_gen3_ths_tj_1_m3_w", i1 false, i1 false}
!46 = !{!"../drivers/thermal/rcar_gen3_thermal.c", i32 364, i32 18}
!47 = !{ptr @rcar_gen3_ths_tj_1, !48, !"rcar_gen3_ths_tj_1", i1 false, i1 false}
!48 = !{!"../drivers/thermal/rcar_gen3_thermal.c", i32 363, i32 18}
!49 = !{ptr @rcar_gen3_thermal_pm_ops, !50, !"rcar_gen3_thermal_pm_ops", i1 false, i1 false}
!50 = !{!"../drivers/thermal/rcar_gen3_thermal.c", i32 566, i32 8}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{i64 4219197}
!61 = !{i64 2151759546}
!62 = !{i64 2151760901}
!63 = !{i64 4218779}
