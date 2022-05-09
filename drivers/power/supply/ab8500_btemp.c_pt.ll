; ModuleID = '/llk/IR_all_yes/drivers/power/supply/ab8500_btemp.c_pt.bc'
source_filename = "../drivers/power/supply/ab8500_btemp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ab8500_bm_data = type { ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.ab8500_btemp_interrupts = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ab8500_btemp = type { ptr, %struct.list_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ab8500_btemp_events, %struct.ab8500_btemp_ranges, ptr, %struct.delayed_work, i8 }
%struct.ab8500_btemp_events = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.ab8500_btemp_ranges = type { i32, i32, i32 }
%struct.ab8500_battery_type = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.ab8500_res_to_temp = type { i32, i32 }
%struct.ab8500 = type { ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, i32, ptr, i32, i8, ptr, ptr, ptr, [4 x i32], [4 x i32], ptr, ptr, i32, ptr, i32 }
%union.power_supply_propval = type { i32 }
%struct.power_supply = type { ptr, ptr, i32, ptr, i32, ptr, ptr, %struct.device, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ab8500-btemp\00", [19 x i8] zeroinitializer }, align 32
@ab8500_btemp_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"stericsson,ab8500-btemp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ab8500_btemp_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ab8500_btemp_suspend, ptr @ab8500_btemp_resume, ptr @ab8500_btemp_suspend, ptr @ab8500_btemp_resume, ptr @ab8500_btemp_suspend, ptr @ab8500_btemp_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ab8500_btemp_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ab8500_btemp_probe, ptr @ab8500_btemp_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ab8500_btemp_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ab8500_btemp_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file298 = internal constant [52 x i8] c"ab8500_btemp.file=drivers/power/supply/ab8500_btemp\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [28 x i8] c"ab8500_btemp.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author300 = internal constant [67 x i8] c"ab8500_btemp.author=Johan Palsson, Karl Komierowski, Arun R Murthy\00", section ".modinfo", align 1
@__UNIQUE_ID_alias301 = internal constant [41 x i8] c"ab8500_btemp.alias=platform:ab8500-btemp\00", section ".modinfo", align 1
@__UNIQUE_ID_description302 = internal constant [59 x i8] c"ab8500_btemp.description=AB8500 battery temperature driver\00", section ".modinfo", align 1
@ab8500_bm_data = external dso_local global %struct.ab8500_bm_data, align 4
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"btemp_ball\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to get BTEMP BALL ADC channel\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bat_ctrl\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to get BAT CTRL ADC channel\0A\00", [60 x i8] zeroinitializer }, align 32
@supply_interface = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.21, ptr @.str.22], [24 x i8] zeroinitializer }, align 32
@ab8500_btemp_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"(work_completion)(&(&di->btemp_periodic_work)->work)\00", [43 x i8] zeroinitializer }, align 32
@ab8500_btemp_probe.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"&(&di->btemp_periodic_work)->timer\00", [61 x i8] zeroinitializer }, align 32
@ab8500_btemp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 1032, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s ab8500 read failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ab8500_btemp_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/power/supply/ab8500_btemp.c\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ab8500_btemp_probe._entry_ptr = internal global ptr @ab8500_btemp_probe._entry, section ".printk_index", align 4
@ab8500_btemp_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.19, i32 1, ptr null, i32 0, ptr @ab8500_btemp_props, i32 4, ptr @ab8500_btemp_get_property, ptr null, ptr null, ptr @ab8500_btemp_external_power_changed, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@ab8500_btemp_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.10, i32 1055, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to register BTEMP psy\0A\00", [34 x i8] zeroinitializer }, align 32
@ab8500_btemp_probe._entry_ptr.15 = internal global ptr @ab8500_btemp_probe._entry.13, section ".printk_index", align 4
@ab8500_btemp_irq = internal constant { [5 x %struct.ab8500_btemp_interrupts], [56 x i8] } { [5 x %struct.ab8500_btemp_interrupts] [%struct.ab8500_btemp_interrupts { ptr @.str.84, ptr @ab8500_btemp_batctrlindb_handler }, %struct.ab8500_btemp_interrupts { ptr @.str.85, ptr @ab8500_btemp_templow_handler }, %struct.ab8500_btemp_interrupts { ptr @.str.86, ptr @ab8500_btemp_temphigh_handler }, %struct.ab8500_btemp_interrupts { ptr @.str.87, ptr @ab8500_btemp_lowmed_handler }, %struct.ab8500_btemp_interrupts { ptr @.str.88, ptr @ab8500_btemp_medhigh_handler }], [56 x i8] zeroinitializer }, align 32
@ab8500_btemp_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.10, i32 1072, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to request %s IRQ %d: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ab8500_btemp_probe._entry_ptr.18 = internal global ptr @ab8500_btemp_probe._entry.16, section ".printk_index", align 4
@ab8500_btemp_probe.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.9, ptr @.str.10, ptr @.str.20, i8 1, i8 13, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ab8500_btemp\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Requested %s IRQ %d: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@ab8500_btemp_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ab8500_btemp_list, ptr @ab8500_btemp_list }, [24 x i8] zeroinitializer }, align 32
@ab8500_btemp_component_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @ab8500_btemp_bind, ptr @ab8500_btemp_unbind }, [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ab8500_chargalg\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ab8500_fg\00", [22 x i8] zeroinitializer }, align 32
@ab8500_btemp_periodic_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.10, i32 569, ptr @.str.25, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to identify the battery\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ab8500_btemp_periodic_work\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ab8500_btemp_periodic_work._entry_ptr = internal global ptr @ab8500_btemp_periodic_work._entry, section ".printk_index", align 4
@ab8500_btemp_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.10, i32 516, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s get batctrl res failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ab8500_btemp_id\00", [16 x i8] zeroinitializer }, align 32
@ab8500_btemp_id._entry_ptr = internal global ptr @ab8500_btemp_id._entry, section ".printk_index", align 4
@ab8500_btemp_id._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.10, i32 528, ptr @.str.30, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Battery detected on %s low %d < res %d < high: %d index: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ab8500_btemp_id._entry_ptr.31 = internal global ptr @ab8500_btemp_id._entry.28, section ".printk_index", align 4
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BATCTRL\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BATTEMP\00", [24 x i8] zeroinitializer }, align 32
@ab8500_btemp_id._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.27, ptr @.str.10, i32 531, ptr @.str.25, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Battery identified as unknown, resistance %d Ohm\0A\00", [46 x i8] zeroinitializer }, align 32
@ab8500_btemp_id._entry_ptr.36 = internal global ptr @ab8500_btemp_id._entry.34, section ".printk_index", align 4
@ab8500_btemp_id.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.27, ptr @.str.10, ptr @.str.37, i8 0, i8 -120, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Set BATCTRL current source to 20uA\0A\00", [60 x i8] zeroinitializer }, align 32
@ab8500_btemp_get_batctrl_res._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.10, i32 359, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s curr source enabled failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ab8500_btemp_get_batctrl_res\00", [35 x i8] zeroinitializer }, align 32
@ab8500_btemp_get_batctrl_res._entry_ptr = internal global ptr @ab8500_btemp_get_batctrl_res._entry, section ".printk_index", align 4
@ab8500_btemp_get_batctrl_res._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.10, i32 366, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"No fg found\0A\00", [19 x i8] zeroinitializer }, align 32
@ab8500_btemp_get_batctrl_res._entry_ptr.42 = internal global ptr @ab8500_btemp_get_batctrl_res._entry.40, section ".printk_index", align 4
@ab8500_btemp_get_batctrl_res._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.10, i32 373, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to start current measurement\0A\00", [59 x i8] zeroinitializer }, align 32
@ab8500_btemp_get_batctrl_res._entry_ptr.45 = internal global ptr @ab8500_btemp_get_batctrl_res._entry.43, section ".printk_index", align 4
@ab8500_btemp_get_batctrl_res._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.39, ptr @.str.10, i32 392, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to finalize current measurement\0A\00", [56 x i8] zeroinitializer }, align 32
@ab8500_btemp_get_batctrl_res._entry_ptr.48 = internal global ptr @ab8500_btemp_get_batctrl_res._entry.46, section ".printk_index", align 4
@ab8500_btemp_get_batctrl_res._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.39, ptr @.str.10, i32 400, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s curr source disable failed\0A\00", [33 x i8] zeroinitializer }, align 32
@ab8500_btemp_get_batctrl_res._entry_ptr.51 = internal global ptr @ab8500_btemp_get_batctrl_res._entry.49, section ".printk_index", align 4
@ab8500_btemp_get_batctrl_res.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.39, ptr @.str.10, ptr @.str.52, i8 0, i8 101, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s batctrl: %d res: %d inst_curr: %d samples: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@ab8500_btemp_curr_source_enable.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.53, ptr @.str.10, ptr @.str.54, i8 0, i8 54, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ab8500_btemp_curr_source_enable\00", [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Set BATCTRL %duA\0A\00", [46 x i8] zeroinitializer }, align 32
@ab8500_btemp_curr_source_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.10, i32 224, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s failed setting cmp_force\0A\00", [35 x i8] zeroinitializer }, align 32
@ab8500_btemp_curr_source_enable._entry_ptr = internal global ptr @ab8500_btemp_curr_source_enable._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ab8500_btemp_curr_source_enable._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.53, ptr @.str.10, i32 240, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s failed enabling current source\0A\00", [61 x i8] zeroinitializer }, align 32
@ab8500_btemp_curr_source_enable._entry_ptr.58 = internal global ptr @ab8500_btemp_curr_source_enable._entry.56, section ".printk_index", align 4
@ab8500_btemp_curr_source_enable.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.53, ptr @.str.10, ptr @.str.59, i8 0, i8 61, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Disable BATCTRL curr source\0A\00", [35 x i8] zeroinitializer }, align 32
@ab8500_btemp_curr_source_enable._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.53, ptr @.str.10, i32 255, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s failed disabling current source\0A\00", [60 x i8] zeroinitializer }, align 32
@ab8500_btemp_curr_source_enable._entry_ptr.62 = internal global ptr @ab8500_btemp_curr_source_enable._entry.60, section ".printk_index", align 4
@ab8500_btemp_curr_source_enable._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.53, ptr @.str.10, i32 266, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s failed enabling PU and comp\0A\00", [32 x i8] zeroinitializer }, align 32
@ab8500_btemp_curr_source_enable._entry_ptr.65 = internal global ptr @ab8500_btemp_curr_source_enable._entry.63, section ".printk_index", align 4
@ab8500_btemp_curr_source_enable._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.53, ptr @.str.10, i32 283, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s failed disabling force comp\0A\00", [32 x i8] zeroinitializer }, align 32
@ab8500_btemp_curr_source_enable._entry_ptr.68 = internal global ptr @ab8500_btemp_curr_source_enable._entry.66, section ".printk_index", align 4
@ab8500_btemp_curr_source_enable._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.53, ptr @.str.10, i32 302, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@ab8500_btemp_curr_source_enable._entry_ptr.70 = internal global ptr @ab8500_btemp_curr_source_enable._entry.69, section ".printk_index", align 4
@ab8500_btemp_curr_source_enable._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.53, ptr @.str.10, i32 313, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@ab8500_btemp_curr_source_enable._entry_ptr.72 = internal global ptr @ab8500_btemp_curr_source_enable._entry.71, section ".printk_index", align 4
@ab8500_btemp_curr_source_enable._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.53, ptr @.str.10, i32 331, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@ab8500_btemp_curr_source_enable._entry_ptr.74 = internal global ptr @ab8500_btemp_curr_source_enable._entry.73, section ".printk_index", align 4
@ab8500_btemp_read_batctrl_voltage.prev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ab8500_btemp_read_batctrl_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.10, i32 182, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s ADC conversion failed, using previous value\00", [49 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ab8500_btemp_read_batctrl_voltage\00", [62 x i8] zeroinitializer }, align 32
@ab8500_btemp_read_batctrl_voltage._entry_ptr = internal global ptr @ab8500_btemp_read_batctrl_voltage._entry, section ".printk_index", align 4
@ab8500_btemp_measure_temp.prev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ab8500_btemp_measure_temp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.77, ptr @.str.10, i32 465, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ab8500_btemp_measure_temp\00", [38 x i8] zeroinitializer }, align 32
@ab8500_btemp_measure_temp._entry_ptr = internal global ptr @ab8500_btemp_measure_temp._entry, section ".printk_index", align 4
@ab8500_btemp_measure_temp._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.10, i32 481, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s ADC conversion failed, using previous value\0A\00", [48 x i8] zeroinitializer }, align 32
@ab8500_btemp_measure_temp._entry_ptr.80 = internal global ptr @ab8500_btemp_measure_temp._entry.78, section ".printk_index", align 4
@ab8500_btemp_measure_temp.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.77, ptr @.str.10, ptr @.str.81, i8 0, i8 123, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Battery temperature is %d\0A\00", [37 x i8] zeroinitializer }, align 32
@ab8500_btemp_props = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 3, i32 4, i32 6, i32 52], [16 x i8] zeroinitializer }, align 32
@power_supply_class = external dso_local local_unnamed_addr global ptr, align 4
@ab8500_btemp_periodic.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.82, ptr @.str.10, ptr @.str.83, i8 0, i8 -74, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ab8500_btemp_periodic\00", [42 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Enable periodic temperature measurements: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"BAT_CTRL_INDB\00", [18 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BTEMP_LOW\00", [22 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"BTEMP_HIGH\00", [21 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BTEMP_LOW_MEDIUM\00", [47 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"BTEMP_MEDIUM_HIGH\00", [46 x i8] zeroinitializer }, align 32
@ab8500_btemp_batctrlindb_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.10, i32 615, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Battery removal detected!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ab8500_btemp_batctrlindb_handler\00", [63 x i8] zeroinitializer }, align 32
@ab8500_btemp_batctrlindb_handler._entry_ptr = internal global ptr @ab8500_btemp_batctrlindb_handler._entry, section ".printk_index", align 4
@ab8500_btemp_templow_handler.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.91, ptr @.str.10, ptr @.str.92, i8 0, i8 -97, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ab8500_btemp_templow_handler\00", [35 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Ignore false btemp low irq for ABB cut 1.0, 1.1, 2.0 and 3.3\0A\00", [34 x i8] zeroinitializer }, align 32
@ab8500_btemp_templow_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.10, i32 638, ptr @.str.94, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Battery temperature lower than -10deg c\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@ab8500_btemp_templow_handler._entry_ptr = internal global ptr @ab8500_btemp_templow_handler._entry, section ".printk_index", align 4
@ab8500_btemp_temphigh_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.10, i32 661, ptr @.str.94, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Battery temperature is higher than MAX temp\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ab8500_btemp_temphigh_handler\00", [34 x i8] zeroinitializer }, align 32
@ab8500_btemp_temphigh_handler._entry_ptr = internal global ptr @ab8500_btemp_temphigh_handler._entry, section ".printk_index", align 4
@ab8500_btemp_lowmed_handler.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.97, ptr @.str.10, ptr @.str.98, i8 0, i8 -86, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ab8500_btemp_lowmed_handler\00", [36 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Battery temperature is between low and medium\0A\00", [49 x i8] zeroinitializer }, align 32
@ab8500_btemp_medhigh_handler.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.99, ptr @.str.10, ptr @.str.100, i8 0, i8 -80, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ab8500_btemp_medhigh_handler\00", [35 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Battery temperature is between medium and high\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ab8500_btemp_wq\00", [16 x i8] zeroinitializer }, align 32
@ab8500_btemp_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.10, i32 958, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create work queue\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ab8500_btemp_bind\00", [46 x i8] zeroinitializer }, align 32
@ab8500_btemp_bind._entry_ptr = internal global ptr @ab8500_btemp_bind._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@switch.table.ab8500_btemp_probe = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 57, i32 52, i32 57, i32 62], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 4, i64 6, i64 52]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1105, i32 11 }
@___asan_gen_.108 = private unnamed_addr constant [19 x i8] c"ab8500_btemp_match\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1095, i32 34 }
@___asan_gen_.111 = private unnamed_addr constant [20 x i8] c"ab8500_btemp_pm_ops\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1093, i32 8 }
@___asan_gen_.114 = private unnamed_addr constant [20 x i8] c"ab8500_btemp_driver\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1101, i32 24 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1002, i32 45 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1005, i32 9 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1008, i32 43 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1011, i32 9 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"supply_interface\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 935, i32 14 }
@___asan_gen_.138 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1022, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1032, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant [18 x i8] c"ab8500_btemp_desc\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 940, i32 39 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1055, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"ab8500_btemp_irq\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 909, i32 39 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1071, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1075, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [18 x i8] c"ab8500_btemp_list\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 123, i32 8 }
@___asan_gen_.189 = private unnamed_addr constant [27 x i8] c"ab8500_btemp_component_ops\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 978, i32 35 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 936, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 937, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 569, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 516, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 522, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 530, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 546, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 359, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 366, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 373, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 392, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 400, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 404, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 217, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 223, i32 4 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 239, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 244, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 254, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 265, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 282, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 301, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 312, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 330, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 176, i32 13 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 180, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant [5 x i8] c"prev\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 456, i32 13 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 464, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 479, i32 4 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 495, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant [19 x i8] c"ab8500_btemp_props\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 116, i32 35 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 727, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 910, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 911, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 912, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 913, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 914, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 615, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 635, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 638, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 661, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 683, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 705, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 956, i32 19 }
@___asan_gen_.429 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.435 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.436 = private constant [39 x i8] c"../drivers/power/supply/ab8500_btemp.c\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 958, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant [32 x i8] c"switch.table.ab8500_btemp_probe\00", align 1
@llvm.compiler.used = appending global [144 x ptr] [ptr @__UNIQUE_ID_alias301, ptr @__UNIQUE_ID_author300, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @ab8500_btemp_batctrlindb_handler._entry, ptr @ab8500_btemp_batctrlindb_handler._entry_ptr, ptr @ab8500_btemp_bind._entry, ptr @ab8500_btemp_bind._entry_ptr, ptr @ab8500_btemp_curr_source_enable._entry, ptr @ab8500_btemp_curr_source_enable._entry.56, ptr @ab8500_btemp_curr_source_enable._entry.60, ptr @ab8500_btemp_curr_source_enable._entry.63, ptr @ab8500_btemp_curr_source_enable._entry.66, ptr @ab8500_btemp_curr_source_enable._entry.69, ptr @ab8500_btemp_curr_source_enable._entry.71, ptr @ab8500_btemp_curr_source_enable._entry.73, ptr @ab8500_btemp_curr_source_enable._entry_ptr, ptr @ab8500_btemp_curr_source_enable._entry_ptr.58, ptr @ab8500_btemp_curr_source_enable._entry_ptr.62, ptr @ab8500_btemp_curr_source_enable._entry_ptr.65, ptr @ab8500_btemp_curr_source_enable._entry_ptr.68, ptr @ab8500_btemp_curr_source_enable._entry_ptr.70, ptr @ab8500_btemp_curr_source_enable._entry_ptr.72, ptr @ab8500_btemp_curr_source_enable._entry_ptr.74, ptr @ab8500_btemp_get_batctrl_res._entry, ptr @ab8500_btemp_get_batctrl_res._entry.40, ptr @ab8500_btemp_get_batctrl_res._entry.43, ptr @ab8500_btemp_get_batctrl_res._entry.46, ptr @ab8500_btemp_get_batctrl_res._entry.49, ptr @ab8500_btemp_get_batctrl_res._entry_ptr, ptr @ab8500_btemp_get_batctrl_res._entry_ptr.42, ptr @ab8500_btemp_get_batctrl_res._entry_ptr.45, ptr @ab8500_btemp_get_batctrl_res._entry_ptr.48, ptr @ab8500_btemp_get_batctrl_res._entry_ptr.51, ptr @ab8500_btemp_id._entry, ptr @ab8500_btemp_id._entry.28, ptr @ab8500_btemp_id._entry.34, ptr @ab8500_btemp_id._entry_ptr, ptr @ab8500_btemp_id._entry_ptr.31, ptr @ab8500_btemp_id._entry_ptr.36, ptr @ab8500_btemp_measure_temp._entry, ptr @ab8500_btemp_measure_temp._entry.78, ptr @ab8500_btemp_measure_temp._entry_ptr, ptr @ab8500_btemp_measure_temp._entry_ptr.80, ptr @ab8500_btemp_periodic_work._entry, ptr @ab8500_btemp_periodic_work._entry_ptr, ptr @ab8500_btemp_probe._entry, ptr @ab8500_btemp_probe._entry.13, ptr @ab8500_btemp_probe._entry.16, ptr @ab8500_btemp_probe._entry_ptr, ptr @ab8500_btemp_probe._entry_ptr.15, ptr @ab8500_btemp_probe._entry_ptr.18, ptr @ab8500_btemp_read_batctrl_voltage._entry, ptr @ab8500_btemp_read_batctrl_voltage._entry_ptr, ptr @ab8500_btemp_temphigh_handler._entry, ptr @ab8500_btemp_temphigh_handler._entry_ptr, ptr @ab8500_btemp_templow_handler._entry, ptr @ab8500_btemp_templow_handler._entry_ptr, ptr @.str, ptr @ab8500_btemp_match, ptr @ab8500_btemp_pm_ops, ptr @ab8500_btemp_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @supply_interface, ptr @ab8500_btemp_probe.__key, ptr @.str.5, ptr @ab8500_btemp_probe.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @ab8500_btemp_desc, ptr @.str.14, ptr @ab8500_btemp_irq, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @ab8500_btemp_list, ptr @ab8500_btemp_component_ops, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @ab8500_btemp_read_batctrl_voltage.prev, ptr @.str.75, ptr @.str.76, ptr @ab8500_btemp_measure_temp.prev, ptr @.str.77, ptr @.str.79, ptr @.str.81, ptr @ab8500_btemp_props, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @switch.table.ab8500_btemp_probe], section "llvm.metadata"
@0 = internal global [112 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_btemp_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_btemp_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_btemp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supply_interface to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_btemp_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_btemp_probe.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_btemp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_btemp_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_btemp_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_btemp_irq to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_btemp_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_btemp_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_btemp_component_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_btemp_periodic_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_btemp_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_btemp_id._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_btemp_id._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_btemp_get_batctrl_res._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_btemp_get_batctrl_res._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_btemp_get_batctrl_res._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_btemp_get_batctrl_res._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_btemp_get_batctrl_res._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_btemp_curr_source_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_btemp_curr_source_enable._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_btemp_curr_source_enable._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_btemp_curr_source_enable._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_btemp_curr_source_enable._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_btemp_curr_source_enable._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_btemp_curr_source_enable._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_btemp_curr_source_enable._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_btemp_read_batctrl_voltage.prev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_btemp_read_batctrl_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_btemp_measure_temp.prev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_btemp_measure_temp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_btemp_measure_temp._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_btemp_props to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_btemp_batctrlindb_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_btemp_templow_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_btemp_temphigh_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_btemp_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ab8500_btemp_probe to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_btemp_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %psy_cfg = alloca %struct.power_supply_config, align 4
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #4
  %0 = call ptr @memset(ptr %psy_cfg, i32 0, i32 16)
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #4
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %val, align 1, !annotation !228
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 176, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %bm = getelementptr inbounds %struct.ab8500_btemp, ptr %call.i, i32 0, i32 9
  %2 = ptrtoint ptr %bm to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ab8500_bm_data, ptr %bm, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %call.i, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %parent5 = getelementptr inbounds %struct.ab8500_btemp, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %parent5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %parent5, align 4
  %call6 = tail call ptr @devm_iio_channel_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #4
  %btemp_ball = getelementptr inbounds %struct.ab8500_btemp, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %btemp_ball to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call6, ptr %btemp_ball, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %call6 to i32
  %call12 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %10, ptr noundef nonnull @.str.2) #4
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %call14 = tail call ptr @devm_iio_channel_get(ptr noundef %dev1, ptr noundef nonnull @.str.3) #4
  %bat_ctrl = getelementptr inbounds %struct.ab8500_btemp, ptr %call.i, i32 0, i32 7
  %11 = ptrtoint ptr %bat_ctrl to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call14, ptr %bat_ctrl, align 4
  %cmp.i161 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i161, label %if.then17, label %if.end21

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %call14 to i32
  %call20 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %12, ptr noundef nonnull @.str.4) #4
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %initialized = getelementptr inbounds %struct.ab8500_btemp, ptr %call.i, i32 0, i32 15
  %13 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %initialized, align 4
  %supplied_to = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 4
  %14 = ptrtoint ptr %supplied_to to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @supply_interface, ptr %supplied_to, align 4
  %num_supplicants = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 5
  %15 = ptrtoint ptr %num_supplicants to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %num_supplicants, align 4
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %16 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %drv_data, align 4
  %btemp_periodic_work = getelementptr inbounds %struct.ab8500_btemp, ptr %call.i, i32 0, i32 14
  tail call void @__init_work(ptr noundef %btemp_periodic_work, i32 noundef 0) #4
  %17 = ptrtoint ptr %btemp_periodic_work to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -64, ptr %btemp_periodic_work, align 4
  %lockdep_map = getelementptr inbounds %struct.ab8500_btemp, ptr %call.i, i32 0, i32 14, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @ab8500_btemp_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry29 = getelementptr inbounds %struct.ab8500_btemp, ptr %call.i, i32 0, i32 14, i32 0, i32 1
  %18 = ptrtoint ptr %entry29 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %entry29, ptr %entry29, align 4
  %prev.i = getelementptr inbounds %struct.ab8500_btemp, ptr %call.i, i32 0, i32 14, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %entry29, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ab8500_btemp, ptr %call.i, i32 0, i32 14, i32 0, i32 2
  %20 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @ab8500_btemp_periodic_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.ab8500_btemp, ptr %call.i, i32 0, i32 14, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2621440, ptr noundef nonnull @.str.7, ptr noundef nonnull @ab8500_btemp_probe.__key.6) #4
  %btemp_ranges = getelementptr inbounds %struct.ab8500_btemp, ptr %call.i, i32 0, i32 12
  %btemp_low_limit = getelementptr inbounds %struct.ab8500_btemp, ptr %call.i, i32 0, i32 12, i32 2
  %21 = ptrtoint ptr %btemp_low_limit to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -10, ptr %btemp_low_limit, align 4
  %btemp_med_limit = getelementptr inbounds %struct.ab8500_btemp, ptr %call.i, i32 0, i32 12, i32 1
  %22 = ptrtoint ptr %btemp_med_limit to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %btemp_med_limit, align 4
  %call39 = call i32 @abx500_get_register_interruptible(ptr noundef %dev1, i8 noundef zeroext 11, i8 noundef zeroext 82, ptr noundef nonnull %val) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp = icmp slt i32 %call39, 0
  br i1 %cmp, label %do.end43, label %if.end44

