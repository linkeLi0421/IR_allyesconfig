; ModuleID = '/llk/IR_all_yes/drivers/devfreq/exynos-bus.c_pt.bc'
source_filename = "../drivers/devfreq/exynos-bus.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
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
%struct.exynos_bus = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, i32, ptr, ptr, i32 }
%struct.devfreq_dev_profile = type { i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%struct.devfreq = type { %struct.list_head, %struct.mutex, %struct.device, ptr, ptr, ptr, %struct.notifier_block, %struct.delayed_work, i32, %struct.devfreq_dev_status, ptr, %struct.dev_pm_qos_request, %struct.dev_pm_qos_request, i32, i32, i8, i32, i32, %struct.atomic_t, %struct.devfreq_stats, %struct.srcu_notifier_head, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.devfreq_dev_status = type { i32, i32, i32, ptr }
%struct.dev_pm_qos_request = type { i32, %union.anon.78, ptr }
%union.anon.78 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.devfreq_stats = type { i32, ptr, ptr, i64 }
%struct.srcu_notifier_head = type { %struct.mutex, %struct.srcu_struct, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.devfreq_event_data = type { i32, i32 }

@__initcall__kmod_exynos_bus__289_524_exynos_bus_platdrv_init6 = internal global ptr @exynos_bus_platdrv_init, section ".initcall6.init", align 4
@exynos_bus_platdrv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @exynos_bus_probe, ptr null, ptr @exynos_bus_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos_bus_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_bus_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_exynos_bus_platdrv_exit = internal global ptr @exynos_bus_platdrv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description290 = internal constant [59 x i8] c"exynos_bus.description=Generic Exynos Bus frequency driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [55 x i8] c"exynos_bus.author=Chanwoo Choi <cw00.choi@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [43 x i8] c"exynos_bus.file=drivers/devfreq/exynos-bus\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [26 x i8] c"exynos_bus.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"exynos-bus\00", [21 x i8] zeroinitializer }, align 32
@exynos_bus_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos-bus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@exynos_bus_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @exynos_bus_suspend, ptr @exynos_bus_resume, ptr @exynos_bus_suspend, ptr @exynos_bus_resume, ptr @exynos_bus_suspend, ptr @exynos_bus_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@exynos_bus_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 400, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to find devicetree node\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"exynos_bus_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/devfreq/exynos-bus.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@exynos_bus_probe._entry_ptr = internal global ptr @exynos_bus_probe._entry, section ".printk_index", align 4
@exynos_bus_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&bus->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"devfreq\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"#interconnect-cells\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"exynos-generic-icc\00", [45 x i8] zeroinitializer }, align 32
@exynos_bus_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016exynos-bus: new bus device registered: %s (%6ld KHz ~ %6ld KHz)\0A\00", [61 x i8] zeroinitializer }, align 32
@exynos_bus_probe._entry_ptr.12 = internal global ptr @exynos_bus_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@exynos_bus_parent_parse_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 189, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to set regulators %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"exynos_bus_parent_parse_of\00", [37 x i8] zeroinitializer }, align 32
@exynos_bus_parent_parse_of._entry_ptr = internal global ptr @exynos_bus_parent_parse_of._entry, section ".printk_index", align 4
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"devfreq-events\00", [17 x i8] zeroinitializer }, align 32
@exynos_bus_parent_parse_of._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.3, i32 201, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to get the count of devfreq-event dev\0A\00", [50 x i8] zeroinitializer }, align 32
@exynos_bus_parent_parse_of._entry_ptr.19 = internal global ptr @exynos_bus_parent_parse_of._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"exynos,saturation-ratio\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@exynos_bus_parse_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 256, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get bus clock\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"exynos_bus_parse_of\00", [44 x i8] zeroinitializer }, align 32
@exynos_bus_parse_of._entry_ptr = internal global ptr @exynos_bus_parse_of._entry, section ".printk_index", align 4
@exynos_bus_parse_of._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.3, i32 262, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get enable clock\0A\00", [36 x i8] zeroinitializer }, align 32
@exynos_bus_parse_of._entry_ptr.26 = internal global ptr @exynos_bus_parse_of._entry.24, section ".printk_index", align 4
@exynos_bus_parse_of._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.3, i32 269, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get OPP table\0A\00", [39 x i8] zeroinitializer }, align 32
@exynos_bus_parse_of._entry_ptr.29 = internal global ptr @exynos_bus_parse_of._entry.27, section ".printk_index", align 4
@exynos_bus_parse_of._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.3, i32 277, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to find dev_pm_opp\0A\00", [37 x i8] zeroinitializer }, align 32
@exynos_bus_parse_of._entry_ptr.32 = internal global ptr @exynos_bus_parse_of._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"passive\00", [24 x i8] zeroinitializer }, align 32
@exynos_bus_profile_init_passive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 382, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"failed to add devfreq dev with passive governor\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"exynos_bus_profile_init_passive\00", [32 x i8] zeroinitializer }, align 32
@exynos_bus_profile_init_passive._entry_ptr = internal global ptr @exynos_bus_profile_init_passive._entry, section ".printk_index", align 4
@exynos_bus_target._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 102, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to get recommended opp instance\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"exynos_bus_target\00", [46 x i8] zeroinitializer }, align 32
@exynos_bus_target._entry_ptr = internal global ptr @exynos_bus_target._entry, section ".printk_index", align 4
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"simple_ondemand\00", [16 x i8] zeroinitializer }, align 32
@exynos_bus_profile_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 319, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to add devfreq device\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"exynos_bus_profile_init\00", [40 x i8] zeroinitializer }, align 32
@exynos_bus_profile_init._entry_ptr = internal global ptr @exynos_bus_profile_init._entry, section ".printk_index", align 4
@exynos_bus_profile_init._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.3, i32 326, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register opp notifier\0A\00", [63 x i8] zeroinitializer }, align 32
@exynos_bus_profile_init._entry_ptr.43 = internal global ptr @exynos_bus_profile_init._entry.41, section ".printk_index", align 4
@exynos_bus_profile_init._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.3, i32 336, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to enable devfreq-event devices\0A\00", [56 x i8] zeroinitializer }, align 32
@exynos_bus_profile_init._entry_ptr.46 = internal global ptr @exynos_bus_profile_init._entry.44, section ".printk_index", align 4
@exynos_bus_profile_init._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.40, ptr @.str.3, i32 342, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to set event to devfreq-event devices\0A\00", [50 x i8] zeroinitializer }, align 32
@exynos_bus_profile_init._entry_ptr.49 = internal global ptr @exynos_bus_profile_init._entry.47, section ".printk_index", align 4
@exynos_bus_profile_init._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.40, ptr @.str.3, i32 350, ptr @.str.52, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to disable the devfreq-event devices\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@exynos_bus_profile_init._entry_ptr.53 = internal global ptr @exynos_bus_profile_init._entry.50, section ".printk_index", align 4
@exynos_bus_get_dev_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 130, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"failed to get event from devfreq-event devices\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"exynos_bus_get_dev_status\00", [38 x i8] zeroinitializer }, align 32
@exynos_bus_get_dev_status._entry_ptr = internal global ptr @exynos_bus_get_dev_status._entry, section ".printk_index", align 4
@exynos_bus_get_dev_status.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.56, ptr @.str.55, ptr @.str.3, ptr @.str.57, i8 0, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"exynos_bus\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Usage of devfreq-event : %lu/%lu\0A\00", [62 x i8] zeroinitializer }, align 32
@exynos_bus_get_dev_status._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.55, ptr @.str.3, i32 144, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@exynos_bus_get_dev_status._entry_ptr.59 = internal global ptr @exynos_bus_get_dev_status._entry.58, section ".printk_index", align 4
@exynos_bus_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.60, ptr @.str.3, i32 158, ptr @.str.52, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"exynos_bus_exit\00", [16 x i8] zeroinitializer }, align 32
@exynos_bus_exit._entry_ptr = internal global ptr @exynos_bus_exit._entry, section ".printk_index", align 4
@exynos_bus_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.61, ptr @.str.3, i32 497, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"exynos_bus_suspend\00", [45 x i8] zeroinitializer }, align 32
@exynos_bus_suspend._entry_ptr = internal global ptr @exynos_bus_suspend._entry, section ".printk_index", align 4
@exynos_bus_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.3, i32 483, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to enable the devfreq-event devices\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"exynos_bus_resume\00", [46 x i8] zeroinitializer }, align 32
@exynos_bus_resume._entry_ptr = internal global ptr @exynos_bus_resume._entry, section ".printk_index", align 4
@___asan_gen_.64 = private unnamed_addr constant [19 x i8] c"exynos_bus_platdrv\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 515, i32 31 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 519, i32 11 }
@___asan_gen_.70 = private unnamed_addr constant [20 x i8] c"exynos_bus_of_match\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 509, i32 34 }
@___asan_gen_.73 = private unnamed_addr constant [14 x i8] c"exynos_bus_pm\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 505, i32 32 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 400, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 407, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 415, i32 40 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 439, i32 36 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 441, i32 12 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 453, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 183, i32 20 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 189, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 199, i32 44 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 201, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 233, i32 31 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 254, i32 31 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 256, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 262, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 269, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 277, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 378, i32 55 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 381, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 102, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 316, i32 7 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 319, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 326, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 336, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 342, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 350, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 130, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 138, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 144, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 158, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 497, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.265 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.266 = private constant [32 x i8] c"../drivers/devfreq/exynos-bus.c\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 483, i32 3 }
@llvm.compiler.used = appending global [95 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_exynos_bus_platdrv_exit, ptr @__initcall__kmod_exynos_bus__289_524_exynos_bus_platdrv_init6, ptr @exynos_bus_exit._entry, ptr @exynos_bus_exit._entry_ptr, ptr @exynos_bus_get_dev_status._entry, ptr @exynos_bus_get_dev_status._entry.58, ptr @exynos_bus_get_dev_status._entry_ptr, ptr @exynos_bus_get_dev_status._entry_ptr.59, ptr @exynos_bus_parent_parse_of._entry, ptr @exynos_bus_parent_parse_of._entry.17, ptr @exynos_bus_parent_parse_of._entry_ptr, ptr @exynos_bus_parent_parse_of._entry_ptr.19, ptr @exynos_bus_parse_of._entry, ptr @exynos_bus_parse_of._entry.24, ptr @exynos_bus_parse_of._entry.27, ptr @exynos_bus_parse_of._entry.30, ptr @exynos_bus_parse_of._entry_ptr, ptr @exynos_bus_parse_of._entry_ptr.26, ptr @exynos_bus_parse_of._entry_ptr.29, ptr @exynos_bus_parse_of._entry_ptr.32, ptr @exynos_bus_platdrv_exit, ptr @exynos_bus_probe._entry, ptr @exynos_bus_probe._entry.10, ptr @exynos_bus_probe._entry_ptr, ptr @exynos_bus_probe._entry_ptr.12, ptr @exynos_bus_profile_init._entry, ptr @exynos_bus_profile_init._entry.41, ptr @exynos_bus_profile_init._entry.44, ptr @exynos_bus_profile_init._entry.47, ptr @exynos_bus_profile_init._entry.50, ptr @exynos_bus_profile_init._entry_ptr, ptr @exynos_bus_profile_init._entry_ptr.43, ptr @exynos_bus_profile_init._entry_ptr.46, ptr @exynos_bus_profile_init._entry_ptr.49, ptr @exynos_bus_profile_init._entry_ptr.53, ptr @exynos_bus_profile_init_passive._entry, ptr @exynos_bus_profile_init_passive._entry_ptr, ptr @exynos_bus_resume._entry, ptr @exynos_bus_resume._entry_ptr, ptr @exynos_bus_suspend._entry, ptr @exynos_bus_suspend._entry_ptr, ptr @exynos_bus_target._entry, ptr @exynos_bus_target._entry_ptr, ptr @exynos_bus_platdrv, ptr @.str, ptr @exynos_bus_of_match, ptr @exynos_bus_pm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @exynos_bus_probe.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_bus_platdrv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_bus_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_bus_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_bus_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_bus_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_bus_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_bus_parent_parse_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_bus_parent_parse_of._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_bus_parse_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_bus_parse_of._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_bus_parse_of._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_bus_parse_of._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_bus_profile_init_passive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_bus_target._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_bus_profile_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_bus_profile_init._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_bus_profile_init._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_bus_profile_init._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_bus_profile_init._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_bus_get_dev_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_bus_get_dev_status._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_bus_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_bus_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_bus_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_bus_platdrv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos_bus_platdrv, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exynos_bus_platdrv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @exynos_bus_platdrv) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_bus_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  %rate.i = alloca i32, align 4
  %vdd.i = alloca ptr, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 128, i32 noundef 3520) #5
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.body6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body6:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.exynos_bus, ptr %call.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @exynos_bus_probe.__key) #5
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i107 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 40, i32 noundef 3520) #5
  %tobool12.not = icmp eq ptr %call.i107, null
  br i1 %tobool12.not, label %do.body6.cleanup_crit_edge, label %if.end14

