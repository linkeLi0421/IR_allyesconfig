; ModuleID = '/llk/IR_all_yes/drivers/devfreq/event/exynos-ppmu.c_pt.bc'
source_filename = "../drivers/devfreq/event/exynos-ppmu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.__exynos_ppmu_events = type { ptr, i32 }
%struct.devfreq_event_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.exynos_ppmu = type { ptr, ptr, i32, ptr, ptr, %struct.exynos_ppmu_data, i32 }
%struct.exynos_ppmu_data = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.devfreq_event_desc = type { ptr, i32, ptr, ptr }
%struct.devfreq_event_dev = type { %struct.list_head, %struct.device, %struct.mutex, i32, ptr }
%struct.devfreq_event_data = type { i32, i32 }

@__initcall__kmod_exynos_ppmu__290_716_exynos_ppmu_driver_init6 = internal global ptr @exynos_ppmu_driver_init, section ".initcall6.init", align 4
@exynos_ppmu_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @exynos_ppmu_probe, ptr @exynos_ppmu_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos_ppmu_id_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_exynos_ppmu_driver_exit = internal global ptr @exynos_ppmu_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description291 = internal constant [81 x i8] c"exynos_ppmu.description=Exynos PPMU(Platform Performance Monitoring Unit) driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [56 x i8] c"exynos_ppmu.author=Chanwoo Choi <cw00.choi@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [51 x i8] c"exynos_ppmu.file=drivers/devfreq/event/exynos-ppmu\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [24 x i8] c"exynos_ppmu.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"exynos-ppmu\00", [20 x i8] zeroinitializer }, align 32
@exynos_ppmu_id_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos-ppmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos-ppmu-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@exynos_ppmu_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 665, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to parse devicetree for resource\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"exynos_ppmu_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/devfreq/event/exynos-ppmu.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@exynos_ppmu_probe._entry_ptr = internal global ptr @exynos_ppmu_probe._entry, section ".printk_index", align 4
@exynos_ppmu_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 682, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to add devfreq-event device\0A\00", [60 x i8] zeroinitializer }, align 32
@exynos_ppmu_probe._entry_ptr.8 = internal global ptr @exynos_ppmu_probe._entry.6, section ".printk_index", align 4
@exynos_ppmu_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 687, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016exynos-ppmu: new PPMU device registered %s (%s)\0A\00", [45 x i8] zeroinitializer }, align 32
@exynos_ppmu_probe._entry_ptr.11 = internal global ptr @exynos_ppmu_probe._entry.9, section ".printk_index", align 4
@exynos_ppmu_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 692, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to prepare ppmu clock\0A\00", [34 x i8] zeroinitializer }, align 32
@exynos_ppmu_probe._entry_ptr.14 = internal global ptr @exynos_ppmu_probe._entry.12, section ".printk_index", align 4
@exynos_ppmu_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 615, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to find devicetree node\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"exynos_ppmu_parse_dt\00", [43 x i8] zeroinitializer }, align 32
@exynos_ppmu_parse_dt._entry_ptr = internal global ptr @exynos_ppmu_parse_dt._entry, section ".printk_index", align 4
@exynos_ppmu_regmap_config = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@exynos_ppmu_parse_dt._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"exynos_ppmu:627:(&exynos_ppmu_regmap_config)->lock\00", [45 x i8] zeroinitializer }, align 32
@exynos_ppmu_parse_dt._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.16, ptr @.str.3, i32 629, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to initialize regmap\0A\00", [35 x i8] zeroinitializer }, align 32
@exynos_ppmu_parse_dt._entry_ptr.20 = internal global ptr @exynos_ppmu_parse_dt._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ppmu\00", [27 x i8] zeroinitializer }, align 32
@exynos_ppmu_parse_dt._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.16, ptr @.str.3, i32 636, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot get PPMU clock\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@exynos_ppmu_parse_dt._entry_ptr.25 = internal global ptr @exynos_ppmu_parse_dt._entry.22, section ".printk_index", align 4
@exynos_ppmu_parse_dt._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.16, ptr @.str.3, i32 641, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to parse exynos ppmu dt node\0A\00", [59 x i8] zeroinitializer }, align 32
@exynos_ppmu_parse_dt._entry_ptr.28 = internal global ptr @exynos_ppmu_parse_dt._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"events\00", [25 x i8] zeroinitializer }, align 32
@of_get_devfreq_events._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 516, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"failed to get child node of devfreq-event devices\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"of_get_devfreq_events\00", [42 x i8] zeroinitializer }, align 32
@of_get_devfreq_events._entry_ptr = internal global ptr @of_get_devfreq_events._entry, section ".printk_index", align 4
@ppmu_events = internal constant { [152 x %struct.__exynos_ppmu_events], [288 x i8] } { [152 x %struct.__exynos_ppmu_events] [%struct.__exynos_ppmu_events { ptr @.str.37, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.38, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.39, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.40, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.41, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.42, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.43, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.44, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.45, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.46, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.47, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.48, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.49, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.50, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.51, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.52, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.53, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.54, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.55, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.56, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.57, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.58, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.59, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.60, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.61, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.62, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.63, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.64, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.65, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.66, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.67, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.68, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.69, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.70, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.71, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.72, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.73, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.74, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.75, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.76, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.77, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.78, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.79, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.80, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.81, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.82, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.83, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.84, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.85, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.86, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.87, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.88, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.89, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.90, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.91, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.92, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.93, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.94, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.95, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.96, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.97, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.98, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.99, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.100, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.101, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.102, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.103, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.104, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.105, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.106, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.107, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.108, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.109, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.110, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.111, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.112, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.113, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.114, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.115, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.116, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.117, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.118, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.119, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.120, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.121, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.122, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.123, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.124, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.125, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.126, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.127, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.128, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.129, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.130, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.131, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.132, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.133, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.134, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.135, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.136, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.137, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.138, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.139, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.140, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.141, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.142, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.143, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.144, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.145, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.146, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.147, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.148, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.149, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.150, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.151, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.152, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.153, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.154, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.155, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.156, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.157, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.158, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.159, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.160, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.161, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.162, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.163, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.164, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.165, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.166, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.167, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.168, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.169, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.170, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.171, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.172, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.173, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.174, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.175, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.176, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.177, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.178, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.179, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.180, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.181, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.182, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.183, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.184, i32 3 }, %struct.__exynos_ppmu_events { ptr @.str.185, i32 0 }, %struct.__exynos_ppmu_events { ptr @.str.186, i32 1 }, %struct.__exynos_ppmu_events { ptr @.str.187, i32 2 }, %struct.__exynos_ppmu_events { ptr @.str.188, i32 3 }], [288 x i8] zeroinitializer }, align 32
@of_get_devfreq_events._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.3, i32 545, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"don't know how to configure events : %pOFn\0A\00", [52 x i8] zeroinitializer }, align 32
@of_get_devfreq_events._entry_ptr.34 = internal global ptr @of_get_devfreq_events._entry.32, section ".printk_index", align 4
@exynos_ppmu_ops = internal constant { %struct.devfreq_event_ops, [44 x i8] } { %struct.devfreq_event_ops { ptr null, ptr @exynos_ppmu_disable, ptr null, ptr @exynos_ppmu_set_event, ptr @exynos_ppmu_get_event }, [44 x i8] zeroinitializer }, align 32
@exynos_ppmu_v2_ops = internal constant { %struct.devfreq_event_ops, [44 x i8] } { %struct.devfreq_event_ops { ptr null, ptr @exynos_ppmu_v2_disable, ptr null, ptr @exynos_ppmu_v2_set_event, ptr @exynos_ppmu_v2_get_event }, [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event-name\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"event-data-type\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ppmu-event0-g3d\00", [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ppmu-event1-g3d\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ppmu-event2-g3d\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ppmu-event3-g3d\00", [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ppmu-event0-fsys\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ppmu-event1-fsys\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ppmu-event2-fsys\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ppmu-event3-fsys\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ppmu-event0-dmc0\00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ppmu-event1-dmc0\00", [47 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ppmu-event2-dmc0\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ppmu-event3-dmc0\00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ppmu-event0-dmc1\00", [47 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ppmu-event1-dmc1\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ppmu-event2-dmc1\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ppmu-event3-dmc1\00", [47 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ppmu-event0-cpu\00", [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ppmu-event1-cpu\00", [16 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ppmu-event2-cpu\00", [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ppmu-event3-cpu\00", [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ppmu-event0-rightbus\00", [43 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ppmu-event1-rightbus\00", [43 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ppmu-event2-rightbus\00", [43 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ppmu-event3-rightbus\00", [43 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ppmu-event0-leftbus\00", [44 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ppmu-event1-leftbus\00", [44 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ppmu-event2-leftbus\00", [44 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ppmu-event3-leftbus\00", [44 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ppmu-event0-lcd0\00", [47 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ppmu-event1-lcd0\00", [47 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ppmu-event2-lcd0\00", [47 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ppmu-event3-lcd0\00", [47 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ppmu-event0-camif\00", [46 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ppmu-event1-camif\00", [46 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ppmu-event2-camif\00", [46 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ppmu-event3-camif\00", [46 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ppmu-event0-mfc\00", [16 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ppmu-event1-mfc\00", [16 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ppmu-event2-mfc\00", [16 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ppmu-event3-mfc\00", [16 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ppmu-event0-mfc-left\00", [43 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ppmu-event1-mfc-left\00", [43 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ppmu-event2-mfc-left\00", [43 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ppmu-event3-mfc-left\00", [43 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ppmu-event0-mfc-right\00", [42 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ppmu-event1-mfc-right\00", [42 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ppmu-event2-mfc-right\00", [42 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ppmu-event3-mfc-right\00", [42 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ppmu-event0-drex0-s0\00", [43 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ppmu-event1-drex0-s0\00", [43 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ppmu-event2-drex0-s0\00", [43 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ppmu-event3-drex0-s0\00", [43 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ppmu-event0-drex0-s1\00", [43 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ppmu-event1-drex0-s1\00", [43 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ppmu-event2-drex0-s1\00", [43 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ppmu-event3-drex0-s1\00", [43 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ppmu-event0-drex1-s0\00", [43 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ppmu-event1-drex1-s0\00", [43 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ppmu-event2-drex1-s0\00", [43 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ppmu-event3-drex1-s0\00", [43 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ppmu-event0-drex1-s1\00", [43 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ppmu-event1-drex1-s1\00", [43 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ppmu-event2-drex1-s1\00", [43 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ppmu-event3-drex1-s1\00", [43 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ppmu-event0-eagle\00", [46 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ppmu-event1-eagle\00", [46 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ppmu-event2-eagle\00", [46 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ppmu-event3-eagle\00", [46 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ppmu-event0-kfc\00", [16 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ppmu-event1-kfc\00", [16 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ppmu-event2-kfc\00", [16 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ppmu-event3-kfc\00", [16 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ppmu-event0-isp\00", [16 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ppmu-event1-isp\00", [16 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ppmu-event2-isp\00", [16 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ppmu-event3-isp\00", [16 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ppmu-event0-fimc\00", [47 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ppmu-event1-fimc\00", [47 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ppmu-event2-fimc\00", [47 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ppmu-event3-fimc\00", [47 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ppmu-event0-gscl\00", [47 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ppmu-event1-gscl\00", [47 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ppmu-event2-gscl\00", [47 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ppmu-event3-gscl\00", [47 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ppmu-event0-mscl\00", [47 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ppmu-event1-mscl\00", [47 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ppmu-event2-mscl\00", [47 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ppmu-event3-mscl\00", [47 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event0-fimd0x\00", [45 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event1-fimd0x\00", [45 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event2-fimd0x\00", [45 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event3-fimd0x\00", [45 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event0-fimd1x\00", [45 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event1-fimd1x\00", [45 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event2-fimd1x\00", [45 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event3-fimd1x\00", [45 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event0-d0-cpu\00", [45 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event1-d0-cpu\00", [45 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event2-d0-cpu\00", [45 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event3-d0-cpu\00", [45 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ppmu-event0-d0-general\00", [41 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ppmu-event1-d0-general\00", [41 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ppmu-event2-d0-general\00", [41 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ppmu-event3-d0-general\00", [41 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ppmu-event0-d0-rt\00", [46 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ppmu-event1-d0-rt\00", [46 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ppmu-event2-d0-rt\00", [46 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ppmu-event3-d0-rt\00", [46 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event0-d1-cpu\00", [45 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event1-d1-cpu\00", [45 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event2-d1-cpu\00", [45 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event3-d1-cpu\00", [45 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ppmu-event0-d1-general\00", [41 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ppmu-event1-d1-general\00", [41 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ppmu-event2-d1-general\00", [41 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ppmu-event3-d1-general\00", [41 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ppmu-event0-d1-rt\00", [46 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ppmu-event1-d1-rt\00", [46 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ppmu-event2-d1-rt\00", [46 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ppmu-event3-d1-rt\00", [46 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event0-dmc0_0\00", [45 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event1-dmc0_0\00", [45 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event2-dmc0_0\00", [45 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event3-dmc0_0\00", [45 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event0-dmc0_1\00", [45 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event1-dmc0_1\00", [45 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event2-dmc0_1\00", [45 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event3-dmc0_1\00", [45 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event0-dmc1_0\00", [45 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event1-dmc1_0\00", [45 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event2-dmc1_0\00", [45 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event3-dmc1_0\00", [45 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event0-dmc1_1\00", [45 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event1-dmc1_1\00", [45 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event2-dmc1_1\00", [45 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event3-dmc1_1\00", [45 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event0-dmc0-0\00", [45 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event1-dmc0-0\00", [45 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event2-dmc0-0\00", [45 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event3-dmc0-0\00", [45 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event0-dmc0-1\00", [45 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event1-dmc0-1\00", [45 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event2-dmc0-1\00", [45 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event3-dmc0-1\00", [45 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event0-dmc1-0\00", [45 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event1-dmc1-0\00", [45 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event2-dmc1-0\00", [45 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event3-dmc1-0\00", [45 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event0-dmc1-1\00", [45 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event1-dmc1-1\00", [45 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event2-dmc1-1\00", [45 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppmu-event3-dmc1-1\00", [45 x i8] zeroinitializer }, align 32
@exynos_ppmu_get_event.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.189, ptr @.str.190, ptr @.str.3, ptr @.str.191, i8 0, i8 66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.189 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"exynos_ppmu\00", [20 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"exynos_ppmu_get_event\00", [42 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s (event: %ld/%ld)\0A\00", [43 x i8] zeroinitializer }, align 32
@exynos_ppmu_v2_get_event.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.189, ptr @.str.192, ptr @.str.3, ptr @.str.193, i8 0, i8 120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.192 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"exynos_ppmu_v2_get_event\00", [39 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%25s (load: %ld / %ld)\0A\00", [40 x i8] zeroinitializer }, align 32
@switch.table.exynos_ppmu_probe = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 5, i32 5, i32 5, i32 34], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.194 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.195 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.196 = private unnamed_addr constant [19 x i8] c"exynos_ppmu_driver\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 708, i32 31 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 712, i32 11 }
@___asan_gen_.202 = private unnamed_addr constant [21 x i8] c"exynos_ppmu_id_match\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 491, i32 34 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 664, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 681, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 686, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 692, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 615, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant [26 x i8] c"exynos_ppmu_regmap_config\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 599, i32 29 }
@___asan_gen_.253 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 626, i32 17 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 629, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 633, i32 37 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 636, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 641, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 513, i32 39 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 515, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant [12 x i8] c"ppmu_events\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 54, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 543, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant [16 x i8] c"exynos_ppmu_ops\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 271, i32 39 }
@___asan_gen_.307 = private unnamed_addr constant [19 x i8] c"exynos_ppmu_v2_ops\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 485, i32 39 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 560, i32 33 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 561, i32 36 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 56, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 57, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 60, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 61, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 62, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 63, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 64, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 65, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 66, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 69, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 72, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 73, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 76, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 77, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 78, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 79, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 80, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 81, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 82, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 83, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 84, i32 2 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 85, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 86, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 87, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 90, i32 2 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 91, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 92, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 93, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 94, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 95, i32 2 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 98, i32 2 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 99, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 100, i32 2 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 101, i32 2 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 103, i32 2 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 104, i32 2 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 105, i32 2 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 106, i32 2 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 265, i32 2 }
@___asan_gen_.784 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.785 = private constant [39 x i8] c"../drivers/devfreq/event/exynos-ppmu.c\00", align 1
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 480, i32 2 }
@___asan_gen_.787 = private unnamed_addr constant [31 x i8] c"switch.table.exynos_ppmu_probe\00", align 1
@llvm.compiler.used = appending global [215 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_exynos_ppmu_driver_exit, ptr @__initcall__kmod_exynos_ppmu__290_716_exynos_ppmu_driver_init6, ptr @exynos_ppmu_driver_exit, ptr @exynos_ppmu_parse_dt._entry, ptr @exynos_ppmu_parse_dt._entry.18, ptr @exynos_ppmu_parse_dt._entry.22, ptr @exynos_ppmu_parse_dt._entry.26, ptr @exynos_ppmu_parse_dt._entry_ptr, ptr @exynos_ppmu_parse_dt._entry_ptr.20, ptr @exynos_ppmu_parse_dt._entry_ptr.25, ptr @exynos_ppmu_parse_dt._entry_ptr.28, ptr @exynos_ppmu_probe._entry, ptr @exynos_ppmu_probe._entry.12, ptr @exynos_ppmu_probe._entry.6, ptr @exynos_ppmu_probe._entry.9, ptr @exynos_ppmu_probe._entry_ptr, ptr @exynos_ppmu_probe._entry_ptr.11, ptr @exynos_ppmu_probe._entry_ptr.14, ptr @exynos_ppmu_probe._entry_ptr.8, ptr @of_get_devfreq_events._entry, ptr @of_get_devfreq_events._entry.32, ptr @of_get_devfreq_events._entry_ptr, ptr @of_get_devfreq_events._entry_ptr.34, ptr @exynos_ppmu_driver, ptr @.str, ptr @exynos_ppmu_id_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @exynos_ppmu_regmap_config, ptr @exynos_ppmu_parse_dt._key, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @ppmu_events, ptr @.str.33, ptr @exynos_ppmu_ops, ptr @exynos_ppmu_v2_ops, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @switch.table.exynos_ppmu_probe], section "llvm.metadata"
@0 = internal global [198 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ppmu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ppmu_id_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ppmu_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ppmu_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ppmu_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ppmu_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ppmu_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ppmu_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ppmu_parse_dt._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ppmu_parse_dt._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ppmu_parse_dt._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ppmu_parse_dt._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_devfreq_events._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppmu_events to i32), i32 1216, i32 1504, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_devfreq_events._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ppmu_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_ppmu_v2_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.exynos_ppmu_probe to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_ppmu_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos_ppmu_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exynos_ppmu_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @exynos_ppmu_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_ppmu_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 28, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.exynos_ppmu, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev2, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.do.end.sink.split_crit_edge, label %if.end.i

if.end.do.end.sink.split_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.sink.split

if.end.i:                                         ; preds = %if.end
  %call.i82 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %call2.i = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call.i82) #7
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.exynos_ppmu_parse_dt.exit_crit_edge, label %if.end6.i

if.end.i.exynos_ppmu_parse_dt.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exynos_ppmu_parse_dt.exit

if.end6.i:                                        ; preds = %if.end.i
  %end.i.i = getelementptr inbounds %struct.resource, ptr %call.i82, i32 0, i32 1
  %3 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end.i.i, align 4
  %5 = ptrtoint ptr %call.i82 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call.i82, align 4
  %add.i.i = add i32 %4, -3
  %sub.i = sub i32 %add.i.i, %6
  store i32 %sub.i, ptr getelementptr inbounds (%struct.regmap_config, ptr @exynos_ppmu_regmap_config, i32 0, i32 19), align 4
  %call8.i = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call2.i, ptr noundef nonnull @exynos_ppmu_regmap_config, ptr noundef nonnull @exynos_ppmu_parse_dt._key, ptr noundef nonnull @.str.17) #7
  %regmap.i = getelementptr inbounds %struct.exynos_ppmu, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call8.i, ptr %regmap.i, align 4
  %cmp.i58.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i58.i, label %do.end14.i, label %if.end17.i

do.end14.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #10
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  br label %exynos_ppmu_parse_dt.exit

if.end17.i:                                       ; preds = %if.end6.i
  %call18.i = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.21) #7
  %ppmu.i = getelementptr inbounds %struct.exynos_ppmu, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %ppmu.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call18.i, ptr %ppmu.i, align 4
  %cmp.i59.i = icmp ugt ptr %call18.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i59.i, label %if.then22.i, label %if.end17.i.if.end28.i_crit_edge

if.end17.i.if.end28.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i

if.then22.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %ppmu.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %ppmu.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.23) #10
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then22.i, %if.end17.i.if.end28.i_crit_edge
  %12 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev2, align 4
  %call.i.i = tail call ptr @of_get_child_by_name(ptr noundef nonnull %2, ptr noundef nonnull @.str.29) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.30) #10
  br label %do.end.sink.split

if.end.i.i:                                       ; preds = %if.end28.i
  %call.i.i.i = tail call ptr @of_get_next_child(ptr noundef nonnull %call.i.i, ptr noundef null) #7
  %cmp.not5.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %cmp.not5.i.i.i, label %if.end.i.i.of_get_child_count.exit.i.i_crit_edge, label %if.end.i.i.for.body.i.i.i_crit_edge

if.end.i.i.for.body.i.i.i_crit_edge:              ; preds = %if.end.i.i
  br label %for.body.i.i.i

if.end.i.i.of_get_child_count.exit.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_get_child_count.exit.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.end.i.i.for.body.i.i.i_crit_edge
  %num.07.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end.i.i.for.body.i.i.i_crit_edge ]
  %child.06.i.i.i = phi ptr [ %call1.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %call.i.i.i, %if.end.i.i.for.body.i.i.i_crit_edge ]
  %inc.i.i.i = add i32 %num.07.i.i.i, 1
  %call1.i.i.i = tail call ptr @of_get_next_child(ptr noundef nonnull %call.i.i, ptr noundef nonnull %child.06.i.i.i) #7
  %cmp.not.i.i.i = icmp eq ptr %call1.i.i.i, null
  br i1 %cmp.not.i.i.i, label %for.body.i.i.i.of_get_child_count.exit.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.body.i.i.i.of_get_child_count.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_get_child_count.exit.i.i

of_get_child_count.exit.i.i:                      ; preds = %for.body.i.i.i.of_get_child_count.exit.i.i_crit_edge, %if.end.i.i.of_get_child_count.exit.i.i_crit_edge
  %num.0.lcssa.i.i.i = phi i32 [ 0, %if.end.i.i.of_get_child_count.exit.i.i_crit_edge ], [ %inc.i.i.i, %for.body.i.i.i.of_get_child_count.exit.i.i_crit_edge ]
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num.0.lcssa.i.i.i, i32 16) #7
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %of_get_child_count.exit.i.i.do.end.sink.split_crit_edge, label %devm_kcalloc.exit.i.i, !prof !290

of_get_child_count.exit.i.i.do.end.sink.split_crit_edge: ; preds = %of_get_child_count.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.sink.split

devm_kcalloc.exit.i.i:                            ; preds = %of_get_child_count.exit.i.i
  %16 = extractvalue { i32, i1 } %14, 0
  %call5.i.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %13, i32 noundef %16, i32 noundef 3520) #7
  %tobool4.not.i.i = icmp eq ptr %call5.i.i.i.i, null
  br i1 %tobool4.not.i.i, label %devm_kcalloc.exit.i.i.do.end.sink.split_crit_edge, label %if.end6.i.i

devm_kcalloc.exit.i.i.do.end.sink.split_crit_edge: ; preds = %devm_kcalloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.sink.split

if.end6.i.i:                                      ; preds = %devm_kcalloc.exit.i.i
  %num_events.i.i = getelementptr inbounds %struct.exynos_ppmu, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %num_events.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %num.0.lcssa.i.i.i, ptr %num_events.i.i, align 4
  %call7.i.i = tail call ptr @of_match_device(ptr noundef nonnull @exynos_ppmu_id_match, ptr noundef %13) #7
  %tobool8.not.i.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not.i.i, label %if.end6.i.i.do.end.sink.split_crit_edge, label %if.then9.i.i

if.end6.i.i.do.end.sink.split_crit_edge:          ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.sink.split

if.then9.i.i:                                     ; preds = %if.end6.i.i
  %data.i.i = getelementptr inbounds %struct.of_device_id, ptr %call7.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  %ppmu_type.i.i = getelementptr inbounds %struct.exynos_ppmu, ptr %call.i, i32 0, i32 6
  %21 = ptrtoint ptr %ppmu_type.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %ppmu_type.i.i, align 4
  %call11.i.i = tail call ptr @of_get_next_child(ptr noundef nonnull %call.i.i, ptr noundef null) #7
  %cmp.not120.i.i = icmp eq ptr %call11.i.i, null
  br i1 %cmp.not120.i.i, label %if.then9.i.i.exynos_ppmu_parse_dt.exit.thread95_crit_edge, label %if.then9.i.i.for.cond12.preheader.i.i_crit_edge

if.then9.i.i.for.cond12.preheader.i.i_crit_edge:  ; preds = %if.then9.i.i
  br label %for.cond12.preheader.i.i

if.then9.i.i.exynos_ppmu_parse_dt.exit.thread95_crit_edge: ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exynos_ppmu_parse_dt.exit.thread95

for.cond12.preheader.i.i:                         ; preds = %for.inc59.i.i.for.cond12.preheader.i.i_crit_edge, %if.then9.i.i.for.cond12.preheader.i.i_crit_edge
  %j.0123.i.i = phi i32 [ %j.1.i.i, %for.inc59.i.i.for.cond12.preheader.i.i_crit_edge ], [ 0, %if.then9.i.i.for.cond12.preheader.i.i_crit_edge ]
  %node.0121.i.i = phi ptr [ %call60.i.i, %for.inc59.i.i.for.cond12.preheader.i.i_crit_edge ], [ %call11.i.i, %if.then9.i.i.for.cond12.preheader.i.i_crit_edge ]
  br label %for.body14.i.i

for.body14.i.i:                                   ; preds = %for.inc.i.i.for.body14.i.i_crit_edge, %for.cond12.preheader.i.i
  %i.0118.i.i = phi i32 [ 0, %for.cond12.preheader.i.i ], [ %inc.i.i, %for.inc.i.i.for.body14.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [152 x %struct.__exynos_ppmu_events], ptr @ppmu_events, i32 0, i32 %i.0118.i.i
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool15.not.i.i = icmp eq ptr %23, null
  br i1 %tobool15.not.i.i, label %for.body14.i.i.for.inc.i.i_crit_edge, label %if.end17.i.i

for.body14.i.i.for.inc.i.i_crit_edge:             ; preds = %for.body14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.end17.i.i:                                     ; preds = %for.body14.i.i
  %call20.i.i = tail call zeroext i1 @of_node_name_eq(ptr noundef nonnull %node.0121.i.i, ptr noundef nonnull %23) #7
  br i1 %call20.i.i, label %if.end28.i.i, label %if.end17.i.i.for.inc.i.i_crit_edge

if.end17.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end17.i.i.for.inc.i.i_crit_edge, %for.body14.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.0118.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 152
  br i1 %exitcond.not.i.i, label %do.end27.i.i, label %for.inc.i.i.for.body14.i.i_crit_edge

for.inc.i.i.for.body14.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body14.i.i

do.end27.i.i:                                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.33, ptr noundef nonnull %node.0121.i.i) #10
  br label %for.inc59.i.i

if.end28.i.i:                                     ; preds = %if.end17.i.i
  %24 = ptrtoint ptr %ppmu_type.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ppmu_type.i.i, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %25, label %if.end28.i.i.sw.epilog.i.i_crit_edge [
    i32 0, label %if.end28.i.i.sw.epilog.sink.split.i.i_crit_edge
    i32 1, label %sw.bb31.i.i
  ]

if.end28.i.i.sw.epilog.sink.split.i.i_crit_edge:  ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i.i

if.end28.i.i.sw.epilog.i.i_crit_edge:             ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.bb31.i.i:                                      ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i.i

sw.epilog.sink.split.i.i:                         ; preds = %sw.bb31.i.i, %if.end28.i.i.sw.epilog.sink.split.i.i_crit_edge
  %exynos_ppmu_v2_ops.sink.i.i = phi ptr [ @exynos_ppmu_v2_ops, %sw.bb31.i.i ], [ @exynos_ppmu_ops, %if.end28.i.i.sw.epilog.sink.split.i.i_crit_edge ]
  %ops33.i.i = getelementptr %struct.devfreq_event_desc, ptr %call5.i.i.i.i, i32 %j.0123.i.i, i32 3
  %27 = ptrtoint ptr %ops33.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %exynos_ppmu_v2_ops.sink.i.i, ptr %ops33.i.i, align 4
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.epilog.sink.split.i.i, %if.end28.i.i.sw.epilog.i.i_crit_edge
  %arrayidx34.i.i = getelementptr %struct.devfreq_event_desc, ptr %call5.i.i.i.i, i32 %j.0123.i.i
  %driver_data.i.i = getelementptr %struct.devfreq_event_desc, ptr %call5.i.i.i.i, i32 %j.0123.i.i, i32 2
  %28 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call37.i.i = tail call i32 @of_property_read_string(ptr noundef nonnull %node.0121.i.i, ptr noundef nonnull @.str.35, ptr noundef %arrayidx34.i.i) #7
  %event_type.i.i = getelementptr %struct.devfreq_event_desc, ptr %call5.i.i.i.i, i32 %j.0123.i.i, i32 1
  %call.i.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %node.0121.i.i, ptr noundef nonnull @.str.36, ptr noundef %event_type.i.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %tobool40.not.i.i = icmp sgt i32 %call.i.i.i.i, -1
  br i1 %tobool40.not.i.i, label %sw.epilog.i.i.if.end57.i.i_crit_edge, label %if.then41.i.i

sw.epilog.i.i.if.end57.i.i_crit_edge:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57.i.i

if.then41.i.i:                                    ; preds = %sw.epilog.i.i
  %29 = ptrtoint ptr %ppmu_type.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ppmu_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp43.i.i = icmp eq i32 %30, 1
  br i1 %cmp43.i.i, label %switch.lookup, label %if.then41.i.i.if.end57.sink.split.i.i_crit_edge

if.then41.i.i.if.end57.sink.split.i.i_crit_edge:  ; preds = %if.then41.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57.sink.split.i.i

switch.lookup:                                    ; preds = %if.then41.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %id.i.i = getelementptr [152 x %struct.__exynos_ppmu_events], ptr @ppmu_events, i32 0, i32 %i.0118.i.i, i32 1
  %31 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id.i.i, align 4
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.exynos_ppmu_probe, i32 0, i32 %32
  %33 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %33)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end57.sink.split.i.i

if.end57.sink.split.i.i:                          ; preds = %switch.lookup, %if.then41.i.i.if.end57.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 7, %if.then41.i.i.if.end57.sink.split.i.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %34 = ptrtoint ptr %event_type.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink.i.i, ptr %event_type.i.i, align 4
  br label %if.end57.i.i

if.end57.i.i:                                     ; preds = %if.end57.sink.split.i.i, %sw.epilog.i.i.if.end57.i.i_crit_edge
  %inc58.i.i = add i32 %j.0123.i.i, 1
  br label %for.inc59.i.i

for.inc59.i.i:                                    ; preds = %if.end57.i.i, %do.end27.i.i
  %j.1.i.i = phi i32 [ %j.0123.i.i, %do.end27.i.i ], [ %inc58.i.i, %if.end57.i.i ]
  %call60.i.i = tail call ptr @of_get_next_child(ptr noundef nonnull %call.i.i, ptr noundef nonnull %node.0121.i.i) #7
  %cmp.not.i.i = icmp eq ptr %call60.i.i, null
  br i1 %cmp.not.i.i, label %for.inc59.i.i.exynos_ppmu_parse_dt.exit.thread95_crit_edge, label %for.inc59.i.i.for.cond12.preheader.i.i_crit_edge

for.inc59.i.i.for.cond12.preheader.i.i_crit_edge: ; preds = %for.inc59.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond12.preheader.i.i

for.inc59.i.i.exynos_ppmu_parse_dt.exit.thread95_crit_edge: ; preds = %for.inc59.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exynos_ppmu_parse_dt.exit.thread95

exynos_ppmu_parse_dt.exit.thread95:               ; preds = %for.inc59.i.i.exynos_ppmu_parse_dt.exit.thread95_crit_edge, %if.then9.i.i.exynos_ppmu_parse_dt.exit.thread95_crit_edge
  %desc62.i.i = getelementptr inbounds %struct.exynos_ppmu, ptr %call.i, i32 0, i32 1
  %35 = ptrtoint ptr %desc62.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call5.i.i.i.i, ptr %desc62.i.i, align 4
  tail call void @of_node_put(ptr noundef nonnull %call.i.i) #7
  br label %if.end6

exynos_ppmu_parse_dt.exit:                        ; preds = %do.end14.i, %if.end.i.exynos_ppmu_parse_dt.exit_crit_edge
  %retval.0.i.in = phi ptr [ %9, %do.end14.i ], [ %call2.i, %if.end.i.exynos_ppmu_parse_dt.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  %cmp = icmp slt ptr %retval.0.i.in, null
  br i1 %cmp, label %exynos_ppmu_parse_dt.exit.do.end_crit_edge, label %exynos_ppmu_parse_dt.exit.if.end6_crit_edge

exynos_ppmu_parse_dt.exit.if.end6_crit_edge:      ; preds = %exynos_ppmu_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

exynos_ppmu_parse_dt.exit.do.end_crit_edge:       ; preds = %exynos_ppmu_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end.sink.split:                                ; preds = %if.end6.i.i.do.end.sink.split_crit_edge, %devm_kcalloc.exit.i.i.do.end.sink.split_crit_edge, %of_get_child_count.exit.i.i.do.end.sink.split_crit_edge, %do.end.i.i, %if.end.do.end.sink.split_crit_edge
  %.str.15.sink = phi ptr [ @.str.15, %if.end.do.end.sink.split_crit_edge ], [ @.str.27, %if.end6.i.i.do.end.sink.split_crit_edge ], [ @.str.27, %devm_kcalloc.exit.i.i.do.end.sink.split_crit_edge ], [ @.str.27, %of_get_child_count.exit.i.i.do.end.sink.split_crit_edge ], [ @.str.27, %do.end.i.i ]
  %retval.0.i94.ph = phi i32 [ -22, %if.end.do.end.sink.split_crit_edge ], [ -22, %if.end6.i.i.do.end.sink.split_crit_edge ], [ -12, %devm_kcalloc.exit.i.i.do.end.sink.split_crit_edge ], [ -12, %of_get_child_count.exit.i.i.do.end.sink.split_crit_edge ], [ -22, %do.end.i.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.15.sink) #10
  br label %do.end

do.end:                                           ; preds = %do.end.sink.split, %exynos_ppmu_parse_dt.exit.do.end_crit_edge
  %retval.0.i94 = phi i32 [ %retval.0.i, %exynos_ppmu_parse_dt.exit.do.end_crit_edge ], [ %retval.0.i94.ph, %do.end.sink.split ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end6:                                          ; preds = %exynos_ppmu_parse_dt.exit.if.end6_crit_edge, %exynos_ppmu_parse_dt.exit.thread95
  %desc7 = getelementptr inbounds %struct.exynos_ppmu, ptr %call.i, i32 0, i32 1
  %36 = ptrtoint ptr %desc7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %desc7, align 4
  %num_events = getelementptr inbounds %struct.exynos_ppmu, ptr %call.i, i32 0, i32 2
  %38 = ptrtoint ptr %num_events to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_events, align 4
  %mul = shl i32 %39, 2
  %call.i83 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %mul, i32 noundef 3520) #7
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i83, ptr %call.i, align 4
  %tobool12.not = icmp eq ptr %call.i83, null
  br i1 %tobool12.not, label %if.end6.cleanup_crit_edge, label %if.end14

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %driver_data.i.i84 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %41 = ptrtoint ptr %driver_data.i.i84 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i, ptr %driver_data.i.i84, align 4
  %42 = ptrtoint ptr %num_events to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_events, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp17102.not = icmp eq i32 %43, 0
  br i1 %cmp17102.not, label %if.end14.for.end_crit_edge, label %for.body.lr.ph

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end14
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  br label %for.body

for.body:                                         ; preds = %dev_name.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0103 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %dev_name.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.devfreq_event_desc, ptr %37, i32 %i.0103
  %call19 = tail call ptr @devm_devfreq_event_add_edev(ptr noundef %dev, ptr noundef %arrayidx) #7
  %arrayidx20 = getelementptr ptr, ptr %call.i83, i32 %i.0103
  %44 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call19, ptr %arrayidx20, align 4
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end26, label %do.end33

do.end26:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx20.le = getelementptr ptr, ptr %call.i83, i32 %i.0103
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #10
  %45 = ptrtoint ptr %arrayidx20.le to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx20.le, align 4
  %47 = ptrtoint ptr %46 to i32
  br label %cleanup

do.end33:                                         ; preds = %for.body
  %48 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i85 = icmp eq ptr %49, null
  br i1 %tobool.not.i85, label %if.end.i86, label %do.end33.dev_name.exit_crit_edge

do.end33.dev_name.exit_crit_edge:                 ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i86:                                       ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i86, %do.end33.dev_name.exit_crit_edge
  %retval.0.i87 = phi ptr [ %51, %if.end.i86 ], [ %49, %do.end33.dev_name.exit_crit_edge ]
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx, align 4
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %retval.0.i87, ptr noundef %53) #10
  %inc = add nuw i32 %i.0103, 1
  %54 = ptrtoint ptr %num_events to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_events, align 4
  %cmp17 = icmp ult i32 %inc, %55
  br i1 %cmp17, label %dev_name.exit.for.body_crit_edge, label %dev_name.exit.for.end_crit_edge

dev_name.exit.for.end_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

dev_name.exit.for.body_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %dev_name.exit.for.end_crit_edge, %if.end14.for.end_crit_edge
  %ppmu = getelementptr inbounds %struct.exynos_ppmu, ptr %call.i, i32 0, i32 5
  %56 = ptrtoint ptr %ppmu to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ppmu, align 4
  %call.i88 = tail call i32 @clk_prepare(ptr noundef %57) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %tobool.not.i89 = icmp eq i32 %call.i88, 0
  br i1 %tobool.not.i89, label %if.end.i90, label %for.end.do.end43_crit_edge

for.end.do.end43_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end43

if.end.i90:                                       ; preds = %for.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %57) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i90.cleanup_crit_edge, label %if.then3.i

if.end.i90.cleanup_crit_edge:                     ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %57) #7
  br label %do.end43

do.end43:                                         ; preds = %if.then3.i, %for.end.do.end43_crit_edge
  %retval.0.i91.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i88, %for.end.do.end43_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %if.end.i90.cleanup_crit_edge, %do.end26, %if.end6.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i94, %do.end ], [ %47, %do.end26 ], [ %retval.0.i91.ph, %do.end43 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ 0, %if.end.i90.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_ppmu_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ppmu = getelementptr inbounds %struct.exynos_ppmu, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ppmu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ppmu, align 4
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_devfreq_event_add_edev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_ppmu_disable(ptr nocapture noundef readonly %edev) #2 align 64 {
entry:
  %pmnc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %desc.i = getelementptr inbounds %struct.devfreq_event_dev, ptr %edev, i32 0, i32 4
  %0 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc.i, align 8
  %driver_data.i = getelementptr inbounds %struct.devfreq_event_desc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmnc) #7
  %4 = ptrtoint ptr %pmnc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %pmnc, align 4, !annotation !291
  %regmap = getelementptr inbounds %struct.exynos_ppmu, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 32, i32 noundef -2147483633) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_read(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %pmnc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %pmnc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pmnc, align 4
  %and = and i32 %10, -2
  store i32 %and, ptr %pmnc, align 4
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call8 = call i32 @regmap_write(ptr noundef %12, i32 noundef 0, i32 noundef %and) #7
  %13 = call i32 @llvm.smin.i32(i32 %call8, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %13, %if.end6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmnc) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_ppmu_set_event(ptr nocapture noundef readonly %edev) #2 align 64 {
entry:
  %pmnc = alloca i32, align 4
  %cntens = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %desc.i = getelementptr inbounds %struct.devfreq_event_dev, ptr %edev, i32 0, i32 4
  %0 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc.i, align 8
  %driver_data.i = getelementptr inbounds %struct.devfreq_event_desc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry
  %i.06.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [152 x %struct.__exynos_ppmu_events], ptr @ppmu_events, i32 0, i32 %i.06.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef %5, ptr noundef %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %exynos_ppmu_find_ppmu_id.exit, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.06.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 152
  br i1 %exitcond.not.i.i, label %exynos_ppmu_find_ppmu_id.exit.thread, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

exynos_ppmu_find_ppmu_id.exit.thread:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmnc) #7
  %8 = ptrtoint ptr %pmnc to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %pmnc, align 4, !annotation !291
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cntens) #7
  br label %cleanup

exynos_ppmu_find_ppmu_id.exit:                    ; preds = %for.body.i.i
  %id.i.i = getelementptr [152 x %struct.__exynos_ppmu_events], ptr @ppmu_events, i32 0, i32 %i.06.i.i, i32 1
  %9 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmnc) #7
  %11 = ptrtoint ptr %pmnc to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %pmnc, align 4, !annotation !291
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cntens) #7
  %12 = ptrtoint ptr %cntens to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %cntens, align 4, !annotation !291
  %regmap = getelementptr inbounds %struct.exynos_ppmu, ptr %3, i32 0, i32 4
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %14, i32 noundef 16, ptr noundef nonnull %cntens) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %exynos_ppmu_find_ppmu_id.exit.cleanup_crit_edge, label %if.end5

exynos_ppmu_find_ppmu_id.exit.cleanup_crit_edge:  ; preds = %exynos_ppmu_find_ppmu_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %exynos_ppmu_find_ppmu_id.exit
  %shl = shl nuw i32 1, %10
  %15 = ptrtoint ptr %cntens to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cntens, align 4
  %or = or i32 %shl, %16
  %or6 = or i32 %or, -2147483648
  store i32 %or6, ptr %cntens, align 4
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call8 = call i32 @regmap_write(ptr noundef %18, i32 noundef 16, i32 noundef %or6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end5.cleanup_crit_edge, label %if.end11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %mul = shl i32 %10, 8
  %add = add i32 %mul, 4096
  %21 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %desc.i, align 8
  %event_type = getelementptr inbounds %struct.devfreq_event_desc, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %event_type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %event_type, align 4
  %call13 = call i32 @regmap_write(ptr noundef %20, i32 noundef %add, i32 noundef %24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call18 = call i32 @regmap_read(ptr noundef %26, i32 noundef 0, ptr noundef nonnull %pmnc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end16.cleanup_crit_edge, label %if.end21

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %pmnc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pmnc, align 4
  %or24 = or i32 %28, 7
  store i32 %or24, ptr %pmnc, align 4
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %call26 = call i32 @regmap_write(ptr noundef %30, i32 noundef 0, i32 noundef %or24) #7
  %31 = call i32 @llvm.smin.i32(i32 %call26, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end16.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %exynos_ppmu_find_ppmu_id.exit.cleanup_crit_edge, %exynos_ppmu_find_ppmu_id.exit.thread
  %retval.0 = phi i32 [ %call2, %exynos_ppmu_find_ppmu_id.exit.cleanup_crit_edge ], [ %call8, %if.end5.cleanup_crit_edge ], [ %call13, %if.end11.cleanup_crit_edge ], [ %call18, %if.end16.cleanup_crit_edge ], [ %31, %if.end21 ], [ -22, %exynos_ppmu_find_ppmu_id.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cntens) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmnc) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_ppmu_get_event(ptr noundef %edev, ptr nocapture noundef %edata) #2 align 64 {
entry:
  %total_count = alloca i32, align 4
  %load_count = alloca i32, align 4
  %pmcnt3_high = alloca i32, align 4
  %pmcnt3_low = alloca i32, align 4
  %pmnc = alloca i32, align 4
  %cntenc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %desc.i = getelementptr inbounds %struct.devfreq_event_dev, ptr %edev, i32 0, i32 4
  %0 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc.i, align 8
  %driver_data.i = getelementptr inbounds %struct.devfreq_event_desc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry
  %i.06.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [152 x %struct.__exynos_ppmu_events], ptr @ppmu_events, i32 0, i32 %i.06.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef %5, ptr noundef %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %id.i.i = getelementptr [152 x %struct.__exynos_ppmu_events], ptr @ppmu_events, i32 0, i32 %i.06.i.i, i32 1
  %8 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id.i.i, align 4
  br label %exynos_ppmu_find_ppmu_id.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.06.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 152
  br i1 %exitcond.not.i.i, label %for.inc.i.i.exynos_ppmu_find_ppmu_id.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.exynos_ppmu_find_ppmu_id.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exynos_ppmu_find_ppmu_id.exit

exynos_ppmu_find_ppmu_id.exit:                    ; preds = %for.inc.i.i.exynos_ppmu_find_ppmu_id.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %9, %if.then.i.i ], [ -22, %for.inc.i.i.exynos_ppmu_find_ppmu_id.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %total_count) #7
  %10 = ptrtoint ptr %total_count to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %total_count, align 4, !annotation !291
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %load_count) #7
  %11 = ptrtoint ptr %load_count to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %load_count, align 4, !annotation !291
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmcnt3_high) #7
  %12 = ptrtoint ptr %pmcnt3_high to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %pmcnt3_high, align 4, !annotation !291
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmcnt3_low) #7
  %13 = ptrtoint ptr %pmcnt3_low to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %pmcnt3_low, align 4, !annotation !291
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmnc) #7
  %14 = ptrtoint ptr %pmnc to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %pmnc, align 4, !annotation !291
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cntenc) #7
  %15 = ptrtoint ptr %cntenc to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %cntenc, align 4, !annotation !291
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp, label %exynos_ppmu_find_ppmu_id.exit.cleanup_crit_edge, label %if.end

exynos_ppmu_find_ppmu_id.exit.cleanup_crit_edge:  ; preds = %exynos_ppmu_find_ppmu_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %exynos_ppmu_find_ppmu_id.exit
  %regmap = getelementptr inbounds %struct.exynos_ppmu, ptr %3, i32 0, i32 4
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %17, i32 noundef 0, ptr noundef nonnull %pmnc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %18 = ptrtoint ptr %pmnc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pmnc, align 4
  %and = and i32 %19, -2
  store i32 %and, ptr %pmnc, align 4
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call7 = call i32 @regmap_write(ptr noundef %21, i32 noundef 0, i32 noundef %and) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call12 = call i32 @regmap_read(ptr noundef %23, i32 noundef 256, ptr noundef nonnull %total_count) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %24 = ptrtoint ptr %total_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %total_count, align 4
  %total_count16 = getelementptr inbounds %struct.devfreq_event_data, ptr %edata, i32 0, i32 1
  %26 = ptrtoint ptr %total_count16 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %total_count16, align 4
  %27 = zext i32 %retval.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.194)
  switch i32 %retval.0.i.i, label %if.end15.cleanup_crit_edge [
    i32 0, label %if.end15.sw.bb_crit_edge
    i32 1, label %if.end15.sw.bb_crit_edge103
    i32 2, label %if.end15.sw.bb_crit_edge104
    i32 3, label %sw.bb23
  ]

if.end15.sw.bb_crit_edge104:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end15.sw.bb_crit_edge103:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end15.sw.bb_crit_edge:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end15.sw.bb_crit_edge, %if.end15.sw.bb_crit_edge103, %if.end15.sw.bb_crit_edge104
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %mul = shl nuw nsw i32 %retval.0.i.i, 4
  %add = add nuw nsw i32 %mul, 272
  %call18 = call i32 @regmap_read(ptr noundef %29, i32 noundef %add, ptr noundef nonnull %load_count) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %sw.bb.cleanup_crit_edge, label %if.end21

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %load_count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %load_count, align 4
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end15
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %call25 = call i32 @regmap_read(ptr noundef %33, i32 noundef 320, ptr noundef nonnull %pmcnt3_high) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %sw.bb23.cleanup_crit_edge, label %if.end28

sw.bb23.cleanup_crit_edge:                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %sw.bb23
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %call30 = call i32 @regmap_read(ptr noundef %35, i32 noundef 336, ptr noundef nonnull %pmcnt3_low) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.end28.cleanup_crit_edge, label %if.end33

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %pmcnt3_high to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pmcnt3_high, align 4
  %shl = shl i32 %37, 8
  %38 = ptrtoint ptr %pmcnt3_low to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pmcnt3_low, align 4
  %or = or i32 %shl, %39
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end33, %if.end21
  %storemerge = phi i32 [ %or, %if.end33 ], [ %31, %if.end21 ]
  %40 = ptrtoint ptr %edata to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %storemerge, ptr %edata, align 4
  %41 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap, align 4
  %call36 = call i32 @regmap_read(ptr noundef %42, i32 noundef 32, ptr noundef nonnull %cntenc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %sw.epilog.cleanup_crit_edge, label %if.end39

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end39:                                         ; preds = %sw.epilog
  %shl40 = shl nuw nsw i32 1, %retval.0.i.i
  %43 = ptrtoint ptr %cntenc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cntenc, align 4
  %or41 = or i32 %shl40, %44
  %or42 = or i32 %or41, -2147483648
  store i32 %or42, ptr %cntenc, align 4
  %45 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap, align 4
  %call44 = call i32 @regmap_write(ptr noundef %46, i32 noundef 32, i32 noundef %or42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.end39.cleanup_crit_edge, label %do.body

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos_ppmu_get_event.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@exynos_ppmu_get_event, %if.then51)) #7
          to label %cleanup [label %if.then51], !srcloc !292

if.then51:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.devfreq_event_dev, ptr %edev, i32 0, i32 1
  %47 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %desc.i, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %51 = ptrtoint ptr %edata to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %edata, align 4
  %53 = ptrtoint ptr %total_count16 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %total_count16, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exynos_ppmu_get_event.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.191, ptr noundef %50, i32 noundef %52, i32 noundef %54) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %do.body, %if.end39.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %sw.bb23.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %exynos_ppmu_find_ppmu_id.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %exynos_ppmu_find_ppmu_id.exit.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call7, %if.end5.cleanup_crit_edge ], [ %call12, %if.end10.cleanup_crit_edge ], [ %call18, %sw.bb.cleanup_crit_edge ], [ %call25, %sw.bb23.cleanup_crit_edge ], [ %call30, %if.end28.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ], [ %call36, %sw.epilog.cleanup_crit_edge ], [ %call44, %if.end39.cleanup_crit_edge ], [ 0, %if.then51 ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cntenc) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmnc) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmcnt3_low) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmcnt3_high) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %load_count) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %total_count) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_ppmu_v2_disable(ptr nocapture noundef readonly %edev) #2 align 64 {
entry:
  %pmnc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %desc.i = getelementptr inbounds %struct.devfreq_event_dev, ptr %edev, i32 0, i32 4
  %0 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc.i, align 8
  %driver_data.i = getelementptr inbounds %struct.devfreq_event_desc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmnc) #7
  %4 = ptrtoint ptr %pmnc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %pmnc, align 4, !annotation !291
  %regmap = getelementptr inbounds %struct.exynos_ppmu, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 24, i32 noundef -2147483633) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call3 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 20, i32 noundef -2147483633) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call8 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 12, i32 noundef -2147483633) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call13 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 44, i32 noundef -2147483633) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call18 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 28, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end16.cleanup_crit_edge, label %if.end21

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call23 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 32, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end21.cleanup_crit_edge, label %if.end26

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call28 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 36, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end26.cleanup_crit_edge, label %if.end31

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call33 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 40, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.end31.cleanup_crit_edge, label %if.end36

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %call38 = tail call i32 @regmap_write(ptr noundef %22, i32 noundef 48, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.end36.cleanup_crit_edge, label %if.end41

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end41:                                         ; preds = %if.end36
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %call43 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 512, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.end41.cleanup_crit_edge, label %if.end46

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end46:                                         ; preds = %if.end41
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call48 = tail call i32 @regmap_write(ptr noundef %26, i32 noundef 516, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.end46.cleanup_crit_edge, label %if.end51

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end51:                                         ; preds = %if.end46
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %call53 = tail call i32 @regmap_write(ptr noundef %28, i32 noundef 520, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.end51.cleanup_crit_edge, label %if.end56

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end56:                                         ; preds = %if.end51
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %call58 = tail call i32 @regmap_write(ptr noundef %30, i32 noundef 524, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %if.end56.cleanup_crit_edge, label %if.end61

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end61:                                         ; preds = %if.end56
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %call63 = tail call i32 @regmap_write(ptr noundef %32, i32 noundef 544, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.end61.cleanup_crit_edge, label %if.end66

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end66:                                         ; preds = %if.end61
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %call68 = tail call i32 @regmap_write(ptr noundef %34, i32 noundef 548, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %if.end66.cleanup_crit_edge, label %if.end71

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end71:                                         ; preds = %if.end66
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %call73 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 552, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.end71.cleanup_crit_edge, label %if.end76

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end76:                                         ; preds = %if.end71
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap, align 4
  %call78 = tail call i32 @regmap_write(ptr noundef %38, i32 noundef 556, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %if.end76.cleanup_crit_edge, label %if.end81

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end81:                                         ; preds = %if.end76
  %39 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap, align 4
  %call83 = tail call i32 @regmap_write(ptr noundef %40, i32 noundef 608, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %if.end81.cleanup_crit_edge, label %if.end86

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end86:                                         ; preds = %if.end81
  %41 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap, align 4
  %call88 = call i32 @regmap_read(ptr noundef %42, i32 noundef 4, ptr noundef nonnull %pmnc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89 = icmp slt i32 %call88, 0
  br i1 %cmp89, label %if.end86.cleanup_crit_edge, label %if.end91

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end91:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %pmnc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pmnc, align 4
  %and = and i32 %44, -2
  store i32 %and, ptr %pmnc, align 4
  %45 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap, align 4
  %call93 = call i32 @regmap_write(ptr noundef %46, i32 noundef 4, i32 noundef %and) #7
  %47 = call i32 @llvm.smin.i32(i32 %call93, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end91, %if.end86.cleanup_crit_edge, %if.end81.cleanup_crit_edge, %if.end76.cleanup_crit_edge, %if.end71.cleanup_crit_edge, %if.end66.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call8, %if.end6.cleanup_crit_edge ], [ %call13, %if.end11.cleanup_crit_edge ], [ %call18, %if.end16.cleanup_crit_edge ], [ %call23, %if.end21.cleanup_crit_edge ], [ %call28, %if.end26.cleanup_crit_edge ], [ %call33, %if.end31.cleanup_crit_edge ], [ %call38, %if.end36.cleanup_crit_edge ], [ %call43, %if.end41.cleanup_crit_edge ], [ %call48, %if.end46.cleanup_crit_edge ], [ %call53, %if.end51.cleanup_crit_edge ], [ %call58, %if.end56.cleanup_crit_edge ], [ %call63, %if.end61.cleanup_crit_edge ], [ %call68, %if.end66.cleanup_crit_edge ], [ %call73, %if.end71.cleanup_crit_edge ], [ %call78, %if.end76.cleanup_crit_edge ], [ %call83, %if.end81.cleanup_crit_edge ], [ %call88, %if.end86.cleanup_crit_edge ], [ %47, %if.end91 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmnc) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_ppmu_v2_set_event(ptr nocapture noundef readonly %edev) #2 align 64 {
entry:
  %pmnc = alloca i32, align 4
  %cntens = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %desc.i = getelementptr inbounds %struct.devfreq_event_dev, ptr %edev, i32 0, i32 4
  %0 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc.i, align 8
  %driver_data.i = getelementptr inbounds %struct.devfreq_event_desc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmnc) #7
  %4 = ptrtoint ptr %pmnc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %pmnc, align 4, !annotation !291
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cntens) #7
  %5 = ptrtoint ptr %cntens to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %cntens, align 4, !annotation !291
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry
  %i.06.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [152 x %struct.__exynos_ppmu_events], ptr @ppmu_events, i32 0, i32 %i.06.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef %7, ptr noundef %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %id.i.i = getelementptr [152 x %struct.__exynos_ppmu_events], ptr @ppmu_events, i32 0, i32 %i.06.i.i, i32 1
  %10 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i.i, align 4
  br label %exynos_ppmu_find_ppmu_id.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.06.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 152
  br i1 %exitcond.not.i.i, label %for.inc.i.i.exynos_ppmu_find_ppmu_id.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.exynos_ppmu_find_ppmu_id.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exynos_ppmu_find_ppmu_id.exit

exynos_ppmu_find_ppmu_id.exit:                    ; preds = %for.inc.i.i.exynos_ppmu_find_ppmu_id.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %11, %if.then.i.i ], [ -22, %for.inc.i.i.exynos_ppmu_find_ppmu_id.exit_crit_edge ]
  %regmap = getelementptr inbounds %struct.exynos_ppmu, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %13, i32 noundef 8, ptr noundef nonnull %cntens) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %exynos_ppmu_find_ppmu_id.exit.cleanup_crit_edge, label %if.end

exynos_ppmu_find_ppmu_id.exit.cleanup_crit_edge:  ; preds = %exynos_ppmu_find_ppmu_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %exynos_ppmu_find_ppmu_id.exit
  %shl = shl nuw i32 1, %retval.0.i.i
  %14 = ptrtoint ptr %cntens to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cntens, align 4
  %or = or i32 %shl, %15
  %or3 = or i32 %or, -2147483648
  store i32 %or3, ptr %cntens, align 4
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call5 = call i32 @regmap_write(ptr noundef %17, i32 noundef 8, i32 noundef %or3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %mul = shl i32 %retval.0.i.i, 2
  %add = add i32 %mul, 512
  %20 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %desc.i, align 8
  %event_type = getelementptr inbounds %struct.devfreq_event_desc, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %event_type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %event_type, align 4
  %call10 = call i32 @regmap_write(ptr noundef %19, i32 noundef %add, i32 noundef %23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %call15 = call i32 @regmap_read(ptr noundef %25, i32 noundef 4, ptr noundef nonnull %pmnc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end13.cleanup_crit_edge, label %if.end18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %pmnc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pmnc, align 4
  %and = and i32 %27, -3145744
  %or21 = or i32 %and, 7
  store i32 %or21, ptr %pmnc, align 4
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %call24 = call i32 @regmap_write(ptr noundef %29, i32 noundef 4, i32 noundef %or21) #7
  %30 = call i32 @llvm.smin.i32(i32 %call24, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end13.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %exynos_ppmu_find_ppmu_id.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %exynos_ppmu_find_ppmu_id.exit.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ %call10, %if.end8.cleanup_crit_edge ], [ %call15, %if.end13.cleanup_crit_edge ], [ %30, %if.end18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cntens) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmnc) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_ppmu_v2_get_event(ptr noundef %edev, ptr nocapture noundef %edata) #2 align 64 {
entry:
  %pmnc = alloca i32, align 4
  %cntenc = alloca i32, align 4
  %pmcnt_high = alloca i32, align 4
  %pmcnt_low = alloca i32, align 4
  %total_count = alloca i32, align 4
  %count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %desc.i = getelementptr inbounds %struct.devfreq_event_dev, ptr %edev, i32 0, i32 4
  %0 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc.i, align 8
  %driver_data.i = getelementptr inbounds %struct.devfreq_event_desc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry
  %i.06.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [152 x %struct.__exynos_ppmu_events], ptr @ppmu_events, i32 0, i32 %i.06.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef %5, ptr noundef %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %id.i.i = getelementptr [152 x %struct.__exynos_ppmu_events], ptr @ppmu_events, i32 0, i32 %i.06.i.i, i32 1
  %8 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id.i.i, align 4
  br label %exynos_ppmu_find_ppmu_id.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.06.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 152
  br i1 %exitcond.not.i.i, label %for.inc.i.i.exynos_ppmu_find_ppmu_id.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.exynos_ppmu_find_ppmu_id.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exynos_ppmu_find_ppmu_id.exit

exynos_ppmu_find_ppmu_id.exit:                    ; preds = %for.inc.i.i.exynos_ppmu_find_ppmu_id.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %9, %if.then.i.i ], [ -22, %for.inc.i.i.exynos_ppmu_find_ppmu_id.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmnc) #7
  %10 = ptrtoint ptr %pmnc to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %pmnc, align 4, !annotation !291
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cntenc) #7
  %11 = ptrtoint ptr %cntenc to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %cntenc, align 4, !annotation !291
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmcnt_high) #7
  %12 = ptrtoint ptr %pmcnt_high to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %pmcnt_high, align 4, !annotation !291
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmcnt_low) #7
  %13 = ptrtoint ptr %pmcnt_low to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %pmcnt_low, align 4, !annotation !291
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %total_count) #7
  %14 = ptrtoint ptr %total_count to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %total_count, align 4, !annotation !291
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count) #7
  %15 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %count, align 4, !annotation !291
  %regmap = getelementptr inbounds %struct.exynos_ppmu, ptr %3, i32 0, i32 4
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %17, i32 noundef 4, ptr noundef nonnull %pmnc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %exynos_ppmu_find_ppmu_id.exit.cleanup_crit_edge, label %if.end

exynos_ppmu_find_ppmu_id.exit.cleanup_crit_edge:  ; preds = %exynos_ppmu_find_ppmu_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %exynos_ppmu_find_ppmu_id.exit
  %18 = ptrtoint ptr %pmnc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pmnc, align 4
  %and = and i32 %19, -2
  store i32 %and, ptr %pmnc, align 4
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call4 = call i32 @regmap_write(ptr noundef %21, i32 noundef 4, i32 noundef %and) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call9 = call i32 @regmap_read(ptr noundef %23, i32 noundef 72, ptr noundef nonnull %total_count) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %24 = ptrtoint ptr %total_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %total_count, align 4
  %total_count13 = getelementptr inbounds %struct.devfreq_event_data, ptr %edata, i32 0, i32 1
  %26 = ptrtoint ptr %total_count13 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %total_count13, align 4
  %27 = zext i32 %retval.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.195)
  switch i32 %retval.0.i.i, label %if.end12.sw.epilog_crit_edge [
    i32 0, label %if.end12.sw.bb_crit_edge
    i32 1, label %if.end12.sw.bb_crit_edge102
    i32 2, label %if.end12.sw.bb_crit_edge103
    i32 3, label %sw.bb19
  ]

if.end12.sw.bb_crit_edge103:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end12.sw.bb_crit_edge102:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end12.sw.bb_crit_edge:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end12.sw.epilog_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end12.sw.bb_crit_edge, %if.end12.sw.bb_crit_edge102, %if.end12.sw.bb_crit_edge103
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %mul = shl nuw nsw i32 %retval.0.i.i, 2
  %add = add nuw nsw i32 %mul, 52
  %call15 = call i32 @regmap_read(ptr noundef %29, i32 noundef %add, ptr noundef nonnull %count) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %sw.bb.cleanup_crit_edge, label %if.end18

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %count, align 4
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end12
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %call21 = call i32 @regmap_read(ptr noundef %33, i32 noundef 68, ptr noundef nonnull %pmcnt_high) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %sw.bb19.cleanup_crit_edge, label %if.end24

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %sw.bb19
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %call26 = call i32 @regmap_read(ptr noundef %35, i32 noundef 64, ptr noundef nonnull %pmcnt_low) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.end24.cleanup_crit_edge, label %if.end29

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %pmcnt_low to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pmcnt_low, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end29, %if.end18, %if.end12.sw.epilog_crit_edge
  %load_count.0 = phi i32 [ 0, %if.end12.sw.epilog_crit_edge ], [ %37, %if.end29 ], [ %31, %if.end18 ]
  %38 = ptrtoint ptr %edata to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %load_count.0, ptr %edata, align 4
  %39 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap, align 4
  %call36 = call i32 @regmap_read(ptr noundef %40, i32 noundef 12, ptr noundef nonnull %cntenc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %sw.epilog.cleanup_crit_edge, label %if.end40

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end40:                                         ; preds = %sw.epilog
  %shl41 = shl nuw i32 1, %retval.0.i.i
  %41 = ptrtoint ptr %cntenc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cntenc, align 4
  %or = or i32 %shl41, %42
  %or42 = or i32 %or, -2147483648
  store i32 %or42, ptr %cntenc, align 4
  %43 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap, align 4
  %call44 = call i32 @regmap_write(ptr noundef %44, i32 noundef 12, i32 noundef %or42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.end40.cleanup_crit_edge, label %do.body

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos_ppmu_v2_get_event.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@exynos_ppmu_v2_get_event, %if.then52)) #7
          to label %cleanup [label %if.then52], !srcloc !292

if.then52:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.devfreq_event_dev, ptr %edev, i32 0, i32 1
  %45 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %desc.i, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %49 = ptrtoint ptr %edata to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %edata, align 4
  %51 = ptrtoint ptr %total_count13 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %total_count13, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exynos_ppmu_v2_get_event.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.193, ptr noundef %48, i32 noundef %50, i32 noundef %52) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %do.body, %if.end40.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %sw.bb19.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %exynos_ppmu_find_ppmu_id.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %exynos_ppmu_find_ppmu_id.exit.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ %call9, %if.end7.cleanup_crit_edge ], [ %call15, %sw.bb.cleanup_crit_edge ], [ %call21, %sw.bb19.cleanup_crit_edge ], [ %call26, %if.end24.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ %call44, %if.end40.cleanup_crit_edge ], [ 0, %if.then52 ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %total_count) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmcnt_low) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmcnt_high) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cntenc) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmnc) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 198)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 198)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !44, !45, !46, !48, !50, !51, !52, !53, !55, !56, !57, !59, !61, !63, !64, !65, !66, !68, !69, !70, !72, !74, !76, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !139, !141, !142, !143, !144, !146, !147, !148, !149, !151, !152, !153, !154, !156, !157, !158, !159, !161, !162, !163, !164, !166, !167, !168, !169, !171, !172, !173, !174, !176, !177, !178, !179, !181, !182, !183, !184, !186, !187, !188, !189, !191, !192, !193, !194, !196, !197, !198, !199, !201, !202, !203, !204, !206, !207, !208, !209, !211, !212, !213, !214, !216, !217, !218, !219, !221, !222, !223, !224, !226, !227, !228, !229, !231, !232, !233, !234, !236, !237, !238, !239, !241, !242, !243, !244, !246, !247, !248, !249, !251, !252, !253, !254, !256, !257, !258, !259, !261, !262, !263, !264, !266, !268, !270, !271, !272, !273, !275, !277, !278, !279}
!llvm.module.flags = !{!281, !282, !283, !284, !285, !286, !287, !288}
!llvm.ident = !{!289}

!0 = !{ptr @__initcall__kmod_exynos_ppmu__290_716_exynos_ppmu_driver_init6, !1, !"__initcall__kmod_exynos_ppmu__290_716_exynos_ppmu_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 716, i32 1}
!2 = !{ptr @__exitcall_exynos_ppmu_driver_exit, !1, !"__exitcall_exynos_ppmu_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description291, !4, !"__UNIQUE_ID_description291", i1 false, i1 false}
!4 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 718, i32 1}
!5 = !{ptr @__UNIQUE_ID_author292, !6, !"__UNIQUE_ID_author292", i1 false, i1 false}
!6 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 719, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 720, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 712, i32 11}
!12 = !{ptr @exynos_ppmu_driver, !13, !"exynos_ppmu_driver", i1 false, i1 false}
!13 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 708, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 664, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @exynos_ppmu_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @exynos_ppmu_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 681, i32 4}
!24 = !{ptr @exynos_ppmu_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @exynos_ppmu_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 686, i32 3}
!28 = !{ptr @exynos_ppmu_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @exynos_ppmu_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 692, i32 3}
!32 = !{ptr @exynos_ppmu_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @exynos_ppmu_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 615, i32 3}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @exynos_ppmu_parse_dt._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @exynos_ppmu_parse_dt._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @exynos_ppmu_parse_dt._key, !40, !"_key", i1 false, i1 false}
!40 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 626, i32 17}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 629, i32 3}
!44 = !{ptr @exynos_ppmu_parse_dt._entry.18, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @exynos_ppmu_parse_dt._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 633, i32 37}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 636, i32 3}
!50 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @exynos_ppmu_parse_dt._entry.22, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @exynos_ppmu_parse_dt._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 641, i32 3}
!55 = !{ptr @exynos_ppmu_parse_dt._entry.26, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @exynos_ppmu_parse_dt._entry_ptr.28, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @exynos_ppmu_regmap_config, !58, !"exynos_ppmu_regmap_config", i1 false, i1 false}
!58 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 599, i32 29}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 513, i32 39}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 515, i32 3}
!63 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @of_get_devfreq_events._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @of_get_devfreq_events._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 543, i32 4}
!68 = !{ptr @of_get_devfreq_events._entry.32, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @of_get_devfreq_events._entry_ptr.34, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 560, i32 33}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 561, i32 36}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 56, i32 2}
!76 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 57, i32 2}
!81 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.43, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.44, !80, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 60, i32 2}
!86 = !{ptr @.str.46, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.47, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.48, !85, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.49, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 61, i32 2}
!91 = !{ptr @.str.50, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.51, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.52, !90, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.53, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 62, i32 2}
!96 = !{ptr @.str.54, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.55, !95, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.56, !95, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.57, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 63, i32 2}
!101 = !{ptr @.str.58, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.59, !100, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.60, !100, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.61, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 64, i32 2}
!106 = !{ptr @.str.62, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.63, !105, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.64, !105, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.65, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 65, i32 2}
!111 = !{ptr @.str.66, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.67, !110, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.68, !110, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.69, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 66, i32 2}
!116 = !{ptr @.str.70, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.71, !115, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.72, !115, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.73, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 69, i32 2}
!121 = !{ptr @.str.74, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.75, !120, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.76, !120, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.77, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 72, i32 2}
!126 = !{ptr @.str.78, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.79, !125, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.80, !125, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.81, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 73, i32 2}
!131 = !{ptr @.str.82, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.83, !130, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.84, !130, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.85, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 76, i32 2}
!136 = !{ptr @.str.86, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.87, !135, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.88, !135, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.89, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 77, i32 2}
!141 = !{ptr @.str.90, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.91, !140, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.92, !140, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.93, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 78, i32 2}
!146 = !{ptr @.str.94, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.95, !145, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.96, !145, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.97, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 79, i32 2}
!151 = !{ptr @.str.98, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.99, !150, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.100, !150, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.101, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 80, i32 2}
!156 = !{ptr @.str.102, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.103, !155, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.104, !155, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.105, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 81, i32 2}
!161 = !{ptr @.str.106, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.107, !160, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.108, !160, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.109, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 82, i32 2}
!166 = !{ptr @.str.110, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.111, !165, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.112, !165, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.113, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 83, i32 2}
!171 = !{ptr @.str.114, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.115, !170, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.116, !170, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.117, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 84, i32 2}
!176 = !{ptr @.str.118, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.119, !175, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.120, !175, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.121, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 85, i32 2}
!181 = !{ptr @.str.122, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.123, !180, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.124, !180, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.125, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 86, i32 2}
!186 = !{ptr @.str.126, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.127, !185, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.128, !185, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.129, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 87, i32 2}
!191 = !{ptr @.str.130, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @.str.131, !190, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @.str.132, !190, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @.str.133, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 90, i32 2}
!196 = !{ptr @.str.134, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.135, !195, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.136, !195, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @.str.137, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 91, i32 2}
!201 = !{ptr @.str.138, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @.str.139, !200, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.140, !200, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.141, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 92, i32 2}
!206 = !{ptr @.str.142, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @.str.143, !205, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.144, !205, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.145, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 93, i32 2}
!211 = !{ptr @.str.146, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @.str.147, !210, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @.str.148, !210, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @.str.149, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 94, i32 2}
!216 = !{ptr @.str.150, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.151, !215, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @.str.152, !215, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @.str.153, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 95, i32 2}
!221 = !{ptr @.str.154, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @.str.155, !220, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.156, !220, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.157, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 98, i32 2}
!226 = !{ptr @.str.158, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.159, !225, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @.str.160, !225, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @.str.161, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 99, i32 2}
!231 = !{ptr @.str.162, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @.str.163, !230, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @.str.164, !230, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @.str.165, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 100, i32 2}
!236 = !{ptr @.str.166, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @.str.167, !235, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @.str.168, !235, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @.str.169, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 101, i32 2}
!241 = !{ptr @.str.170, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @.str.171, !240, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @.str.172, !240, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @.str.173, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 103, i32 2}
!246 = !{ptr @.str.174, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @.str.175, !245, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @.str.176, !245, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @.str.177, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 104, i32 2}
!251 = !{ptr @.str.178, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @.str.179, !250, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @.str.180, !250, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @.str.181, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 105, i32 2}
!256 = !{ptr @.str.182, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @.str.183, !255, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @.str.184, !255, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @.str.185, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 106, i32 2}
!261 = !{ptr @.str.186, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @.str.187, !260, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @.str.188, !260, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @ppmu_events, !265, !"ppmu_events", i1 false, i1 false}
!265 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 54, i32 3}
!266 = !{ptr @exynos_ppmu_ops, !267, !"exynos_ppmu_ops", i1 false, i1 false}
!267 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 271, i32 39}
!268 = !{ptr @.str.189, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 265, i32 2}
!270 = !{ptr @.str.190, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @.str.191, !269, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @exynos_ppmu_get_event.__UNIQUE_ID_ddebug288, !269, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!273 = !{ptr @exynos_ppmu_v2_ops, !274, !"exynos_ppmu_v2_ops", i1 false, i1 false}
!274 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 485, i32 39}
!275 = !{ptr @.str.192, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 480, i32 2}
!277 = !{ptr @.str.193, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @exynos_ppmu_v2_get_event.__UNIQUE_ID_ddebug289, !276, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!279 = !{ptr @exynos_ppmu_id_match, !280, !"exynos_ppmu_id_match", i1 false, i1 false}
!280 = !{!"../drivers/devfreq/event/exynos-ppmu.c", i32 491, i32 34}
!281 = !{i32 1, !"wchar_size", i32 2}
!282 = !{i32 1, !"min_enum_size", i32 4}
!283 = !{i32 8, !"branch-target-enforcement", i32 0}
!284 = !{i32 8, !"sign-return-address", i32 0}
!285 = !{i32 8, !"sign-return-address-all", i32 0}
!286 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!287 = !{i32 7, !"uwtable", i32 1}
!288 = !{i32 7, !"frame-pointer", i32 2}
!289 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!290 = !{!"branch_weights", i32 1, i32 2000}
!291 = !{!"auto-init"}
!292 = !{i64 2148736906, i64 2148736911, i64 2148736924, i64 2148736968, i64 2148737002, i64 2148737023}