do.end43:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #7
  br label %cleanup

if.end44:                                         ; preds = %if.end21
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %24)
  %25 = icmp ult i8 %24, 4
  br i1 %25, label %switch.lookup, label %if.end44.sw.epilog_crit_edge

if.end44.sw.epilog_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  %26 = sext i8 %24 to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.ab8500_btemp_probe, i32 0, i32 %26
  %27 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %27)
  %switch.load = load i32, ptr %switch.gep, align 4
  %28 = ptrtoint ptr %btemp_ranges to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %switch.load, ptr %btemp_ranges, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end44.sw.epilog_crit_edge
  %call52 = call ptr @devm_power_supply_register(ptr noundef %dev1, ptr noundef nonnull @ab8500_btemp_desc, ptr noundef nonnull %psy_cfg) #4
  %btemp_psy = getelementptr inbounds %struct.ab8500_btemp, ptr %call.i, i32 0, i32 10
  %29 = ptrtoint ptr %btemp_psy to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call52, ptr %btemp_psy, align 4
  %cmp.i162 = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i162, label %do.end58, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  br label %for.body

do.end58:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #7
  %30 = ptrtoint ptr %btemp_psy to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %btemp_psy, align 4
  %32 = ptrtoint ptr %31 to i32
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.epilog.for.body_crit_edge
  %i.0166 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %sw.epilog.for.body_crit_edge ]
  %arrayidx = getelementptr [5 x %struct.ab8500_btemp_interrupts], ptr @ab8500_btemp_irq, i32 0, i32 %i.0166
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx, align 4
  %call64 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef %34) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %for.body.cleanup_crit_edge, label %if.end68

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end68:                                         ; preds = %for.body
  %isr = getelementptr [5 x %struct.ab8500_btemp_interrupts], ptr @ab8500_btemp_irq, i32 0, i32 %i.0166, i32 1
  %35 = ptrtoint ptr %isr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %isr, align 4
  %call72 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call64, ptr noundef null, ptr noundef %36, i32 noundef 24704, ptr noundef %34, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %do.body81, label %do.end77