do.body6.cleanup_crit_edge:                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %do.body6
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #5
  %6 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i108 = call i32 @__of_parse_phandle_with_args(ptr noundef %5, ptr noundef nonnull @.str.7, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %tobool.not.i = icmp eq i32 %call.i108, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  br label %if.else

of_parse_phandle.exit:                            ; preds = %if.end14
  %7 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  %tobool17.not = icmp eq ptr %8, null
  br i1 %tobool17.not, label %of_parse_phandle.exit.if.else_crit_edge, label %if.then18

of_parse_phandle.exit.if.else_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then18:                                        ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @of_node_put(ptr noundef nonnull %8) #5
  br label %if.end22

if.else:                                          ; preds = %of_parse_phandle.exit.if.else_crit_edge, %of_parse_phandle.exit.thread
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vdd.i) #5
  %11 = ptrtoint ptr %vdd.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.13, ptr %vdd.i, align 4
  %call.i109 = call ptr @dev_pm_opp_set_regulators(ptr noundef %10, ptr noundef nonnull %vdd.i, i32 noundef 1) #5
  %cmp.i.i = icmp ugt ptr %call.i109, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %exynos_bus_parent_parse_of.exit, label %if.end.i110

if.end.i110:                                      ; preds = %if.else
  %opp_table4.i = getelementptr inbounds %struct.exynos_bus, ptr %call.i, i32 0, i32 7
  %12 = ptrtoint ptr %opp_table4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i109, ptr %opp_table4.i, align 4
  %call5.i = call i32 @devfreq_event_get_edev_count(ptr noundef %10, ptr noundef nonnull @.str.16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %do.end9.i, label %if.end10.i

do.end9.i:                                        ; preds = %if.end.i110
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.18) #8
  br label %exynos_bus_parent_parse_of.exit.thread150

if.end10.i:                                       ; preds = %if.end.i110
  %edev_count.i = getelementptr inbounds %struct.exynos_bus, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %edev_count.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call5.i, ptr %edev_count.i, align 4
  %mul.i = shl i32 %call5.i, 2
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %10, i32 noundef %mul.i, i32 noundef 3520) #5
  %edev.i = getelementptr inbounds %struct.exynos_bus, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %edev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i.i, ptr %edev.i, align 4
  %tobool.not.i111 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i111, label %if.end10.i.exynos_bus_parent_parse_of.exit.thread150_crit_edge, label %for.cond.preheader.i