do.end77:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, ptr noundef %34, i32 noundef %call64, i32 noundef %call72) #7
  br label %cleanup

do.body81:                                        ; preds = %if.end68
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_btemp_probe.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_btemp_probe, %for.inc)) #4
          to label %if.then87 [label %for.inc], !srcloc !229

if.then87:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_btemp_probe.__UNIQUE_ID_ddebug297, ptr noundef %dev1, ptr noundef nonnull @.str.20, ptr noundef %34, i32 noundef %call64, i32 noundef 0) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then87, %do.body81
  %inc = add nuw nsw i32 %i.0166, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %37 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %node = getelementptr inbounds %struct.ab8500_btemp, ptr %call.i, i32 0, i32 1
  %38 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ab8500_btemp_list, i32 0, i32 1), align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %38, ptr noundef nonnull @ab8500_btemp_list) #4
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_add_tail.exit_crit_edge

for.end.list_add_tail.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %node, ptr getelementptr inbounds (%struct.list_head, ptr @ab8500_btemp_list, i32 0, i32 1), align 4
  %39 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @ab8500_btemp_list, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.ab8500_btemp, ptr %call.i, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %38, ptr %prev3.i.i, align 4
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %node, ptr %38, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.end.list_add_tail.exit_crit_edge
  %call93 = call i32 @component_add(ptr noundef %dev1, ptr noundef nonnull @ab8500_btemp_component_ops) #4
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %do.end77, %for.body.cleanup_crit_edge, %do.end58, %do.end43, %if.then17, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.then9 ], [ %call20, %if.then17 ], [ %call39, %do.end43 ], [ %32, %do.end58 ], [ %call72, %do.end77 ], [ %call93, %list_add_tail.exit ], [ -12, %entry.cleanup_crit_edge ], [ %call64, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_btemp_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @ab8500_btemp_component_ops) #4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_channel_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ab8500_btemp_periodic_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -72
  %initialized = getelementptr i8, ptr %work, i32 100
  %0 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %initialized, align 4, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @ab8500_btemp_id(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.then.if.end2_crit_edge

if.then.if.end2_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.23) #7
  br label %if.end2

if.end2:                                          ; preds = %do.end, %if.then.if.end2_crit_edge, %entry.if.end2_crit_edge
  %call3 = tail call fastcc i32 @ab8500_btemp_measure_temp(ptr noundef %add.ptr)
  %prev_bat_temp = getelementptr i8, ptr %work, i32 -52
  %4 = ptrtoint ptr %prev_bat_temp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prev_bat_temp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %5)
  %cmp4 = icmp eq i32 %call3, %5
  br i1 %cmp4, label %if.end2.if.then7_crit_edge, label %lor.lhs.false

if.end2.if.then7_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.end2
  %6 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %initialized, align 4, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  br i1 %tobool6.not, label %lor.lhs.false.if.then7_crit_edge, label %if.else

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then7

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %if.end2.if.then7_crit_edge
  %bat_temp8 = getelementptr i8, ptr %work, i32 -56
  %8 = ptrtoint ptr %bat_temp8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bat_temp8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp10.not = icmp eq i32 %9, %5
  br i1 %cmp10.not, label %lor.lhs.false11, label %if.then7.if.then14_crit_edge

if.then7.if.then14_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

lor.lhs.false11:                                  ; preds = %if.then7
  %10 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %initialized, align 4, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool13.not = icmp eq i8 %11, 0
  br i1 %tobool13.not, label %lor.lhs.false11.if.then14_crit_edge, label %lor.lhs.false11.if.end31_crit_edge

lor.lhs.false11.if.end31_crit_edge:               ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

lor.lhs.false11.if.then14_crit_edge:              ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

if.then14:                                        ; preds = %lor.lhs.false11.if.then14_crit_edge, %if.then7.if.then14_crit_edge
  %12 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %initialized, align 4
  %13 = ptrtoint ptr %bat_temp8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call3, ptr %bat_temp8, align 4
  br label %if.end31.sink.split

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %5)
  %cmp19 = icmp slt i32 %call3, %5
  br i1 %cmp19, label %if.then20, label %if.else23

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %bat_temp21 = getelementptr i8, ptr %work, i32 -56
  %14 = ptrtoint ptr %bat_temp21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bat_temp21, align 4
  %dec = add i32 %15, -1
  store i32 %dec, ptr %bat_temp21, align 4
  br label %if.end31.sink.split

if.else23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %5)
  %cmp25 = icmp sgt i32 %call3, %5
  br i1 %cmp25, label %if.then26, label %if.else23.if.end31_crit_edge

if.else23.if.end31_crit_edge:                     ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.then26:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #6
  %bat_temp27 = getelementptr i8, ptr %work, i32 -56
  %16 = ptrtoint ptr %bat_temp27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bat_temp27, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %bat_temp27, align 4
  br label %if.end31.sink.split

if.end31.sink.split:                              ; preds = %if.then26, %if.then20, %if.then14
  %btemp_psy22 = getelementptr i8, ptr %work, i32 -28
  %18 = ptrtoint ptr %btemp_psy22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %btemp_psy22, align 4
  tail call void @power_supply_changed(ptr noundef %19) #4
  br label %if.end31

if.end31:                                         ; preds = %if.end31.sink.split, %if.else23.if.end31_crit_edge, %lor.lhs.false11.if.end31_crit_edge
  %20 = ptrtoint ptr %prev_bat_temp to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call3, ptr %prev_bat_temp, align 4
  %ac_conn = getelementptr i8, ptr %work, i32 -19
  %21 = ptrtoint ptr %ac_conn to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ac_conn, align 1, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool33.not = icmp eq i8 %22, 0
  br i1 %tobool33.not, label %lor.lhs.false34, label %if.end31.if.then37_crit_edge

if.end31.if.then37_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then37

lor.lhs.false34:                                  ; preds = %if.end31
  %usb_conn = getelementptr i8, ptr %work, i32 -18
  %23 = ptrtoint ptr %usb_conn to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %usb_conn, align 2, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool36.not = icmp eq i8 %24, 0
  br i1 %tobool36.not, label %if.else38, label %lor.lhs.false34.if.then37_crit_edge

lor.lhs.false34.if.then37_crit_edge:              ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then37

if.then37:                                        ; preds = %lor.lhs.false34.if.then37_crit_edge, %if.end31.if.then37_crit_edge
  %bm = getelementptr i8, ptr %work, i32 -32
  %25 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bm, align 4
  %temp_interval_chg = getelementptr inbounds %struct.ab8500_bm_data, ptr %26, i32 0, i32 2
  br label %if.end40

if.else38:                                        ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #6
  %bm39 = getelementptr i8, ptr %work, i32 -32
  %27 = ptrtoint ptr %bm39 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bm39, align 4
  %temp_interval_nochg = getelementptr inbounds %struct.ab8500_bm_data, ptr %28, i32 0, i32 3
  br label %if.end40

if.end40:                                         ; preds = %if.else38, %if.then37
  %interval.0.in = phi ptr [ %temp_interval_chg, %if.then37 ], [ %temp_interval_nochg, %if.else38 ]
  %29 = ptrtoint ptr %interval.0.in to i32
  call void @__asan_load4_noabort(i32 %29)
  %interval.0 = load i32, ptr %interval.0.in, align 4
  %btemp_wq = getelementptr i8, ptr %work, i32 -4
  %30 = ptrtoint ptr %btemp_wq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %btemp_wq, align 4
  %mul = mul i32 %interval.0, 100
  %call41 = tail call i32 @round_jiffies(i32 noundef %mul) #4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %31, ptr noundef %work, i32 noundef %call41) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_get_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ab8500_btemp_id(ptr noundef %di) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_source = getelementptr inbounds %struct.ab8500_btemp, ptr %di, i32 0, i32 2
  %0 = ptrtoint ptr %curr_source to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 7, ptr %curr_source, align 4
  %call = tail call fastcc i32 @ab8500_btemp_get_batctrl_res(ptr noundef %di)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %bm = getelementptr inbounds %struct.ab8500_btemp, ptr %di, i32 0, i32 9
  %3 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bm, align 4
  %bat_type = getelementptr inbounds %struct.ab8500_bm_data, ptr %4, i32 0, i32 21
  %5 = ptrtoint ptr %bat_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bat_type, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %8)
  %cmp1.not = icmp sgt i32 %call, %8
  br i1 %cmp1.not, label %if.end.do.end20_crit_edge, label %land.lhs.true

if.end.do.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end20

land.lhs.true:                                    ; preds = %if.end
  %resis_low = getelementptr inbounds %struct.ab8500_battery_type, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %resis_low to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %resis_low, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %10)
  %cmp4.not = icmp slt i32 %call, %10
  br i1 %cmp4.not, label %land.lhs.true.do.end20_crit_edge, label %do.end8

land.lhs.true.do.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end20

do.end8:                                          ; preds = %land.lhs.true
  %11 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %di, align 4
  %adc_therm = getelementptr inbounds %struct.ab8500_bm_data, ptr %4, i32 0, i32 13
  %13 = ptrtoint ptr %adc_therm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %adc_therm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp11 = icmp eq i32 %14, 0
  %cond = select i1 %cmp11, ptr @.str.32, ptr @.str.33
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.29, ptr noundef nonnull %cond, i32 noundef %10, i32 noundef %call, i32 noundef %8, i32 noundef 255) #7
  %15 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bm, align 4
  %adc_therm24 = getelementptr inbounds %struct.ab8500_bm_data, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %adc_therm24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %adc_therm24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp25 = icmp eq i32 %18, 0
  br i1 %cmp25, label %land.lhs.true27, label %do.end8.cleanup_crit_edge

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end20:                                         ; preds = %land.lhs.true.do.end20_crit_edge, %if.end.do.end20_crit_edge
  %19 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.35, i32 noundef %call) #7
  br label %cleanup

land.lhs.true27:                                  ; preds = %do.end8
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %16, align 4
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %land.lhs.true27.cleanup_crit_edge, label %land.lhs.true29

land.lhs.true27.cleanup_crit_edge:                ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true29:                                  ; preds = %land.lhs.true27
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp32 = icmp eq i32 %24, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 53408, i32 %call)
  %cmp35 = icmp ult i32 %call, 53408
  %or.cond = select i1 %cmp32, i1 %cmp35, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 12499, i32 %call)
  %cmp38 = icmp ugt i32 %call, 12499
  %or.cond77 = select i1 %or.cond, i1 %cmp38, i1 false
  br i1 %or.cond77, label %do.body41, label %land.lhs.true29.cleanup_crit_edge

land.lhs.true29.cleanup_crit_edge:                ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body41:                                        ; preds = %land.lhs.true29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_btemp_id.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_btemp_id, %do.end51)) #4
          to label %if.then47 [label %do.end51], !srcloc !229

if.then47:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_btemp_id.__UNIQUE_ID_ddebug292, ptr noundef %26, ptr noundef nonnull @.str.37) #4
  br label %do.end51

do.end51:                                         ; preds = %if.then47, %do.body41
  %27 = ptrtoint ptr %curr_source to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 20, ptr %curr_source, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end51, %land.lhs.true29.cleanup_crit_edge, %land.lhs.true27.cleanup_crit_edge, %do.end20, %do.end8.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ -6, %do.end20 ], [ 0, %do.end51 ], [ 0, %land.lhs.true29.cleanup_crit_edge ], [ 0, %land.lhs.true27.cleanup_crit_edge ], [ 0, %do.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ab8500_btemp_measure_temp(ptr noundef %di) unnamed_addr #0 align 64 {
entry:
  %vntc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bm = getelementptr inbounds %struct.ab8500_btemp, ptr %di, i32 0, i32 9
  %0 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bm, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vntc) #4
  %4 = ptrtoint ptr %vntc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %vntc, align 4, !annotation !228
  %adc_therm = getelementptr inbounds %struct.ab8500_bm_data, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %adc_therm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %adc_therm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp ne i32 %6, 0
  %tobool.not = icmp eq ptr %3, null
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %entry.if.else_crit_edge, label %land.lhs.true3

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true3:                                   ; preds = %entry
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp4 = icmp eq i32 %8, 0
  br i1 %cmp4, label %if.then, label %land.lhs.true3.if.else_crit_edge

land.lhs.true3.if.else_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.then:                                          ; preds = %land.lhs.true3
  %call = tail call fastcc i32 @ab8500_btemp_get_batctrl_res(ptr noundef %di)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.77) #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  %11 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bm, align 4
  %bat_type = getelementptr inbounds %struct.ab8500_bm_data, ptr %12, i32 0, i32 21
  %13 = ptrtoint ptr %bat_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bat_type, align 4
  %r_to_t_tbl = getelementptr inbounds %struct.ab8500_battery_type, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %r_to_t_tbl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %r_to_t_tbl, align 4
  %n_temp_tbl_elements = getelementptr inbounds %struct.ab8500_battery_type, ptr %14, i32 0, i32 10
  %17 = ptrtoint ptr %n_temp_tbl_elements to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n_temp_tbl_elements, align 4
  %resist.i = getelementptr inbounds %struct.ab8500_res_to_temp, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %resist.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %resist.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %call)
  %cmp.i = icmp slt i32 %20, %call
  br i1 %cmp.i, label %if.end.if.end13.i_crit_edge, label %if.else.i