if.end10.i.exynos_bus_parent_parse_of.exit.thread150_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exynos_bus_parent_parse_of.exit.thread150

for.cond.preheader.i:                             ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp1564.not.i = icmp eq i32 %call5.i, 0
  br i1 %cmp1564.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.065.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call5.i
  br i1 %exitcond.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.065.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call16.i = call ptr @devfreq_event_get_edev_by_phandle(ptr noundef %10, ptr noundef nonnull @.str.16, i32 noundef %i.065.i) #5
  %15 = ptrtoint ptr %edev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %edev.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %16, i32 %i.065.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call16.i, ptr %arrayidx.i, align 4
  %18 = load ptr, ptr %edev.i, align 4
  %arrayidx19.i = getelementptr ptr, ptr %18, i32 %i.065.i
  %19 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx19.i, align 4
  %cmp.i63.i = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i63.i, label %for.body.i.exynos_bus_parent_parse_of.exit.thread150_crit_edge, label %for.cond.i

for.body.i.exynos_bus_parent_parse_of.exit.thread150_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exynos_bus_parent_parse_of.exit.thread150

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %ratio.i = getelementptr inbounds %struct.exynos_bus, ptr %call.i, i32 0, i32 9
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.20, ptr noundef %ratio.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool24.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool24.not.i, label %for.end.i.exynos_bus_parent_parse_of.exit.thread_crit_edge, label %if.then25.i

for.end.i.exynos_bus_parent_parse_of.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exynos_bus_parent_parse_of.exit.thread

if.then25.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %ratio.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 40, ptr %ratio.i, align 4
  br label %exynos_bus_parent_parse_of.exit.thread

exynos_bus_parent_parse_of.exit.thread150:        ; preds = %for.body.i.exynos_bus_parent_parse_of.exit.thread150_crit_edge, %if.end10.i.exynos_bus_parent_parse_of.exit.thread150_crit_edge, %do.end9.i
  %ret.0.i = phi i32 [ %call5.i, %do.end9.i ], [ -12, %if.end10.i.exynos_bus_parent_parse_of.exit.thread150_crit_edge ], [ -517, %for.body.i.exynos_bus_parent_parse_of.exit.thread150_crit_edge ]
  %22 = ptrtoint ptr %opp_table4.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %opp_table4.i, align 4
  call void @dev_pm_opp_put_regulators(ptr noundef %23) #5
  %24 = ptrtoint ptr %opp_table4.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %opp_table4.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vdd.i) #5
  br label %cleanup

exynos_bus_parent_parse_of.exit.thread:           ; preds = %if.then25.i, %for.end.i.exynos_bus_parent_parse_of.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vdd.i) #5
  br label %if.end22

exynos_bus_parent_parse_of.exit:                  ; preds = %if.else
  %25 = ptrtoint ptr %call.i109 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.14, i32 noundef %25) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vdd.i) #5
  %cmp = icmp slt ptr %call.i109, null
  br i1 %cmp, label %exynos_bus_parent_parse_of.exit.cleanup_crit_edge, label %exynos_bus_parent_parse_of.exit.if.end22_crit_edge

exynos_bus_parent_parse_of.exit.if.end22_crit_edge: ; preds = %exynos_bus_parent_parse_of.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

exynos_bus_parent_parse_of.exit.cleanup_crit_edge: ; preds = %exynos_bus_parent_parse_of.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end22:                                         ; preds = %exynos_bus_parent_parse_of.exit.if.end22_crit_edge, %exynos_bus_parent_parse_of.exit.thread, %if.then18
  %tobool17.not146 = phi i1 [ true, %exynos_bus_parent_parse_of.exit.if.end22_crit_edge ], [ false, %if.then18 ], [ true, %exynos_bus_parent_parse_of.exit.thread ]
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate.i) #5
  %28 = ptrtoint ptr %rate.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %rate.i, align 4, !annotation !143
  %call.i113 = call ptr @devm_clk_get(ptr noundef %27, ptr noundef nonnull @.str.21) #5
  %clk.i = getelementptr inbounds %struct.exynos_bus, ptr %call.i, i32 0, i32 8
  %29 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i113, ptr %clk.i, align 4
  %cmp.i.i114 = icmp ugt ptr %call.i113, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i114, label %do.end.i, label %if.end.i116

do.end.i:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.22) #8
  %30 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clk.i, align 4
  %32 = ptrtoint ptr %31 to i32
  br label %exynos_bus_parse_of.exit

if.end.i116:                                      ; preds = %if.end22
  %call.i.i115 = call i32 @clk_prepare(ptr noundef %call.i113) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i115)
  %tobool.not.i.i = icmp eq i32 %call.i.i115, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i116.clk_prepare_enable.exit.i_crit_edge

if.end.i116.clk_prepare_enable.exit.i_crit_edge:  ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit.i

if.end.i.i:                                       ; preds = %if.end.i116
  %call1.i.i = call i32 @clk_enable(ptr noundef %call.i113) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end12.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end12.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @clk_unprepare(ptr noundef %call.i113) #5
  br label %clk_prepare_enable.exit.i

clk_prepare_enable.exit.i:                        ; preds = %if.then3.i.i, %if.end.i116.clk_prepare_enable.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i115, %if.end.i116.clk_prepare_enable.exit.i_crit_edge ], [ %call1.i.i, %if.then3.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i117 = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i117, label %exynos_bus_parse_of.exit.thread, label %clk_prepare_enable.exit.i.if.end12.i_crit_edge

clk_prepare_enable.exit.i.if.end12.i_crit_edge:   ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

exynos_bus_parse_of.exit.thread:                  ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.25) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate.i) #5
  br label %err_reg

if.end12.i:                                       ; preds = %clk_prepare_enable.exit.i.if.end12.i_crit_edge, %if.end.i.i.if.end12.i_crit_edge
  %call13.i = call i32 @dev_pm_opp_of_add_table(ptr noundef %27) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %do.end18.i, label %if.end19.i

do.end18.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.28) #8
  br label %err_clk.i

if.end19.i:                                       ; preds = %if.end12.i
  %33 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clk.i, align 4
  %call21.i = call i32 @clk_get_rate(ptr noundef %34) #5
  %35 = ptrtoint ptr %rate.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call21.i, ptr %rate.i, align 4
  %call22.i = call ptr @devfreq_recommended_opp(ptr noundef %27, ptr noundef nonnull %rate.i, i32 noundef 0) #5
  %cmp.i1.i = icmp ugt ptr %call22.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1.i, label %do.end27.i, label %exynos_bus_parse_of.exit.thread155

do.end27.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.31) #8
  %36 = ptrtoint ptr %call22.i to i32
  call void @dev_pm_opp_of_remove_table(ptr noundef %27) #5
  br label %err_clk.i

exynos_bus_parse_of.exit.thread155:               ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  %call30.i = call i32 @dev_pm_opp_get_freq(ptr noundef %call22.i) #5
  %curr_freq.i = getelementptr inbounds %struct.exynos_bus, ptr %call.i, i32 0, i32 6
  %37 = ptrtoint ptr %curr_freq.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call30.i, ptr %curr_freq.i, align 4
  call void @dev_pm_opp_put(ptr noundef %call22.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate.i) #5
  br label %if.end26