if.end.if.end13.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13.i

if.else.i:                                        ; preds = %if.end
  %sub.i = add i32 %18, -1
  %resist2.i = getelementptr %struct.ab8500_res_to_temp, ptr %16, i32 %sub.i, i32 1
  %21 = ptrtoint ptr %resist2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %resist2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %call)
  %cmp3.not.i = icmp slt i32 %22, %call
  br i1 %cmp3.not.i, label %if.else.i.while.cond.i_crit_edge, label %if.then4.i

if.else.i.while.cond.i_crit_edge:                 ; preds = %if.else.i
  br label %while.cond.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub5.i = add i32 %18, -2
  br label %if.end13.i

while.cond.i:                                     ; preds = %while.cond.i.backedge, %if.else.i.while.cond.i_crit_edge
  %i.0.i = phi i32 [ %.pre.i, %while.cond.i.backedge ], [ 0, %if.else.i.while.cond.i_crit_edge ]
  %resist8.i = getelementptr %struct.ab8500_res_to_temp, ptr %16, i32 %i.0.i, i32 1
  %23 = ptrtoint ptr %resist8.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %resist8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %call)
  %cmp9.not.i = icmp slt i32 %24, %call
  %.pre.i = add i32 %i.0.i, 1
  br i1 %cmp9.not.i, label %while.cond.i.while.cond.i.backedge_crit_edge, label %land.rhs.i

while.cond.i.while.cond.i.backedge_crit_edge:     ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i.backedge

land.rhs.i:                                       ; preds = %while.cond.i
  %resist11.i = getelementptr %struct.ab8500_res_to_temp, ptr %16, i32 %.pre.i, i32 1
  %25 = ptrtoint ptr %resist11.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %resist11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %call)
  %cmp12.i = icmp slt i32 %26, %call
  br i1 %cmp12.i, label %land.rhs.i.if.end13.i_crit_edge, label %land.rhs.i.while.cond.i.backedge_crit_edge

land.rhs.i.while.cond.i.backedge_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i.backedge

land.rhs.i.if.end13.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13.i

while.cond.i.backedge:                            ; preds = %land.rhs.i.while.cond.i.backedge_crit_edge, %while.cond.i.while.cond.i.backedge_crit_edge
  br label %while.cond.i

if.end13.i:                                       ; preds = %land.rhs.i.if.end13.i_crit_edge, %if.then4.i, %if.end.if.end13.i_crit_edge
  %i.1.i = phi i32 [ %sub5.i, %if.then4.i ], [ 0, %if.end.if.end13.i_crit_edge ], [ %i.0.i, %land.rhs.i.if.end13.i_crit_edge ]
  %arrayidx14.i = getelementptr %struct.ab8500_res_to_temp, ptr %16, i32 %i.1.i
  %resist15.i = getelementptr %struct.ab8500_res_to_temp, ptr %16, i32 %i.1.i, i32 1
  %27 = ptrtoint ptr %resist15.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %resist15.i, align 4
  %29 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx14.i, align 4
  %add17.i = add i32 %i.1.i, 1
  %arrayidx18.i = getelementptr %struct.ab8500_res_to_temp, ptr %16, i32 %add17.i
  %resist19.i = getelementptr %struct.ab8500_res_to_temp, ptr %16, i32 %add17.i, i32 1
  %31 = ptrtoint ptr %resist19.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %resist19.i, align 4
  %33 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx18.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %30)
  %cmp.i.i = icmp eq i32 %34, %30
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %28)
  %cmp1.i.i = icmp eq i32 %call, %28
  %or.cond.i.i = or i1 %cmp1.i.i, %cmp.i.i
  br i1 %or.cond.i.i, label %if.end13.i.do.body27_crit_edge, label %if.end.i.i

if.end13.i.do.body27_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body27

if.end.i.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %28)
  %cmp2.i.i = icmp eq i32 %32, %28
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %call)
  %cmp4.i.i = icmp eq i32 %32, %call
  %or.cond21.i.i = or i1 %cmp2.i.i, %cmp4.i.i
  br i1 %or.cond21.i.i, label %if.end.i.i.do.body27_crit_edge, label %if.end6.i.i

if.end.i.i.do.body27_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body27

if.end6.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i.i = sub i32 %34, %30
  %sub7.i.i = sub i32 %call, %28
  %mul.i.i = mul i32 %sub.i.i, %sub7.i.i
  %sub8.i.i = sub i32 %32, %28
  %div.i.i = sdiv i32 %mul.i.i, %sub8.i.i
  %add.i.i = add i32 %div.i.i, %30
  br label %do.body27

if.else:                                          ; preds = %land.lhs.true3.if.else_crit_edge, %entry.if.else_crit_edge
  %btemp_ball = getelementptr inbounds %struct.ab8500_btemp, ptr %di, i32 0, i32 6
  %35 = ptrtoint ptr %btemp_ball to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %btemp_ball, align 4
  %call11 = call i32 @iio_read_channel_processed(ptr noundef %36, ptr noundef nonnull %vntc) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.end16, label %if.end18

do.end16:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %37 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %di, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.77) #7
  %39 = load i32, ptr @ab8500_btemp_measure_temp.prev, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.else
  %40 = ptrtoint ptr %vntc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vntc, align 4
  %mul = mul i32 %41, 230000
  %sub = sub i32 1800, %41
  %div = sdiv i32 %mul, %sub
  %42 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bm, align 4
  %bat_type20 = getelementptr inbounds %struct.ab8500_bm_data, ptr %43, i32 0, i32 21
  %44 = ptrtoint ptr %bat_type20 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bat_type20, align 4
  %r_to_t_tbl21 = getelementptr inbounds %struct.ab8500_battery_type, ptr %45, i32 0, i32 11
  %46 = ptrtoint ptr %r_to_t_tbl21 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %r_to_t_tbl21, align 4
  %n_temp_tbl_elements24 = getelementptr inbounds %struct.ab8500_battery_type, ptr %45, i32 0, i32 10
  %48 = ptrtoint ptr %n_temp_tbl_elements24 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %n_temp_tbl_elements24, align 4
  %resist.i59 = getelementptr inbounds %struct.ab8500_res_to_temp, ptr %47, i32 0, i32 1
  %50 = ptrtoint ptr %resist.i59 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %resist.i59, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %div)
  %cmp.i60 = icmp slt i32 %51, %div
  br i1 %cmp.i60, label %if.end18.if.end13.i85_crit_edge, label %if.else.i64

if.end18.if.end13.i85_crit_edge:                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13.i85

if.else.i64:                                      ; preds = %if.end18
  %sub.i61 = add i32 %49, -1
  %resist2.i62 = getelementptr %struct.ab8500_res_to_temp, ptr %47, i32 %sub.i61, i32 1
  %52 = ptrtoint ptr %resist2.i62 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %resist2.i62, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %div)
  %cmp3.not.i63 = icmp slt i32 %53, %div
  br i1 %cmp3.not.i63, label %if.else.i64.while.cond.i71_crit_edge, label %if.then4.i66

if.else.i64.while.cond.i71_crit_edge:             ; preds = %if.else.i64
  br label %while.cond.i71

if.then4.i66:                                     ; preds = %if.else.i64
  call void @__sanitizer_cov_trace_pc() #6
  %sub5.i65 = add i32 %49, -2
  br label %if.end13.i85

while.cond.i71:                                   ; preds = %while.cond.i71.backedge, %if.else.i64.while.cond.i71_crit_edge
  %i.0.i67 = phi i32 [ %.pre.i70, %while.cond.i71.backedge ], [ 0, %if.else.i64.while.cond.i71_crit_edge ]
  %resist8.i68 = getelementptr %struct.ab8500_res_to_temp, ptr %47, i32 %i.0.i67, i32 1
  %54 = ptrtoint ptr %resist8.i68 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %resist8.i68, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %div)
  %cmp9.not.i69 = icmp slt i32 %55, %div
  %.pre.i70 = add i32 %i.0.i67, 1
  br i1 %cmp9.not.i69, label %while.cond.i71.while.cond.i71.backedge_crit_edge, label %land.rhs.i74

while.cond.i71.while.cond.i71.backedge_crit_edge: ; preds = %while.cond.i71
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i71.backedge

land.rhs.i74:                                     ; preds = %while.cond.i71
  %resist11.i72 = getelementptr %struct.ab8500_res_to_temp, ptr %47, i32 %.pre.i70, i32 1
  %56 = ptrtoint ptr %resist11.i72 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %resist11.i72, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %div)
  %cmp12.i73 = icmp slt i32 %57, %div
  br i1 %cmp12.i73, label %land.rhs.i74.if.end13.i85_crit_edge, label %land.rhs.i74.while.cond.i71.backedge_crit_edge

land.rhs.i74.while.cond.i71.backedge_crit_edge:   ; preds = %land.rhs.i74
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i71.backedge

land.rhs.i74.if.end13.i85_crit_edge:              ; preds = %land.rhs.i74
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13.i85

while.cond.i71.backedge:                          ; preds = %land.rhs.i74.while.cond.i71.backedge_crit_edge, %while.cond.i71.while.cond.i71.backedge_crit_edge
  br label %while.cond.i71

if.end13.i85:                                     ; preds = %land.rhs.i74.if.end13.i85_crit_edge, %if.then4.i66, %if.end18.if.end13.i85_crit_edge
  %i.1.i76 = phi i32 [ %sub5.i65, %if.then4.i66 ], [ 0, %if.end18.if.end13.i85_crit_edge ], [ %i.0.i67, %land.rhs.i74.if.end13.i85_crit_edge ]
  %arrayidx14.i77 = getelementptr %struct.ab8500_res_to_temp, ptr %47, i32 %i.1.i76
  %resist15.i78 = getelementptr %struct.ab8500_res_to_temp, ptr %47, i32 %i.1.i76, i32 1
  %58 = ptrtoint ptr %resist15.i78 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %resist15.i78, align 4
  %60 = ptrtoint ptr %arrayidx14.i77 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx14.i77, align 4
  %add17.i79 = add i32 %i.1.i76, 1
  %arrayidx18.i80 = getelementptr %struct.ab8500_res_to_temp, ptr %47, i32 %add17.i79
  %resist19.i81 = getelementptr %struct.ab8500_res_to_temp, ptr %47, i32 %add17.i79, i32 1
  %62 = ptrtoint ptr %resist19.i81 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %resist19.i81, align 4
  %64 = ptrtoint ptr %arrayidx18.i80 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx18.i80, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %61)
  %cmp.i.i82 = icmp eq i32 %65, %61
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %59)
  %cmp1.i.i83 = icmp eq i32 %div, %59
  %or.cond.i.i84 = or i1 %cmp1.i.i83, %cmp.i.i82
  br i1 %or.cond.i.i84, label %if.end13.i85.ab8500_btemp_res_to_temp.exit98_crit_edge, label %if.end.i.i89

if.end13.i85.ab8500_btemp_res_to_temp.exit98_crit_edge: ; preds = %if.end13.i85
  call void @__sanitizer_cov_trace_pc() #6
  br label %ab8500_btemp_res_to_temp.exit98

if.end.i.i89:                                     ; preds = %if.end13.i85
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %59)
  %cmp2.i.i86 = icmp eq i32 %63, %59
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %div)
  %cmp4.i.i87 = icmp eq i32 %63, %div
  %or.cond21.i.i88 = or i1 %cmp2.i.i86, %cmp4.i.i87
  br i1 %or.cond21.i.i88, label %if.end.i.i89.ab8500_btemp_res_to_temp.exit98_crit_edge, label %if.end6.i.i96

if.end.i.i89.ab8500_btemp_res_to_temp.exit98_crit_edge: ; preds = %if.end.i.i89
  call void @__sanitizer_cov_trace_pc() #6
  br label %ab8500_btemp_res_to_temp.exit98

if.end6.i.i96:                                    ; preds = %if.end.i.i89
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i.i90 = sub i32 %65, %61
  %sub7.i.i91 = sub i32 %div, %59
  %mul.i.i92 = mul i32 %sub.i.i90, %sub7.i.i91
  %sub8.i.i93 = sub i32 %63, %59
  %div.i.i94 = sdiv i32 %mul.i.i92, %sub8.i.i93
  %add.i.i95 = add i32 %div.i.i94, %61
  br label %ab8500_btemp_res_to_temp.exit98

ab8500_btemp_res_to_temp.exit98:                  ; preds = %if.end6.i.i96, %if.end.i.i89.ab8500_btemp_res_to_temp.exit98_crit_edge, %if.end13.i85.ab8500_btemp_res_to_temp.exit98_crit_edge
  %retval.0.i.i97 = phi i32 [ %add.i.i95, %if.end6.i.i96 ], [ %61, %if.end13.i85.ab8500_btemp_res_to_temp.exit98_crit_edge ], [ %65, %if.end.i.i89.ab8500_btemp_res_to_temp.exit98_crit_edge ]
  store i32 %retval.0.i.i97, ptr @ab8500_btemp_measure_temp.prev, align 4
  br label %do.body27

do.body27:                                        ; preds = %ab8500_btemp_res_to_temp.exit98, %if.end6.i.i, %if.end.i.i.do.body27_crit_edge, %if.end13.i.do.body27_crit_edge
  %temp.0 = phi i32 [ %retval.0.i.i97, %ab8500_btemp_res_to_temp.exit98 ], [ %add.i.i, %if.end6.i.i ], [ %30, %if.end13.i.do.body27_crit_edge ], [ %34, %if.end.i.i.do.body27_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_btemp_measure_temp.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_btemp_measure_temp, %cleanup)) #4
          to label %if.then33 [label %cleanup], !srcloc !229

if.then33:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #6
  %66 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %di, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_btemp_measure_temp.__UNIQUE_ID_ddebug291, ptr noundef %67, ptr noundef nonnull @.str.81, i32 noundef %temp.0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %do.body27, %do.end16, %do.end
  %retval.0 = phi i32 [ -10, %do.end ], [ %39, %do.end16 ], [ %temp.0, %if.then33 ], [ %temp.0, %do.body27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vntc) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ab8500_btemp_get_batctrl_res(ptr noundef %di) unnamed_addr #0 align 64 {
entry:
  %vbtemp.i = alloca i32, align 4
  %inst_curr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inst_curr) #4
  %0 = ptrtoint ptr %inst_curr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %inst_curr, align 4, !annotation !228
  %call = tail call fastcc i32 @ab8500_btemp_curr_source_enable(ptr noundef %di, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %fg = getelementptr inbounds %struct.ab8500_btemp, ptr %di, i32 0, i32 8
  %3 = ptrtoint ptr %fg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fg, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %if.end5, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.end5:                                          ; preds = %if.end
  %call3 = tail call ptr @ab8500_fg_get() #4
  %5 = ptrtoint ptr %fg to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %fg, align 4
  %tobool7.not = icmp eq ptr %call3, null
  br i1 %tobool7.not, label %do.end11, label %if.end5.if.end13_crit_edge

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.41) #7
  br label %cleanup

if.end13:                                         ; preds = %if.end5.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %8 = phi ptr [ %call3, %if.end5.if.end13_crit_edge ], [ %4, %if.end.if.end13_crit_edge ]
  %call15 = tail call i32 @ab8500_fg_inst_curr_start(ptr noundef nonnull %8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end13.do.body23_crit_edge, label %do.end20

if.end13.do.body23_crit_edge:                     ; preds = %if.end13
  br label %do.body23

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.44) #7
  br label %cleanup

do.body23:                                        ; preds = %do.body23.do.body23_crit_edge, %if.end13.do.body23_crit_edge
  tail call void @msleep(i32 noundef 20) #4
  %11 = ptrtoint ptr %fg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fg, align 4
  %call26 = tail call i32 @ab8500_fg_inst_curr_started(ptr noundef %12) #4
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %do.body23.do.body23_crit_edge, label %do.body29.preheader

do.body23.do.body23_crit_edge:                    ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body23

do.body29.preheader:                              ; preds = %do.body23
  %bat_ctrl.i = getelementptr inbounds %struct.ab8500_btemp, ptr %di, i32 0, i32 7
  br label %do.body29

do.body29:                                        ; preds = %ab8500_btemp_read_batctrl_voltage.exit.do.body29_crit_edge, %do.body29.preheader
  %batctrl.0 = phi i32 [ %add, %ab8500_btemp_read_batctrl_voltage.exit.do.body29_crit_edge ], [ 0, %do.body29.preheader ]
  %i.0 = phi i32 [ %inc, %ab8500_btemp_read_batctrl_voltage.exit.do.body29_crit_edge ], [ 0, %do.body29.preheader ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vbtemp.i) #4
  %13 = ptrtoint ptr %vbtemp.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %vbtemp.i, align 4, !annotation !228
  %14 = ptrtoint ptr %bat_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bat_ctrl.i, align 4
  %call.i = call i32 @iio_read_channel_processed(ptr noundef %15, ptr noundef nonnull %vbtemp.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %di, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76) #7
  %18 = load i32, ptr @ab8500_btemp_read_batctrl_voltage.prev, align 4
  br label %ab8500_btemp_read_batctrl_voltage.exit

if.end.i:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %vbtemp.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vbtemp.i, align 4
  store i32 %20, ptr @ab8500_btemp_read_batctrl_voltage.prev, align 4
  br label %ab8500_btemp_read_batctrl_voltage.exit

ab8500_btemp_read_batctrl_voltage.exit:           ; preds = %if.end.i, %do.end.i
  %retval.0.i100 = phi i32 [ %18, %do.end.i ], [ %20, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vbtemp.i) #4
  %add = add i32 %retval.0.i100, %batctrl.0
  %inc = add i32 %i.0, 1
  call void @msleep(i32 noundef 20) #4
  %21 = ptrtoint ptr %fg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fg, align 4
  %call33 = call i32 @ab8500_fg_inst_curr_done(ptr noundef %22) #4
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %ab8500_btemp_read_batctrl_voltage.exit.do.body29_crit_edge, label %do.end36

ab8500_btemp_read_batctrl_voltage.exit.do.body29_crit_edge: ; preds = %ab8500_btemp_read_batctrl_voltage.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body29

do.end36:                                         ; preds = %ab8500_btemp_read_batctrl_voltage.exit
  %div = sdiv i32 %add, %inc
  %23 = ptrtoint ptr %fg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fg, align 4
  %call38 = call i32 @ab8500_fg_inst_curr_finalize(ptr noundef %24, ptr noundef nonnull %inst_curr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end45, label %do.end43

do.end43:                                         ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %di, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.47) #7
  br label %cleanup

if.end45:                                         ; preds = %do.end36
  %27 = ptrtoint ptr %inst_curr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %inst_curr, align 4
  %parent.i = getelementptr inbounds %struct.ab8500_btemp, ptr %di, i32 0, i32 5
  %29 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent.i, align 4
  %version.i.i.i = getelementptr inbounds %struct.ab8500, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %version.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %version.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i.not.i.i = icmp eq i32 %32, 0
  br i1 %cmp.i.not.i.i, label %is_ab8500_1p1_or_earlier.exit.i, label %if.end45.if.end.i102_crit_edge

if.end45.if.end.i102_crit_edge:                   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i102

is_ab8500_1p1_or_earlier.exit.i:                  ; preds = %if.end45
  %chip_id.i.i = getelementptr inbounds %struct.ab8500, ptr %30, i32 0, i32 7
  %33 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %chip_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %34)
  %cmp.i.i = icmp ugt i8 %34, 17
  br i1 %cmp.i.i, label %is_ab8500_1p1_or_earlier.exit.i.if.end.i102_crit_edge, label %if.then.i

is_ab8500_1p1_or_earlier.exit.i.if.end.i102_crit_edge: ; preds = %is_ab8500_1p1_or_earlier.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i102

if.then.i:                                        ; preds = %is_ab8500_1p1_or_earlier.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %mul.i = mul i32 %div, 450000
  %sub.i = sub i32 1800, %div
  %div.i = sdiv i32 %mul.i, %sub.i
  br label %ab8500_btemp_batctrl_volt_to_res.exit

if.end.i102:                                      ; preds = %is_ab8500_1p1_or_earlier.exit.i.if.end.i102_crit_edge, %if.end45.if.end.i102_crit_edge
  %bm.i = getelementptr inbounds %struct.ab8500_btemp, ptr %di, i32 0, i32 9
  %35 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bm.i, align 4
  %adc_therm.i = getelementptr inbounds %struct.ab8500_bm_data, ptr %36, i32 0, i32 13
  %37 = ptrtoint ptr %adc_therm.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %adc_therm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i101 = icmp eq i32 %38, 0
  br i1 %cmp.i101, label %if.then1.i, label %if.else.i

if.then1.i:                                       ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #6
  %mul2.i = mul i32 %div, 1000
  %gnd_lift_resistance.i = getelementptr inbounds %struct.ab8500_bm_data, ptr %36, i32 0, i32 18
  %39 = ptrtoint ptr %gnd_lift_resistance.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %gnd_lift_resistance.i, align 4
  %mul4.i = mul i32 %40, %28
  %sub5.i = sub i32 %mul2.i, %mul4.i
  %curr_source.i = getelementptr inbounds %struct.ab8500_btemp, ptr %di, i32 0, i32 2
  %41 = ptrtoint ptr %curr_source.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %curr_source.i, align 4
  %div6.i = sdiv i32 %sub5.i, %42
  br label %ab8500_btemp_batctrl_volt_to_res.exit

if.else.i:                                        ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #6
  %mul7.i = mul i32 %div, 80000
  %sub8.i = sub i32 1800, %div
  %div9.i = sdiv i32 %mul7.i, %sub8.i
  br label %ab8500_btemp_batctrl_volt_to_res.exit

ab8500_btemp_batctrl_volt_to_res.exit:            ; preds = %if.else.i, %if.then1.i, %if.then.i
  %retval.0.i103 = phi i32 [ %div.i, %if.then.i ], [ %div6.i, %if.then1.i ], [ %div9.i, %if.else.i ]
  %call47 = call fastcc i32 @ab8500_btemp_curr_source_enable(ptr noundef %di, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %do.body55, label %do.end52

do.end52:                                         ; preds = %ab8500_btemp_batctrl_volt_to_res.exit
  call void @__sanitizer_cov_trace_pc() #6
  %43 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %di, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.39) #7
  br label %cleanup

do.body55:                                        ; preds = %ab8500_btemp_batctrl_volt_to_res.exit
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_btemp_get_batctrl_res.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_btemp_get_batctrl_res, %cleanup)) #4
          to label %if.then62 [label %cleanup], !srcloc !229

if.then62:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #6
  %45 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %di, align 4
  %47 = ptrtoint ptr %inst_curr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %inst_curr, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_btemp_get_batctrl_res.__UNIQUE_ID_ddebug290, ptr noundef %46, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.39, i32 noundef %div, i32 noundef %retval.0.i103, i32 noundef %48, i32 noundef %inc) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then62, %do.body55, %do.end52, %do.end43, %do.end20, %do.end11, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call15, %do.end20 ], [ %call38, %do.end43 ], [ %call47, %do.end52 ], [ -22, %do.end11 ], [ %retval.0.i103, %if.then62 ], [ %retval.0.i103, %do.body55 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inst_curr) #4
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ab8500_btemp_curr_source_enable(ptr noundef readonly %di, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.ab8500_btemp, ptr %di, i32 0, i32 5
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %version.i.i = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not.i = icmp eq i32 %3, 0
  br i1 %cmp.i.not.i, label %is_ab8500_1p1_or_earlier.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

is_ab8500_1p1_or_earlier.exit:                    ; preds = %entry
  %chip_id.i = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %5)
  %cmp.i = icmp ugt i8 %5, 17
  br i1 %cmp.i, label %is_ab8500_1p1_or_earlier.exit.if.end_crit_edge, label %is_ab8500_1p1_or_earlier.exit.cleanup_crit_edge

is_ab8500_1p1_or_earlier.exit.cleanup_crit_edge:  ; preds = %is_ab8500_1p1_or_earlier.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

is_ab8500_1p1_or_earlier.exit.if.end_crit_edge:   ; preds = %is_ab8500_1p1_or_earlier.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %is_ab8500_1p1_or_earlier.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %bm = getelementptr inbounds %struct.ab8500_btemp, ptr %di, i32 0, i32 9
  %6 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bm, align 4
  %adc_therm = getelementptr inbounds %struct.ab8500_bm_data, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %adc_therm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %adc_therm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp ne i32 %9, 0
  %enable.not = xor i1 %enable, true
  %brmerge = or i1 %cmp, %enable.not
  br i1 %brmerge, label %if.else33, label %if.then2

if.then2:                                         ; preds = %if.end
  %curr_source = getelementptr inbounds %struct.ab8500_btemp, ptr %di, i32 0, i32 2
  %10 = ptrtoint ptr %curr_source to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %curr_source, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %11)
  %cmp3 = icmp eq i32 %11, 7
  %. = select i1 %cmp3, i8 9, i8 10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_btemp_curr_source_enable.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_btemp_curr_source_enable, %do.end)) #4
          to label %if.then12 [label %do.end], !srcloc !229

if.then12:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %di, align 4
  %14 = ptrtoint ptr %curr_source to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %curr_source, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_btemp_curr_source_enable.__UNIQUE_ID_ddebug288, ptr noundef %13, ptr noundef nonnull @.str.54, i32 noundef %15) #4
  br label %do.end

do.end:                                           ; preds = %if.then12, %if.then2
  %16 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %di, align 4
  %call16 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %17, i8 noundef zeroext 11, i8 noundef zeroext 96, i8 noundef zeroext 8, i8 noundef zeroext 8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end23, label %do.end.cleanup.sink.split_crit_edge

do.end.cleanup.sink.split_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end23:                                         ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 6871936) #4
  %19 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %di, align 4
  %call25 = tail call i32 @abx500_set_register_interruptible(ptr noundef %20, i8 noundef zeroext 11, i8 noundef zeroext 96, i8 noundef zeroext %.) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end23.cleanup_crit_edge, label %do.end30

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.53) #7
  br label %disable_curr_source

if.else33:                                        ; preds = %if.end
  %brmerge153 = or i1 %cmp, %enable
  br i1 %brmerge153, label %if.else33.cleanup_crit_edge, label %do.body41

if.else33.cleanup_crit_edge:                      ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body41:                                        ; preds = %if.else33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_btemp_curr_source_enable.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_btemp_curr_source_enable, %do.end59)) #4
          to label %if.then55 [label %do.end59], !srcloc !229

if.then55:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_btemp_curr_source_enable.__UNIQUE_ID_ddebug289, ptr noundef %24, ptr noundef nonnull @.str.59) #4
  br label %do.end59

do.end59:                                         ; preds = %if.then55, %do.body41
  %25 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %di, align 4
  %call61 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %26, i8 noundef zeroext 11, i8 noundef zeroext 96, i8 noundef zeroext 3, i8 noundef zeroext -4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  %27 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %di, align 4
  br i1 %tobool62.not, label %if.end68, label %do.end66

do.end66:                                         ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.53) #7
  br label %disable_curr_source

if.end68:                                         ; preds = %do.end59
  %call70 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %28, i8 noundef zeroext 11, i8 noundef zeroext 96, i8 noundef zeroext 20, i8 noundef zeroext 20) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end77, label %do.end75