err_clk.i:                                        ; preds = %do.end27.i, %do.end18.i
  %ret.0.i118 = phi i32 [ %call13.i, %do.end18.i ], [ %36, %do.end27.i ]
  %38 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clk.i, align 4
  call void @clk_disable(ptr noundef %39) #5
  call void @clk_unprepare(ptr noundef %39) #5
  br label %exynos_bus_parse_of.exit

exynos_bus_parse_of.exit:                         ; preds = %err_clk.i, %do.end.i
  %retval.0.i119 = phi i32 [ %32, %do.end.i ], [ %ret.0.i118, %err_clk.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i119)
  %cmp24 = icmp slt i32 %retval.0.i119, 0
  br i1 %cmp24, label %exynos_bus_parse_of.exit.err_reg_crit_edge, label %exynos_bus_parse_of.exit.if.end26_crit_edge

exynos_bus_parse_of.exit.if.end26_crit_edge:      ; preds = %exynos_bus_parse_of.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

exynos_bus_parse_of.exit.err_reg_crit_edge:       ; preds = %exynos_bus_parse_of.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_reg

if.end26:                                         ; preds = %exynos_bus_parse_of.exit.if.end26_crit_edge, %exynos_bus_parse_of.exit.thread155
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call.i, align 4
  br i1 %tobool17.not146, label %if.else30, label %if.then28

if.then28:                                        ; preds = %if.end26
  %target.i = getelementptr inbounds %struct.devfreq_dev_profile, ptr %call.i107, i32 0, i32 4
  %42 = ptrtoint ptr %target.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @exynos_bus_target, ptr %target.i, align 4
  %exit.i = getelementptr inbounds %struct.devfreq_dev_profile, ptr %call.i107, i32 0, i32 7
  %43 = ptrtoint ptr %exit.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @exynos_bus_passive_exit, ptr %exit.i, align 4
  %call.i120 = call ptr @devfreq_get_devfreq_by_phandle(ptr noundef %41, ptr noundef nonnull @.str.7, i32 noundef 0) #5
  %cmp.i.i121 = icmp ugt ptr %call.i120, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i121, label %if.then28.err_crit_edge, label %if.end.i124

if.then28.err_crit_edge:                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end.i124:                                      ; preds = %if.then28
  %call.i.i122 = call noalias ptr @devm_kmalloc(ptr noundef %41, i32 noundef 24, i32 noundef 3520) #5
  %tobool.not.i123 = icmp eq ptr %call.i.i122, null
  br i1 %tobool.not.i123, label %if.end.i124.err_crit_edge, label %if.end5.i

if.end.i124.err_crit_edge:                        ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end5.i:                                        ; preds = %if.end.i124
  %44 = ptrtoint ptr %call.i.i122 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i120, ptr %call.i.i122, align 4
  %call6.i = call ptr @devm_devfreq_add_device(ptr noundef %41, ptr noundef nonnull %call.i107, ptr noundef nonnull @.str.33, ptr noundef nonnull %call.i.i122) #5
  %devfreq.i = getelementptr inbounds %struct.exynos_bus, ptr %call.i, i32 0, i32 2
  %45 = ptrtoint ptr %devfreq.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call6.i, ptr %devfreq.i, align 4
  %cmp.i26.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i26.i, label %do.end.i125, label %if.end5.i.if.end35_crit_edge

if.end5.i.if.end35_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

do.end.i125:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.34) #8
  %46 = ptrtoint ptr %devfreq.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %devfreq.i, align 4
  %48 = ptrtoint ptr %47 to i32
  br label %if.end32

if.else30:                                        ; preds = %if.end26
  %polling_ms.i = getelementptr inbounds %struct.devfreq_dev_profile, ptr %call.i107, i32 0, i32 1
  %49 = ptrtoint ptr %polling_ms.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 50, ptr %polling_ms.i, align 4
  %target.i127 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %call.i107, i32 0, i32 4
  %50 = ptrtoint ptr %target.i127 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @exynos_bus_target, ptr %target.i127, align 4
  %get_dev_status.i = getelementptr inbounds %struct.devfreq_dev_profile, ptr %call.i107, i32 0, i32 5
  %51 = ptrtoint ptr %get_dev_status.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @exynos_bus_get_dev_status, ptr %get_dev_status.i, align 4
  %exit.i128 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %call.i107, i32 0, i32 7
  %52 = ptrtoint ptr %exit.i128 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @exynos_bus_exit, ptr %exit.i128, align 4
  %call.i.i129 = call noalias ptr @devm_kmalloc(ptr noundef %41, i32 noundef 8, i32 noundef 3520) #5
  %tobool.not.i130 = icmp eq ptr %call.i.i129, null
  br i1 %tobool.not.i130, label %if.else30.err_crit_edge, label %if.end.i133

if.else30.err_crit_edge:                          ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end.i133:                                      ; preds = %if.else30
  %53 = ptrtoint ptr %call.i.i129 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 40, ptr %call.i.i129, align 4
  %downdifferential.i = getelementptr inbounds %struct.devfreq_simple_ondemand_data, ptr %call.i.i129, i32 0, i32 1
  %54 = ptrtoint ptr %downdifferential.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 5, ptr %downdifferential.i, align 4
  %call2.i = call ptr @devm_devfreq_add_device(ptr noundef %41, ptr noundef nonnull %call.i107, ptr noundef nonnull @.str.38, ptr noundef nonnull %call.i.i129) #5
  %devfreq.i131 = getelementptr inbounds %struct.exynos_bus, ptr %call.i, i32 0, i32 2
  %55 = ptrtoint ptr %devfreq.i131 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call2.i, ptr %devfreq.i131, align 4
  %cmp.i.i132 = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i132, label %do.end.i134, label %if.end8.i

do.end.i134:                                      ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.39) #8
  %56 = ptrtoint ptr %devfreq.i131 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %devfreq.i131, align 4
  %58 = ptrtoint ptr %57 to i32
  br label %if.end32

if.end8.i:                                        ; preds = %if.end.i133
  %call10.i = call i32 @devm_devfreq_register_opp_notifier(ptr noundef %41, ptr noundef %call2.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp.i135 = icmp slt i32 %call10.i, 0
  br i1 %cmp.i135, label %do.end14.i, label %if.end15.i

do.end14.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.42) #8
  br label %err

if.end15.i:                                       ; preds = %if.end8.i
  %edev_count.i.i = getelementptr inbounds %struct.exynos_bus, ptr %call.i, i32 0, i32 4
  %59 = ptrtoint ptr %edev_count.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %edev_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp13.not.i.i = icmp eq i32 %60, 0
  br i1 %cmp13.not.i.i, label %if.end15.i.if.end35_crit_edge, label %for.body.lr.ph.i.i

if.end15.i.if.end35_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

for.body.lr.ph.i.i:                               ; preds = %if.end15.i
  %edev.i.i = getelementptr inbounds %struct.exynos_bus, ptr %call.i, i32 0, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.014.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %61 = ptrtoint ptr %edev.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %edev.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %62, i32 %i.014.i.i
  %63 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i136 = icmp eq ptr %64, null
  br i1 %tobool.not.i.i136, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i137

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

if.end.i.i137:                                    ; preds = %for.body.i.i
  %call.i65.i = call i32 @devfreq_event_enable_edev(ptr noundef nonnull %64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65.i)
  %cmp3.i.i = icmp slt i32 %call.i65.i, 0
  br i1 %cmp3.i.i, label %do.end21.i, label %if.end.i.i137.for.inc.i.i_crit_edge

if.end.i.i137.for.inc.i.i_crit_edge:              ; preds = %if.end.i.i137
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i137.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.014.i.i, 1
  %65 = ptrtoint ptr %edev_count.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %edev_count.i.i, align 4
  %cmp.i66.i = icmp ult i32 %inc.i.i, %66
  br i1 %cmp.i66.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %if.end22.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