do.end75:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #6
  %29 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.53) #7
  br label %enable_pu_comp

if.end77:                                         ; preds = %if.end68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 6871936) #4
  %32 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %di, align 4
  %call79 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %33, i8 noundef zeroext 11, i8 noundef zeroext 96, i8 noundef zeroext 8, i8 noundef zeroext -9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end77.cleanup_crit_edge, label %do.end84

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end84:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.53) #7
  br label %disable_force_comp

disable_curr_source:                              ; preds = %do.end66, %do.end30
  %36 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %di, align 4
  %call90 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %37, i8 noundef zeroext 11, i8 noundef zeroext 96, i8 noundef zeroext 3, i8 noundef zeroext -4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %disable_curr_source.enable_pu_comp_crit_edge, label %disable_curr_source.cleanup.sink.split_crit_edge

disable_curr_source.cleanup.sink.split_crit_edge: ; preds = %disable_curr_source
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

disable_curr_source.enable_pu_comp_crit_edge:     ; preds = %disable_curr_source
  call void @__sanitizer_cov_trace_pc() #6
  br label %enable_pu_comp

enable_pu_comp:                                   ; preds = %disable_curr_source.enable_pu_comp_crit_edge, %do.end75
  %38 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %di, align 4
  %call99 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %39, i8 noundef zeroext 11, i8 noundef zeroext 96, i8 noundef zeroext 20, i8 noundef zeroext 20) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %enable_pu_comp.disable_force_comp_crit_edge, label %enable_pu_comp.cleanup.sink.split_crit_edge

enable_pu_comp.cleanup.sink.split_crit_edge:      ; preds = %enable_pu_comp
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

enable_pu_comp.disable_force_comp_crit_edge:      ; preds = %enable_pu_comp
  call void @__sanitizer_cov_trace_pc() #6
  br label %disable_force_comp

disable_force_comp:                               ; preds = %enable_pu_comp.disable_force_comp_crit_edge, %do.end84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 6871936) #4
  %41 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %di, align 4
  %call108 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %42, i8 noundef zeroext 11, i8 noundef zeroext 96, i8 noundef zeroext 8, i8 noundef zeroext -9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %disable_force_comp.cleanup_crit_edge, label %disable_force_comp.cleanup.sink.split_crit_edge

disable_force_comp.cleanup.sink.split_crit_edge:  ; preds = %disable_force_comp
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

disable_force_comp.cleanup_crit_edge:             ; preds = %disable_force_comp
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup.sink.split:                               ; preds = %disable_force_comp.cleanup.sink.split_crit_edge, %enable_pu_comp.cleanup.sink.split_crit_edge, %disable_curr_source.cleanup.sink.split_crit_edge, %do.end.cleanup.sink.split_crit_edge
  %.str.67.sink = phi ptr [ @.str.55, %do.end.cleanup.sink.split_crit_edge ], [ @.str.61, %disable_curr_source.cleanup.sink.split_crit_edge ], [ @.str.64, %enable_pu_comp.cleanup.sink.split_crit_edge ], [ @.str.67, %disable_force_comp.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call16, %do.end.cleanup.sink.split_crit_edge ], [ %call90, %disable_curr_source.cleanup.sink.split_crit_edge ], [ %call99, %enable_pu_comp.cleanup.sink.split_crit_edge ], [ %call108, %disable_force_comp.cleanup.sink.split_crit_edge ]
  %43 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull %.str.67.sink, ptr noundef nonnull @.str.53) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %disable_force_comp.cleanup_crit_edge, %if.end77.cleanup_crit_edge, %if.else33.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %is_ab8500_1p1_or_earlier.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %is_ab8500_1p1_or_earlier.exit.cleanup_crit_edge ], [ 0, %if.else33.cleanup_crit_edge ], [ 0, %if.end77.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ], [ 0, %disable_force_comp.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ab8500_fg_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ab8500_fg_inst_curr_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ab8500_fg_inst_curr_started(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ab8500_fg_inst_curr_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ab8500_fg_inst_curr_finalize(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_mask_and_set_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_set_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_processed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_btemp_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #4
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 3, label %entry.sw.bb_crit_edge
    i32 4, label %entry.sw.bb_crit_edge17
    i32 6, label %sw.bb1
    i32 52, label %sw.bb8
  ]

entry.sw.bb_crit_edge17:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge17
  %events = getelementptr inbounds %struct.ab8500_btemp, ptr %call, i32 0, i32 11
  %1 = ptrtoint ptr %events to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %events, align 4, !range !230
  %3 = xor i8 %2, 1
  %4 = zext i8 %3 to i32
  br label %cleanup.sink.split

sw.bb1:                                           ; preds = %entry
  %bm = getelementptr inbounds %struct.ab8500_btemp, ptr %call, i32 0, i32 9
  %5 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bm, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %sw.bb1.cleanup.sink.split_crit_edge, label %if.then3

sw.bb1.cleanup.sink.split_crit_edge:              ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.then3:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  br label %cleanup.sink.split

sw.bb8:                                           ; preds = %entry
  %parent.i = getelementptr inbounds %struct.ab8500_btemp, ptr %call, i32 0, i32 5
  %11 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i, align 4
  %version.i.i.i = getelementptr inbounds %struct.ab8500, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %version.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %version.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.not.i.i = icmp eq i32 %14, 0
  br i1 %cmp.i.not.i.i, label %is_ab8500_3p3_or_earlier.exit.i, label %sw.bb8.if.else.i_crit_edge

sw.bb8.if.else.i_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

is_ab8500_3p3_or_earlier.exit.i:                  ; preds = %sw.bb8
  %chip_id.i.i = getelementptr inbounds %struct.ab8500, ptr %12, i32 0, i32 7
  %15 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %chip_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %16)
  %cmp.i.i = icmp ugt i8 %16, 51
  br i1 %cmp.i.i, label %is_ab8500_3p3_or_earlier.exit.i.if.else.i_crit_edge, label %is_ab8500_3p3_or_earlier.exit.i.if.end60.sink.split.i_crit_edge

is_ab8500_3p3_or_earlier.exit.i.if.end60.sink.split.i_crit_edge: ; preds = %is_ab8500_3p3_or_earlier.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60.sink.split.i

is_ab8500_3p3_or_earlier.exit.i.if.else.i_crit_edge: ; preds = %is_ab8500_3p3_or_earlier.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

if.else.i:                                        ; preds = %is_ab8500_3p3_or_earlier.exit.i.if.else.i_crit_edge, %sw.bb8.if.else.i_crit_edge
  %btemp_low.i = getelementptr inbounds %struct.ab8500_btemp, ptr %call, i32 0, i32 11, i32 4
  %17 = ptrtoint ptr %btemp_low.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %btemp_low.i, align 4, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool1.not.i = icmp eq i8 %18, 0
  br i1 %tobool1.not.i, label %if.else10.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.else.i
  %btemp_low_limit.i = getelementptr inbounds %struct.ab8500_btemp, ptr %call, i32 0, i32 12, i32 2
  %19 = ptrtoint ptr %btemp_low_limit.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %btemp_low_limit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i = icmp slt i32 %20, 0
  br i1 %cmp.i, label %if.then2.i.ab8500_btemp_get_temp.exit_crit_edge, label %if.then2.i.if.end60.sink.split.i_crit_edge

if.then2.i.if.end60.sink.split.i_crit_edge:       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60.sink.split.i

if.then2.i.ab8500_btemp_get_temp.exit_crit_edge:  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ab8500_btemp_get_temp.exit

if.else10.i:                                      ; preds = %if.else.i
  %btemp_high.i = getelementptr inbounds %struct.ab8500_btemp, ptr %call, i32 0, i32 11, i32 1
  %21 = ptrtoint ptr %btemp_high.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %btemp_high.i, align 1, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool12.not.i = icmp eq i8 %22, 0
  br i1 %tobool12.not.i, label %if.else24.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.else10.i
  %btemp_ranges14.i = getelementptr inbounds %struct.ab8500_btemp, ptr %call, i32 0, i32 12
  %23 = ptrtoint ptr %btemp_ranges14.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %btemp_ranges14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp15.i = icmp sgt i32 %24, 0
  br i1 %cmp15.i, label %if.then13.i.ab8500_btemp_get_temp.exit_crit_edge, label %if.then13.i.if.end60.sink.split.i_crit_edge

if.then13.i.if.end60.sink.split.i_crit_edge:      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60.sink.split.i

if.then13.i.ab8500_btemp_get_temp.exit_crit_edge: ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ab8500_btemp_get_temp.exit

if.else24.i:                                      ; preds = %if.else10.i
  %btemp_lowmed.i = getelementptr inbounds %struct.ab8500_btemp, ptr %call, i32 0, i32 11, i32 3
  %25 = ptrtoint ptr %btemp_lowmed.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %btemp_lowmed.i, align 1, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool26.not.i = icmp eq i8 %26, 0
  br i1 %tobool26.not.i, label %if.else38.i, label %if.then27.i

if.then27.i:                                      ; preds = %if.else24.i
  %btemp_med_limit.i = getelementptr inbounds %struct.ab8500_btemp, ptr %call, i32 0, i32 12, i32 1
  %27 = ptrtoint ptr %btemp_med_limit.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %btemp_med_limit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp29.i = icmp slt i32 %28, 0
  br i1 %cmp29.i, label %if.then27.i.ab8500_btemp_get_temp.exit_crit_edge, label %if.then27.i.if.end60.sink.split.i_crit_edge

if.then27.i.if.end60.sink.split.i_crit_edge:      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60.sink.split.i

if.then27.i.ab8500_btemp_get_temp.exit_crit_edge: ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ab8500_btemp_get_temp.exit

if.else38.i:                                      ; preds = %if.else24.i
  %btemp_medhigh.i = getelementptr inbounds %struct.ab8500_btemp, ptr %call, i32 0, i32 11, i32 2
  %29 = ptrtoint ptr %btemp_medhigh.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %btemp_medhigh.i, align 2, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool40.not.i = icmp eq i8 %30, 0
  br i1 %tobool40.not.i, label %if.else38.i.if.end60.sink.split.i_crit_edge, label %if.then41.i

if.else38.i.if.end60.sink.split.i_crit_edge:      ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60.sink.split.i

if.then41.i:                                      ; preds = %if.else38.i
  %btemp_med_limit43.i = getelementptr inbounds %struct.ab8500_btemp, ptr %call, i32 0, i32 12, i32 1
  %31 = ptrtoint ptr %btemp_med_limit43.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %btemp_med_limit43.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp44.i = icmp sgt i32 %32, 0
  br i1 %cmp44.i, label %if.then41.i.ab8500_btemp_get_temp.exit_crit_edge, label %if.then41.i.if.end60.sink.split.i_crit_edge

if.then41.i.if.end60.sink.split.i_crit_edge:      ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60.sink.split.i

if.then41.i.ab8500_btemp_get_temp.exit_crit_edge: ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ab8500_btemp_get_temp.exit

if.end60.sink.split.i:                            ; preds = %if.then41.i.if.end60.sink.split.i_crit_edge, %if.else38.i.if.end60.sink.split.i_crit_edge, %if.then27.i.if.end60.sink.split.i_crit_edge, %if.then13.i.if.end60.sink.split.i_crit_edge, %if.then2.i.if.end60.sink.split.i_crit_edge, %is_ab8500_3p3_or_earlier.exit.i.if.end60.sink.split.i_crit_edge
  %bat_temp8.i = getelementptr inbounds %struct.ab8500_btemp, ptr %call, i32 0, i32 3
  %33 = ptrtoint ptr %bat_temp8.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bat_temp8.i, align 4
  br label %ab8500_btemp_get_temp.exit

ab8500_btemp_get_temp.exit:                       ; preds = %if.end60.sink.split.i, %if.then41.i.ab8500_btemp_get_temp.exit_crit_edge, %if.then27.i.ab8500_btemp_get_temp.exit_crit_edge, %if.then13.i.ab8500_btemp_get_temp.exit_crit_edge, %if.then2.i.ab8500_btemp_get_temp.exit_crit_edge
  %temp.0.in.i = phi i32 [ %20, %if.then2.i.ab8500_btemp_get_temp.exit_crit_edge ], [ %24, %if.then13.i.ab8500_btemp_get_temp.exit_crit_edge ], [ %28, %if.then27.i.ab8500_btemp_get_temp.exit_crit_edge ], [ %32, %if.then41.i.ab8500_btemp_get_temp.exit_crit_edge ], [ %34, %if.end60.sink.split.i ]
  %temp.0.i = mul i32 %temp.0.in.i, 10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %ab8500_btemp_get_temp.exit, %if.then3, %sw.bb1.cleanup.sink.split_crit_edge, %sw.bb
  %temp.0.i.sink = phi i32 [ %temp.0.i, %ab8500_btemp_get_temp.exit ], [ %10, %if.then3 ], [ %4, %sw.bb ], [ 0, %sw.bb1.cleanup.sink.split_crit_edge ]
  %35 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %temp.0.i.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ab8500_btemp_external_power_changed(ptr noundef %psy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @power_supply_class to i32))
  %0 = load ptr, ptr @power_supply_class, align 4
  %btemp_psy = getelementptr inbounds %struct.ab8500_btemp, ptr %call, i32 0, i32 10
  %1 = ptrtoint ptr %btemp_psy to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %btemp_psy, align 4
  %call1 = tail call i32 @class_for_each_device(ptr noundef %0, ptr noundef null, ptr noundef %2, ptr noundef nonnull @ab8500_btemp_get_ext_psy_data) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @class_for_each_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_btemp_get_ext_psy_data(ptr nocapture noundef readonly %dev, ptr noundef %data) #0 align 64 {
entry:
  %ret = alloca %union.power_supply_propval, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %supplied_to = getelementptr inbounds %struct.power_supply, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %supplied_to to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %supplied_to, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #4
  %4 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %ret, align 4, !annotation !228
  %call1 = tail call ptr @power_supply_get_drvdata(ptr noundef %data) #4
  %num_supplicants = getelementptr inbounds %struct.power_supply, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %num_supplicants to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_supplicants, align 8
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call2 = tail call i32 @match_string(ptr noundef %3, i32 noundef %6, ptr noundef %10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup57_crit_edge, label %for.cond.preheader

entry.cleanup57_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup57

for.cond.preheader:                               ; preds = %entry
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %num_properties90 = getelementptr inbounds %struct.power_supply_desc, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %num_properties90 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_properties90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp491.not = icmp eq i32 %14, 0
  br i1 %cmp491.not, label %for.cond.preheader.cleanup57_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup57_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup57

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %usb_conn43 = getelementptr inbounds %struct.ab8500_btemp, ptr %call1, i32 0, i32 11, i32 6
  %ac_conn49 = getelementptr inbounds %struct.ab8500_btemp, ptr %call1, i32 0, i32 11, i32 5
  %btemp_periodic_work.i85 = getelementptr inbounds %struct.ab8500_btemp, ptr %call1, i32 0, i32 14
  %btemp_wq.i87 = getelementptr inbounds %struct.ab8500_btemp, ptr %call1, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %15 = phi ptr [ %12, %for.body.lr.ph ], [ %50, %cleanup.for.body_crit_edge ]
  %j.092 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %properties = getelementptr inbounds %struct.power_supply_desc, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %properties, align 4
  %arrayidx = getelementptr i32, ptr %17, i32 %j.092
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %call6 = call i32 @power_supply_get_property(ptr noundef %1, i32 noundef %19, ptr noundef nonnull %ret) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cond = icmp eq i32 %19, 3
  %or.cond = and i1 %cond, %tobool.not
  br i1 %or.cond, label %sw.bb, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %for.body
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %type = getelementptr inbounds %struct.power_supply_desc, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %type, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %23, label %sw.bb.cleanup_crit_edge [
    i32 3, label %sw.bb10
    i32 4, label %sw.bb30
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb10:                                          ; preds = %sw.bb
  %25 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool11.not = icmp eq i32 %26, 0
  %27 = ptrtoint ptr %ac_conn49 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ac_conn49, align 1, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool12.not = icmp eq i8 %28, 0
  br i1 %tobool11.not, label %land.lhs.true, label %land.lhs.true17

land.lhs.true:                                    ; preds = %sw.bb10
  br i1 %tobool12.not, label %land.lhs.true.cleanup_crit_edge, label %if.then13

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %29 = ptrtoint ptr %ac_conn49 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %ac_conn49, align 1
  br label %cleanup

land.lhs.true17:                                  ; preds = %sw.bb10
  br i1 %tobool12.not, label %if.then21, label %land.lhs.true17.cleanup_crit_edge

land.lhs.true17.cleanup_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then21:                                        ; preds = %land.lhs.true17
  %30 = ptrtoint ptr %ac_conn49 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %ac_conn49, align 1
  %31 = ptrtoint ptr %usb_conn43 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %usb_conn43, align 2, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool25.not = icmp eq i8 %32, 0
  br i1 %tobool25.not, label %if.then26, label %if.then21.cleanup_crit_edge

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then26:                                        ; preds = %if.then21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_btemp_periodic.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_btemp_get_ext_psy_data, %ab8500_btemp_periodic.exit)) #4
          to label %if.then.i [label %ab8500_btemp_periodic.exit], !srcloc !229

if.then.i:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call1, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_btemp_periodic.__UNIQUE_ID_ddebug296, ptr noundef %34, ptr noundef nonnull @.str.83, i32 noundef 1) #4
  br label %ab8500_btemp_periodic.exit

ab8500_btemp_periodic.exit:                       ; preds = %if.then.i, %if.then26
  %call6.i = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %btemp_periodic_work.i85) #4
  %35 = ptrtoint ptr %btemp_wq.i87 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %btemp_wq.i87, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %36, ptr noundef %btemp_periodic_work.i85, i32 noundef 0) #4
  br label %cleanup

sw.bb30:                                          ; preds = %sw.bb
  %37 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool31.not = icmp eq i32 %38, 0
  %39 = ptrtoint ptr %usb_conn43 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %usb_conn43, align 2, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool35.not = icmp eq i8 %40, 0
  br i1 %tobool31.not, label %land.lhs.true32, label %land.lhs.true41

land.lhs.true32:                                  ; preds = %sw.bb30
  br i1 %tobool35.not, label %land.lhs.true32.cleanup_crit_edge, label %if.then36

land.lhs.true32.cleanup_crit_edge:                ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then36:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #6
  %41 = ptrtoint ptr %usb_conn43 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %usb_conn43, align 2
  br label %cleanup

land.lhs.true41:                                  ; preds = %sw.bb30
  br i1 %tobool35.not, label %if.then45, label %land.lhs.true41.cleanup_crit_edge

land.lhs.true41.cleanup_crit_edge:                ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then45:                                        ; preds = %land.lhs.true41
  %42 = ptrtoint ptr %usb_conn43 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %usb_conn43, align 2
  %43 = ptrtoint ptr %ac_conn49 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ac_conn49, align 1, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool50.not = icmp eq i8 %44, 0
  br i1 %tobool50.not, label %if.then51, label %if.then45.cleanup_crit_edge

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then51:                                        ; preds = %if.then45
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_btemp_periodic.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_btemp_get_ext_psy_data, %ab8500_btemp_periodic.exit89)) #4
          to label %if.then.i84 [label %ab8500_btemp_periodic.exit89], !srcloc !229

if.then.i84:                                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #6
  %45 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call1, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_btemp_periodic.__UNIQUE_ID_ddebug296, ptr noundef %46, ptr noundef nonnull @.str.83, i32 noundef 1) #4
  br label %ab8500_btemp_periodic.exit89

ab8500_btemp_periodic.exit89:                     ; preds = %if.then.i84, %if.then51
  %call6.i86 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %btemp_periodic_work.i85) #4
  %47 = ptrtoint ptr %btemp_wq.i87 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %btemp_wq.i87, align 4
  %call.i.i88 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %48, ptr noundef %btemp_periodic_work.i85, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %ab8500_btemp_periodic.exit89, %if.then45.cleanup_crit_edge, %land.lhs.true41.cleanup_crit_edge, %if.then36, %land.lhs.true32.cleanup_crit_edge, %ab8500_btemp_periodic.exit, %if.then21.cleanup_crit_edge, %land.lhs.true17.cleanup_crit_edge, %if.then13, %land.lhs.true.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %j.092, 1
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 8
  %num_properties = getelementptr inbounds %struct.power_supply_desc, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %num_properties to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_properties, align 4
  %cmp4 = icmp ult i32 %inc, %52
  br i1 %cmp4, label %cleanup.for.body_crit_edge, label %cleanup.cleanup57_crit_edge

cleanup.cleanup57_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup57

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup57:                                        ; preds = %cleanup.cleanup57_crit_edge, %for.cond.preheader.cleanup57_crit_edge, %entry.cleanup57_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_get_property(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_btemp_batctrlindb_handler(i32 noundef %irq, ptr nocapture noundef %_di) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_di to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_di, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.89) #7
  %events = getelementptr inbounds %struct.ab8500_btemp, ptr %_di, i32 0, i32 11
  %2 = ptrtoint ptr %events to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %events, align 4
  %btemp_psy = getelementptr inbounds %struct.ab8500_btemp, ptr %_di, i32 0, i32 10
  %3 = ptrtoint ptr %btemp_psy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %btemp_psy, align 4
  tail call void @power_supply_changed(ptr noundef %4) #4
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_btemp_templow_handler(i32 noundef %irq, ptr nocapture noundef %_di) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.ab8500_btemp, ptr %_di, i32 0, i32 5
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %version.i.i = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not.i = icmp eq i32 %3, 0
  br i1 %cmp.i.not.i, label %is_ab8500_3p3_or_earlier.exit, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end9

is_ab8500_3p3_or_earlier.exit:                    ; preds = %entry
  %chip_id.i = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %5)
  %cmp.i = icmp ugt i8 %5, 51
  br i1 %cmp.i, label %is_ab8500_3p3_or_earlier.exit.do.end9_crit_edge, label %do.body

is_ab8500_3p3_or_earlier.exit.do.end9_crit_edge:  ; preds = %is_ab8500_3p3_or_earlier.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end9

do.body:                                          ; preds = %is_ab8500_3p3_or_earlier.exit
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_btemp_templow_handler.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_btemp_templow_handler, %if.end14)) #4
          to label %if.then6 [label %if.end14], !srcloc !229

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %_di to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_di, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_btemp_templow_handler.__UNIQUE_ID_ddebug293, ptr noundef %7, ptr noundef nonnull @.str.92) #4
  br label %if.end14

do.end9:                                          ; preds = %is_ab8500_3p3_or_earlier.exit.do.end9_crit_edge, %entry.do.end9_crit_edge
  %8 = ptrtoint ptr %_di to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_di, align 4
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %9, ptr noundef nonnull @.str.93) #7
  %btemp_low = getelementptr inbounds %struct.ab8500_btemp, ptr %_di, i32 0, i32 11, i32 4
  %10 = ptrtoint ptr %btemp_low to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %btemp_low, align 4
  %btemp_high = getelementptr inbounds %struct.ab8500_btemp, ptr %_di, i32 0, i32 11, i32 1
  %11 = ptrtoint ptr %btemp_high to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %btemp_high, align 1
  %btemp_medhigh = getelementptr inbounds %struct.ab8500_btemp, ptr %_di, i32 0, i32 11, i32 2
  %12 = ptrtoint ptr %btemp_medhigh to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %btemp_medhigh, align 2
  %btemp_lowmed = getelementptr inbounds %struct.ab8500_btemp, ptr %_di, i32 0, i32 11, i32 3
  %13 = ptrtoint ptr %btemp_lowmed to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %btemp_lowmed, align 1
  %btemp_psy = getelementptr inbounds %struct.ab8500_btemp, ptr %_di, i32 0, i32 10
  %14 = ptrtoint ptr %btemp_psy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %btemp_psy, align 4
  tail call void @power_supply_changed(ptr noundef %15) #4
  br label %if.end14

if.end14:                                         ; preds = %do.end9, %if.then6, %do.body
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_btemp_temphigh_handler(i32 noundef %irq, ptr nocapture noundef %_di) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_di to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_di, align 4
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %1, ptr noundef nonnull @.str.95) #7
  %btemp_high = getelementptr inbounds %struct.ab8500_btemp, ptr %_di, i32 0, i32 11, i32 1
  %2 = ptrtoint ptr %btemp_high to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %btemp_high, align 1
  %btemp_medhigh = getelementptr inbounds %struct.ab8500_btemp, ptr %_di, i32 0, i32 11, i32 2
  %3 = ptrtoint ptr %btemp_medhigh to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %btemp_medhigh, align 2
  %btemp_lowmed = getelementptr inbounds %struct.ab8500_btemp, ptr %_di, i32 0, i32 11, i32 3
  %4 = ptrtoint ptr %btemp_lowmed to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %btemp_lowmed, align 1
  %btemp_low = getelementptr inbounds %struct.ab8500_btemp, ptr %_di, i32 0, i32 11, i32 4
  %5 = ptrtoint ptr %btemp_low to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %btemp_low, align 4
  %btemp_psy = getelementptr inbounds %struct.ab8500_btemp, ptr %_di, i32 0, i32 10
  %6 = ptrtoint ptr %btemp_psy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %btemp_psy, align 4
  tail call void @power_supply_changed(ptr noundef %7) #4
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_btemp_lowmed_handler(i32 noundef %irq, ptr nocapture noundef %_di) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_btemp_lowmed_handler.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_btemp_lowmed_handler, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !229

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %_di to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_di, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_btemp_lowmed_handler.__UNIQUE_ID_ddebug294, ptr noundef %1, ptr noundef nonnull @.str.98) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %btemp_lowmed = getelementptr inbounds %struct.ab8500_btemp, ptr %_di, i32 0, i32 11, i32 3
  %2 = ptrtoint ptr %btemp_lowmed to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %btemp_lowmed, align 1
  %btemp_medhigh = getelementptr inbounds %struct.ab8500_btemp, ptr %_di, i32 0, i32 11, i32 2
  %3 = ptrtoint ptr %btemp_medhigh to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %btemp_medhigh, align 2
  %btemp_high = getelementptr inbounds %struct.ab8500_btemp, ptr %_di, i32 0, i32 11, i32 1
  %4 = ptrtoint ptr %btemp_high to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %btemp_high, align 1
  %btemp_low = getelementptr inbounds %struct.ab8500_btemp, ptr %_di, i32 0, i32 11, i32 4
  %5 = ptrtoint ptr %btemp_low to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %btemp_low, align 4
  %btemp_psy = getelementptr inbounds %struct.ab8500_btemp, ptr %_di, i32 0, i32 10
  %6 = ptrtoint ptr %btemp_psy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %btemp_psy, align 4
  tail call void @power_supply_changed(ptr noundef %7) #4
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_btemp_medhigh_handler(i32 noundef %irq, ptr nocapture noundef %_di) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_btemp_medhigh_handler.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_btemp_medhigh_handler, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !229

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %_di to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_di, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_btemp_medhigh_handler.__UNIQUE_ID_ddebug295, ptr noundef %1, ptr noundef nonnull @.str.100) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %btemp_medhigh = getelementptr inbounds %struct.ab8500_btemp, ptr %_di, i32 0, i32 11, i32 2
  %2 = ptrtoint ptr %btemp_medhigh to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %btemp_medhigh, align 2
  %btemp_lowmed = getelementptr inbounds %struct.ab8500_btemp, ptr %_di, i32 0, i32 11, i32 3
  %3 = ptrtoint ptr %btemp_lowmed to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %btemp_lowmed, align 1
  %btemp_high = getelementptr inbounds %struct.ab8500_btemp, ptr %_di, i32 0, i32 11, i32 1
  %4 = ptrtoint ptr %btemp_high to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %btemp_high, align 1
  %btemp_low = getelementptr inbounds %struct.ab8500_btemp, ptr %_di, i32 0, i32 11, i32 4
  %5 = ptrtoint ptr %btemp_low to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %btemp_low, align 4
  %btemp_psy = getelementptr inbounds %struct.ab8500_btemp, ptr %_di, i32 0, i32 10
  %6 = ptrtoint ptr %btemp_psy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %btemp_psy, align 4
  tail call void @power_supply_changed(ptr noundef %7) #4
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_btemp_bind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.101, i32 noundef 8, i32 noundef 0) #4
  %btemp_wq = getelementptr inbounds %struct.ab8500_btemp, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %btemp_wq to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %btemp_wq, align 4
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.102) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_btemp_periodic.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_btemp_bind, %ab8500_btemp_periodic.exit)) #4
          to label %if.then.i [label %ab8500_btemp_periodic.exit], !srcloc !229

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_btemp_periodic.__UNIQUE_ID_ddebug296, ptr noundef %4, ptr noundef nonnull @.str.83, i32 noundef 1) #4
  br label %ab8500_btemp_periodic.exit