do.end21.i:                                       ; preds = %if.end.i.i137
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.45) #8
  br label %err

if.end22.i:                                       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp13.not.i68.i = icmp eq i32 %66, 0
  br i1 %cmp13.not.i68.i, label %if.end22.i.if.end35_crit_edge, label %if.end22.i.for.body.i74.i_crit_edge

if.end22.i.for.body.i74.i_crit_edge:              ; preds = %if.end22.i
  br label %for.body.i74.i

if.end22.i.if.end35_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

for.body.i74.i:                                   ; preds = %for.inc.i80.i.for.body.i74.i_crit_edge, %if.end22.i.for.body.i74.i_crit_edge
  %i.014.i71.i = phi i32 [ %inc.i78.i, %for.inc.i80.i.for.body.i74.i_crit_edge ], [ 0, %if.end22.i.for.body.i74.i_crit_edge ]
  %67 = ptrtoint ptr %edev.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %edev.i.i, align 4
  %arrayidx.i72.i = getelementptr ptr, ptr %68, i32 %i.014.i71.i
  %69 = ptrtoint ptr %arrayidx.i72.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.i72.i, align 4
  %tobool.not.i73.i = icmp eq ptr %70, null
  br i1 %tobool.not.i73.i, label %for.body.i74.i.for.inc.i80.i_crit_edge, label %if.end.i77.i

for.body.i74.i.for.inc.i80.i_crit_edge:           ; preds = %for.body.i74.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i80.i

if.end.i77.i:                                     ; preds = %for.body.i74.i
  %call.i75.i = call i32 @devfreq_event_set_event(ptr noundef nonnull %70) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75.i)
  %cmp3.i76.i = icmp slt i32 %call.i75.i, 0
  br i1 %cmp3.i76.i, label %do.end28.i, label %if.end.i77.i.for.inc.i80.i_crit_edge

if.end.i77.i.for.inc.i80.i_crit_edge:             ; preds = %if.end.i77.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i80.i

for.inc.i80.i:                                    ; preds = %if.end.i77.i.for.inc.i80.i_crit_edge, %for.body.i74.i.for.inc.i80.i_crit_edge
  %inc.i78.i = add nuw i32 %i.014.i71.i, 1
  %71 = ptrtoint ptr %edev_count.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %edev_count.i.i, align 4
  %cmp.i79.i = icmp ult i32 %inc.i78.i, %72
  br i1 %cmp.i79.i, label %for.inc.i80.i.for.body.i74.i_crit_edge, label %for.inc.i80.i.if.end35_crit_edge

for.inc.i80.i.if.end35_crit_edge:                 ; preds = %for.inc.i80.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

for.inc.i80.i.for.body.i74.i_crit_edge:           ; preds = %for.inc.i80.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i74.i

do.end28.i:                                       ; preds = %if.end.i77.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.48) #8
  %73 = ptrtoint ptr %edev_count.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %edev_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp13.not.i83.i = icmp eq i32 %74, 0
  br i1 %cmp13.not.i83.i, label %do.end28.i.err_crit_edge, label %do.end28.i.for.body.i89.i_crit_edge

do.end28.i.for.body.i89.i_crit_edge:              ; preds = %do.end28.i
  br label %for.body.i89.i

do.end28.i.err_crit_edge:                         ; preds = %do.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.body.i89.i:                                   ; preds = %for.inc.i95.i.for.body.i89.i_crit_edge, %do.end28.i.for.body.i89.i_crit_edge
  %i.014.i86.i = phi i32 [ %inc.i93.i, %for.inc.i95.i.for.body.i89.i_crit_edge ], [ 0, %do.end28.i.for.body.i89.i_crit_edge ]
  %75 = ptrtoint ptr %edev.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %edev.i.i, align 4
  %arrayidx.i87.i = getelementptr ptr, ptr %76, i32 %i.014.i86.i
  %77 = ptrtoint ptr %arrayidx.i87.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx.i87.i, align 4
  %tobool.not.i88.i = icmp eq ptr %78, null
  br i1 %tobool.not.i88.i, label %for.body.i89.i.for.inc.i95.i_crit_edge, label %if.end.i92.i

for.body.i89.i.for.inc.i95.i_crit_edge:           ; preds = %for.body.i89.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i95.i

if.end.i92.i:                                     ; preds = %for.body.i89.i
  %call.i90.i = call i32 @devfreq_event_disable_edev(ptr noundef nonnull %78) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90.i)
  %cmp3.i91.i = icmp slt i32 %call.i90.i, 0
  br i1 %cmp3.i91.i, label %do.end35.i, label %if.end.i92.i.for.inc.i95.i_crit_edge

if.end.i92.i.for.inc.i95.i_crit_edge:             ; preds = %if.end.i92.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i95.i

for.inc.i95.i:                                    ; preds = %if.end.i92.i.for.inc.i95.i_crit_edge, %for.body.i89.i.for.inc.i95.i_crit_edge
  %inc.i93.i = add nuw i32 %i.014.i86.i, 1
  %79 = ptrtoint ptr %edev_count.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %edev_count.i.i, align 4
  %cmp.i94.i = icmp ult i32 %inc.i93.i, %80
  br i1 %cmp.i94.i, label %for.inc.i95.i.for.body.i89.i_crit_edge, label %for.inc.i95.i.if.end32_crit_edge

for.inc.i95.i.if.end32_crit_edge:                 ; preds = %for.inc.i95.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

for.inc.i95.i.for.body.i89.i_crit_edge:           ; preds = %for.inc.i95.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i89.i

do.end35.i:                                       ; preds = %if.end.i92.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str.51) #8
  br label %if.end32

if.end32:                                         ; preds = %do.end35.i, %for.inc.i95.i.if.end32_crit_edge, %do.end.i134, %do.end.i125
  %ret.0 = phi i32 [ %48, %do.end.i125 ], [ %58, %do.end.i134 ], [ %call.i75.i, %do.end35.i ], [ %call.i75.i, %for.inc.i95.i.if.end32_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp33 = icmp slt i32 %ret.0, 0
  br i1 %cmp33, label %if.end32.err_crit_edge, label %if.end32.if.end35_crit_edge

if.end32.if.end35_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.end32.err_crit_edge:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end35:                                         ; preds = %if.end32.if.end35_crit_edge, %for.inc.i80.i.if.end35_crit_edge, %if.end22.i.if.end35_crit_edge, %if.end15.i.if.end35_crit_edge, %if.end5.i.if.end35_crit_edge
  %81 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %of_node, align 8
  %call37 = call ptr @of_get_property(ptr noundef %82, ptr noundef nonnull @.str.8, ptr noundef null) #5
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.end35.if.end47_crit_edge, label %if.then39

if.end35.if.end47_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.then39:                                        ; preds = %if.end35
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #5
  %83 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %84 = call ptr @memset(ptr %83, i32 255, i32 48)
  %85 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %dev1, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %86 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %fwnode.i.i, align 4
  %87 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %83, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %88 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @.str.9, ptr %name2.i.i, align 4
  %id3.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 4
  %89 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -2, ptr %id3.i.i, align 8
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %90 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %91 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %properties.i.i, align 8
  %92 = call ptr @memset(ptr %res4.i.i, i32 0, i32 16)
  %call.i.i139 = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #5
  %icc_pdev = getelementptr inbounds %struct.exynos_bus, ptr %call.i, i32 0, i32 1
  %93 = ptrtoint ptr %icc_pdev to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call.i.i139, ptr %icc_pdev, align 4
  %cmp.i140 = icmp ugt ptr %call.i.i139, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i140, label %if.then43, label %if.then39.if.end47_crit_edge

if.then39.if.end47_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.then43:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  %94 = ptrtoint ptr %call.i.i139 to i32
  br label %err

if.end47:                                         ; preds = %if.then39.if.end47_crit_edge, %if.end35.if.end47_crit_edge
  %devfreq = getelementptr inbounds %struct.exynos_bus, ptr %call.i, i32 0, i32 2
  %95 = ptrtoint ptr %devfreq to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %devfreq, align 4
  %profile48 = getelementptr inbounds %struct.devfreq, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %profile48 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %profile48, align 8
  %max_state49 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %98, i32 0, i32 9
  %99 = ptrtoint ptr %max_state49 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %max_state49, align 4
  %freq_table = getelementptr inbounds %struct.devfreq_dev_profile, ptr %98, i32 0, i32 8
  %101 = ptrtoint ptr %freq_table to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %freq_table, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %102, align 4
  %div = udiv i32 %104, 1000
  %sub = add i32 %100, -1
  %arrayidx55 = getelementptr i32, ptr %102, i32 %sub
  %105 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx55, align 4
  %div56 = udiv i32 %106, 1000
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %107 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i141 = icmp eq ptr %108, null
  br i1 %tobool.not.i141, label %if.end.i142, label %if.end47.dev_name.exit_crit_edge

if.end47.dev_name.exit_crit_edge:                 ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i142:                                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  %109 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i142, %if.end47.dev_name.exit_crit_edge
  %retval.0.i143 = phi ptr [ %110, %if.end.i142 ], [ %108, %if.end47.dev_name.exit_crit_edge ]
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %retval.0.i143, i32 noundef %div, i32 noundef %div56) #8
  br label %cleanup

err:                                              ; preds = %if.then43, %if.end32.err_crit_edge, %do.end28.i.err_crit_edge, %do.end21.i, %do.end14.i, %if.else30.err_crit_edge, %if.end.i124.err_crit_edge, %if.then28.err_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end32.err_crit_edge ], [ %94, %if.then43 ], [ %call.i75.i, %do.end28.i.err_crit_edge ], [ -12, %if.else30.err_crit_edge ], [ %call.i65.i, %do.end21.i ], [ %call10.i, %do.end14.i ], [ -12, %if.end.i124.err_crit_edge ], [ -517, %if.then28.err_crit_edge ]
  call void @dev_pm_opp_of_remove_table(ptr noundef %dev1) #5
  %111 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %clk.i, align 4
  call void @clk_disable(ptr noundef %112) #5
  call void @clk_unprepare(ptr noundef %112) #5
  br label %err_reg

err_reg:                                          ; preds = %err, %exynos_bus_parse_of.exit.err_reg_crit_edge, %exynos_bus_parse_of.exit.thread
  %ret.2 = phi i32 [ %retval.0.i119, %exynos_bus_parse_of.exit.err_reg_crit_edge ], [ %ret.1, %err ], [ %retval.0.i.i, %exynos_bus_parse_of.exit.thread ]
  %opp_table = getelementptr inbounds %struct.exynos_bus, ptr %call.i, i32 0, i32 7
  %113 = ptrtoint ptr %opp_table to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %opp_table, align 4
  call void @dev_pm_opp_put_regulators(ptr noundef %114) #5
  %115 = ptrtoint ptr %opp_table to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %opp_table, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_reg, %dev_name.exit, %exynos_bus_parent_parse_of.exit.cleanup_crit_edge, %exynos_bus_parent_parse_of.exit.thread150, %do.body6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.2, %err_reg ], [ 0, %dev_name.exit ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %do.body6.cleanup_crit_edge ], [ %25, %exynos_bus_parent_parse_of.exit.cleanup_crit_edge ], [ %ret.0.i, %exynos_bus_parent_parse_of.exit.thread150 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_bus_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %devfreq = getelementptr inbounds %struct.exynos_bus, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %devfreq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devfreq, align 4
  %call1 = tail call i32 @devfreq_suspend_device(ptr noundef %3) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_of_remove_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put_regulators(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_set_regulators(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_event_get_edev_count(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devfreq_event_get_edev_by_phandle(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_of_add_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devfreq_recommended_opp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_freq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_bus_target(ptr noundef %dev, ptr noundef %freq, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @devfreq_recommended_opp(ptr noundef %dev, ptr noundef %freq, i32 noundef %flags) #5
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36) #8
  %2 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @dev_pm_opp_put(ptr noundef %call1) #5
  %lock = getelementptr inbounds %struct.exynos_bus, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %3 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %freq, align 4
  %call4 = tail call i32 @dev_pm_opp_set_rate(ptr noundef %dev, i32 noundef %4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then5, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %freq, align 4
  %curr_freq = getelementptr inbounds %struct.exynos_bus, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %curr_freq to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %curr_freq, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end
  %retval.0 = phi i32 [ %2, %do.end ], [ %call4, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_bus_passive_exit(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %icc_pdev = getelementptr inbounds %struct.exynos_bus, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %icc_pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %icc_pdev, align 4
  tail call void @platform_device_unregister(ptr noundef %3) #5
  tail call void @dev_pm_opp_of_remove_table(ptr noundef %dev) #5
  %clk = getelementptr inbounds %struct.exynos_bus, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devfreq_get_devfreq_by_phandle(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_devfreq_add_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_bus_get_dev_status(ptr noundef %dev, ptr nocapture noundef %stat) #2 align 64 {
entry:
  %event_data.i = alloca %struct.devfreq_event_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %curr_freq = getelementptr inbounds %struct.exynos_bus, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %curr_freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %curr_freq, align 4
  %current_frequency = getelementptr inbounds %struct.devfreq_dev_status, ptr %stat, i32 0, i32 2
  %4 = ptrtoint ptr %current_frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %current_frequency, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %event_data.i) #5
  %5 = ptrtoint ptr %event_data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %event_data.i, align 4, !annotation !143
  %6 = getelementptr inbounds %struct.devfreq_event_data, ptr %event_data.i, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !143
  %edev_count.i = getelementptr inbounds %struct.exynos_bus, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %edev_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %edev_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp32.not.i = icmp eq i32 %9, 0
  br i1 %cmp32.not.i, label %exynos_bus_get_event.exit.thread56, label %for.body.lr.ph.i

exynos_bus_get_event.exit.thread56:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %event_data.i) #5
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %entry
  %edev.i = getelementptr inbounds %struct.exynos_bus, ptr %1, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ret.037.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %ret.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.035.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %total_count.034.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %total_count.1.i, %for.inc.i.for.body.i_crit_edge ]
  %load_count.033.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %load_count.1.i, %for.inc.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %edev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %edev.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %11, i32 %i.035.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %call.i = call i32 @devfreq_event_get_event(ptr noundef nonnull %13, ptr noundef nonnull %event_data.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %exynos_bus_get_event.exit.thread, label %if.end5.i

exynos_bus_get_event.exit.thread:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %event_data.i) #5
  br label %do.end

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.035.i)
  %cmp6.i = icmp eq i32 %i.035.i, 0
  br i1 %cmp6.i, label %if.end5.i.if.then9.i_crit_edge, label %lor.lhs.false.i

if.end5.i.if.then9.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9.i

lor.lhs.false.i:                                  ; preds = %if.end5.i
  %14 = ptrtoint ptr %event_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %event_data.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %load_count.033.i)
  %cmp8.i = icmp ugt i32 %15, %load_count.033.i
  br i1 %cmp8.i, label %lor.lhs.false.i.if.then9.i_crit_edge, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

lor.lhs.false.i.if.then9.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9.i

if.then9.i:                                       ; preds = %lor.lhs.false.i.if.then9.i_crit_edge, %if.end5.i.if.then9.i_crit_edge
  %16 = ptrtoint ptr %event_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %event_data.i, align 4
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %6, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then9.i, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %load_count.1.i = phi i32 [ %17, %if.then9.i ], [ %load_count.033.i, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %load_count.033.i, %for.body.i.for.inc.i_crit_edge ]
  %total_count.1.i = phi i32 [ %19, %if.then9.i ], [ %total_count.034.i, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %total_count.034.i, %for.body.i.for.inc.i_crit_edge ]
  %ret.1.i = phi i32 [ %call.i, %if.then9.i ], [ %call.i, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %ret.037.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw i32 %i.035.i, 1
  %20 = ptrtoint ptr %edev_count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %edev_count.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %21
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %exynos_bus_get_event.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

exynos_bus_get_event.exit:                        ; preds = %for.inc.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %event_data.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %cmp = icmp slt i32 %ret.1.i, 0
  br i1 %cmp, label %exynos_bus_get_event.exit.do.end_crit_edge, label %exynos_bus_get_event.exit.if.end_crit_edge

exynos_bus_get_event.exit.if.end_crit_edge:       ; preds = %exynos_bus_get_event.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

exynos_bus_get_event.exit.do.end_crit_edge:       ; preds = %exynos_bus_get_event.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %exynos_bus_get_event.exit.do.end_crit_edge, %exynos_bus_get_event.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.54) #8
  %busy_time = getelementptr inbounds %struct.devfreq_dev_status, ptr %stat, i32 0, i32 1
  %22 = ptrtoint ptr %busy_time to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %busy_time, align 4
  %23 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %stat, align 4
  br label %err

if.end:                                           ; preds = %exynos_bus_get_event.exit.if.end_crit_edge, %exynos_bus_get_event.exit.thread56
  %edata.sroa.0.062 = phi i32 [ 0, %exynos_bus_get_event.exit.thread56 ], [ %load_count.1.i, %exynos_bus_get_event.exit.if.end_crit_edge ]
  %edata.sroa.5.061 = phi i32 [ 0, %exynos_bus_get_event.exit.thread56 ], [ %total_count.1.i, %exynos_bus_get_event.exit.if.end_crit_edge ]
  %mul = mul i32 %edata.sroa.0.062, 100
  %ratio = getelementptr inbounds %struct.exynos_bus, ptr %1, i32 0, i32 9
  %24 = ptrtoint ptr %ratio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ratio, align 4
  %div = udiv i32 %mul, %25
  %busy_time2 = getelementptr inbounds %struct.devfreq_dev_status, ptr %stat, i32 0, i32 1
  %26 = ptrtoint ptr %busy_time2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div, ptr %busy_time2, align 4
  %27 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %edata.sroa.5.061, ptr %stat, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos_bus_get_dev_status.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@exynos_bus_get_dev_status, %if.then8)) #5
          to label %err [label %if.then8], !srcloc !144

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %busy_time2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %busy_time2, align 4
  %30 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %stat, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exynos_bus_get_dev_status.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.57, i32 noundef %29, i32 noundef %31) #5
  br label %err

err:                                              ; preds = %if.then8, %if.end, %do.end
  %32 = ptrtoint ptr %edev_count.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %edev_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp13.not.i = icmp eq i32 %33, 0
  br i1 %cmp13.not.i, label %err.cleanup_crit_edge, label %for.body.lr.ph.i41

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph.i41:                               ; preds = %err
  %edev.i40 = getelementptr inbounds %struct.exynos_bus, ptr %1, i32 0, i32 3
  br label %for.body.i44

for.body.i44:                                     ; preds = %for.inc.i50.for.body.i44_crit_edge, %for.body.lr.ph.i41
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i41 ], [ %inc.i48, %for.inc.i50.for.body.i44_crit_edge ]
  %34 = ptrtoint ptr %edev.i40 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %edev.i40, align 4
  %arrayidx.i42 = getelementptr ptr, ptr %35, i32 %i.014.i
  %36 = ptrtoint ptr %arrayidx.i42 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i42, align 4
  %tobool.not.i43 = icmp eq ptr %37, null
  br i1 %tobool.not.i43, label %for.body.i44.for.inc.i50_crit_edge, label %if.end.i47