ab8500_btemp_periodic.exit:                       ; preds = %if.then.i, %if.end
  %btemp_periodic_work.i = getelementptr inbounds %struct.ab8500_btemp, ptr %1, i32 0, i32 14
  %call6.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %btemp_periodic_work.i) #4
  %5 = ptrtoint ptr %btemp_wq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %btemp_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %btemp_periodic_work.i, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %ab8500_btemp_periodic.exit, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %ab8500_btemp_periodic.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ab8500_btemp_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %btemp_wq = getelementptr inbounds %struct.ab8500_btemp, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %btemp_wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %btemp_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %3) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  tail call void @flush_workqueue(ptr noundef %4) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_btemp_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_btemp_periodic.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_btemp_suspend, %ab8500_btemp_periodic.exit)) #4
          to label %if.then.i [label %ab8500_btemp_periodic.exit], !srcloc !229

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_btemp_periodic.__UNIQUE_ID_ddebug296, ptr noundef %3, ptr noundef nonnull @.str.83, i32 noundef 0) #4
  br label %ab8500_btemp_periodic.exit

ab8500_btemp_periodic.exit:                       ; preds = %if.then.i, %entry
  %btemp_periodic_work.i = getelementptr inbounds %struct.ab8500_btemp, ptr %1, i32 0, i32 14
  %call6.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %btemp_periodic_work.i) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_btemp_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_btemp_periodic.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_btemp_resume, %ab8500_btemp_periodic.exit)) #4
          to label %if.then.i [label %ab8500_btemp_periodic.exit], !srcloc !229

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_btemp_periodic.__UNIQUE_ID_ddebug296, ptr noundef %3, ptr noundef nonnull @.str.83, i32 noundef 1) #4
  br label %ab8500_btemp_periodic.exit

ab8500_btemp_periodic.exit:                       ; preds = %if.then.i, %entry
  %btemp_periodic_work.i = getelementptr inbounds %struct.ab8500_btemp, ptr %1, i32 0, i32 14
  %call6.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %btemp_periodic_work.i) #4
  %btemp_wq.i = getelementptr inbounds %struct.ab8500_btemp, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %btemp_wq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %btemp_wq.i, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %btemp_periodic_work.i, i32 noundef 0) #4
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 112)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 112)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !28, !29, !30, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !50, !52, !54, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !68, !69, !70, !72, !73, !74, !76, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !133, !134, !136, !137, !139, !141, !142, !143, !144, !146, !148, !149, !150, !152, !153, !154, !156, !157, !159, !161, !163, !164, !165, !167, !169, !171, !173, !175, !177, !179, !180, !181, !182, !184, !185, !186, !188, !189, !190, !191, !193, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !208, !210, !212, !213, !214, !215, !217}
!llvm.module.flags = !{!219, !220, !221, !222, !223, !224, !225, !226}
!llvm.ident = !{!227}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 1105, i32 11}
!2 = !{ptr @ab8500_btemp_driver, !3, !"ab8500_btemp_driver", i1 false, i1 false}
!3 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 1101, i32 24}
!4 = !{ptr @__UNIQUE_ID_file298, !5, !"__UNIQUE_ID_file298", i1 false, i1 false}
!5 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 1110, i32 1}
!6 = !{ptr @__UNIQUE_ID_license299, !5, !"__UNIQUE_ID_license299", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author300, !8, !"__UNIQUE_ID_author300", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 1111, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias301, !10, !"__UNIQUE_ID_alias301", i1 false, i1 false}
!10 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 1112, i32 1}
!11 = !{ptr @__UNIQUE_ID_description302, !12, !"__UNIQUE_ID_description302", i1 false, i1 false}
!12 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 1113, i32 1}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 1002, i32 45}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 1005, i32 9}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 1008, i32 43}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 1011, i32 9}
!21 = !{ptr @ab8500_btemp_probe.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 1022, i32 2}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ab8500_btemp_probe.__key.6, !22, !"__key", i1 false, i1 false}
!25 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 1032, i32 3}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @ab8500_btemp_probe._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @ab8500_btemp_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 1055, i32 3}
!36 = !{ptr @ab8500_btemp_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @ab8500_btemp_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 1071, i32 4}
!40 = !{ptr @ab8500_btemp_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ab8500_btemp_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 1075, i32 3}
!44 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ab8500_btemp_probe.__UNIQUE_ID_ddebug297, !43, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 936, i32 2}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 937, i32 2}
!50 = !{ptr @supply_interface, !51, !"supply_interface", i1 false, i1 false}
!51 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 935, i32 14}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 569, i32 4}
!54 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @ab8500_btemp_periodic_work._entry, !53, !"_entry", i1 false, i1 false}
!57 = !{ptr @ab8500_btemp_periodic_work._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 516, i32 3}
!60 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @ab8500_btemp_id._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @ab8500_btemp_id._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 522, i32 3}
!65 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ab8500_btemp_id._entry.28, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @ab8500_btemp_id._entry_ptr.31, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 530, i32 3}
!72 = !{ptr @ab8500_btemp_id._entry.34, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @ab8500_btemp_id._entry_ptr.36, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 546, i32 3}
!76 = !{ptr @ab8500_btemp_id.__UNIQUE_ID_ddebug292, !75, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 359, i32 3}
!79 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @ab8500_btemp_get_batctrl_res._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @ab8500_btemp_get_batctrl_res._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 366, i32 3}
!84 = !{ptr @ab8500_btemp_get_batctrl_res._entry.40, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @ab8500_btemp_get_batctrl_res._entry_ptr.42, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 373, i32 3}
!88 = !{ptr @ab8500_btemp_get_batctrl_res._entry.43, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @ab8500_btemp_get_batctrl_res._entry_ptr.45, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 392, i32 3}
!92 = !{ptr @ab8500_btemp_get_batctrl_res._entry.46, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @ab8500_btemp_get_batctrl_res._entry_ptr.48, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 400, i32 3}
!96 = !{ptr @ab8500_btemp_get_batctrl_res._entry.49, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @ab8500_btemp_get_batctrl_res._entry_ptr.51, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 404, i32 2}
!100 = !{ptr @ab8500_btemp_get_batctrl_res.__UNIQUE_ID_ddebug290, !99, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!101 = !{ptr @.str.53, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 217, i32 3}
!103 = !{ptr @.str.54, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @ab8500_btemp_curr_source_enable.__UNIQUE_ID_ddebug288, !102, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!105 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 223, i32 4}
!107 = !{ptr @ab8500_btemp_curr_source_enable._entry, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @ab8500_btemp_curr_source_enable._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.57, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 239, i32 4}
!111 = !{ptr @ab8500_btemp_curr_source_enable._entry.56, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @ab8500_btemp_curr_source_enable._entry_ptr.58, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.59, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 244, i32 3}
!115 = !{ptr @ab8500_btemp_curr_source_enable.__UNIQUE_ID_ddebug289, !114, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!116 = !{ptr @.str.61, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 254, i32 4}
!118 = !{ptr @ab8500_btemp_curr_source_enable._entry.60, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @ab8500_btemp_curr_source_enable._entry_ptr.62, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.64, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 265, i32 4}
!122 = !{ptr @ab8500_btemp_curr_source_enable._entry.63, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @ab8500_btemp_curr_source_enable._entry_ptr.65, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.67, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 282, i32 4}
!126 = !{ptr @ab8500_btemp_curr_source_enable._entry.66, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @ab8500_btemp_curr_source_enable._entry_ptr.68, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @ab8500_btemp_curr_source_enable._entry.69, !129, !"_entry", i1 false, i1 false}
!129 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 301, i32 3}
!130 = !{ptr @ab8500_btemp_curr_source_enable._entry_ptr.70, !129, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @ab8500_btemp_curr_source_enable._entry.71, !132, !"_entry", i1 false, i1 false}
!132 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 312, i32 3}
!133 = !{ptr @ab8500_btemp_curr_source_enable._entry_ptr.72, !132, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @ab8500_btemp_curr_source_enable._entry.73, !135, !"_entry", i1 false, i1 false}
!135 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 330, i32 3}
!136 = !{ptr @ab8500_btemp_curr_source_enable._entry_ptr.74, !135, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @ab8500_btemp_read_batctrl_voltage.prev, !138, !"prev", i1 false, i1 false}
!138 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 176, i32 13}
!139 = !{ptr @.str.75, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 180, i32 3}
!141 = !{ptr @.str.76, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @ab8500_btemp_read_batctrl_voltage._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @ab8500_btemp_read_batctrl_voltage._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @ab8500_btemp_measure_temp.prev, !145, !"prev", i1 false, i1 false}
!145 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 456, i32 13}
!146 = !{ptr @.str.77, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 464, i32 4}
!148 = !{ptr @ab8500_btemp_measure_temp._entry, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @ab8500_btemp_measure_temp._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.79, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 479, i32 4}
!152 = !{ptr @ab8500_btemp_measure_temp._entry.78, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @ab8500_btemp_measure_temp._entry_ptr.80, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.81, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 495, i32 2}
!156 = !{ptr @ab8500_btemp_measure_temp.__UNIQUE_ID_ddebug291, !155, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!157 = !{ptr @ab8500_btemp_desc, !158, !"ab8500_btemp_desc", i1 false, i1 false}
!158 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 940, i32 39}
!159 = !{ptr @ab8500_btemp_props, !160, !"ab8500_btemp_props", i1 false, i1 false}
!160 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 116, i32 35}
!161 = !{ptr @.str.82, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 727, i32 2}
!163 = !{ptr @.str.83, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @ab8500_btemp_periodic.__UNIQUE_ID_ddebug296, !162, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!165 = !{ptr @.str.84, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 910, i32 3}
!167 = !{ptr @.str.85, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 911, i32 3}
!169 = !{ptr @.str.86, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 912, i32 3}
!171 = !{ptr @.str.87, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 913, i32 3}
!173 = !{ptr @.str.88, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 914, i32 3}
!175 = !{ptr @ab8500_btemp_irq, !176, !"ab8500_btemp_irq", i1 false, i1 false}
!176 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 909, i32 39}
!177 = !{ptr @.str.89, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 615, i32 2}
!179 = !{ptr @.str.90, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @ab8500_btemp_batctrlindb_handler._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @ab8500_btemp_batctrlindb_handler._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.91, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 635, i32 3}
!184 = !{ptr @.str.92, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @ab8500_btemp_templow_handler.__UNIQUE_ID_ddebug293, !183, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!186 = !{ptr @.str.93, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 638, i32 3}
!188 = !{ptr @.str.94, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @ab8500_btemp_templow_handler._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @ab8500_btemp_templow_handler._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.95, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 661, i32 2}
!193 = !{ptr @.str.96, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @ab8500_btemp_temphigh_handler._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @ab8500_btemp_temphigh_handler._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.97, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 683, i32 2}
!198 = !{ptr @.str.98, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @ab8500_btemp_lowmed_handler.__UNIQUE_ID_ddebug294, !197, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!200 = !{ptr @.str.99, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 705, i32 2}
!202 = !{ptr @.str.100, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @ab8500_btemp_medhigh_handler.__UNIQUE_ID_ddebug295, !201, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!204 = !{ptr @ab8500_btemp_list, !205, !"ab8500_btemp_list", i1 false, i1 false}
!205 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 123, i32 8}
!206 = !{ptr @ab8500_btemp_component_ops, !207, !"ab8500_btemp_component_ops", i1 false, i1 false}
!207 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 978, i32 35}
!208 = !{ptr @.str.101, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 956, i32 19}
!210 = !{ptr @.str.102, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 958, i32 3}
!212 = !{ptr @.str.103, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @ab8500_btemp_bind._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @ab8500_btemp_bind._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @ab8500_btemp_match, !216, !"ab8500_btemp_match", i1 false, i1 false}
!216 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 1095, i32 34}
!217 = !{ptr @ab8500_btemp_pm_ops, !218, !"ab8500_btemp_pm_ops", i1 false, i1 false}
!218 = !{!"../drivers/power/supply/ab8500_btemp.c", i32 1093, i32 8}
!219 = !{i32 1, !"wchar_size", i32 2}
!220 = !{i32 1, !"min_enum_size", i32 4}
!221 = !{i32 8, !"branch-target-enforcement", i32 0}
!222 = !{i32 8, !"sign-return-address", i32 0}
!223 = !{i32 8, !"sign-return-address-all", i32 0}
!224 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!225 = !{i32 7, !"uwtable", i32 1}
!226 = !{i32 7, !"frame-pointer", i32 2}
!227 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!228 = !{!"auto-init"}
!229 = !{i64 2148981447, i64 2148981452, i64 2148981465, i64 2148981509, i64 2148981543, i64 2148981564}
!230 = !{i8 0, i8 2}