for.body.i44.for.inc.i50_crit_edge:               ; preds = %for.body.i44
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i50

if.end.i47:                                       ; preds = %for.body.i44
  %call.i45 = call i32 @devfreq_event_set_event(ptr noundef nonnull %37) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %cmp3.i46 = icmp slt i32 %call.i45, 0
  br i1 %cmp3.i46, label %do.end19, label %if.end.i47.for.inc.i50_crit_edge

if.end.i47.for.inc.i50_crit_edge:                 ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i50

for.inc.i50:                                      ; preds = %if.end.i47.for.inc.i50_crit_edge, %for.body.i44.for.inc.i50_crit_edge
  %inc.i48 = add nuw i32 %i.014.i, 1
  %38 = ptrtoint ptr %edev_count.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %edev_count.i, align 4
  %cmp.i49 = icmp ult i32 %inc.i48, %39
  br i1 %cmp.i49, label %for.inc.i50.for.body.i44_crit_edge, label %for.inc.i50.cleanup_crit_edge

for.inc.i50.cleanup_crit_edge:                    ; preds = %for.inc.i50
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.i50.for.body.i44_crit_edge:               ; preds = %for.inc.i50
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i44

do.end19:                                         ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.48) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %for.inc.i50.cleanup_crit_edge, %err.cleanup_crit_edge
  %retval.0.i5166 = phi i32 [ %call.i45, %do.end19 ], [ 0, %err.cleanup_crit_edge ], [ 0, %for.inc.i50.cleanup_crit_edge ]
  ret i32 %retval.0.i5166
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_bus_exit(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %edev_count.i = getelementptr inbounds %struct.exynos_bus, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %edev_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %edev_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp13.not.i = icmp eq i32 %3, 0
  br i1 %cmp13.not.i, label %entry.if.end_crit_edge, label %for.body.lr.ph.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %entry
  %edev.i = getelementptr inbounds %struct.exynos_bus, ptr %1, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %edev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %edev.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %5, i32 %i.014.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %call.i = tail call i32 @devfreq_event_disable_edev(ptr noundef nonnull %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %do.end, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.014.i, 1
  %8 = ptrtoint ptr %edev_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %edev_count.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %9
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.51) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %for.inc.i.if.end_crit_edge, %entry.if.end_crit_edge
  %icc_pdev = getelementptr inbounds %struct.exynos_bus, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %icc_pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %icc_pdev, align 4
  tail call void @platform_device_unregister(ptr noundef %11) #5
  tail call void @dev_pm_opp_of_remove_table(ptr noundef %dev) #5
  %clk = getelementptr inbounds %struct.exynos_bus, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %13) #5
  tail call void @clk_unprepare(ptr noundef %13) #5
  %opp_table = getelementptr inbounds %struct.exynos_bus, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %opp_table to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %opp_table, align 4
  tail call void @dev_pm_opp_put_regulators(ptr noundef %15) #5
  %16 = ptrtoint ptr %opp_table to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %opp_table, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_devfreq_register_opp_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_event_get_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_event_enable_edev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_event_set_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_event_disable_edev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_suspend_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_bus_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %edev_count.i = getelementptr inbounds %struct.exynos_bus, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %edev_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %edev_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp13.not.i = icmp eq i32 %3, 0
  br i1 %cmp13.not.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %edev.i = getelementptr inbounds %struct.exynos_bus, ptr %1, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %edev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %edev.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %5, i32 %i.014.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %call.i = tail call i32 @devfreq_event_disable_edev(ptr noundef nonnull %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %do.end, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.014.i, 1
  %8 = ptrtoint ptr %edev_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %edev_count.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %9
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.51) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_bus_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %edev_count.i = getelementptr inbounds %struct.exynos_bus, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %edev_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %edev_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp13.not.i = icmp eq i32 %3, 0
  br i1 %cmp13.not.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %edev.i = getelementptr inbounds %struct.exynos_bus, ptr %1, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %edev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %edev.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %5, i32 %i.014.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %call.i = tail call i32 @devfreq_event_enable_edev(ptr noundef nonnull %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %do.end, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.014.i, 1
  %8 = ptrtoint ptr %edev_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %edev_count.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %9
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.62) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !29, !31, !33, !34, !35, !37, !39, !40, !41, !42, !44, !46, !47, !48, !50, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !119, !120, !121, !123, !125, !127, !128, !129, !131, !132, !133}
!llvm.module.flags = !{!134, !135, !136, !137, !138, !139, !140, !141}
!llvm.ident = !{!142}

!0 = !{ptr @__initcall__kmod_exynos_bus__289_524_exynos_bus_platdrv_init6, !1, !"__initcall__kmod_exynos_bus__289_524_exynos_bus_platdrv_init6", i1 false, i1 false}
!1 = !{!"../drivers/devfreq/exynos-bus.c", i32 524, i32 1}
!2 = !{ptr @__exitcall_exynos_bus_platdrv_exit, !1, !"__exitcall_exynos_bus_platdrv_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description290, !4, !"__UNIQUE_ID_description290", i1 false, i1 false}
!4 = !{!"../drivers/devfreq/exynos-bus.c", i32 526, i32 1}
!5 = !{ptr @__UNIQUE_ID_author291, !6, !"__UNIQUE_ID_author291", i1 false, i1 false}
!6 = !{!"../drivers/devfreq/exynos-bus.c", i32 527, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/devfreq/exynos-bus.c", i32 528, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/devfreq/exynos-bus.c", i32 519, i32 11}
!12 = !{ptr @exynos_bus_platdrv, !13, !"exynos_bus_platdrv", i1 false, i1 false}
!13 = !{!"../drivers/devfreq/exynos-bus.c", i32 515, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/devfreq/exynos-bus.c", i32 400, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @exynos_bus_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @exynos_bus_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @exynos_bus_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/devfreq/exynos-bus.c", i32 407, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/devfreq/exynos-bus.c", i32 415, i32 40}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/devfreq/exynos-bus.c", i32 439, i32 36}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/devfreq/exynos-bus.c", i32 441, i32 12}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/devfreq/exynos-bus.c", i32 453, i32 2}
!33 = !{ptr @exynos_bus_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @exynos_bus_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/devfreq/exynos-bus.c", i32 183, i32 20}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/devfreq/exynos-bus.c", i32 189, i32 3}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @exynos_bus_parent_parse_of._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @exynos_bus_parent_parse_of._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/devfreq/exynos-bus.c", i32 199, i32 44}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/devfreq/exynos-bus.c", i32 201, i32 3}
!46 = !{ptr @exynos_bus_parent_parse_of._entry.17, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @exynos_bus_parent_parse_of._entry_ptr.19, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/devfreq/exynos-bus.c", i32 233, i32 31}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/devfreq/exynos-bus.c", i32 254, i32 31}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/devfreq/exynos-bus.c", i32 256, i32 3}
!54 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @exynos_bus_parse_of._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @exynos_bus_parse_of._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/devfreq/exynos-bus.c", i32 262, i32 3}
!59 = !{ptr @exynos_bus_parse_of._entry.24, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @exynos_bus_parse_of._entry_ptr.26, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/devfreq/exynos-bus.c", i32 269, i32 3}
!63 = !{ptr @exynos_bus_parse_of._entry.27, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @exynos_bus_parse_of._entry_ptr.29, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/devfreq/exynos-bus.c", i32 277, i32 3}
!67 = !{ptr @exynos_bus_parse_of._entry.30, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @exynos_bus_parse_of._entry_ptr.32, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/devfreq/exynos-bus.c", i32 378, i32 55}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/devfreq/exynos-bus.c", i32 381, i32 3}
!73 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @exynos_bus_profile_init_passive._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @exynos_bus_profile_init_passive._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/devfreq/exynos-bus.c", i32 102, i32 3}
!78 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @exynos_bus_target._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @exynos_bus_target._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/devfreq/exynos-bus.c", i32 316, i32 7}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/devfreq/exynos-bus.c", i32 319, i32 3}
!85 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @exynos_bus_profile_init._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @exynos_bus_profile_init._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/devfreq/exynos-bus.c", i32 326, i32 3}
!90 = !{ptr @exynos_bus_profile_init._entry.41, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @exynos_bus_profile_init._entry_ptr.43, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/devfreq/exynos-bus.c", i32 336, i32 3}
!94 = !{ptr @exynos_bus_profile_init._entry.44, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @exynos_bus_profile_init._entry_ptr.46, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/devfreq/exynos-bus.c", i32 342, i32 3}
!98 = !{ptr @exynos_bus_profile_init._entry.47, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @exynos_bus_profile_init._entry_ptr.49, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/devfreq/exynos-bus.c", i32 350, i32 3}
!102 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @exynos_bus_profile_init._entry.50, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @exynos_bus_profile_init._entry_ptr.53, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.54, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/devfreq/exynos-bus.c", i32 130, i32 3}
!107 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @exynos_bus_get_dev_status._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @exynos_bus_get_dev_status._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/devfreq/exynos-bus.c", i32 138, i32 2}
!112 = !{ptr @.str.57, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @exynos_bus_get_dev_status.__UNIQUE_ID_ddebug288, !111, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!114 = !{ptr @exynos_bus_get_dev_status._entry.58, !115, !"_entry", i1 false, i1 false}
!115 = !{!"../drivers/devfreq/exynos-bus.c", i32 144, i32 3}
!116 = !{ptr @exynos_bus_get_dev_status._entry_ptr.59, !115, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.60, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/devfreq/exynos-bus.c", i32 158, i32 3}
!119 = !{ptr @exynos_bus_exit._entry, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @exynos_bus_exit._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @exynos_bus_of_match, !122, !"exynos_bus_of_match", i1 false, i1 false}
!122 = !{!"../drivers/devfreq/exynos-bus.c", i32 509, i32 34}
!123 = !{ptr @exynos_bus_pm, !124, !"exynos_bus_pm", i1 false, i1 false}
!124 = !{!"../drivers/devfreq/exynos-bus.c", i32 505, i32 32}
!125 = !{ptr @.str.61, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/devfreq/exynos-bus.c", i32 497, i32 3}
!127 = !{ptr @exynos_bus_suspend._entry, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @exynos_bus_suspend._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.62, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/devfreq/exynos-bus.c", i32 483, i32 3}
!131 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @exynos_bus_resume._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @exynos_bus_resume._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{i32 1, !"wchar_size", i32 2}
!135 = !{i32 1, !"min_enum_size", i32 4}
!136 = !{i32 8, !"branch-target-enforcement", i32 0}
!137 = !{i32 8, !"sign-return-address", i32 0}
!138 = !{i32 8, !"sign-return-address-all", i32 0}
!139 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!140 = !{i32 7, !"uwtable", i32 1}
!141 = !{i32 7, !"frame-pointer", i32 2}
!142 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!143 = !{!"auto-init"}
!144 = !{i64 2148732984, i64 2148732989, i64 2148733002, i64 2148733046, i64 2148733080, i64 2148733101}
