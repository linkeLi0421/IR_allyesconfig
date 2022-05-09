; ModuleID = '/llk/IR_all_yes/drivers/power/supply/ab8500_charger.c_pt.bc'
source_filename = "../drivers/power/supply/ab8500_charger.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ab8500_bm_data = type { ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ab8500_charger_interrupts = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.component_master_ops = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.ab8500_charger = type { ptr, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ab8500_charger_event_flags, %struct.ab8500_charger_usb_state, %struct.ab8500_charger_max_usb_in_curr, %struct.ux500_charger, %struct.ux500_charger, %struct.ab8500_charger_info, %struct.ab8500_charger_info, ptr, ptr, %struct.mutex, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, ptr, %struct.notifier_block, %struct.mutex }
%struct.ab8500_charger_event_flags = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ab8500_charger_usb_state = type { i32, i32, i32, i32, %struct.spinlock }
%struct.ab8500_charger_max_usb_in_curr = type { i32, i32, i32 }
%struct.ux500_charger = type { ptr, %struct.ux500_charger_ops, i32, i32, i32, i8, i8 }
%struct.ux500_charger_ops = type { ptr, ptr, ptr, ptr }
%struct.ab8500_charger_info = type { i32, i32, i32, i32, i8, i32 }
%struct.ab8500 = type { ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, i32, ptr, i32, i8, ptr, ptr, ptr, [4 x i32], [4 x i32], ptr, ptr, i32, ptr, i32 }
%struct.power_supply = type { ptr, ptr, i32, ptr, i32, ptr, ptr, %struct.device, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.ab8500_bm_charger_parameters = type { i32, i32, i32, i32 }
%union.power_supply_propval = type { i32 }

@ab8500_charger_component_drivers = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @ab8500_fg_driver, ptr @ab8500_btemp_driver, ptr @ab8500_chargalg_driver], [20 x i8] zeroinitializer }, align 32
@ab8500_charger_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ab8500_charger_probe, ptr @ab8500_charger_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ab8500_charger_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ab8500_charger_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_ab8500_charger__356_3773_ab8500_charger_init6 = internal global ptr @ab8500_charger_init, section ".initcall6.init", align 4
@__exitcall_ab8500_charger_exit = internal global ptr @ab8500_charger_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file357 = internal constant [56 x i8] c"ab8500_charger.file=drivers/power/supply/ab8500_charger\00", section ".modinfo", align 1
@__UNIQUE_ID_license358 = internal constant [30 x i8] c"ab8500_charger.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author359 = internal constant [69 x i8] c"ab8500_charger.author=Johan Palsson, Karl Komierowski, Arun R Murthy\00", section ".modinfo", align 1
@__UNIQUE_ID_alias360 = internal constant [45 x i8] c"ab8500_charger.alias=platform:ab8500-charger\00", section ".modinfo", align 1
@__UNIQUE_ID_description361 = internal constant [60 x i8] c"ab8500_charger.description=AB8500 charger management driver\00", section ".modinfo", align 1
@ab8500_fg_driver = external dso_local global %struct.platform_driver, align 4
@ab8500_btemp_driver = external dso_local global %struct.platform_driver, align 4
@ab8500_chargalg_driver = external dso_local global %struct.platform_driver, align 4
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ab8500-charger\00", [17 x i8] zeroinitializer }, align 32
@ab8500_charger_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"stericsson,ab8500-charger\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ab8500_charger_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ab8500_charger_suspend, ptr @ab8500_charger_resume, ptr @ab8500_charger_suspend, ptr @ab8500_charger_resume, ptr @ab8500_charger_suspend, ptr @ab8500_charger_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ab8500_bm_data = external dso_local global %struct.ab8500_bm_data, align 4
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"autopower_cfg\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"main_charger_v\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to get ADC main charger voltage\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"main_charger_c\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to get ADC main charger current\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vbus_v\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to get ADC USB charger voltage\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usb_charger_c\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to get ADC USB charger current\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vddadc\00", [25 x i8] zeroinitializer }, align 32
@ab8500_charger_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.13, i32 3479, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to get vddadc regulator\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ab8500_charger_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/power/supply/ab8500_charger.c\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ab8500_charger_probe._entry_ptr = internal global ptr @ab8500_charger_probe._entry, section ".printk_index", align 4
@ab8500_charger_irq = internal constant { [14 x %struct.ab8500_charger_interrupts], [48 x i8] } { [14 x %struct.ab8500_charger_interrupts] [%struct.ab8500_charger_interrupts { ptr @.str.98, ptr @ab8500_charger_mainchunplugdet_handler }, %struct.ab8500_charger_interrupts { ptr @.str.99, ptr @ab8500_charger_mainchplugdet_handler }, %struct.ab8500_charger_interrupts { ptr @.str.100, ptr @ab8500_charger_mainextchnotok_handler }, %struct.ab8500_charger_interrupts { ptr @.str.101, ptr @ab8500_charger_mainchthprotr_handler }, %struct.ab8500_charger_interrupts { ptr @.str.102, ptr @ab8500_charger_mainchthprotf_handler }, %struct.ab8500_charger_interrupts { ptr @.str.103, ptr @ab8500_charger_vbusdetf_handler }, %struct.ab8500_charger_interrupts { ptr @.str.104, ptr @ab8500_charger_vbusdetr_handler }, %struct.ab8500_charger_interrupts { ptr @.str.105, ptr @ab8500_charger_usblinkstatus_handler }, %struct.ab8500_charger_interrupts { ptr @.str.106, ptr @ab8500_charger_usbchthprotr_handler }, %struct.ab8500_charger_interrupts { ptr @.str.107, ptr @ab8500_charger_usbchthprotf_handler }, %struct.ab8500_charger_interrupts { ptr @.str.108, ptr @ab8500_charger_usbchargernotokr_handler }, %struct.ab8500_charger_interrupts { ptr @.str.109, ptr @ab8500_charger_vbusovv_handler }, %struct.ab8500_charger_interrupts { ptr @.str.110, ptr @ab8500_charger_chwdexp_handler }, %struct.ab8500_charger_interrupts { ptr @.str.111, ptr @ab8500_charger_vbuschdropend_handler }], [48 x i8] zeroinitializer }, align 32
@ab8500_charger_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.13, i32 3496, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to request %s IRQ %d: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ab8500_charger_probe._entry_ptr.18 = internal global ptr @ab8500_charger_probe._entry.16, section ".printk_index", align 4
@ab8500_charger_probe.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.12, ptr @.str.13, ptr @.str.20, i8 3, i8 107, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ab8500_charger\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Requested %s IRQ %d: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@ab8500_charger_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&di->usb_state.usb_lock\00", [40 x i8] zeroinitializer }, align 32
@ab8500_charger_probe.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&di->usb_ipt_crnt_lock\00", [41 x i8] zeroinitializer }, align 32
@supply_interface = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.140, ptr @.str.141, ptr @.str.142], [20 x i8] zeroinitializer }, align 32
@ab8500_charger_voltage_map = internal constant { [78 x i32], [72 x i8] } { [78 x i32] [i32 3500000, i32 3525000, i32 3550000, i32 3575000, i32 3600000, i32 3625000, i32 3650000, i32 3675000, i32 3700000, i32 3725000, i32 3750000, i32 3775000, i32 3800000, i32 3825000, i32 3850000, i32 3875000, i32 3900000, i32 3925000, i32 3950000, i32 3975000, i32 4000000, i32 4025000, i32 4050000, i32 4060000, i32 4070000, i32 4080000, i32 4090000, i32 4100000, i32 4110000, i32 4120000, i32 4130000, i32 4140000, i32 4150000, i32 4160000, i32 4170000, i32 4180000, i32 4190000, i32 4200000, i32 4210000, i32 4220000, i32 4230000, i32 4240000, i32 4250000, i32 4260000, i32 4270000, i32 4280000, i32 4290000, i32 4300000, i32 4310000, i32 4320000, i32 4330000, i32 4340000, i32 4350000, i32 4360000, i32 4370000, i32 4380000, i32 4390000, i32 4400000, i32 4410000, i32 4420000, i32 4430000, i32 4440000, i32 4450000, i32 4460000, i32 4470000, i32 4480000, i32 4490000, i32 4500000, i32 4510000, i32 4520000, i32 4530000, i32 4540000, i32 4550000, i32 4560000, i32 4570000, i32 4580000, i32 4590000, i32 4600000], [72 x i8] zeroinitializer }, align 32
@ab8500_charger_probe.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&di->charger_attached_mutex\00", [36 x i8] zeroinitializer }, align 32
@ab8500_charger_probe.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"(work_completion)(&(&di->check_hw_failure_work)->work)\00", [41 x i8] zeroinitializer }, align 32
@ab8500_charger_probe.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"&(&di->check_hw_failure_work)->timer\00", [59 x i8] zeroinitializer }, align 32
@ab8500_charger_probe.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"(work_completion)(&(&di->check_usbchgnotok_work)->work)\00", [40 x i8] zeroinitializer }, align 32
@ab8500_charger_probe.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"&(&di->check_usbchgnotok_work)->timer\00", [58 x i8] zeroinitializer }, align 32
@ab8500_charger_probe.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"(work_completion)(&(&di->ac_charger_attached_work)->work)\00", [38 x i8] zeroinitializer }, align 32
@ab8500_charger_probe.__key.36 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"&(&di->ac_charger_attached_work)->timer\00", [56 x i8] zeroinitializer }, align 32
@ab8500_charger_probe.__key.38 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"(work_completion)(&(&di->usb_charger_attached_work)->work)\00", [37 x i8] zeroinitializer }, align 32
@ab8500_charger_probe.__key.40 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"&(&di->usb_charger_attached_work)->timer\00", [55 x i8] zeroinitializer }, align 32
@ab8500_charger_probe.__key.42 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&(&di->kick_wd_work)->work)\00", [50 x i8] zeroinitializer }, align 32
@ab8500_charger_probe.__key.44 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&di->kick_wd_work)->timer\00", [36 x i8] zeroinitializer }, align 32
@ab8500_charger_probe.__key.46 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&di->check_vbat_work)->work)\00", [47 x i8] zeroinitializer }, align 32
@ab8500_charger_probe.__key.48 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&di->check_vbat_work)->timer\00", [33 x i8] zeroinitializer }, align 32
@ab8500_charger_probe.__key.50 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&(&di->attach_work)->work)\00", [51 x i8] zeroinitializer }, align 32
@ab8500_charger_probe.__key.52 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&di->attach_work)->timer\00", [37 x i8] zeroinitializer }, align 32
@ab8500_charger_probe.__key.54 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.55 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"(work_completion)(&(&di->usb_state_changed_work)->work)\00", [40 x i8] zeroinitializer }, align 32
@ab8500_charger_probe.__key.56 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.57 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"&(&di->usb_state_changed_work)->timer\00", [58 x i8] zeroinitializer }, align 32
@ab8500_charger_probe.__key.58 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.59 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"(work_completion)(&(&di->vbus_drop_end_work)->work)\00", [44 x i8] zeroinitializer }, align 32
@ab8500_charger_probe.__key.60 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&(&di->vbus_drop_end_work)->timer\00", [62 x i8] zeroinitializer }, align 32
@ab8500_charger_probe.__key.62 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.63 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&di->usb_link_status_work)\00", [51 x i8] zeroinitializer }, align 32
@ab8500_charger_probe.__key.64 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.65 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&di->ac_work)\00", [32 x i8] zeroinitializer }, align 32
@ab8500_charger_probe.__key.66 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.67 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&di->detect_usb_type_work)\00", [51 x i8] zeroinitializer }, align 32
@ab8500_charger_probe.__key.68 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.69 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"(work_completion)(&di->check_main_thermal_prot_work)\00", [43 x i8] zeroinitializer }, align 32
@ab8500_charger_probe.__key.70 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.71 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"(work_completion)(&di->check_usb_thermal_prot_work)\00", [44 x i8] zeroinitializer }, align 32
@ab8500_charger_probe._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.12, ptr @.str.13, i32 3609, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to initialize ABB registers\0A\00", [60 x i8] zeroinitializer }, align 32
@ab8500_charger_probe._entry_ptr.74 = internal global ptr @ab8500_charger_probe._entry.72, section ".printk_index", align 4
@ab8500_ac_chg_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.346, i32 3, ptr null, i32 0, ptr @ab8500_charger_ac_props, i32 6, ptr @ab8500_charger_ac_get_property, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@ab8500_charger_probe._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.12, ptr @.str.13, i32 3619, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register AC charger\0A\00", [33 x i8] zeroinitializer }, align 32
@ab8500_charger_probe._entry_ptr.77 = internal global ptr @ab8500_charger_probe._entry.75, section ".printk_index", align 4
@ab8500_usb_chg_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.351, i32 4, ptr null, i32 0, ptr @ab8500_charger_usb_props, i32 7, ptr @ab8500_charger_usb_get_property, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@ab8500_charger_probe._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.12, ptr @.str.13, i32 3629, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to register USB charger\0A\00", [32 x i8] zeroinitializer }, align 32
@ab8500_charger_probe._entry_ptr.80 = internal global ptr @ab8500_charger_probe._entry.78, section ".printk_index", align 4
@.str.81 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to get battery information\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"present\00", [24 x i8] zeroinitializer }, align 32
@ab8500_charger_probe._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.12, ptr @.str.13, i32 3667, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"no matching components\0A\00", [40 x i8] zeroinitializer }, align 32
@ab8500_charger_probe._entry_ptr.85 = internal global ptr @ab8500_charger_probe._entry.83, section ".printk_index", align 4
@ab8500_charger_probe._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.12, ptr @.str.13, i32 3672, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"could not create component match\0A\00", [62 x i8] zeroinitializer }, align 32
@ab8500_charger_probe._entry_ptr.88 = internal global ptr @ab8500_charger_probe._entry.86, section ".printk_index", align 4
@charger_notifier_list = external dso_local global %struct.blocking_notifier_head, align 4
@charger_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @ab8500_external_charger_prepare, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@ab8500_charger_probe._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.12, ptr @.str.13, i32 3685, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get usb transceiver\0A\00", [33 x i8] zeroinitializer }, align 32
@ab8500_charger_probe._entry_ptr.91 = internal global ptr @ab8500_charger_probe._entry.89, section ".printk_index", align 4
@ab8500_charger_probe._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.12, ptr @.str.13, i32 3692, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register usb notifier\0A\00", [63 x i8] zeroinitializer }, align 32
@ab8500_charger_probe._entry_ptr.94 = internal global ptr @ab8500_charger_probe._entry.92, section ".printk_index", align 4
@ab8500_charger_comp_ops = internal constant { %struct.component_master_ops, [24 x i8] } { %struct.component_master_ops { ptr @ab8500_charger_bind, ptr @ab8500_charger_unbind }, [24 x i8] zeroinitializer }, align 32
@ab8500_charger_probe._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.12, ptr @.str.13, i32 3701, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to add component master\0A\00", [32 x i8] zeroinitializer }, align 32
@ab8500_charger_probe._entry_ptr.97 = internal global ptr @ab8500_charger_probe._entry.95, section ".printk_index", align 4
@.str.98 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MAIN_CH_UNPLUG_DET\00", [45 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MAIN_CHARGE_PLUG_DET\00", [43 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MAIN_EXT_CH_NOT_OK\00", [45 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MAIN_CH_TH_PROT_R\00", [46 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MAIN_CH_TH_PROT_F\00", [46 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"VBUS_DET_F\00", [21 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"VBUS_DET_R\00", [21 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"USB_LINK_STATUS\00", [16 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"USB_CH_TH_PROT_R\00", [47 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"USB_CH_TH_PROT_F\00", [47 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"USB_CHARGER_NOT_OKR\00", [44 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VBUS_OVV\00", [23 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CH_WD_EXP\00", [22 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"VBUS_CH_DROP_END\00", [47 x i8] zeroinitializer }, align 32
@ab8500_charger_mainchunplugdet_handler.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.112, ptr @.str.13, ptr @.str.113, i8 2, i8 -123, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ab8500_charger_mainchunplugdet_handler\00", [57 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Main charger unplugged\0A\00", [40 x i8] zeroinitializer }, align 32
@ab8500_charger_mainchplugdet_handler.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.114, ptr @.str.13, ptr @.str.115, i8 2, i8 -118, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ab8500_charger_mainchplugdet_handler\00", [59 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Main charger plugged\0A\00", [42 x i8] zeroinitializer }, align 32
@ab8500_charger_mainextchnotok_handler.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.116, ptr @.str.13, ptr @.str.117, i8 2, i8 -112, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ab8500_charger_mainextchnotok_handler\00", [58 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Main charger not ok\0A\00", [43 x i8] zeroinitializer }, align 32
@ab8500_charger_mainchthprotr_handler.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.118, ptr @.str.13, ptr @.str.119, i8 2, i8 -106, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ab8500_charger_mainchthprotr_handler\00", [59 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Die temp above Main charger thermal protection threshold\0A\00", [38 x i8] zeroinitializer }, align 32
@ab8500_charger_mainchthprotf_handler.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.120, ptr @.str.13, ptr @.str.121, i8 2, i8 -102, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ab8500_charger_mainchthprotf_handler\00", [59 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Die temp ok for Main charger thermal protection threshold\0A\00", [37 x i8] zeroinitializer }, align 32
@ab8500_charger_vbusdetf_handler.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.122, ptr @.str.13, ptr @.str.123, i8 2, i8 -86, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ab8500_charger_vbusdetf_handler\00", [32 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"VBUS falling detected\0A\00", [41 x i8] zeroinitializer }, align 32
@ab8500_charger_vbusdetr_handler.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.124, ptr @.str.13, ptr @.str.125, i8 2, i8 -81, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ab8500_charger_vbusdetr_handler\00", [32 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"VBUS rising detected\0A\00", [42 x i8] zeroinitializer }, align 32
@ab8500_charger_usblinkstatus_handler.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.126, ptr @.str.13, ptr @.str.127, i8 2, i8 -77, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.126 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ab8500_charger_usblinkstatus_handler\00", [59 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"USB link status changed\0A\00", [39 x i8] zeroinitializer }, align 32
@ab8500_charger_usbchthprotr_handler.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.128, ptr @.str.13, ptr @.str.129, i8 2, i8 -72, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ab8500_charger_usbchthprotr_handler\00", [60 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Die temp above USB charger thermal protection threshold\0A\00", [39 x i8] zeroinitializer }, align 32
@ab8500_charger_usbchthprotf_handler.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.130, ptr @.str.13, ptr @.str.131, i8 2, i8 -67, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ab8500_charger_usbchthprotf_handler\00", [60 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Die temp ok for USB charger thermal protection threshold\0A\00", [38 x i8] zeroinitializer }, align 32
@ab8500_charger_usbchargernotokr_handler.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.132, ptr @.str.13, ptr @.str.133, i8 2, i8 -63, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.132 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ab8500_charger_usbchargernotokr_handler\00", [56 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Not allowed USB charger detected\0A\00", [62 x i8] zeroinitializer }, align 32
@ab8500_charger_vbusovv_handler.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.134, ptr @.str.13, ptr @.str.135, i8 2, i8 -45, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ab8500_charger_vbusovv_handler\00", [33 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"VBUS overvoltage detected\0A\00", [37 x i8] zeroinitializer }, align 32
@ab8500_charger_chwdexp_handler.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.136, ptr @.str.13, ptr @.str.137, i8 2, i8 -58, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.136 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ab8500_charger_chwdexp_handler\00", [33 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Charger watchdog expired\0A\00", [38 x i8] zeroinitializer }, align 32
@ab8500_charger_vbuschdropend_handler.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.138, ptr @.str.13, ptr @.str.139, i8 2, i8 -51, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.138 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ab8500_charger_vbuschdropend_handler\00", [59 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"VBUS charger drop ended\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ab8500_chargalg\00", [16 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ab8500_fg\00", [22 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ab8500_btemp\00", [19 x i8] zeroinitializer }, align 32
@ab8500_charger_ac_en._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str.13, i32 1407, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"AC charger not connected\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ab8500_charger_ac_en\00", [43 x i8] zeroinitializer }, align 32
@ab8500_charger_ac_en._entry_ptr = internal global ptr @ab8500_charger_ac_en._entry, section ".printk_index", align 4
@ab8500_charger_ac_en.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.144, ptr @.str.13, ptr @.str.145, i8 1, i8 97, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.145 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Enable AC: %duV %duA\0A\00", [42 x i8] zeroinitializer }, align 32
@ab8500_charger_ac_en._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.144, ptr @.str.13, i32 1428, ptr @.str.148, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to enable regulator\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ab8500_charger_ac_en._entry_ptr.149 = internal global ptr @ab8500_charger_ac_en._entry.146, section ".printk_index", align 4
@ab8500_charger_ac_en._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.144, ptr @.str.13, i32 1441, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Charger voltage or current too high, charging not started\0A\00", [37 x i8] zeroinitializer }, align 32
@ab8500_charger_ac_en._entry_ptr.152 = internal global ptr @ab8500_charger_ac_en._entry.150, section ".printk_index", align 4
@ab8500_charger_ac_en._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.144, ptr @.str.13, i32 1449, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s write failed\0A\00", [47 x i8] zeroinitializer }, align 32
@ab8500_charger_ac_en._entry_ptr.155 = internal global ptr @ab8500_charger_ac_en._entry.153, section ".printk_index", align 4
@ab8500_charger_ac_en._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.144, ptr @.str.13, i32 1457, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s Failed to set MainChInputCurr\0A\00", [62 x i8] zeroinitializer }, align 32
@ab8500_charger_ac_en._entry_ptr.158 = internal global ptr @ab8500_charger_ac_en._entry.156, section ".printk_index", align 4
@ab8500_charger_ac_en._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.144, ptr @.str.13, i32 1465, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s Failed to set ChOutputCurentLevel\0A\00", [58 x i8] zeroinitializer }, align 32
@ab8500_charger_ac_en._entry_ptr.161 = internal global ptr @ab8500_charger_ac_en._entry.159, section ".printk_index", align 4
@ab8500_charger_ac_en._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.144, ptr @.str.13, i32 1477, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@ab8500_charger_ac_en._entry_ptr.163 = internal global ptr @ab8500_charger_ac_en._entry.162, section ".printk_index", align 4
@ab8500_charger_ac_en._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.144, ptr @.str.13, i32 1484, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to enable LED\0A\00", [42 x i8] zeroinitializer }, align 32
@ab8500_charger_ac_en._entry_ptr.166 = internal global ptr @ab8500_charger_ac_en._entry.164, section ".printk_index", align 4
@ab8500_charger_ac_en._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.144, ptr @.str.13, i32 1518, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@ab8500_charger_ac_en._entry_ptr.168 = internal global ptr @ab8500_charger_ac_en._entry.167, section ".printk_index", align 4
@ab8500_charger_ac_en._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.144, ptr @.str.13, i32 1526, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@ab8500_charger_ac_en._entry_ptr.170 = internal global ptr @ab8500_charger_ac_en._entry.169, section ".printk_index", align 4
@ab8500_charger_ac_en._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.144, ptr @.str.13, i32 1535, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@ab8500_charger_ac_en._entry_ptr.172 = internal global ptr @ab8500_charger_ac_en._entry.171, section ".printk_index", align 4
@ab8500_charger_ac_en._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.144, ptr @.str.13, i32 1542, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to disable LED\0A\00", [41 x i8] zeroinitializer }, align 32
@ab8500_charger_ac_en._entry_ptr.175 = internal global ptr @ab8500_charger_ac_en._entry.173, section ".printk_index", align 4
@ab8500_charger_ac_en.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.144, ptr @.str.13, ptr @.str.176, i8 1, i8 -124, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.176 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s Disabled AC charging\0A\00", [39 x i8] zeroinitializer }, align 32
@ab8500_charger_set_current._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.178, ptr @.str.13, i32 1166, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s read failed\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ab8500_charger_set_current\00", [37 x i8] zeroinitializer }, align 32
@ab8500_charger_set_current._entry_ptr = internal global ptr @ab8500_charger_set_current._entry, section ".printk_index", align 4
@ab8500_charger_set_current._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.178, ptr @.str.13, i32 1201, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s current register not valid\0A\00", [33 x i8] zeroinitializer }, align 32
@ab8500_charger_set_current._entry_ptr.181 = internal global ptr @ab8500_charger_set_current._entry.179, section ".printk_index", align 4
@ab8500_charger_set_current._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.178, ptr @.str.13, i32 1207, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"requested current limit out-of-range\0A\00", [58 x i8] zeroinitializer }, align 32
@ab8500_charger_set_current._entry_ptr.184 = internal global ptr @ab8500_charger_set_current._entry.182, section ".printk_index", align 4
@ab8500_charger_set_current.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.178, ptr @.str.13, ptr @.str.185, i8 1, i8 47, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.185 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s current not changed for reg: 0x%02x\0A\00", [56 x i8] zeroinitializer }, align 32
@ab8500_charger_set_current.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.178, ptr @.str.13, ptr @.str.186, i8 1, i8 49, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.186 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s set charger current: %d uA for reg: 0x%02x\0A\00", [49 x i8] zeroinitializer }, align 32
@ab8500_charger_set_current._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.178, ptr @.str.13, i32 1227, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@ab8500_charger_set_current._entry_ptr.188 = internal global ptr @ab8500_charger_set_current._entry.187, section ".printk_index", align 4
@ab8500_charger_set_current.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.178, ptr @.str.13, ptr @.str.189, i8 1, i8 51, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.189 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"curr change_1 to: %x for 0x%02x\0A\00", [63 x i8] zeroinitializer }, align 32
@ab8500_charger_set_current._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.178, ptr @.str.13, i32 1235, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@ab8500_charger_set_current._entry_ptr.191 = internal global ptr @ab8500_charger_set_current._entry.190, section ".printk_index", align 4
@ab8500_charger_set_current.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.178, ptr @.str.13, ptr @.str.192, i8 1, i8 55, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.192 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"curr change_2 to: %x for 0x%02x\0A\00", [63 x i8] zeroinitializer }, align 32
@ab8500_charger_set_current._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.178, ptr @.str.13, i32 1249, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@ab8500_charger_set_current._entry_ptr.194 = internal global ptr @ab8500_charger_set_current._entry.193, section ".printk_index", align 4
@ab8500_charge_input_curr_map = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 50000, i32 98000, i32 193000, i32 290000, i32 380000, i32 450000, i32 500000, i32 600000, i32 700000, i32 800000, i32 900000, i32 1000000, i32 1100000, i32 1300000, i32 1400000, i32 1500000], [32 x i8] zeroinitializer }, align 32
@ab8500_charger_led_en._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.196, ptr @.str.13, i32 1358, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Power ON LED failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ab8500_charger_led_en\00", [42 x i8] zeroinitializer }, align 32
@ab8500_charger_led_en._entry_ptr = internal global ptr @ab8500_charger_led_en._entry, section ".printk_index", align 4
@ab8500_charger_led_en._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.196, ptr @.str.13, i32 1366, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Set LED PWM duty cycle failed\0A\00", [33 x i8] zeroinitializer }, align 32
@ab8500_charger_led_en._entry_ptr.199 = internal global ptr @ab8500_charger_led_en._entry.197, section ".printk_index", align 4
@ab8500_charger_led_en._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.196, ptr @.str.13, i32 1375, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Power-off LED failed\0A\00", [42 x i8] zeroinitializer }, align 32
@ab8500_charger_led_en._entry_ptr.202 = internal global ptr @ab8500_charger_led_en._entry.200, section ".printk_index", align 4
@ab8500_charger_ac_check_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.204, ptr @.str.13, i32 1814, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ab8500 read failed %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ab8500_charger_ac_check_enable\00", [33 x i8] zeroinitializer }, align 32
@ab8500_charger_ac_check_enable._entry_ptr = internal global ptr @ab8500_charger_ac_check_enable._entry, section ".printk_index", align 4
@ab8500_charger_ac_check_enable.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.204, ptr @.str.13, ptr @.str.205, i8 1, i8 -58, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.205 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"AC charger ctrl: 0x%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@ab8500_charger_ac_check_enable._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.204, ptr @.str.13, i32 1820, ptr @.str.208, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Charging has been disabled abnormally and will be re-enabled\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ab8500_charger_ac_check_enable._entry_ptr.209 = internal global ptr @ab8500_charger_ac_check_enable._entry.206, section ".printk_index", align 4
@ab8500_charger_ac_check_enable._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.204, ptr @.str.13, i32 1827, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ab8500 write failed %d\0A\00", [40 x i8] zeroinitializer }, align 32
@ab8500_charger_ac_check_enable._entry_ptr.212 = internal global ptr @ab8500_charger_ac_check_enable._entry.210, section ".printk_index", align 4
@ab8500_charger_ac_check_enable._entry.213 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.204, ptr @.str.13, i32 1834, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enable AC charger %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ab8500_charger_ac_check_enable._entry_ptr.215 = internal global ptr @ab8500_charger_ac_check_enable._entry.213, section ".printk_index", align 4
@ab8500_charger_watchdog_kick._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.217, ptr @.str.13, i32 1863, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to kick WD!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ab8500_charger_watchdog_kick\00", [35 x i8] zeroinitializer }, align 32
@ab8500_charger_watchdog_kick._entry_ptr = internal global ptr @ab8500_charger_watchdog_kick._entry, section ".printk_index", align 4
@ab8500_charger_update_charger_current._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.218, ptr @.str.13, i32 1893, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ab8500_charger_update_charger_current\00", [58 x i8] zeroinitializer }, align 32
@ab8500_charger_update_charger_current._entry_ptr = internal global ptr @ab8500_charger_update_charger_current._entry, section ".printk_index", align 4
@ab8500_charger_update_charger_current._entry.219 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.218, ptr @.str.13, i32 1901, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@ab8500_charger_update_charger_current._entry_ptr.220 = internal global ptr @ab8500_charger_update_charger_current._entry.219, section ".printk_index", align 4
@ab8500_charger_usb_en._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.221, ptr @.str.222, ptr @.str.13, i32 1583, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"USB charger not connected\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ab8500_charger_usb_en\00", [42 x i8] zeroinitializer }, align 32
@ab8500_charger_usb_en._entry_ptr = internal global ptr @ab8500_charger_usb_en._entry, section ".printk_index", align 4
@ab8500_charger_usb_en._entry.223 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.222, ptr @.str.13, i32 1601, ptr @.str.148, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@ab8500_charger_usb_en._entry_ptr.224 = internal global ptr @ab8500_charger_usb_en._entry.223, section ".printk_index", align 4
@ab8500_charger_usb_en.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.222, ptr @.str.13, ptr @.str.225, i8 1, i8 -111, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.225 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Enable USB: %d uV %d uA\0A\00", [39 x i8] zeroinitializer }, align 32
@ab8500_charger_usb_en._entry.226 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.222, ptr @.str.13, i32 1615, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@ab8500_charger_usb_en._entry_ptr.227 = internal global ptr @ab8500_charger_usb_en._entry.226, section ".printk_index", align 4
@ab8500_charger_usb_en._entry.228 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.222, ptr @.str.13, i32 1626, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@ab8500_charger_usb_en._entry_ptr.229 = internal global ptr @ab8500_charger_usb_en._entry.228, section ".printk_index", align 4
@ab8500_charger_usb_en.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.222, ptr @.str.13, ptr @.str.230, i8 1, i8 -104, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.230 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Enabling USB with write to AB8500_USBCH_CTRL1_REG\0A\00", [45 x i8] zeroinitializer }, align 32
@ab8500_charger_usb_en._entry.231 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.222, ptr @.str.13, i32 1639, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@ab8500_charger_usb_en._entry_ptr.232 = internal global ptr @ab8500_charger_usb_en._entry.231, section ".printk_index", align 4
@ab8500_charger_usb_en._entry.233 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.222, ptr @.str.13, i32 1646, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@ab8500_charger_usb_en._entry_ptr.234 = internal global ptr @ab8500_charger_usb_en._entry.233, section ".printk_index", align 4
@ab8500_charger_usb_en._entry.235 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.222, ptr @.str.13, i32 1654, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"setting USBChInputCurr failed\0A\00", [33 x i8] zeroinitializer }, align 32
@ab8500_charger_usb_en._entry_ptr.237 = internal global ptr @ab8500_charger_usb_en._entry.235, section ".printk_index", align 4
@ab8500_charger_usb_en._entry.238 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.222, ptr @.str.13, i32 1663, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@ab8500_charger_usb_en._entry_ptr.239 = internal global ptr @ab8500_charger_usb_en._entry.238, section ".printk_index", align 4
@ab8500_charger_usb_en.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.222, ptr @.str.13, ptr @.str.240, i8 1, i8 -95, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.240 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s Disabled USB charging\0A\00", [38 x i8] zeroinitializer }, align 32
@ab8500_charger_usb_en._entry.241 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.222, ptr @.str.13, i32 1677, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@ab8500_charger_usb_en._entry_ptr.242 = internal global ptr @ab8500_charger_usb_en._entry.241, section ".printk_index", align 4
@ab8500_charger_usb_en._entry.243 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.222, ptr @.str.13, i32 1683, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@ab8500_charger_usb_en._entry_ptr.244 = internal global ptr @ab8500_charger_usb_en._entry.243, section ".printk_index", align 4
@ab8500_charger_usb_en._entry.245 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.222, ptr @.str.13, i32 1687, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@ab8500_charger_usb_en._entry_ptr.246 = internal global ptr @ab8500_charger_usb_en._entry.245, section ".printk_index", align 4
@ab8500_charger_usb_en._entry.247 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.248, ptr @.str.222, ptr @.str.13, i32 1696, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s Failed to reset ChOutputCurentLevel\0A\00", [56 x i8] zeroinitializer }, align 32
@ab8500_charger_usb_en._entry_ptr.249 = internal global ptr @ab8500_charger_usb_en._entry.247, section ".printk_index", align 4
@ab8500_charger_usb_en.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.222, ptr @.str.13, ptr @.str.240, i8 1, i8 -85, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ab8500_charger_set_vbus_in_curr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.251, ptr @.str.13, i32 1300, ptr @.str.208, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"VBUS input current limit set to %d uA\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ab8500_charger_set_vbus_in_curr\00", [32 x i8] zeroinitializer }, align 32
@ab8500_charger_set_vbus_in_curr._entry_ptr = internal global ptr @ab8500_charger_set_vbus_in_curr._entry, section ".printk_index", align 4
@ab8500_charger_usb_check_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.252, ptr @.str.13, i32 1765, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ab8500_charger_usb_check_enable\00", [32 x i8] zeroinitializer }, align 32
@ab8500_charger_usb_check_enable._entry_ptr = internal global ptr @ab8500_charger_usb_check_enable._entry, section ".printk_index", align 4
@ab8500_charger_usb_check_enable.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.252, ptr @.str.13, ptr @.str.253, i8 1, i8 -70, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.253 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"USB charger ctrl: 0x%02x\0A\00", [38 x i8] zeroinitializer }, align 32
@ab8500_charger_usb_check_enable._entry.254 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.252, ptr @.str.13, i32 1771, ptr @.str.208, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@ab8500_charger_usb_check_enable._entry_ptr.255 = internal global ptr @ab8500_charger_usb_check_enable._entry.254, section ".printk_index", align 4
@ab8500_charger_usb_check_enable._entry.256 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.252, ptr @.str.13, i32 1777, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@ab8500_charger_usb_check_enable._entry_ptr.257 = internal global ptr @ab8500_charger_usb_check_enable._entry.256, section ".printk_index", align 4
@ab8500_charger_usb_check_enable._entry.258 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.259, ptr @.str.252, ptr @.str.13, i32 1784, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to enable VBUS charger %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ab8500_charger_usb_check_enable._entry_ptr.260 = internal global ptr @ab8500_charger_usb_check_enable._entry.258, section ".printk_index", align 4
@ab8500_charger_check_hw_failure_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.261, ptr @.str.262, ptr @.str.13, i32 2020, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s ab8500 read failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ab8500_charger_check_hw_failure_work\00", [59 x i8] zeroinitializer }, align 32
@ab8500_charger_check_hw_failure_work._entry_ptr = internal global ptr @ab8500_charger_check_hw_failure_work._entry, section ".printk_index", align 4
@ab8500_charger_check_hw_failure_work._entry.263 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.261, ptr @.str.262, ptr @.str.13, i32 2033, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@ab8500_charger_check_hw_failure_work._entry_ptr.264 = internal global ptr @ab8500_charger_check_hw_failure_work._entry.263, section ".printk_index", align 4
@ab8500_charger_check_usbchargernotok_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.261, ptr @.str.265, ptr @.str.13, i32 2490, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ab8500_charger_check_usbchargernotok_work\00", [54 x i8] zeroinitializer }, align 32
@ab8500_charger_check_usbchargernotok_work._entry_ptr = internal global ptr @ab8500_charger_check_usbchargernotok_work._entry, section ".printk_index", align 4
@ab8500_charger_ac_attached_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.266, ptr @.str.13, i32 2166, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ab8500_charger_ac_attached_work\00", [32 x i8] zeroinitializer }, align 32
@ab8500_charger_ac_attached_work._entry_ptr = internal global ptr @ab8500_charger_ac_attached_work._entry, section ".printk_index", align 4
@ab8500_charger_usb_attached_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.267, ptr @.str.13, i32 2127, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ab8500_charger_usb_attached_work\00", [63 x i8] zeroinitializer }, align 32
@ab8500_charger_usb_attached_work._entry_ptr = internal global ptr @ab8500_charger_usb_attached_work._entry, section ".printk_index", align 4
@ab8500_charger_kick_watchdog_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.268, ptr @.str.13, i32 2072, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ab8500_charger_kick_watchdog_work\00", [62 x i8] zeroinitializer }, align 32
@ab8500_charger_kick_watchdog_work._entry_ptr = internal global ptr @ab8500_charger_kick_watchdog_work._entry, section ".printk_index", align 4
@power_supply_class = external dso_local local_unnamed_addr global ptr, align 4
@ab8500_charger_check_vbat_work.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.269, ptr @.str.13, ptr @.str.270, i8 1, i8 -17, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.269 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ab8500_charger_check_vbat_work\00", [33 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Vbat did cross threshold, curr: %d, new: %d, old: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ab8500_charger_set_usb_connected.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.271, ptr @.str.13, ptr @.str.272, i8 0, i8 111, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.271 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ab8500_charger_set_usb_connected\00", [63 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"USB connected:%i\0A\00", [46 x i8] zeroinitializer }, align 32
@ab8500_charger_usb_state_changed_work.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.273, ptr @.str.13, ptr @.str.274, i8 2, i8 93, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.273 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ab8500_charger_usb_state_changed_work\00", [58 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s !di->vbus_detected\0A\00", [41 x i8] zeroinitializer }, align 32
@ab8500_charger_usb_state_changed_work.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.273, ptr @.str.13, ptr @.str.275, i8 2, i8 95, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.275 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s USB state: 0x%02x uA: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@ab8500_charger_vbus_drop_end_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.276, ptr @.str.13, i32 2689, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ab8500_charger_vbus_drop_end_work\00", [62 x i8] zeroinitializer }, align 32
@ab8500_charger_vbus_drop_end_work._entry_ptr = internal global ptr @ab8500_charger_vbus_drop_end_work._entry, section ".printk_index", align 4
@ab8500_charger_vbus_drop_end_work.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.276, ptr @.str.13, ptr @.str.277, i8 2, i8 -93, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.277 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"VBUS input current limiting to %d uA\0A\00", [58 x i8] zeroinitializer }, align 32
@ab8500_charger_vbus_drop_end_work.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.276, ptr @.str.13, ptr @.str.278, i8 2, i8 -91, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.278 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"VBUS input current limited to %d uA\0A\00", [59 x i8] zeroinitializer }, align 32
@ab8500_charger_usb_link_status_work.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.279, ptr @.str.13, ptr @.str.280, i8 2, i8 66, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.279 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ab8500_charger_usb_link_status_work\00", [60 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"UsbLineStatus register = 0x%02x\0A\00", [63 x i8] zeroinitializer }, align 32
@ab8500_charger_usb_link_status_work.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.279, ptr @.str.13, ptr @.str.281, i8 2, i8 66, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.281 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error reading USB link status\0A\00", [33 x i8] zeroinitializer }, align 32
@ab8500_charger_usb_link_status_work.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.279, ptr @.str.13, ptr @.str.282, i8 2, i8 69, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.282 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Invalid charger detected, state= 0\0A\00", [60 x i8] zeroinitializer }, align 32
@ab8500_charger_usb_link_status_work.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.279, ptr @.str.13, ptr @.str.283, i8 2, i8 73, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.283 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Invalid charger detected, state= 1\0A\00", [60 x i8] zeroinitializer }, align 32
@ab8500_charger_usb_link_status_work.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.279, ptr @.str.13, ptr @.str.284, i8 2, i8 77, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.284 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"USB link status= 0x%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@ab8500_charger_usb_link_status_work.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.279, ptr @.str.13, ptr @.str.285, i8 2, i8 81, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.285 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s di->vbus_detected = true\0A\00", [35 x i8] zeroinitializer }, align 32
@ab8500_charger_usb_link_status_work.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.279, ptr @.str.13, ptr @.str.286, i8 2, i8 85, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.286 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"Potential Legacy Charger device. Delay work for %d msec for USB enum to finish\00", [49 x i8] zeroinitializer }, align 32
@ab8500_charger_usb_link_status_work.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.279, ptr @.str.13, ptr @.str.287, i8 2, i8 87, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.287 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s Wait %d msec for USB enum to finish\00", [57 x i8] zeroinitializer }, align 32
@ab8500_charger_read_usb_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.261, ptr @.str.288, ptr @.str.13, i32 838, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ab8500_charger_read_usb_type\00", [35 x i8] zeroinitializer }, align 32
@ab8500_charger_read_usb_type._entry_ptr = internal global ptr @ab8500_charger_read_usb_type._entry, section ".printk_index", align 4
@ab8500_charger_read_usb_type._entry.289 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.261, ptr @.str.288, ptr @.str.13, i32 848, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@ab8500_charger_read_usb_type._entry_ptr.290 = internal global ptr @ab8500_charger_read_usb_type._entry.289, section ".printk_index", align 4
@ab8500_charger_max_usb_curr.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.291, ptr @.str.13, ptr @.str.292, i8 0, i8 -77, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.291 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ab8500_charger_max_usb_curr\00", [36 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"USB Type - Standard host is detected through USB driver\0A\00", [39 x i8] zeroinitializer }, align 32
@ab8500_charger_max_usb_curr.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.291, ptr @.str.13, ptr @.str.293, i8 0, i8 -72, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.293 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"USB_STAT_ACA_RID_A detected\0A\00", [35 x i8] zeroinitializer }, align 32
@ab8500_charger_max_usb_curr.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.291, ptr @.str.13, ptr @.str.294, i8 0, i8 -69, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.294 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"USB Type - 0x%02x MaxCurr: %d\00", [34 x i8] zeroinitializer }, align 32
@ab8500_charger_max_usb_curr.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.291, ptr @.str.13, ptr @.str.295, i8 0, i8 -64, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.295 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"USB Type - Legacy charger.\0A\00", [36 x i8] zeroinitializer }, align 32
@ab8500_charger_max_usb_curr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.296, ptr @.str.291, ptr @.str.13, i32 775, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"USB Type - Charging not allowed\0A\00", [63 x i8] zeroinitializer }, align 32
@ab8500_charger_max_usb_curr._entry_ptr = internal global ptr @ab8500_charger_max_usb_curr._entry, section ".printk_index", align 4
@ab8500_charger_max_usb_curr._entry.297 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.298, ptr @.str.291, ptr @.str.13, i32 783, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"USB Type - USB_STAT_RESERVED VBUS has collapsed\0A\00", [47 x i8] zeroinitializer }, align 32
@ab8500_charger_max_usb_curr._entry_ptr.299 = internal global ptr @ab8500_charger_max_usb_curr._entry.297, section ".printk_index", align 4
@ab8500_charger_max_usb_curr.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.291, ptr @.str.13, ptr @.str.296, i8 0, i8 -60, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ab8500_charger_max_usb_curr.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.291, ptr @.str.13, ptr @.str.294, i8 0, i8 -58, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ab8500_charger_max_usb_curr.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.291, ptr @.str.13, ptr @.str.294, i8 0, i8 -56, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ab8500_charger_max_usb_curr._entry.300 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.301, ptr @.str.291, ptr @.str.13, i32 805, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"USB Type invalid - try charging anyway\0A\00", [56 x i8] zeroinitializer }, align 32
@ab8500_charger_max_usb_curr._entry_ptr.302 = internal global ptr @ab8500_charger_max_usb_curr._entry.300, section ".printk_index", align 4
@ab8500_charger_max_usb_curr._entry.303 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.304, ptr @.str.291, ptr @.str.13, i32 810, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"USB Type - Unknown\0A\00", [44 x i8] zeroinitializer }, align 32
@ab8500_charger_max_usb_curr._entry_ptr.305 = internal global ptr @ab8500_charger_max_usb_curr._entry.303, section ".printk_index", align 4
@ab8500_charger_max_usb_curr.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.291, ptr @.str.13, ptr @.str.294, i8 0, i8 -52, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ab8500_charger_detect_usb_type_work.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.306, ptr @.str.13, ptr @.str.307, i8 2, i8 41, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.306 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ab8500_charger_detect_usb_type_work\00", [60 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s di->vbus_detected = false\0A\00", [34 x i8] zeroinitializer }, align 32
@ab8500_charger_detect_usb_type_work.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.306, ptr @.str.13, ptr @.str.285, i8 2, i8 42, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ab8500_charger_detect_usb_type.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.308, ptr @.str.13, ptr @.str.309, i8 0, i8 -35, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.308 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ab8500_charger_detect_usb_type\00", [33 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s AB8500_IT_SOURCE21_REG %x\0A\00", [34 x i8] zeroinitializer }, align 32
@ab8500_charger_detect_usb_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.261, ptr @.str.308, ptr @.str.13, i32 888, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@ab8500_charger_detect_usb_type._entry_ptr = internal global ptr @ab8500_charger_detect_usb_type._entry, section ".printk_index", align 4
@ab8500_charger_detect_usb_type._entry.310 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.261, ptr @.str.308, ptr @.str.13, i32 899, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@ab8500_charger_detect_usb_type._entry_ptr.311 = internal global ptr @ab8500_charger_detect_usb_type._entry.310, section ".printk_index", align 4
@ab8500_charger_detect_usb_type.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.308, ptr @.str.13, ptr @.str.312, i8 0, i8 -31, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.312 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s AB8500_USB_LINE_STAT_REG %x\0A\00", [32 x i8] zeroinitializer }, align 32
@ab8500_charger_check_main_thermal_prot_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.261, ptr @.str.313, ptr @.str.13, i32 2528, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ab8500_charger_check_main_thermal_prot_work\00", [52 x i8] zeroinitializer }, align 32
@ab8500_charger_check_main_thermal_prot_work._entry_ptr = internal global ptr @ab8500_charger_check_main_thermal_prot_work._entry, section ".printk_index", align 4
@ab8500_charger_check_usb_thermal_prot_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.261, ptr @.str.314, ptr @.str.13, i32 2558, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ab8500_charger_check_usb_thermal_prot_work\00", [53 x i8] zeroinitializer }, align 32
@ab8500_charger_check_usb_thermal_prot_work._entry_ptr = internal global ptr @ab8500_charger_check_usb_thermal_prot_work._entry, section ".printk_index", align 4
@ab8500_charger_init_hw_registers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.315, ptr @.str.316, ptr @.str.13, i32 3066, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to set CH_VOLT_LVL_MAX_REG\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ab8500_charger_init_hw_registers\00", [63 x i8] zeroinitializer }, align 32
@ab8500_charger_init_hw_registers._entry_ptr = internal global ptr @ab8500_charger_init_hw_registers._entry, section ".printk_index", align 4
@ab8500_charger_init_hw_registers._entry.317 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.318, ptr @.str.316, ptr @.str.13, i32 3075, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to set CH_OPT_CRNTLVL_MAX_REG\0A\00", [58 x i8] zeroinitializer }, align 32
@ab8500_charger_init_hw_registers._entry_ptr.319 = internal global ptr @ab8500_charger_init_hw_registers._entry.317, section ".printk_index", align 4
@ab8500_charger_init_hw_registers._entry.320 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.321, ptr @.str.316, ptr @.str.13, i32 3096, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to set automatic current limitation\0A\00", [52 x i8] zeroinitializer }, align 32
@ab8500_charger_init_hw_registers._entry_ptr.322 = internal global ptr @ab8500_charger_init_hw_registers._entry.320, section ".printk_index", align 4
@ab8500_charger_init_hw_registers._entry.323 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.324, ptr @.str.316, ptr @.str.13, i32 3104, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable main WD in OTP\0A\00", [63 x i8] zeroinitializer }, align 32
@ab8500_charger_init_hw_registers._entry_ptr.325 = internal global ptr @ab8500_charger_init_hw_registers._entry.323, section ".printk_index", align 4
@ab8500_charger_init_hw_registers._entry.326 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.327, ptr @.str.316, ptr @.str.13, i32 3113, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.327 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enable main watchdog\0A\00", [32 x i8] zeroinitializer }, align 32
@ab8500_charger_init_hw_registers._entry_ptr.328 = internal global ptr @ab8500_charger_init_hw_registers._entry.326, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ab8500_charger_init_hw_registers._entry.329 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.330, ptr @.str.316, ptr @.str.13, i32 3131, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.330 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to kick main watchdog\0A\00", [34 x i8] zeroinitializer }, align 32
@ab8500_charger_init_hw_registers._entry_ptr.331 = internal global ptr @ab8500_charger_init_hw_registers._entry.329, section ".printk_index", align 4
@ab8500_charger_init_hw_registers._entry.332 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.333, ptr @.str.316, ptr @.str.13, i32 3140, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to disable main watchdog\0A\00", [63 x i8] zeroinitializer }, align 32
@ab8500_charger_init_hw_registers._entry_ptr.334 = internal global ptr @ab8500_charger_init_hw_registers._entry.332, section ".printk_index", align 4
@ab8500_charger_init_hw_registers._entry.335 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.336, ptr @.str.316, ptr @.str.13, i32 3148, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to set charger watchdog timeout\0A\00", [56 x i8] zeroinitializer }, align 32
@ab8500_charger_init_hw_registers._entry_ptr.337 = internal global ptr @ab8500_charger_init_hw_registers._entry.335, section ".printk_index", align 4
@ab8500_charger_init_hw_registers._entry.338 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.316, ptr @.str.13, i32 3154, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@ab8500_charger_init_hw_registers._entry_ptr.339 = internal global ptr @ab8500_charger_init_hw_registers._entry.338, section ".printk_index", align 4
@ab8500_charger_init_hw_registers._entry.340 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.341, ptr @.str.316, ptr @.str.13, i32 3163, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.341 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to setup backup battery charging\0A\00", [55 x i8] zeroinitializer }, align 32
@ab8500_charger_init_hw_registers._entry_ptr.342 = internal global ptr @ab8500_charger_init_hw_registers._entry.340, section ".printk_index", align 4
@ab8500_charger_init_hw_registers._entry.343 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.344, ptr @.str.316, ptr @.str.13, i32 3172, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.344 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s mask and set failed\0A\00", [40 x i8] zeroinitializer }, align 32
@ab8500_charger_init_hw_registers._entry_ptr.345 = internal global ptr @ab8500_charger_init_hw_registers._entry.343, section ".printk_index", align 4
@.str.346 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ab8500_ac\00", [22 x i8] zeroinitializer }, align 32
@ab8500_charger_ac_props = internal global { [6 x i32], [40 x i8] } { [6 x i32] [i32 2, i32 3, i32 4, i32 12, i32 13, i32 17], [40 x i8] zeroinitializer }, align 32
@ab8500_charger_get_ac_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.347, ptr @.str.348, ptr @.str.13, i32 492, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.347 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s ADC conv failed,\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.348 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ab8500_charger_get_ac_voltage\00", [34 x i8] zeroinitializer }, align 32
@ab8500_charger_get_ac_voltage._entry_ptr = internal global ptr @ab8500_charger_get_ac_voltage._entry, section ".printk_index", align 4
@ab8500_charger_ac_cv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.261, ptr @.str.349, ptr @.str.13, i32 516, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.349 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ab8500_charger_ac_cv\00", [43 x i8] zeroinitializer }, align 32
@ab8500_charger_ac_cv._entry_ptr = internal global ptr @ab8500_charger_ac_cv._entry, section ".printk_index", align 4
@ab8500_charger_get_ac_current._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.347, ptr @.str.350, ptr @.str.13, i32 590, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.350 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ab8500_charger_get_ac_current\00", [34 x i8] zeroinitializer }, align 32
@ab8500_charger_get_ac_current._entry_ptr = internal global ptr @ab8500_charger_get_ac_current._entry, section ".printk_index", align 4
@.str.351 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ab8500_usb\00", [21 x i8] zeroinitializer }, align 32
@ab8500_charger_usb_props = internal global { [7 x i32], [36 x i8] } { [7 x i32] [i32 2, i32 18, i32 3, i32 4, i32 12, i32 13, i32 17], [36 x i8] zeroinitializer }, align 32
@ab8500_charger_get_vbus_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.347, ptr @.str.352, ptr @.str.13, i32 544, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.352 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ab8500_charger_get_vbus_voltage\00", [32 x i8] zeroinitializer }, align 32
@ab8500_charger_get_vbus_voltage._entry_ptr = internal global ptr @ab8500_charger_get_vbus_voltage._entry, section ".printk_index", align 4
@ab8500_charger_usb_cv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.261, ptr @.str.353, ptr @.str.13, i32 614, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.353 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ab8500_charger_usb_cv\00", [42 x i8] zeroinitializer }, align 32
@ab8500_charger_usb_cv._entry_ptr = internal global ptr @ab8500_charger_usb_cv._entry, section ".printk_index", align 4
@ab8500_charger_get_usb_current._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.347, ptr @.str.354, ptr @.str.13, i32 567, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.354 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ab8500_charger_get_usb_current\00", [33 x i8] zeroinitializer }, align 32
@ab8500_charger_get_usb_current._entry_ptr = internal global ptr @ab8500_charger_get_usb_current._entry, section ".printk_index", align 4
@ab8500_charger_detect_chargers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.261, ptr @.str.355, ptr @.str.13, i32 656, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.355 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ab8500_charger_detect_chargers\00", [33 x i8] zeroinitializer }, align 32
@ab8500_charger_detect_chargers._entry_ptr = internal global ptr @ab8500_charger_detect_chargers._entry, section ".printk_index", align 4
@ab8500_charger_detect_chargers._entry.356 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.261, ptr @.str.355, ptr @.str.13, i32 677, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@ab8500_charger_detect_chargers._entry_ptr.357 = internal global ptr @ab8500_charger_detect_chargers._entry.356, section ".printk_index", align 4
@ab8500_charger_detect_chargers.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.355, ptr @.str.13, ptr @.str.358, i8 0, i8 -86, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.358 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s AB8500_CH_USBCH_STAT1_REG %x\0A\00", [63 x i8] zeroinitializer }, align 32
@ab8500_enable_disable_sw_fallback.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.359, ptr @.str.13, ptr @.str.360, i8 0, i8 89, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.359 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ab8500_enable_disable_sw_fallback\00", [62 x i8] zeroinitializer }, align 32
@.str.360 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SW Fallback: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ab8500_enable_disable_sw_fallback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.361, ptr @.str.359, ptr @.str.13, i32 374, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.361 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%d read failed\0A\00", [16 x i8] zeroinitializer }, align 32
@ab8500_enable_disable_sw_fallback._entry_ptr = internal global ptr @ab8500_enable_disable_sw_fallback._entry, section ".printk_index", align 4
@ab8500_enable_disable_sw_fallback._entry.362 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.363, ptr @.str.359, ptr @.str.13, i32 382, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.363 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%d write failed\0A\00", [47 x i8] zeroinitializer }, align 32
@ab8500_enable_disable_sw_fallback._entry_ptr.364 = internal global ptr @ab8500_enable_disable_sw_fallback._entry.362, section ".printk_index", align 4
@ab8500_enable_disable_sw_fallback._entry.365 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.363, ptr @.str.359, ptr @.str.13, i32 395, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@ab8500_enable_disable_sw_fallback._entry_ptr.366 = internal global ptr @ab8500_enable_disable_sw_fallback._entry.365, section ".printk_index", align 4
@ab8500_enable_disable_sw_fallback._entry.367 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.363, ptr @.str.359, ptr @.str.13, i32 403, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@ab8500_enable_disable_sw_fallback._entry_ptr.368 = internal global ptr @ab8500_enable_disable_sw_fallback._entry.367, section ".printk_index", align 4
@ab8500_external_charger_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.369, ptr @.str.370, ptr @.str.13, i32 1729, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.369 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"write reg failed %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.370 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ab8500_external_charger_prepare\00", [32 x i8] zeroinitializer }, align 32
@ab8500_external_charger_prepare._entry_ptr = internal global ptr @ab8500_external_charger_prepare._entry, section ".printk_index", align 4
@ab8500_external_charger_prepare._entry.371 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.372, ptr @.str.370, ptr @.str.13, i32 1736, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.372 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Write reg failed %d\0A\00", [43 x i8] zeroinitializer }, align 32
@ab8500_external_charger_prepare._entry_ptr.373 = internal global ptr @ab8500_external_charger_prepare._entry.371, section ".printk_index", align 4
@ab8500_charger_usb_notifier_call.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.374, ptr @.str.13, ptr @.str.375, i8 3, i8 35, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.374 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ab8500_charger_usb_notifier_call\00", [63 x i8] zeroinitializer }, align 32
@.str.375 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"not a standard host, returning\0A\00", [32 x i8] zeroinitializer }, align 32
@ab8500_charger_usb_notifier_call.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.374, ptr @.str.13, ptr @.str.376, i8 3, i8 40, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.376 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s usb_state: 0x%02x mA: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.377 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ab8500_charger_wq\00", [46 x i8] zeroinitializer }, align 32
@ab8500_charger_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.378, ptr @.str.379, ptr @.str.13, i32 3348, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.378 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create work queue\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.379 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ab8500_charger_bind\00", [44 x i8] zeroinitializer }, align 32
@ab8500_charger_bind._entry_ptr = internal global ptr @ab8500_charger_bind._entry, section ".printk_index", align 4
@ab8500_charger_bind._entry.380 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.381, ptr @.str.379, ptr @.str.13, i32 3373, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.381 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"can't bind component devices\0A\00", [34 x i8] zeroinitializer }, align 32
@ab8500_charger_bind._entry_ptr.382 = internal global ptr @ab8500_charger_bind._entry.380, section ".printk_index", align 4
@ab8500_charger_unbind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.344, ptr @.str.383, ptr @.str.13, i32 3395, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.383 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ab8500_charger_unbind\00", [42 x i8] zeroinitializer }, align 32
@ab8500_charger_unbind._entry_ptr = internal global ptr @ab8500_charger_unbind._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@ab8500_charger_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.384, ptr @.str.13, i32 3268, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.384 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ab8500_charger_resume\00", [42 x i8] zeroinitializer }, align 32
@ab8500_charger_resume._entry_ptr = internal global ptr @ab8500_charger_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.385 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.386 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.387 = internal global [7 x i64] [i64 5, i64 32, i64 100000, i64 200000, i64 300000, i64 400000, i64 500000]
@__sancov_gen_cov_switch_values.388 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967290]
@__sancov_gen_cov_switch_values.389 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.390 = internal global [5 x i64] [i64 3, i64 32, i64 66, i64 130, i64 194]
@__sancov_gen_cov_switch_values.391 = internal global [4 x i64] [i64 2, i64 32, i64 100000, i64 500000]
@__sancov_gen_cov_switch_values.392 = internal global [22 x i64] [i64 20, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 19, i64 20, i64 21, i64 22]
@__sancov_gen_cov_switch_values.393 = internal global [8 x i64] [i64 6, i64 32, i64 2, i64 3, i64 4, i64 12, i64 13, i64 17]
@__sancov_gen_cov_switch_values.394 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 3, i64 4, i64 12, i64 13, i64 17, i64 18]
@___asan_gen_.395 = private unnamed_addr constant [33 x i8] c"ab8500_charger_component_drivers\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3411, i32 38 }
@___asan_gen_.398 = private unnamed_addr constant [22 x i8] c"ab8500_charger_driver\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3744, i32 31 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3748, i32 11 }
@___asan_gen_.404 = private unnamed_addr constant [21 x i8] c"ab8500_charger_match\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3738, i32 34 }
@___asan_gen_.407 = private unnamed_addr constant [22 x i8] c"ab8500_charger_pm_ops\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3736, i32 8 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3439, i32 48 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3446, i32 53 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3449, i32 9 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3452, i32 53 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3455, i32 9 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3458, i32 45 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3461, i32 9 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3464, i32 52 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3467, i32 9 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3476, i32 37 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3479, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant [19 x i8] c"ab8500_charger_irq\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3183, i32 41 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3495, i32 4 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3499, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3504, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3505, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant [17 x i8] c"supply_interface\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3316, i32 14 }
@___asan_gen_.488 = private unnamed_addr constant [27 x i8] c"ab8500_charger_voltage_map\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 930, i32 12 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3555, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3558, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3560, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3563, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3565, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3577, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3580, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3583, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3586, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3589, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3593, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3595, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3596, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3600, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3602, i32 2 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3609, i32 3 }
@___asan_gen_.641 = private unnamed_addr constant [19 x i8] c"ab8500_ac_chg_desc\00", align 1
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3322, i32 39 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3619, i32 4 }
@___asan_gen_.650 = private unnamed_addr constant [20 x i8] c"ab8500_usb_chg_desc\00", align 1
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3330, i32 39 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3629, i32 3 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3640, i32 10 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3648, i32 49 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3667, i32 3 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3672, i32 3 }
@___asan_gen_.677 = private unnamed_addr constant [11 x i8] c"charger_nb\00", align 1
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3312, i32 30 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3685, i32 3 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3692, i32 3 }
@___asan_gen_.692 = private unnamed_addr constant [24 x i8] c"ab8500_charger_comp_ops\00", align 1
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3406, i32 42 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3701, i32 3 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3184, i32 3 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3185, i32 3 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3186, i32 3 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3187, i32 3 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3188, i32 3 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3189, i32 3 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3190, i32 3 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3191, i32 3 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3192, i32 3 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3193, i32 3 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3194, i32 3 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3195, i32 3 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3196, i32 3 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3197, i32 3 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 2580, i32 2 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 2601, i32 2 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 2625, i32 2 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 2647, i32 2 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 2666, i32 2 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 2731, i32 2 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 2749, i32 2 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 2767, i32 2 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 2786, i32 2 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 2805, i32 2 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 2823, i32 2 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 2893, i32 2 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 2840, i32 2 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 2869, i32 2 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3317, i32 2 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3318, i32 2 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3319, i32 2 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1407, i32 4 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1412, i32 3 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1427, i32 5 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1439, i32 4 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1449, i32 4 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1456, i32 4 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1463, i32 4 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1477, i32 4 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1484, i32 4 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1517, i32 5 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1524, i32 5 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1534, i32 5 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1542, i32 4 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1553, i32 3 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1166, i32 3 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1201, i32 3 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1207, i32 3 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1214, i32 3 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1220, i32 2 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1227, i32 4 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1230, i32 4 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1235, i32 5 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1244, i32 4 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1249, i32 5 }
@___asan_gen_.950 = private unnamed_addr constant [29 x i8] c"ab8500_charge_input_curr_map\00", align 1
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1033, i32 12 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1358, i32 4 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1366, i32 4 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1375, i32 4 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1814, i32 3 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1817, i32 2 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1820, i32 3 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1827, i32 4 }
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1833, i32 4 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1863, i32 3 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1891, i32 3 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1901, i32 3 }
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1583, i32 4 }
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1600, i32 5 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1607, i32 3 }
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1613, i32 4 }
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1626, i32 4 }
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1634, i32 3 }
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1639, i32 4 }
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1646, i32 4 }
@___asan_gen_.1060 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1654, i32 4 }
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1661, i32 4 }
@___asan_gen_.1066 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1671, i32 3 }
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1676, i32 4 }
@___asan_gen_.1072 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1683, i32 4 }
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1687, i32 4 }
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1694, i32 4 }
@___asan_gen_.1090 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1300, i32 2 }
@___asan_gen_.1096 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1765, i32 3 }
@___asan_gen_.1099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1768, i32 2 }
@___asan_gen_.1102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1771, i32 3 }
@___asan_gen_.1105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1777, i32 4 }
@___asan_gen_.1111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1783, i32 4 }
@___asan_gen_.1120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 2020, i32 4 }
@___asan_gen_.1123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 2033, i32 4 }
@___asan_gen_.1129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 2490, i32 3 }
@___asan_gen_.1135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 2166, i32 4 }
@___asan_gen_.1141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 2127, i32 4 }
@___asan_gen_.1147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 2072, i32 3 }
@___asan_gen_.1153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1980, i32 3 }
@___asan_gen_.1159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 446, i32 3 }
@___asan_gen_.1165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 2419, i32 3 }
@___asan_gen_.1168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 2430, i32 2 }
@___asan_gen_.1174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 2689, i32 3 }
@___asan_gen_.1177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 2699, i32 3 }
@___asan_gen_.1180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 2709, i32 3 }
@___asan_gen_.1186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 2313, i32 3 }
@___asan_gen_.1189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 2315, i32 3 }
@___asan_gen_.1192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 2326, i32 4 }
@___asan_gen_.1195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 2342, i32 4 }
@___asan_gen_.1198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 2358, i32 4 }
@___asan_gen_.1201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 2373, i32 2 }
@___asan_gen_.1204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 2386, i32 3 }
@___asan_gen_.1207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 2397, i32 3 }
@___asan_gen_.1213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 838, i32 3 }
@___asan_gen_.1216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 848, i32 3 }
@___asan_gen_.1222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 716, i32 3 }
@___asan_gen_.1225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 738, i32 3 }
@___asan_gen_.1228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 748, i32 3 }
@___asan_gen_.1231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 768, i32 4 }
@___asan_gen_.1237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 775, i32 3 }
@___asan_gen_.1243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 782, i32 4 }
@___asan_gen_.1249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 805, i32 3 }
@___asan_gen_.1255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 810, i32 3 }
@___asan_gen_.1261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 2213, i32 3 }
@___asan_gen_.1267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 885, i32 3 }
@___asan_gen_.1270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 888, i32 4 }
@___asan_gen_.1273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 899, i32 4 }
@___asan_gen_.1276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 902, i32 3 }
@___asan_gen_.1282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 2528, i32 3 }
@___asan_gen_.1288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 2558, i32 3 }
@___asan_gen_.1297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3065, i32 4 }
@___asan_gen_.1303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3074, i32 4 }
@___asan_gen_.1309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3095, i32 3 }
@___asan_gen_.1315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3104, i32 3 }
@___asan_gen_.1321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3113, i32 3 }
@___asan_gen_.1327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3131, i32 3 }
@___asan_gen_.1333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3140, i32 3 }
@___asan_gen_.1339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3148, i32 3 }
@___asan_gen_.1342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3154, i32 3 }
@___asan_gen_.1348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3163, i32 3 }
@___asan_gen_.1354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3172, i32 3 }
@___asan_gen_.1357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3323, i32 11 }
@___asan_gen_.1358 = private unnamed_addr constant [24 x i8] c"ab8500_charger_ac_props\00", align 1
@___asan_gen_.1360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 326, i32 35 }
@___asan_gen_.1369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 492, i32 4 }
@___asan_gen_.1375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 516, i32 4 }
@___asan_gen_.1381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 590, i32 4 }
@___asan_gen_.1384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3331, i32 11 }
@___asan_gen_.1385 = private unnamed_addr constant [25 x i8] c"ab8500_charger_usb_props\00", align 1
@___asan_gen_.1387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 336, i32 35 }
@___asan_gen_.1393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 544, i32 4 }
@___asan_gen_.1399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 614, i32 4 }
@___asan_gen_.1405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 567, i32 4 }
@___asan_gen_.1411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 656, i32 3 }
@___asan_gen_.1414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 677, i32 3 }
@___asan_gen_.1417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 680, i32 2 }
@___asan_gen_.1423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 359, i32 2 }
@___asan_gen_.1429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 374, i32 3 }
@___asan_gen_.1435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 382, i32 4 }
@___asan_gen_.1438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 395, i32 3 }
@___asan_gen_.1441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 403, i32 4 }
@___asan_gen_.1450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1729, i32 3 }
@___asan_gen_.1456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1736, i32 3 }
@___asan_gen_.1462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3214, i32 3 }
@___asan_gen_.1465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3232, i32 2 }
@___asan_gen_.1468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3345, i32 19 }
@___asan_gen_.1477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3348, i32 3 }
@___asan_gen_.1483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3373, i32 3 }
@___asan_gen_.1489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3395, i32 3 }
@___asan_gen_.1490 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1493 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1494 = private constant [41 x i8] c"../drivers/power/supply/ab8500_charger.c\00", align 1
@___asan_gen_.1495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 3268, i32 4 }
@llvm.compiler.used = appending global [476 x ptr] [ptr @__UNIQUE_ID_alias360, ptr @__UNIQUE_ID_author359, ptr @__UNIQUE_ID_description361, ptr @__UNIQUE_ID_file357, ptr @__UNIQUE_ID_license358, ptr @__exitcall_ab8500_charger_exit, ptr @__initcall__kmod_ab8500_charger__356_3773_ab8500_charger_init6, ptr @ab8500_charger_ac_attached_work._entry, ptr @ab8500_charger_ac_attached_work._entry_ptr, ptr @ab8500_charger_ac_check_enable._entry, ptr @ab8500_charger_ac_check_enable._entry.206, ptr @ab8500_charger_ac_check_enable._entry.210, ptr @ab8500_charger_ac_check_enable._entry.213, ptr @ab8500_charger_ac_check_enable._entry_ptr, ptr @ab8500_charger_ac_check_enable._entry_ptr.209, ptr @ab8500_charger_ac_check_enable._entry_ptr.212, ptr @ab8500_charger_ac_check_enable._entry_ptr.215, ptr @ab8500_charger_ac_cv._entry, ptr @ab8500_charger_ac_cv._entry_ptr, ptr @ab8500_charger_ac_en._entry, ptr @ab8500_charger_ac_en._entry.146, ptr @ab8500_charger_ac_en._entry.150, ptr @ab8500_charger_ac_en._entry.153, ptr @ab8500_charger_ac_en._entry.156, ptr @ab8500_charger_ac_en._entry.159, ptr @ab8500_charger_ac_en._entry.162, ptr @ab8500_charger_ac_en._entry.164, ptr @ab8500_charger_ac_en._entry.167, ptr @ab8500_charger_ac_en._entry.169, ptr @ab8500_charger_ac_en._entry.171, ptr @ab8500_charger_ac_en._entry.173, ptr @ab8500_charger_ac_en._entry_ptr, ptr @ab8500_charger_ac_en._entry_ptr.149, ptr @ab8500_charger_ac_en._entry_ptr.152, ptr @ab8500_charger_ac_en._entry_ptr.155, ptr @ab8500_charger_ac_en._entry_ptr.158, ptr @ab8500_charger_ac_en._entry_ptr.161, ptr @ab8500_charger_ac_en._entry_ptr.163, ptr @ab8500_charger_ac_en._entry_ptr.166, ptr @ab8500_charger_ac_en._entry_ptr.168, ptr @ab8500_charger_ac_en._entry_ptr.170, ptr @ab8500_charger_ac_en._entry_ptr.172, ptr @ab8500_charger_ac_en._entry_ptr.175, ptr @ab8500_charger_bind._entry, ptr @ab8500_charger_bind._entry.380, ptr @ab8500_charger_bind._entry_ptr, ptr @ab8500_charger_bind._entry_ptr.382, ptr @ab8500_charger_check_hw_failure_work._entry, ptr @ab8500_charger_check_hw_failure_work._entry.263, ptr @ab8500_charger_check_hw_failure_work._entry_ptr, ptr @ab8500_charger_check_hw_failure_work._entry_ptr.264, ptr @ab8500_charger_check_main_thermal_prot_work._entry, ptr @ab8500_charger_check_main_thermal_prot_work._entry_ptr, ptr @ab8500_charger_check_usb_thermal_prot_work._entry, ptr @ab8500_charger_check_usb_thermal_prot_work._entry_ptr, ptr @ab8500_charger_check_usbchargernotok_work._entry, ptr @ab8500_charger_check_usbchargernotok_work._entry_ptr, ptr @ab8500_charger_detect_chargers._entry, ptr @ab8500_charger_detect_chargers._entry.356, ptr @ab8500_charger_detect_chargers._entry_ptr, ptr @ab8500_charger_detect_chargers._entry_ptr.357, ptr @ab8500_charger_detect_usb_type._entry, ptr @ab8500_charger_detect_usb_type._entry.310, ptr @ab8500_charger_detect_usb_type._entry_ptr, ptr @ab8500_charger_detect_usb_type._entry_ptr.311, ptr @ab8500_charger_exit, ptr @ab8500_charger_get_ac_current._entry, ptr @ab8500_charger_get_ac_current._entry_ptr, ptr @ab8500_charger_get_ac_voltage._entry, ptr @ab8500_charger_get_ac_voltage._entry_ptr, ptr @ab8500_charger_get_usb_current._entry, ptr @ab8500_charger_get_usb_current._entry_ptr, ptr @ab8500_charger_get_vbus_voltage._entry, ptr @ab8500_charger_get_vbus_voltage._entry_ptr, ptr @ab8500_charger_init_hw_registers._entry, ptr @ab8500_charger_init_hw_registers._entry.317, ptr @ab8500_charger_init_hw_registers._entry.320, ptr @ab8500_charger_init_hw_registers._entry.323, ptr @ab8500_charger_init_hw_registers._entry.326, ptr @ab8500_charger_init_hw_registers._entry.329, ptr @ab8500_charger_init_hw_registers._entry.332, ptr @ab8500_charger_init_hw_registers._entry.335, ptr @ab8500_charger_init_hw_registers._entry.338, ptr @ab8500_charger_init_hw_registers._entry.340, ptr @ab8500_charger_init_hw_registers._entry.343, ptr @ab8500_charger_init_hw_registers._entry_ptr, ptr @ab8500_charger_init_hw_registers._entry_ptr.319, ptr @ab8500_charger_init_hw_registers._entry_ptr.322, ptr @ab8500_charger_init_hw_registers._entry_ptr.325, ptr @ab8500_charger_init_hw_registers._entry_ptr.328, ptr @ab8500_charger_init_hw_registers._entry_ptr.331, ptr @ab8500_charger_init_hw_registers._entry_ptr.334, ptr @ab8500_charger_init_hw_registers._entry_ptr.337, ptr @ab8500_charger_init_hw_registers._entry_ptr.339, ptr @ab8500_charger_init_hw_registers._entry_ptr.342, ptr @ab8500_charger_init_hw_registers._entry_ptr.345, ptr @ab8500_charger_kick_watchdog_work._entry, ptr @ab8500_charger_kick_watchdog_work._entry_ptr, ptr @ab8500_charger_led_en._entry, ptr @ab8500_charger_led_en._entry.197, ptr @ab8500_charger_led_en._entry.200, ptr @ab8500_charger_led_en._entry_ptr, ptr @ab8500_charger_led_en._entry_ptr.199, ptr @ab8500_charger_led_en._entry_ptr.202, ptr @ab8500_charger_max_usb_curr._entry, ptr @ab8500_charger_max_usb_curr._entry.297, ptr @ab8500_charger_max_usb_curr._entry.300, ptr @ab8500_charger_max_usb_curr._entry.303, ptr @ab8500_charger_max_usb_curr._entry_ptr, ptr @ab8500_charger_max_usb_curr._entry_ptr.299, ptr @ab8500_charger_max_usb_curr._entry_ptr.302, ptr @ab8500_charger_max_usb_curr._entry_ptr.305, ptr @ab8500_charger_probe._entry, ptr @ab8500_charger_probe._entry.16, ptr @ab8500_charger_probe._entry.72, ptr @ab8500_charger_probe._entry.75, ptr @ab8500_charger_probe._entry.78, ptr @ab8500_charger_probe._entry.83, ptr @ab8500_charger_probe._entry.86, ptr @ab8500_charger_probe._entry.89, ptr @ab8500_charger_probe._entry.92, ptr @ab8500_charger_probe._entry.95, ptr @ab8500_charger_probe._entry_ptr, ptr @ab8500_charger_probe._entry_ptr.18, ptr @ab8500_charger_probe._entry_ptr.74, ptr @ab8500_charger_probe._entry_ptr.77, ptr @ab8500_charger_probe._entry_ptr.80, ptr @ab8500_charger_probe._entry_ptr.85, ptr @ab8500_charger_probe._entry_ptr.88, ptr @ab8500_charger_probe._entry_ptr.91, ptr @ab8500_charger_probe._entry_ptr.94, ptr @ab8500_charger_probe._entry_ptr.97, ptr @ab8500_charger_read_usb_type._entry, ptr @ab8500_charger_read_usb_type._entry.289, ptr @ab8500_charger_read_usb_type._entry_ptr, ptr @ab8500_charger_read_usb_type._entry_ptr.290, ptr @ab8500_charger_resume._entry, ptr @ab8500_charger_resume._entry_ptr, ptr @ab8500_charger_set_current._entry, ptr @ab8500_charger_set_current._entry.179, ptr @ab8500_charger_set_current._entry.182, ptr @ab8500_charger_set_current._entry.187, ptr @ab8500_charger_set_current._entry.190, ptr @ab8500_charger_set_current._entry.193, ptr @ab8500_charger_set_current._entry_ptr, ptr @ab8500_charger_set_current._entry_ptr.181, ptr @ab8500_charger_set_current._entry_ptr.184, ptr @ab8500_charger_set_current._entry_ptr.188, ptr @ab8500_charger_set_current._entry_ptr.191, ptr @ab8500_charger_set_current._entry_ptr.194, ptr @ab8500_charger_set_vbus_in_curr._entry, ptr @ab8500_charger_set_vbus_in_curr._entry_ptr, ptr @ab8500_charger_unbind._entry, ptr @ab8500_charger_unbind._entry_ptr, ptr @ab8500_charger_update_charger_current._entry, ptr @ab8500_charger_update_charger_current._entry.219, ptr @ab8500_charger_update_charger_current._entry_ptr, ptr @ab8500_charger_update_charger_current._entry_ptr.220, ptr @ab8500_charger_usb_attached_work._entry, ptr @ab8500_charger_usb_attached_work._entry_ptr, ptr @ab8500_charger_usb_check_enable._entry, ptr @ab8500_charger_usb_check_enable._entry.254, ptr @ab8500_charger_usb_check_enable._entry.256, ptr @ab8500_charger_usb_check_enable._entry.258, ptr @ab8500_charger_usb_check_enable._entry_ptr, ptr @ab8500_charger_usb_check_enable._entry_ptr.255, ptr @ab8500_charger_usb_check_enable._entry_ptr.257, ptr @ab8500_charger_usb_check_enable._entry_ptr.260, ptr @ab8500_charger_usb_cv._entry, ptr @ab8500_charger_usb_cv._entry_ptr, ptr @ab8500_charger_usb_en._entry, ptr @ab8500_charger_usb_en._entry.223, ptr @ab8500_charger_usb_en._entry.226, ptr @ab8500_charger_usb_en._entry.228, ptr @ab8500_charger_usb_en._entry.231, ptr @ab8500_charger_usb_en._entry.233, ptr @ab8500_charger_usb_en._entry.235, ptr @ab8500_charger_usb_en._entry.238, ptr @ab8500_charger_usb_en._entry.241, ptr @ab8500_charger_usb_en._entry.243, ptr @ab8500_charger_usb_en._entry.245, ptr @ab8500_charger_usb_en._entry.247, ptr @ab8500_charger_usb_en._entry_ptr, ptr @ab8500_charger_usb_en._entry_ptr.224, ptr @ab8500_charger_usb_en._entry_ptr.227, ptr @ab8500_charger_usb_en._entry_ptr.229, ptr @ab8500_charger_usb_en._entry_ptr.232, ptr @ab8500_charger_usb_en._entry_ptr.234, ptr @ab8500_charger_usb_en._entry_ptr.237, ptr @ab8500_charger_usb_en._entry_ptr.239, ptr @ab8500_charger_usb_en._entry_ptr.242, ptr @ab8500_charger_usb_en._entry_ptr.244, ptr @ab8500_charger_usb_en._entry_ptr.246, ptr @ab8500_charger_usb_en._entry_ptr.249, ptr @ab8500_charger_vbus_drop_end_work._entry, ptr @ab8500_charger_vbus_drop_end_work._entry_ptr, ptr @ab8500_charger_watchdog_kick._entry, ptr @ab8500_charger_watchdog_kick._entry_ptr, ptr @ab8500_enable_disable_sw_fallback._entry, ptr @ab8500_enable_disable_sw_fallback._entry.362, ptr @ab8500_enable_disable_sw_fallback._entry.365, ptr @ab8500_enable_disable_sw_fallback._entry.367, ptr @ab8500_enable_disable_sw_fallback._entry_ptr, ptr @ab8500_enable_disable_sw_fallback._entry_ptr.364, ptr @ab8500_enable_disable_sw_fallback._entry_ptr.366, ptr @ab8500_enable_disable_sw_fallback._entry_ptr.368, ptr @ab8500_external_charger_prepare._entry, ptr @ab8500_external_charger_prepare._entry.371, ptr @ab8500_external_charger_prepare._entry_ptr, ptr @ab8500_external_charger_prepare._entry_ptr.373, ptr @ab8500_charger_component_drivers, ptr @ab8500_charger_driver, ptr @.str, ptr @ab8500_charger_match, ptr @ab8500_charger_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @ab8500_charger_irq, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @ab8500_charger_probe.__key, ptr @.str.21, ptr @ab8500_charger_probe.__key.22, ptr @.str.23, ptr @supply_interface, ptr @ab8500_charger_voltage_map, ptr @ab8500_charger_probe.__key.24, ptr @.str.25, ptr @ab8500_charger_probe.__key.26, ptr @.str.27, ptr @ab8500_charger_probe.__key.28, ptr @.str.29, ptr @ab8500_charger_probe.__key.30, ptr @.str.31, ptr @ab8500_charger_probe.__key.32, ptr @.str.33, ptr @ab8500_charger_probe.__key.34, ptr @.str.35, ptr @ab8500_charger_probe.__key.36, ptr @.str.37, ptr @ab8500_charger_probe.__key.38, ptr @.str.39, ptr @ab8500_charger_probe.__key.40, ptr @.str.41, ptr @ab8500_charger_probe.__key.42, ptr @.str.43, ptr @ab8500_charger_probe.__key.44, ptr @.str.45, ptr @ab8500_charger_probe.__key.46, ptr @.str.47, ptr @ab8500_charger_probe.__key.48, ptr @.str.49, ptr @ab8500_charger_probe.__key.50, ptr @.str.51, ptr @ab8500_charger_probe.__key.52, ptr @.str.53, ptr @ab8500_charger_probe.__key.54, ptr @.str.55, ptr @ab8500_charger_probe.__key.56, ptr @.str.57, ptr @ab8500_charger_probe.__key.58, ptr @.str.59, ptr @ab8500_charger_probe.__key.60, ptr @.str.61, ptr @ab8500_charger_probe.__key.62, ptr @.str.63, ptr @ab8500_charger_probe.__key.64, ptr @.str.65, ptr @ab8500_charger_probe.__key.66, ptr @.str.67, ptr @ab8500_charger_probe.__key.68, ptr @.str.69, ptr @ab8500_charger_probe.__key.70, ptr @.str.71, ptr @.str.73, ptr @ab8500_ac_chg_desc, ptr @.str.76, ptr @ab8500_usb_chg_desc, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.87, ptr @charger_nb, ptr @.str.90, ptr @.str.93, ptr @ab8500_charger_comp_ops, ptr @.str.96, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.147, ptr @.str.148, ptr @.str.151, ptr @.str.154, ptr @.str.157, ptr @.str.160, ptr @.str.165, ptr @.str.174, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.180, ptr @.str.183, ptr @.str.185, ptr @.str.186, ptr @.str.189, ptr @.str.192, ptr @ab8500_charge_input_curr_map, ptr @.str.195, ptr @.str.196, ptr @.str.198, ptr @.str.201, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.207, ptr @.str.208, ptr @.str.211, ptr @.str.214, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.221, ptr @.str.222, ptr @.str.225, ptr @.str.230, ptr @.str.236, ptr @.str.240, ptr @.str.248, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.259, ptr @.str.261, ptr @.str.262, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.298, ptr @.str.301, ptr @.str.304, ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr @.str.309, ptr @.str.312, ptr @.str.313, ptr @.str.314, ptr @.str.315, ptr @.str.316, ptr @.str.318, ptr @.str.321, ptr @.str.324, ptr @.str.327, ptr @.str.330, ptr @.str.333, ptr @.str.336, ptr @.str.341, ptr @.str.344, ptr @.str.346, ptr @ab8500_charger_ac_props, ptr @.str.347, ptr @.str.348, ptr @.str.349, ptr @.str.350, ptr @.str.351, ptr @ab8500_charger_usb_props, ptr @.str.352, ptr @.str.353, ptr @.str.354, ptr @.str.355, ptr @.str.358, ptr @.str.359, ptr @.str.360, ptr @.str.361, ptr @.str.363, ptr @.str.369, ptr @.str.370, ptr @.str.372, ptr @.str.374, ptr @.str.375, ptr @.str.376, ptr @.str.377, ptr @.str.378, ptr @.str.379, ptr @.str.381, ptr @.str.383, ptr @.str.384], section "llvm.metadata"
@0 = internal global [367 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_component_drivers to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_irq to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_probe.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supply_interface to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_voltage_map to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_probe.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_probe.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_probe.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_probe.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_probe.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_probe.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_probe.__key.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_probe.__key.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_probe.__key.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_probe.__key.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_probe.__key.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_probe.__key.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_probe.__key.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_probe.__key.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_probe.__key.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_probe.__key.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_probe.__key.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_probe.__key.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_probe.__key.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_probe.__key.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_probe.__key.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_probe.__key.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_probe.__key.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_probe.__key.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_probe._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_ac_chg_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_probe._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_usb_chg_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_probe._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_probe._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_probe._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_probe._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_probe._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_comp_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_probe._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_ac_en._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_ac_en._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_ac_en._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_ac_en._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_ac_en._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_ac_en._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_ac_en._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_ac_en._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_ac_en._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_ac_en._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_ac_en._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_ac_en._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_set_current._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_set_current._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_set_current._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_set_current._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_set_current._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_set_current._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charge_input_curr_map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_led_en._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_led_en._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_led_en._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_ac_check_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_ac_check_enable._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_ac_check_enable._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_ac_check_enable._entry.213 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_watchdog_kick._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_update_charger_current._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_update_charger_current._entry.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_usb_en._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_usb_en._entry.223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_usb_en._entry.226 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_usb_en._entry.228 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_usb_en._entry.231 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_usb_en._entry.233 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_usb_en._entry.235 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_usb_en._entry.238 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_usb_en._entry.241 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_usb_en._entry.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_usb_en._entry.245 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_usb_en._entry.247 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_set_vbus_in_curr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_usb_check_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_usb_check_enable._entry.254 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_usb_check_enable._entry.256 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_usb_check_enable._entry.258 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_check_hw_failure_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_check_hw_failure_work._entry.263 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_check_usbchargernotok_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_ac_attached_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_usb_attached_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_kick_watchdog_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_vbus_drop_end_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_read_usb_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_read_usb_type._entry.289 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_max_usb_curr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_max_usb_curr._entry.297 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_max_usb_curr._entry.300 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_max_usb_curr._entry.303 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_detect_usb_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_detect_usb_type._entry.310 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_check_main_thermal_prot_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_check_usb_thermal_prot_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_init_hw_registers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_init_hw_registers._entry.317 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_init_hw_registers._entry.320 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_init_hw_registers._entry.323 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_init_hw_registers._entry.326 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_init_hw_registers._entry.329 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_init_hw_registers._entry.332 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_init_hw_registers._entry.335 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_init_hw_registers._entry.338 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_init_hw_registers._entry.340 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_init_hw_registers._entry.343 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.346 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_ac_props to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1358 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_get_ac_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.347 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.348 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_ac_cv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.349 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_get_ac_current._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.350 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.351 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_usb_props to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_get_vbus_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.352 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_usb_cv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.353 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_get_usb_current._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.354 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_detect_chargers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.355 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_detect_chargers._entry.356 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.358 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.359 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.360 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_enable_disable_sw_fallback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.361 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_enable_disable_sw_fallback._entry.362 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.363 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_enable_disable_sw_fallback._entry.365 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_enable_disable_sw_fallback._entry.367 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_external_charger_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.369 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.370 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_external_charger_prepare._entry.371 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.372 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.374 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.375 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.376 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.377 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.378 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.379 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_bind._entry.380 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.381 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_unbind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.383 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_charger_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.384 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ab8500_charger_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_unregister_drivers(ptr noundef nonnull @ab8500_charger_component_drivers, i32 noundef 3) #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @ab8500_charger_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_unregister_drivers(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_charger_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_register_drivers(ptr noundef nonnull @ab8500_charger_component_drivers, i32 noundef 3, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ab8500_charger_driver, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_charger_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %match = alloca ptr, align 4
  %ac_psy_cfg = alloca %struct.power_supply_config, align 4
  %usb_psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match) #8
  %2 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %match, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ac_psy_cfg) #8
  %3 = call ptr @memset(ptr %ac_psy_cfg, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %usb_psy_cfg) #8
  %4 = call ptr @memset(ptr %usb_psy_cfg, i32 0, i32 24)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1588, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %bm = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 19
  %5 = ptrtoint ptr %bm to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ab8500_bm_data, ptr %bm, align 4
  %call.i768 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null) #8
  %tobool.i = icmp ne ptr %call.i768, null
  %autopower_cfg = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 10
  %frombool = zext i1 %tobool.i to i8
  %6 = ptrtoint ptr %autopower_cfg to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %autopower_cfg, align 2
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev1, ptr %call.i, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i, align 4
  %parent6 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 14
  %12 = ptrtoint ptr %parent6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %parent6, align 4
  %call7 = tail call ptr @devm_iio_channel_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  %adc_main_charger_v = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 15
  %13 = ptrtoint ptr %adc_main_charger_v to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7, ptr %adc_main_charger_v, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %call7 to i32
  %call13 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %14, ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %call15 = tail call ptr @devm_iio_channel_get(ptr noundef %dev1, ptr noundef nonnull @.str.4) #8
  %adc_main_charger_c = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 16
  %15 = ptrtoint ptr %adc_main_charger_c to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call15, ptr %adc_main_charger_c, align 4
  %cmp.i769 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i769, label %if.then18, label %if.end22

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %call15 to i32
  %call21 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %16, ptr noundef nonnull @.str.5) #8
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  %call23 = tail call ptr @devm_iio_channel_get(ptr noundef %dev1, ptr noundef nonnull @.str.6) #8
  %adc_vbus_v = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 17
  %17 = ptrtoint ptr %adc_vbus_v to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call23, ptr %adc_vbus_v, align 4
  %cmp.i770 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i770, label %if.then26, label %if.end30

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %call23 to i32
  %call29 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %18, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end30:                                         ; preds = %if.end22
  %call31 = tail call ptr @devm_iio_channel_get(ptr noundef %dev1, ptr noundef nonnull @.str.8) #8
  %adc_usb_charger_c = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 18
  %19 = ptrtoint ptr %adc_usb_charger_c to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call31, ptr %adc_usb_charger_c, align 4
  %cmp.i771 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i771, label %if.then34, label %if.end38

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %call31 to i32
  %call37 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %20, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end38:                                         ; preds = %if.end30
  %call39 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.10) #8
  %regu = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 27
  %21 = ptrtoint ptr %regu to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call39, ptr %regu, align 4
  %cmp.i772 = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i772, label %if.then42, label %if.end38.for.body_crit_edge

if.end38.for.body_crit_edge:                      ; preds = %if.end38
  br label %for.body

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %call39 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end38.for.body_crit_edge
  %i.0797 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end38.for.body_crit_edge ]
  %arrayidx = getelementptr [14 x %struct.ab8500_charger_interrupts], ptr @ab8500_charger_irq, i32 0, i32 %i.0797
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %call46 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef %24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %for.body.cleanup_crit_edge, label %if.end49

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end49:                                         ; preds = %for.body
  %isr = getelementptr [14 x %struct.ab8500_charger_interrupts], ptr @ab8500_charger_irq, i32 0, i32 %i.0797, i32 1
  %25 = ptrtoint ptr %isr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %isr, align 4
  %call53 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call46, ptr noundef null, ptr noundef %26, i32 noundef 24704, ptr noundef %24, ptr noundef %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54.not = icmp eq i32 %call53, 0
  br i1 %cmp54.not, label %do.body62, label %do.end58

do.end58:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, ptr noundef %24, i32 noundef %call46, i32 noundef %call53) #11
  br label %cleanup

do.body62:                                        ; preds = %if.end49
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_probe.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_probe, %for.inc)) #8
          to label %if.then69 [label %for.inc], !srcloc !771

if.then69:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_probe.__UNIQUE_ID_ddebug355, ptr noundef %dev1, ptr noundef nonnull @.str.20, ptr noundef %24, i32 noundef %call46, i32 noundef 0) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then69, %do.body62
  %inc = add nuw nsw i32 %i.0797, 1
  %exitcond.not = icmp eq i32 %inc, 14
  br i1 %exitcond.not, label %do.body75, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.body75:                                        ; preds = %for.inc
  %usb_state = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 21
  %usb_lock = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 21, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %usb_lock, ptr noundef nonnull @.str.21, ptr noundef nonnull @ab8500_charger_probe.__key, i16 noundef signext 3) #8
  %usb_ipt_crnt_lock = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 29
  tail call void @__mutex_init(ptr noundef %usb_ipt_crnt_lock, ptr noundef nonnull @.str.23, ptr noundef nonnull @ab8500_charger_probe.__key.22) #8
  %autopower = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 9
  %27 = ptrtoint ptr %autopower to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %autopower, align 1
  %invalid_charger_detect_state = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 11
  %28 = ptrtoint ptr %invalid_charger_detect_state to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %invalid_charger_detect_state, align 4
  %29 = ptrtoint ptr %ac_psy_cfg to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %1, ptr %ac_psy_cfg, align 4
  %supplied_to = getelementptr inbounds %struct.power_supply_config, ptr %ac_psy_cfg, i32 0, i32 4
  %30 = ptrtoint ptr %supplied_to to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @supply_interface, ptr %supplied_to, align 4
  %num_supplicants = getelementptr inbounds %struct.power_supply_config, ptr %ac_psy_cfg, i32 0, i32 5
  %31 = ptrtoint ptr %num_supplicants to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 3, ptr %num_supplicants, align 4
  %ac_chg = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 23
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %ac_psy_cfg, i32 0, i32 2
  %32 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %ac_chg, ptr %drv_data, align 4
  %33 = ptrtoint ptr %usb_psy_cfg to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %1, ptr %usb_psy_cfg, align 4
  %supplied_to84 = getelementptr inbounds %struct.power_supply_config, ptr %usb_psy_cfg, i32 0, i32 4
  %34 = ptrtoint ptr %supplied_to84 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @supply_interface, ptr %supplied_to84, align 4
  %num_supplicants85 = getelementptr inbounds %struct.power_supply_config, ptr %usb_psy_cfg, i32 0, i32 5
  %35 = ptrtoint ptr %num_supplicants85 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 3, ptr %num_supplicants85, align 4
  %usb_chg = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 24
  %drv_data86 = getelementptr inbounds %struct.power_supply_config, ptr %usb_psy_cfg, i32 0, i32 2
  %36 = ptrtoint ptr %drv_data86 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %usb_chg, ptr %drv_data86, align 4
  %ops = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 23, i32 1
  %37 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @ab8500_charger_ac_en, ptr %ops, align 4
  %check_enable = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 23, i32 1, i32 1
  %38 = ptrtoint ptr %check_enable to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @ab8500_charger_ac_check_enable, ptr %check_enable, align 4
  %kick_wd = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 23, i32 1, i32 2
  %39 = ptrtoint ptr %kick_wd to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @ab8500_charger_watchdog_kick, ptr %kick_wd, align 4
  %update_curr = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 23, i32 1, i32 3
  %40 = ptrtoint ptr %update_curr to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @ab8500_charger_update_charger_current, ptr %update_curr, align 4
  %max_out_volt_uv = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 23, i32 2
  %41 = ptrtoint ptr %max_out_volt_uv to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 4600000, ptr %max_out_volt_uv, align 4
  %max_out_curr_ua = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 23, i32 3
  %42 = ptrtoint ptr %max_out_curr_ua to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1500000, ptr %max_out_curr_ua, align 4
  %wdt_refresh = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 23, i32 4
  %43 = ptrtoint ptr %wdt_refresh to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 6000, ptr %wdt_refresh, align 4
  %44 = ptrtoint ptr %parent6 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %parent6, align 4
  %version.i = getelementptr inbounds %struct.ab8500, ptr %45, i32 0, i32 6
  %46 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp.i773.not = icmp eq i32 %47, 1
  br i1 %cmp.i773.not, label %do.body75.if.end102_crit_edge, label %if.then100

do.body75.if.end102_crit_edge:                    ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102

if.then100:                                       ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #10
  %enabled = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 23, i32 5
  %48 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %enabled, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then100, %do.body75.if.end102_crit_edge
  %external = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 23, i32 6
  %49 = ptrtoint ptr %external to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %external, align 1
  %ops105 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 24, i32 1
  %50 = ptrtoint ptr %ops105 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @ab8500_charger_usb_en, ptr %ops105, align 4
  %check_enable109 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 24, i32 1, i32 1
  %51 = ptrtoint ptr %check_enable109 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @ab8500_charger_usb_check_enable, ptr %check_enable109, align 4
  %kick_wd112 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 24, i32 1, i32 2
  %52 = ptrtoint ptr %kick_wd112 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @ab8500_charger_watchdog_kick, ptr %kick_wd112, align 4
  %update_curr115 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 24, i32 1, i32 3
  %53 = ptrtoint ptr %update_curr115 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @ab8500_charger_update_charger_current, ptr %update_curr115, align 4
  %max_out_volt_uv117 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 24, i32 2
  %54 = ptrtoint ptr %max_out_volt_uv117 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 4600000, ptr %max_out_volt_uv117, align 4
  %max_out_curr_ua119 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 24, i32 3
  %55 = ptrtoint ptr %max_out_curr_ua119 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1500000, ptr %max_out_curr_ua119, align 4
  %wdt_refresh121 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 24, i32 4
  %56 = ptrtoint ptr %wdt_refresh121 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 6000, ptr %wdt_refresh121, align 4
  %external123 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 24, i32 6
  %57 = ptrtoint ptr %external123 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %external123, align 1
  %58 = ptrtoint ptr %usb_state to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -1, ptr %usb_state, align 4
  %charger_attached_mutex = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 46
  tail call void @__mutex_init(ptr noundef %charger_attached_mutex, ptr noundef nonnull @.str.25, ptr noundef nonnull @ab8500_charger_probe.__key.24) #8
  %check_hw_failure_work = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 31
  tail call void @__init_work(ptr noundef %check_hw_failure_work, i32 noundef 0) #8
  %59 = ptrtoint ptr %check_hw_failure_work to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -64, ptr %check_hw_failure_work, align 4
  %lockdep_map = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 31, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.27, ptr noundef nonnull @ab8500_charger_probe.__key.26, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry136 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 31, i32 0, i32 1
  %60 = ptrtoint ptr %entry136 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %entry136, ptr %entry136, align 4
  %prev.i = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 31, i32 0, i32 1, i32 1
  %61 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %entry136, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 31, i32 0, i32 2
  %62 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @ab8500_charger_check_hw_failure_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 31, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2621440, ptr noundef nonnull @.str.29, ptr noundef nonnull @ab8500_charger_probe.__key.28) #8
  %check_usbchgnotok_work = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 32
  tail call void @__init_work(ptr noundef %check_usbchgnotok_work, i32 noundef 0) #8
  %63 = ptrtoint ptr %check_usbchgnotok_work to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -64, ptr %check_usbchgnotok_work, align 4
  %lockdep_map157 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 32, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map157, ptr noundef nonnull @.str.31, ptr noundef nonnull @ab8500_charger_probe.__key.30, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry160 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 32, i32 0, i32 1
  %64 = ptrtoint ptr %entry160 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %entry160, ptr %entry160, align 4
  %prev.i774 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 32, i32 0, i32 1, i32 1
  %65 = ptrtoint ptr %prev.i774 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %entry160, ptr %prev.i774, align 4
  %func163 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 32, i32 0, i32 2
  %66 = ptrtoint ptr %func163 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @ab8500_charger_check_usbchargernotok_work, ptr %func163, align 4
  %timer168 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 32, i32 1
  tail call void @init_timer_key(ptr noundef %timer168, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2621440, ptr noundef nonnull @.str.33, ptr noundef nonnull @ab8500_charger_probe.__key.32) #8
  %ac_charger_attached_work = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 36
  tail call void @__init_work(ptr noundef %ac_charger_attached_work, i32 noundef 0) #8
  %67 = ptrtoint ptr %ac_charger_attached_work to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -64, ptr %ac_charger_attached_work, align 4
  %lockdep_map183 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 36, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map183, ptr noundef nonnull @.str.35, ptr noundef nonnull @ab8500_charger_probe.__key.34, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry186 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 36, i32 0, i32 1
  %68 = ptrtoint ptr %entry186 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %entry186, ptr %entry186, align 4
  %prev.i775 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 36, i32 0, i32 1, i32 1
  %69 = ptrtoint ptr %prev.i775 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %entry186, ptr %prev.i775, align 4
  %func189 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 36, i32 0, i32 2
  %70 = ptrtoint ptr %func189 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @ab8500_charger_ac_attached_work, ptr %func189, align 4
  %timer194 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 36, i32 1
  tail call void @init_timer_key(ptr noundef %timer194, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.37, ptr noundef nonnull @ab8500_charger_probe.__key.36) #8
  %usb_charger_attached_work = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 37
  tail call void @__init_work(ptr noundef %usb_charger_attached_work, i32 noundef 0) #8
  %71 = ptrtoint ptr %usb_charger_attached_work to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -64, ptr %usb_charger_attached_work, align 4
  %lockdep_map209 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 37, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map209, ptr noundef nonnull @.str.39, ptr noundef nonnull @ab8500_charger_probe.__key.38, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry212 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 37, i32 0, i32 1
  %72 = ptrtoint ptr %entry212 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %entry212, ptr %entry212, align 4
  %prev.i776 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 37, i32 0, i32 1, i32 1
  %73 = ptrtoint ptr %prev.i776 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %entry212, ptr %prev.i776, align 4
  %func215 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 37, i32 0, i32 2
  %74 = ptrtoint ptr %func215 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @ab8500_charger_usb_attached_work, ptr %func215, align 4
  %timer220 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 37, i32 1
  tail call void @init_timer_key(ptr noundef %timer220, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.41, ptr noundef nonnull @ab8500_charger_probe.__key.40) #8
  %kick_wd_work = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 33
  tail call void @__init_work(ptr noundef %kick_wd_work, i32 noundef 0) #8
  %75 = ptrtoint ptr %kick_wd_work to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -64, ptr %kick_wd_work, align 4
  %lockdep_map235 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 33, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map235, ptr noundef nonnull @.str.43, ptr noundef nonnull @ab8500_charger_probe.__key.42, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry238 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 33, i32 0, i32 1
  %76 = ptrtoint ptr %entry238 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %entry238, ptr %entry238, align 4
  %prev.i777 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 33, i32 0, i32 1, i32 1
  %77 = ptrtoint ptr %prev.i777 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %entry238, ptr %prev.i777, align 4
  %func241 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 33, i32 0, i32 2
  %78 = ptrtoint ptr %func241 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @ab8500_charger_kick_watchdog_work, ptr %func241, align 4
  %timer246 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 33, i32 1
  tail call void @init_timer_key(ptr noundef %timer246, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2621440, ptr noundef nonnull @.str.45, ptr noundef nonnull @ab8500_charger_probe.__key.44) #8
  %check_vbat_work = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 30
  tail call void @__init_work(ptr noundef %check_vbat_work, i32 noundef 0) #8
  %79 = ptrtoint ptr %check_vbat_work to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -64, ptr %check_vbat_work, align 4
  %lockdep_map261 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 30, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map261, ptr noundef nonnull @.str.47, ptr noundef nonnull @ab8500_charger_probe.__key.46, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry264 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 30, i32 0, i32 1
  %80 = ptrtoint ptr %entry264 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %entry264, ptr %entry264, align 4
  %prev.i778 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 30, i32 0, i32 1, i32 1
  %81 = ptrtoint ptr %prev.i778 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %entry264, ptr %prev.i778, align 4
  %func267 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 30, i32 0, i32 2
  %82 = ptrtoint ptr %func267 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @ab8500_charger_check_vbat_work, ptr %func267, align 4
  %timer272 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 30, i32 1
  tail call void @init_timer_key(ptr noundef %timer272, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2621440, ptr noundef nonnull @.str.49, ptr noundef nonnull @ab8500_charger_probe.__key.48) #8
  %attach_work = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 35
  tail call void @__init_work(ptr noundef %attach_work, i32 noundef 0) #8
  %83 = ptrtoint ptr %attach_work to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 -64, ptr %attach_work, align 4
  %lockdep_map287 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 35, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map287, ptr noundef nonnull @.str.51, ptr noundef nonnull @ab8500_charger_probe.__key.50, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry290 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 35, i32 0, i32 1
  %84 = ptrtoint ptr %entry290 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %entry290, ptr %entry290, align 4
  %prev.i779 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 35, i32 0, i32 1, i32 1
  %85 = ptrtoint ptr %prev.i779 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %entry290, ptr %prev.i779, align 4
  %func293 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 35, i32 0, i32 2
  %86 = ptrtoint ptr %func293 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @ab8500_charger_usb_link_attach_work, ptr %func293, align 4
  %timer298 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 35, i32 1
  tail call void @init_timer_key(ptr noundef %timer298, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.53, ptr noundef nonnull @ab8500_charger_probe.__key.52) #8
  %usb_state_changed_work = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 34
  tail call void @__init_work(ptr noundef %usb_state_changed_work, i32 noundef 0) #8
  %87 = ptrtoint ptr %usb_state_changed_work to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -64, ptr %usb_state_changed_work, align 4
  %lockdep_map313 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 34, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map313, ptr noundef nonnull @.str.55, ptr noundef nonnull @ab8500_charger_probe.__key.54, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry316 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 34, i32 0, i32 1
  %88 = ptrtoint ptr %entry316 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %entry316, ptr %entry316, align 4
  %prev.i780 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 34, i32 0, i32 1, i32 1
  %89 = ptrtoint ptr %prev.i780 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %entry316, ptr %prev.i780, align 4
  %func319 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 34, i32 0, i32 2
  %90 = ptrtoint ptr %func319 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @ab8500_charger_usb_state_changed_work, ptr %func319, align 4
  %timer324 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 34, i32 1
  tail call void @init_timer_key(ptr noundef %timer324, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.57, ptr noundef nonnull @ab8500_charger_probe.__key.56) #8
  %vbus_drop_end_work = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 38
  tail call void @__init_work(ptr noundef %vbus_drop_end_work, i32 noundef 0) #8
  %91 = ptrtoint ptr %vbus_drop_end_work to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -64, ptr %vbus_drop_end_work, align 4
  %lockdep_map339 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 38, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map339, ptr noundef nonnull @.str.59, ptr noundef nonnull @ab8500_charger_probe.__key.58, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry342 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 38, i32 0, i32 1
  %92 = ptrtoint ptr %entry342 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %entry342, ptr %entry342, align 4
  %prev.i781 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 38, i32 0, i32 1, i32 1
  %93 = ptrtoint ptr %prev.i781 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %entry342, ptr %prev.i781, align 4
  %func345 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 38, i32 0, i32 2
  %94 = ptrtoint ptr %func345 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @ab8500_charger_vbus_drop_end_work, ptr %func345, align 4
  %timer350 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 38, i32 1
  tail call void @init_timer_key(ptr noundef %timer350, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.61, ptr noundef nonnull @ab8500_charger_probe.__key.60) #8
  %usb_link_status_work = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 41
  tail call void @__init_work(ptr noundef %usb_link_status_work, i32 noundef 0) #8
  %95 = ptrtoint ptr %usb_link_status_work to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 -64, ptr %usb_link_status_work, align 4
  %lockdep_map361 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 41, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map361, ptr noundef nonnull @.str.63, ptr noundef nonnull @ab8500_charger_probe.__key.62, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry363 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 41, i32 1
  %96 = ptrtoint ptr %entry363 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %entry363, ptr %entry363, align 4
  %prev.i782 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 41, i32 1, i32 1
  %97 = ptrtoint ptr %prev.i782 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %entry363, ptr %prev.i782, align 4
  %func365 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 41, i32 2
  %98 = ptrtoint ptr %func365 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @ab8500_charger_usb_link_status_work, ptr %func365, align 4
  %ac_work = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 39
  tail call void @__init_work(ptr noundef %ac_work, i32 noundef 0) #8
  %99 = ptrtoint ptr %ac_work to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -64, ptr %ac_work, align 4
  %lockdep_map374 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 39, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map374, ptr noundef nonnull @.str.65, ptr noundef nonnull @ab8500_charger_probe.__key.64, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry376 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 39, i32 1
  %100 = ptrtoint ptr %entry376 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %entry376, ptr %entry376, align 4
  %prev.i783 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 39, i32 1, i32 1
  %101 = ptrtoint ptr %prev.i783 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %entry376, ptr %prev.i783, align 4
  %func378 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 39, i32 2
  %102 = ptrtoint ptr %func378 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @ab8500_charger_ac_work, ptr %func378, align 4
  %detect_usb_type_work = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 40
  tail call void @__init_work(ptr noundef %detect_usb_type_work, i32 noundef 0) #8
  %103 = ptrtoint ptr %detect_usb_type_work to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 -64, ptr %detect_usb_type_work, align 4
  %lockdep_map387 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 40, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map387, ptr noundef nonnull @.str.67, ptr noundef nonnull @ab8500_charger_probe.__key.66, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry389 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 40, i32 1
  %104 = ptrtoint ptr %entry389 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %entry389, ptr %entry389, align 4
  %prev.i784 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 40, i32 1, i32 1
  %105 = ptrtoint ptr %prev.i784 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %entry389, ptr %prev.i784, align 4
  %func391 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 40, i32 2
  %106 = ptrtoint ptr %func391 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @ab8500_charger_detect_usb_type_work, ptr %func391, align 4
  %check_main_thermal_prot_work = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 42
  tail call void @__init_work(ptr noundef %check_main_thermal_prot_work, i32 noundef 0) #8
  %107 = ptrtoint ptr %check_main_thermal_prot_work to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 -64, ptr %check_main_thermal_prot_work, align 4
  %lockdep_map400 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 42, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map400, ptr noundef nonnull @.str.69, ptr noundef nonnull @ab8500_charger_probe.__key.68, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry402 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 42, i32 1
  %108 = ptrtoint ptr %entry402 to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %entry402, ptr %entry402, align 4
  %prev.i785 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 42, i32 1, i32 1
  %109 = ptrtoint ptr %prev.i785 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %entry402, ptr %prev.i785, align 4
  %func404 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 42, i32 2
  %110 = ptrtoint ptr %func404 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @ab8500_charger_check_main_thermal_prot_work, ptr %func404, align 4
  %check_usb_thermal_prot_work = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 43
  tail call void @__init_work(ptr noundef %check_usb_thermal_prot_work, i32 noundef 0) #8
  %111 = ptrtoint ptr %check_usb_thermal_prot_work to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 -64, ptr %check_usb_thermal_prot_work, align 4
  %lockdep_map413 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 43, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map413, ptr noundef nonnull @.str.71, ptr noundef nonnull @ab8500_charger_probe.__key.70, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry415 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 43, i32 1
  %112 = ptrtoint ptr %entry415 to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %entry415, ptr %entry415, align 4
  %prev.i786 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 43, i32 1, i32 1
  %113 = ptrtoint ptr %prev.i786 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %entry415, ptr %prev.i786, align 4
  %func417 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 43, i32 2
  %114 = ptrtoint ptr %func417 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @ab8500_charger_check_usb_thermal_prot_work, ptr %func417, align 4
  %call420 = tail call fastcc i32 @ab8500_charger_init_hw_registers(ptr noundef %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call420)
  %tobool421.not = icmp eq i32 %call420, 0
  br i1 %tobool421.not, label %if.end426, label %do.end425

do.end425:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.73) #11
  br label %cleanup

if.end426:                                        ; preds = %if.end102
  %enabled428 = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 23, i32 5
  %115 = ptrtoint ptr %enabled428 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %enabled428, align 4, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool429.not = icmp eq i8 %116, 0
  br i1 %tobool429.not, label %if.end426.if.end444_crit_edge, label %if.then430

if.end426.if.end444_crit_edge:                    ; preds = %if.end426
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end444

if.then430:                                       ; preds = %if.end426
  %call431 = call ptr @devm_power_supply_register(ptr noundef %dev1, ptr noundef nonnull @ab8500_ac_chg_desc, ptr noundef nonnull %ac_psy_cfg) #8
  %117 = ptrtoint ptr %ac_chg to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call431, ptr %ac_chg, align 4
  %cmp.i787 = icmp ugt ptr %call431, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i787, label %do.end439, label %if.then430.if.end444_crit_edge

if.then430.if.end444_crit_edge:                   ; preds = %if.then430
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end444

do.end439:                                        ; preds = %if.then430
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.76) #11
  %118 = ptrtoint ptr %ac_chg to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ac_chg, align 4
  %120 = ptrtoint ptr %119 to i32
  br label %cleanup

if.end444:                                        ; preds = %if.then430.if.end444_crit_edge, %if.end426.if.end444_crit_edge
  %call445 = call ptr @devm_power_supply_register(ptr noundef %dev1, ptr noundef nonnull @ab8500_usb_chg_desc, ptr noundef nonnull %usb_psy_cfg) #8
  %121 = ptrtoint ptr %usb_chg to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call445, ptr %usb_chg, align 4
  %cmp.i788 = icmp ugt ptr %call445, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i788, label %do.end454, label %if.end458

do.end454:                                        ; preds = %if.end444
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.79) #11
  %122 = ptrtoint ptr %usb_chg to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %usb_chg, align 4
  %124 = ptrtoint ptr %123 to i32
  br label %cleanup

if.end458:                                        ; preds = %if.end444
  %125 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %bm, align 4
  %call462 = call i32 @ab8500_bm_of_probe(ptr noundef %call445, ptr noundef %126) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call462)
  %tobool463.not = icmp eq i32 %call462, 0
  br i1 %tobool463.not, label %if.end466, label %if.then464

if.then464:                                       ; preds = %if.end458
  call void @__sanitizer_cov_trace_pc() #10
  %call465 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call462, ptr noundef nonnull @.str.81) #8
  br label %cleanup

if.end466:                                        ; preds = %if.end458
  %call467 = call fastcc i32 @ab8500_charger_detect_chargers(ptr noundef %call.i, i1 noundef zeroext true)
  %and = and i32 %call467, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool468.not = icmp eq i32 %and, 0
  br i1 %tobool468.not, label %if.end466.if.end475_crit_edge, label %if.then469

if.end466.if.end475_crit_edge:                    ; preds = %if.end466
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end475

if.then469:                                       ; preds = %if.end466
  call void @__sanitizer_cov_trace_pc() #10
  %ac = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 25
  %127 = ptrtoint ptr %ac to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 1, ptr %ac, align 4
  %ac_conn = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 3
  %128 = ptrtoint ptr %ac_conn to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 1, ptr %ac_conn, align 2
  %129 = ptrtoint ptr %ac_chg to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ac_chg, align 4
  call fastcc void @ab8500_power_supply_changed(ptr noundef %call.i, ptr noundef %130)
  %131 = ptrtoint ptr %ac_chg to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %ac_chg, align 4
  %dev474 = getelementptr inbounds %struct.power_supply, ptr %132, i32 0, i32 7
  call void @sysfs_notify(ptr noundef %dev474, ptr noundef null, ptr noundef nonnull @.str.82) #8
  br label %if.end475

if.end475:                                        ; preds = %if.then469, %if.end466.if.end475_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %133 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call480798 = call ptr @platform_find_device_by_driver(ptr noundef null, ptr noundef getelementptr inbounds (%struct.platform_driver, ptr @ab8500_fg_driver, i32 0, i32 5)) #8
  %tobool481.not799 = icmp eq ptr %call480798, null
  br i1 %tobool481.not799, label %if.end475.while.end_crit_edge, label %if.end475.while.body_crit_edge

if.end475.while.body_crit_edge:                   ; preds = %if.end475
  br label %while.body

if.end475.while.end_crit_edge:                    ; preds = %if.end475
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end475.while.body_crit_edge
  %call480801 = phi ptr [ %call480, %while.body.while.body_crit_edge ], [ %call480798, %if.end475.while.body_crit_edge ]
  %p.0800 = phi ptr [ %call480801, %while.body.while.body_crit_edge ], [ null, %if.end475.while.body_crit_edge ]
  call void @put_device(ptr noundef %p.0800) #8
  call void @component_match_add_release(ptr noundef %dev1, ptr noundef nonnull %match, ptr noundef null, ptr noundef nonnull @ab8500_charger_compare_dev, ptr noundef nonnull %call480801) #8
  %call480 = call ptr @platform_find_device_by_driver(ptr noundef nonnull %call480801, ptr noundef getelementptr inbounds (%struct.platform_driver, ptr @ab8500_fg_driver, i32 0, i32 5)) #8
  %tobool481.not = icmp eq ptr %call480, null
  br i1 %tobool481.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end475.while.end_crit_edge
  %p.0.lcssa = phi ptr [ null, %if.end475.while.end_crit_edge ], [ %call480801, %while.body.while.end_crit_edge ]
  call void @put_device(ptr noundef %p.0.lcssa) #8
  %call480798.1 = call ptr @platform_find_device_by_driver(ptr noundef null, ptr noundef getelementptr inbounds (%struct.platform_driver, ptr @ab8500_btemp_driver, i32 0, i32 5)) #8
  %tobool481.not799.1 = icmp eq ptr %call480798.1, null
  br i1 %tobool481.not799.1, label %while.end.while.end.1_crit_edge, label %while.end.while.body.1_crit_edge

while.end.while.body.1_crit_edge:                 ; preds = %while.end
  br label %while.body.1

while.end.while.end.1_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.1

while.body.1:                                     ; preds = %while.body.1.while.body.1_crit_edge, %while.end.while.body.1_crit_edge
  %call480801.1 = phi ptr [ %call480.1, %while.body.1.while.body.1_crit_edge ], [ %call480798.1, %while.end.while.body.1_crit_edge ]
  %p.0800.1 = phi ptr [ %call480801.1, %while.body.1.while.body.1_crit_edge ], [ null, %while.end.while.body.1_crit_edge ]
  call void @put_device(ptr noundef %p.0800.1) #8
  call void @component_match_add_release(ptr noundef %dev1, ptr noundef nonnull %match, ptr noundef null, ptr noundef nonnull @ab8500_charger_compare_dev, ptr noundef nonnull %call480801.1) #8
  %call480.1 = call ptr @platform_find_device_by_driver(ptr noundef nonnull %call480801.1, ptr noundef getelementptr inbounds (%struct.platform_driver, ptr @ab8500_btemp_driver, i32 0, i32 5)) #8
  %tobool481.not.1 = icmp eq ptr %call480.1, null
  br i1 %tobool481.not.1, label %while.body.1.while.end.1_crit_edge, label %while.body.1.while.body.1_crit_edge

while.body.1.while.body.1_crit_edge:              ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.1

while.body.1.while.end.1_crit_edge:               ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.1

while.end.1:                                      ; preds = %while.body.1.while.end.1_crit_edge, %while.end.while.end.1_crit_edge
  %p.0.lcssa.1 = phi ptr [ null, %while.end.while.end.1_crit_edge ], [ %call480801.1, %while.body.1.while.end.1_crit_edge ]
  call void @put_device(ptr noundef %p.0.lcssa.1) #8
  %call480798.2 = call ptr @platform_find_device_by_driver(ptr noundef null, ptr noundef getelementptr inbounds (%struct.platform_driver, ptr @ab8500_chargalg_driver, i32 0, i32 5)) #8
  %tobool481.not799.2 = icmp eq ptr %call480798.2, null
  br i1 %tobool481.not799.2, label %while.end.1.while.end.2_crit_edge, label %while.end.1.while.body.2_crit_edge

while.end.1.while.body.2_crit_edge:               ; preds = %while.end.1
  br label %while.body.2

while.end.1.while.end.2_crit_edge:                ; preds = %while.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.2

while.body.2:                                     ; preds = %while.body.2.while.body.2_crit_edge, %while.end.1.while.body.2_crit_edge
  %call480801.2 = phi ptr [ %call480.2, %while.body.2.while.body.2_crit_edge ], [ %call480798.2, %while.end.1.while.body.2_crit_edge ]
  %p.0800.2 = phi ptr [ %call480801.2, %while.body.2.while.body.2_crit_edge ], [ null, %while.end.1.while.body.2_crit_edge ]
  call void @put_device(ptr noundef %p.0800.2) #8
  call void @component_match_add_release(ptr noundef %dev1, ptr noundef nonnull %match, ptr noundef null, ptr noundef nonnull @ab8500_charger_compare_dev, ptr noundef nonnull %call480801.2) #8
  %call480.2 = call ptr @platform_find_device_by_driver(ptr noundef nonnull %call480801.2, ptr noundef getelementptr inbounds (%struct.platform_driver, ptr @ab8500_chargalg_driver, i32 0, i32 5)) #8
  %tobool481.not.2 = icmp eq ptr %call480.2, null
  br i1 %tobool481.not.2, label %while.body.2.while.end.2_crit_edge, label %while.body.2.while.body.2_crit_edge

while.body.2.while.body.2_crit_edge:              ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.2

while.body.2.while.end.2_crit_edge:               ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.2

while.end.2:                                      ; preds = %while.body.2.while.end.2_crit_edge, %while.end.1.while.end.2_crit_edge
  %p.0.lcssa.2 = phi ptr [ null, %while.end.1.while.end.2_crit_edge ], [ %call480801.2, %while.body.2.while.end.2_crit_edge ]
  call void @put_device(ptr noundef %p.0.lcssa.2) #8
  %134 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %match, align 4
  %tobool485.not = icmp eq ptr %135, null
  br i1 %tobool485.not, label %do.end489, label %if.end490

do.end489:                                        ; preds = %while.end.2
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.84) #11
  br label %remove_ab8500_bm

if.end490:                                        ; preds = %while.end.2
  %cmp.i789 = icmp ugt ptr %135, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i789, label %do.end495, label %if.end497

do.end495:                                        ; preds = %if.end490
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.87) #11
  %136 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %match, align 4
  %138 = ptrtoint ptr %137 to i32
  br label %remove_ab8500_bm

if.end497:                                        ; preds = %if.end490
  %139 = ptrtoint ptr %enabled428 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %enabled428, align 4, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool500.not = icmp eq i8 %140, 0
  br i1 %tobool500.not, label %if.then501, label %if.end497.if.end503_crit_edge

if.end497.if.end503_crit_edge:                    ; preds = %if.end497
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end503

if.then501:                                       ; preds = %if.end497
  call void @__sanitizer_cov_trace_pc() #10
  %call502 = call i32 @blocking_notifier_chain_register(ptr noundef nonnull @charger_notifier_list, ptr noundef nonnull @charger_nb) #8
  br label %if.end503

if.end503:                                        ; preds = %if.then501, %if.end497.if.end503_crit_edge
  %call504 = call ptr @usb_get_phy(i32 noundef 1) #8
  %usb_phy = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 44
  %141 = ptrtoint ptr %usb_phy to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %call504, ptr %usb_phy, align 4
  %tobool.not.i = icmp eq ptr %call504, null
  %cmp.i790 = icmp ugt ptr %call504, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i790
  br i1 %spec.select.i, label %do.end510, label %if.end511

do.end510:                                        ; preds = %if.end503
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.90) #11
  br label %out_charger_notifier

if.end511:                                        ; preds = %if.end503
  %nb = getelementptr inbounds %struct.ab8500_charger, ptr %call.i, i32 0, i32 45
  %142 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr @ab8500_charger_usb_notifier_call, ptr %nb, align 4
  %notifier.i = getelementptr inbounds %struct.usb_phy, ptr %call504, i32 0, i32 18
  %call.i791 = call i32 @atomic_notifier_chain_register(ptr noundef %notifier.i, ptr noundef %nb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i791)
  %tobool515.not = icmp eq i32 %call.i791, 0
  br i1 %tobool515.not, label %if.end520, label %do.end519

do.end519:                                        ; preds = %if.end511
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.93) #11
  br label %put_usb_phy

if.end520:                                        ; preds = %if.end511
  %143 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %match, align 4
  %call522 = call i32 @component_master_add_with_match(ptr noundef %dev1, ptr noundef nonnull @ab8500_charger_comp_ops, ptr noundef %144) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call522)
  %tobool523.not = icmp eq i32 %call522, 0
  br i1 %tobool523.not, label %if.end520.cleanup_crit_edge, label %do.end527

if.end520.cleanup_crit_edge:                      ; preds = %if.end520
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end527:                                        ; preds = %if.end520
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.96) #11
  %145 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %usb_phy, align 4
  %notifier.i792 = getelementptr inbounds %struct.usb_phy, ptr %146, i32 0, i32 18
  %call.i793 = call i32 @atomic_notifier_chain_unregister(ptr noundef %notifier.i792, ptr noundef %nb) #8
  br label %put_usb_phy

put_usb_phy:                                      ; preds = %do.end527, %do.end519
  %ret.0 = phi i32 [ %call.i791, %do.end519 ], [ %call522, %do.end527 ]
  %147 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %usb_phy, align 4
  call void @usb_put_phy(ptr noundef %148) #8
  br label %out_charger_notifier

out_charger_notifier:                             ; preds = %put_usb_phy, %do.end510
  %ret.1 = phi i32 [ -22, %do.end510 ], [ %ret.0, %put_usb_phy ]
  %149 = ptrtoint ptr %enabled428 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %enabled428, align 4, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool534.not = icmp eq i8 %150, 0
  br i1 %tobool534.not, label %if.then535, label %out_charger_notifier.remove_ab8500_bm_crit_edge

out_charger_notifier.remove_ab8500_bm_crit_edge:  ; preds = %out_charger_notifier
  call void @__sanitizer_cov_trace_pc() #10
  br label %remove_ab8500_bm

if.then535:                                       ; preds = %out_charger_notifier
  call void @__sanitizer_cov_trace_pc() #10
  %call536 = call i32 @blocking_notifier_chain_unregister(ptr noundef nonnull @charger_notifier_list, ptr noundef nonnull @charger_nb) #8
  br label %remove_ab8500_bm

remove_ab8500_bm:                                 ; preds = %if.then535, %out_charger_notifier.remove_ab8500_bm_crit_edge, %do.end495, %do.end489
  %ret.2 = phi i32 [ %138, %do.end495 ], [ %ret.1, %out_charger_notifier.remove_ab8500_bm_crit_edge ], [ %ret.1, %if.then535 ], [ -19, %do.end489 ]
  %151 = ptrtoint ptr %usb_chg to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %usb_chg, align 4
  %153 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %bm, align 4
  call void @ab8500_bm_of_remove(ptr noundef %152, ptr noundef %154) #8
  br label %cleanup

cleanup:                                          ; preds = %remove_ab8500_bm, %if.end520.cleanup_crit_edge, %if.then464, %do.end454, %do.end439, %do.end425, %do.end58, %for.body.cleanup_crit_edge, %if.then42, %if.then34, %if.then26, %if.then18, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.then10 ], [ %call21, %if.then18 ], [ %call29, %if.then26 ], [ %call37, %if.then34 ], [ %22, %if.then42 ], [ %call53, %do.end58 ], [ %call420, %do.end425 ], [ %120, %do.end439 ], [ %124, %do.end454 ], [ %call465, %if.then464 ], [ %ret.2, %remove_ab8500_bm ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end520.cleanup_crit_edge ], [ %call46, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %usb_psy_cfg) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac_psy_cfg) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_charger_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_master_del(ptr noundef %dev, ptr noundef nonnull @ab8500_charger_comp_ops) #8
  %usb_phy = getelementptr inbounds %struct.ab8500_charger, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_phy, align 4
  %nb = getelementptr inbounds %struct.ab8500_charger, ptr %1, i32 0, i32 45
  %notifier.i = getelementptr inbounds %struct.usb_phy, ptr %3, i32 0, i32 18
  %call.i = tail call i32 @atomic_notifier_chain_unregister(ptr noundef %notifier.i, ptr noundef %nb) #8
  %usb_chg = getelementptr inbounds %struct.ab8500_charger, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %usb_chg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_chg, align 4
  %bm = getelementptr inbounds %struct.ab8500_charger, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bm, align 4
  tail call void @ab8500_bm_of_remove(ptr noundef %5, ptr noundef %7) #8
  %8 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb_phy, align 4
  tail call void @usb_put_phy(ptr noundef %9) #8
  %enabled = getelementptr inbounds %struct.ab8500_charger, ptr %1, i32 0, i32 23, i32 5
  %10 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enabled, align 4, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef nonnull @charger_notifier_list, ptr noundef nonnull @charger_nb) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_channel_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_charger_ac_en(ptr noundef %charger, i32 noundef %enable, i32 noundef %vset_uv, i32 noundef %iset_ua) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %charger, i32 -140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.else91, label %if.then

if.then:                                          ; preds = %entry
  %ac = getelementptr i8, ptr %charger, i32 72
  %0 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ac, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %do.end, label %do.body3

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.143) #11
  br label %cleanup

do.body3:                                         ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_ac_en.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_ac_en, %do.end13)) #8
          to label %if.then9 [label %do.end13], !srcloc !771

if.then9:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_ac_en.__UNIQUE_ID_ddebug316, ptr noundef %5, ptr noundef nonnull @.str.145, i32 noundef %vset_uv, i32 noundef %iset_ua) #8
  br label %do.end13

do.end13:                                         ; preds = %if.then9, %do.body3
  %vddadc_en_ac = getelementptr i8, ptr %charger, i32 -133
  %6 = ptrtoint ptr %vddadc_en_ac to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vddadc_en_ac, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool14.not = icmp eq i8 %7, 0
  br i1 %tobool14.not, label %if.then15, label %do.end13.if.end25_crit_edge

do.end13.if.end25_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then15:                                        ; preds = %do.end13
  %regu = getelementptr i8, ptr %charger, i32 120
  %8 = ptrtoint ptr %regu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regu, align 4
  %call16 = tail call i32 @regulator_enable(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.else, label %do.end21

do.end21:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.147) #11
  br label %if.end25

if.else:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %vddadc_en_ac to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %vddadc_en_ac, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.else, %do.end21, %do.end13.if.end25_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3500000, i32 %vset_uv)
  %cmp.i = icmp slt i32 %vset_uv, 3500000
  br i1 %cmp.i, label %if.end25.ab8500_voltage_to_regval.exit_crit_edge, label %if.end25.for.body.i_crit_edge

if.end25.for.body.i_crit_edge:                    ; preds = %if.end25
  br label %for.body.i

if.end25.ab8500_voltage_to_regval.exit_crit_edge: ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_voltage_to_regval.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end25.for.body.i_crit_edge
  %i.016.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %if.end25.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [78 x i32], ptr @ab8500_charger_voltage_map, i32 0, i32 %i.016.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %vset_uv)
  %cmp2.i = icmp sgt i32 %14, %vset_uv
  br i1 %cmp2.i, label %if.then3.i, label %for.inc.i

if.then3.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = add nsw i32 %i.016.i, -1
  br label %ab8500_voltage_to_regval.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 78
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4600000, i32 %vset_uv)
  %cmp6.i = icmp eq i32 %vset_uv, 4600000
  %..i = select i1 %cmp6.i, i32 77, i32 -1
  br label %ab8500_voltage_to_regval.exit

ab8500_voltage_to_regval.exit:                    ; preds = %for.end.i, %if.then3.i, %if.end25.ab8500_voltage_to_regval.exit_crit_edge
  %retval.0.i240 = phi i32 [ %sub.i, %if.then3.i ], [ 78, %if.end25.ab8500_voltage_to_regval.exit_crit_edge ], [ %..i, %for.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000, i32 %iset_ua)
  %15 = icmp slt i32 %iset_ua, 200000
  br i1 %15, label %ab8500_voltage_to_regval.exit.ab8500_current_to_regval.exit_crit_edge, label %for.inc.1.i

ab8500_voltage_to_regval.exit.ab8500_current_to_regval.exit_crit_edge: ; preds = %ab8500_voltage_to_regval.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_current_to_regval.exit

for.inc.1.i:                                      ; preds = %ab8500_voltage_to_regval.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 300000, i32 %iset_ua)
  %cmp2.2.i = icmp ult i32 %iset_ua, 300000
  br i1 %cmp2.2.i, label %for.inc.1.i.ab8500_current_to_regval.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.ab8500_current_to_regval.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_current_to_regval.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %iset_ua)
  %cmp2.3.i = icmp ult i32 %iset_ua, 400000
  br i1 %cmp2.3.i, label %for.inc.2.i.ab8500_current_to_regval.exit_crit_edge, label %for.inc.3.i

for.inc.2.i.ab8500_current_to_regval.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_current_to_regval.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %iset_ua)
  %cmp2.4.i = icmp ult i32 %iset_ua, 500000
  br i1 %cmp2.4.i, label %for.inc.3.i.ab8500_current_to_regval.exit_crit_edge, label %for.inc.4.i

for.inc.3.i.ab8500_current_to_regval.exit_crit_edge: ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_current_to_regval.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 600000, i32 %iset_ua)
  %cmp2.5.i = icmp ult i32 %iset_ua, 600000
  br i1 %cmp2.5.i, label %for.inc.4.i.ab8500_current_to_regval.exit_crit_edge, label %for.inc.5.i

for.inc.4.i.ab8500_current_to_regval.exit_crit_edge: ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_current_to_regval.exit

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 700000, i32 %iset_ua)
  %cmp2.6.i = icmp ult i32 %iset_ua, 700000
  br i1 %cmp2.6.i, label %for.inc.5.i.ab8500_current_to_regval.exit_crit_edge, label %for.inc.6.i

for.inc.5.i.ab8500_current_to_regval.exit_crit_edge: ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_current_to_regval.exit

for.inc.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 800000, i32 %iset_ua)
  %cmp2.7.i = icmp ult i32 %iset_ua, 800000
  br i1 %cmp2.7.i, label %for.inc.6.i.ab8500_current_to_regval.exit_crit_edge, label %for.inc.7.i

for.inc.6.i.ab8500_current_to_regval.exit_crit_edge: ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_current_to_regval.exit

for.inc.7.i:                                      ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 900000, i32 %iset_ua)
  %cmp2.8.i = icmp ult i32 %iset_ua, 900000
  br i1 %cmp2.8.i, label %for.inc.7.i.ab8500_current_to_regval.exit_crit_edge, label %for.inc.8.i

for.inc.7.i.ab8500_current_to_regval.exit_crit_edge: ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_current_to_regval.exit

for.inc.8.i:                                      ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %iset_ua)
  %cmp2.9.i = icmp ult i32 %iset_ua, 1000000
  br i1 %cmp2.9.i, label %for.inc.8.i.ab8500_current_to_regval.exit_crit_edge, label %for.inc.9.i

for.inc.8.i.ab8500_current_to_regval.exit_crit_edge: ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_current_to_regval.exit

for.inc.9.i:                                      ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1100000, i32 %iset_ua)
  %cmp2.10.i = icmp ult i32 %iset_ua, 1100000
  br i1 %cmp2.10.i, label %for.inc.9.i.ab8500_current_to_regval.exit_crit_edge, label %for.inc.10.i

for.inc.9.i.ab8500_current_to_regval.exit_crit_edge: ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_current_to_regval.exit

for.inc.10.i:                                     ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200000, i32 %iset_ua)
  %cmp2.11.i = icmp ult i32 %iset_ua, 1200000
  br i1 %cmp2.11.i, label %for.inc.10.i.ab8500_current_to_regval.exit_crit_edge, label %for.inc.11.i

for.inc.10.i.ab8500_current_to_regval.exit_crit_edge: ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_current_to_regval.exit

for.inc.11.i:                                     ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1300000, i32 %iset_ua)
  %cmp2.12.i = icmp ult i32 %iset_ua, 1300000
  br i1 %cmp2.12.i, label %for.inc.11.i.ab8500_current_to_regval.exit_crit_edge, label %for.inc.12.i

for.inc.11.i.ab8500_current_to_regval.exit_crit_edge: ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_current_to_regval.exit

for.inc.12.i:                                     ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1400000, i32 %iset_ua)
  %cmp2.13.i = icmp ult i32 %iset_ua, 1400000
  br i1 %cmp2.13.i, label %for.inc.12.i.ab8500_current_to_regval.exit_crit_edge, label %for.inc.13.i

for.inc.12.i.ab8500_current_to_regval.exit_crit_edge: ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_current_to_regval.exit

for.inc.13.i:                                     ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500000, i32 %iset_ua)
  %cmp2.14.i = icmp ult i32 %iset_ua, 1500000
  br i1 %cmp2.14.i, label %for.inc.13.i.ab8500_current_to_regval.exit_crit_edge, label %for.inc.15.i

for.inc.13.i.ab8500_current_to_regval.exit_crit_edge: ; preds = %for.inc.13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_current_to_regval.exit

for.inc.15.i:                                     ; preds = %for.inc.13.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500000, i32 %iset_ua)
  %cmp6.i241 = icmp eq i32 %iset_ua, 1500000
  %..i242 = select i1 %cmp6.i241, i32 15, i32 -1
  br label %ab8500_current_to_regval.exit

ab8500_current_to_regval.exit:                    ; preds = %for.inc.15.i, %for.inc.13.i.ab8500_current_to_regval.exit_crit_edge, %for.inc.12.i.ab8500_current_to_regval.exit_crit_edge, %for.inc.11.i.ab8500_current_to_regval.exit_crit_edge, %for.inc.10.i.ab8500_current_to_regval.exit_crit_edge, %for.inc.9.i.ab8500_current_to_regval.exit_crit_edge, %for.inc.8.i.ab8500_current_to_regval.exit_crit_edge, %for.inc.7.i.ab8500_current_to_regval.exit_crit_edge, %for.inc.6.i.ab8500_current_to_regval.exit_crit_edge, %for.inc.5.i.ab8500_current_to_regval.exit_crit_edge, %for.inc.4.i.ab8500_current_to_regval.exit_crit_edge, %for.inc.3.i.ab8500_current_to_regval.exit_crit_edge, %for.inc.2.i.ab8500_current_to_regval.exit_crit_edge, %for.inc.1.i.ab8500_current_to_regval.exit_crit_edge, %ab8500_voltage_to_regval.exit.ab8500_current_to_regval.exit_crit_edge
  %retval.0.i243 = phi i32 [ 0, %ab8500_voltage_to_regval.exit.ab8500_current_to_regval.exit_crit_edge ], [ %..i242, %for.inc.15.i ], [ 1, %for.inc.1.i.ab8500_current_to_regval.exit_crit_edge ], [ 2, %for.inc.2.i.ab8500_current_to_regval.exit_crit_edge ], [ 3, %for.inc.3.i.ab8500_current_to_regval.exit_crit_edge ], [ 4, %for.inc.4.i.ab8500_current_to_regval.exit_crit_edge ], [ 5, %for.inc.5.i.ab8500_current_to_regval.exit_crit_edge ], [ 6, %for.inc.6.i.ab8500_current_to_regval.exit_crit_edge ], [ 7, %for.inc.7.i.ab8500_current_to_regval.exit_crit_edge ], [ 8, %for.inc.8.i.ab8500_current_to_regval.exit_crit_edge ], [ 9, %for.inc.9.i.ab8500_current_to_regval.exit_crit_edge ], [ 10, %for.inc.10.i.ab8500_current_to_regval.exit_crit_edge ], [ 11, %for.inc.11.i.ab8500_current_to_regval.exit_crit_edge ], [ 12, %for.inc.12.i.ab8500_current_to_regval.exit_crit_edge ], [ 13, %for.inc.13.i.ab8500_current_to_regval.exit_crit_edge ]
  %bm = getelementptr i8, ptr %charger, i32 -84
  %16 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bm, align 4
  %chg_params = getelementptr inbounds %struct.ab8500_bm_data, ptr %17, i32 0, i32 22
  %18 = ptrtoint ptr %chg_params to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chg_params, align 4
  %ac_curr_max_ua = getelementptr inbounds %struct.ab8500_bm_charger_parameters, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %ac_curr_max_ua to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ac_curr_max_ua, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500000, i32 %21)
  %22 = icmp sgt i32 %21, 1500000
  %23 = or i32 %retval.0.i243, %retval.0.i240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %24 = icmp slt i32 %23, 0
  %or.cond236 = select i1 %24, i1 true, i1 %22
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr, align 4
  br i1 %or.cond236, label %do.end35, label %if.end37

do.end35:                                         ; preds = %ab8500_current_to_regval.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.151) #11
  br label %cleanup

if.end37:                                         ; preds = %ab8500_current_to_regval.exit
  %conv = trunc i32 %retval.0.i240 to i8
  %call39 = tail call i32 @abx500_set_register_interruptible(ptr noundef %26, i8 noundef zeroext 11, i8 noundef zeroext 64, i8 noundef zeroext %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end46, label %do.end44

do.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.144) #11
  br label %cleanup

if.end46:                                         ; preds = %if.end37
  %29 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bm, align 4
  %chg_params48 = getelementptr inbounds %struct.ab8500_bm_data, ptr %30, i32 0, i32 22
  %31 = ptrtoint ptr %chg_params48 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chg_params48, align 4
  %ac_curr_max_ua49 = getelementptr inbounds %struct.ab8500_bm_charger_parameters, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %ac_curr_max_ua49 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ac_curr_max_ua49, align 4
  %call.i = tail call fastcc i32 @ab8500_charger_set_current(ptr noundef %add.ptr, i32 noundef %34, i32 noundef 130) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool51.not = icmp eq i32 %call.i, 0
  br i1 %tobool51.not, label %if.end57, label %do.end55

do.end55:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.144) #11
  br label %cleanup

if.end57:                                         ; preds = %if.end46
  %call.i275 = tail call fastcc i32 @ab8500_charger_set_current(ptr noundef %add.ptr, i32 noundef %iset_ua, i32 noundef 66) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i275)
  %tobool59.not = icmp eq i32 %call.i275, 0
  br i1 %tobool59.not, label %if.end65, label %do.end63

do.end63:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.144) #11
  br label %cleanup

if.end65:                                         ; preds = %if.end57
  %39 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bm, align 4
  %enable_overshoot = getelementptr inbounds %struct.ab8500_bm_data, ptr %40, i32 0, i32 11
  %41 = ptrtoint ptr %enable_overshoot to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %enable_overshoot, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool67.not = icmp eq i8 %42, 0
  %spec.select = select i1 %tobool67.not, i8 3, i8 1
  %43 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr, align 4
  %call73 = tail call i32 @abx500_set_register_interruptible(ptr noundef %44, i8 noundef zeroext 11, i8 noundef zeroext -128, i8 noundef zeroext %spec.select) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  %45 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr, align 4
  br i1 %tobool74.not, label %if.end80, label %do.end78

do.end78:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.144) #11
  br label %cleanup

if.end80:                                         ; preds = %if.end65
  %call.i276 = tail call i32 @abx500_set_register_interruptible(ptr noundef %46, i8 noundef zeroext 11, i8 noundef zeroext 83, i8 noundef zeroext 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i276)
  %tobool1.not.i = icmp eq i32 %call.i276, 0
  %47 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr, align 4
  br i1 %tobool1.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.195) #11
  br label %ab8500_charger_led_en.exit

if.end.i:                                         ; preds = %if.end80
  %call5.i = tail call i32 @abx500_set_register_interruptible(ptr noundef %48, i8 noundef zeroext 11, i8 noundef zeroext 84, i8 noundef zeroext -65) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.if.end89_crit_edge, label %do.end10.i

if.end.i.if.end89_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

do.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.198) #11
  br label %ab8500_charger_led_en.exit

ab8500_charger_led_en.exit:                       ; preds = %do.end10.i, %do.end.i
  %retval.0.i277 = phi i32 [ %call.i276, %do.end.i ], [ %call5.i, %do.end10.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i277)
  %cmp82 = icmp slt i32 %retval.0.i277, 0
  br i1 %cmp82, label %do.end87, label %ab8500_charger_led_en.exit.if.end89_crit_edge

ab8500_charger_led_en.exit.if.end89_crit_edge:    ; preds = %ab8500_charger_led_en.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

do.end87:                                         ; preds = %ab8500_charger_led_en.exit
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.165) #11
  br label %if.end89

if.end89:                                         ; preds = %do.end87, %ab8500_charger_led_en.exit.if.end89_crit_edge, %if.end.i.if.end89_crit_edge
  %retval.0.i277289 = phi i32 [ %retval.0.i277, %do.end87 ], [ %retval.0.i277, %ab8500_charger_led_en.exit.if.end89_crit_edge ], [ 0, %if.end.i.if.end89_crit_edge ]
  %charger_online = getelementptr i8, ptr %charger, i32 76
  %53 = ptrtoint ptr %charger_online to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %charger_online, align 4
  br label %if.end166

if.else91:                                        ; preds = %entry
  %parent = getelementptr i8, ptr %charger, i32 -104
  %54 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %parent, align 4
  %version.i.i = getelementptr inbounds %struct.ab8500, ptr %55, i32 0, i32 6
  %56 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.i.not.i = icmp eq i32 %57, 0
  br i1 %cmp.i.not.i, label %is_ab8500_1p1_or_earlier.exit, label %if.else91.if.else117_crit_edge

if.else91.if.else117_crit_edge:                   ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else117

is_ab8500_1p1_or_earlier.exit:                    ; preds = %if.else91
  %chip_id.i = getelementptr inbounds %struct.ab8500, ptr %55, i32 0, i32 7
  %58 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %59)
  %cmp.i278 = icmp ugt i8 %59, 17
  br i1 %cmp.i278, label %is_ab8500_1p1_or_earlier.exit.if.else117_crit_edge, label %if.then94

is_ab8500_1p1_or_earlier.exit.if.else117_crit_edge: ; preds = %is_ab8500_1p1_or_earlier.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else117

if.then94:                                        ; preds = %is_ab8500_1p1_or_earlier.exit
  %ac_conn = getelementptr i8, ptr %charger, i32 -134
  %60 = ptrtoint ptr %ac_conn to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %ac_conn, align 2, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool95.not = icmp eq i8 %61, 0
  br i1 %tobool95.not, label %if.then94.if.end99_crit_edge, label %if.then96

if.then94.if.end99_crit_edge:                     ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99

if.then96:                                        ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #10
  %charger_wq = getelementptr i8, ptr %charger, i32 124
  %62 = ptrtoint ptr %charger_wq to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %charger_wq, align 4
  %kick_wd_work = getelementptr i8, ptr %charger, i32 520
  %call97 = tail call i32 @round_jiffies(i32 noundef 6000) #8
  %call.i279 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %63, ptr noundef %kick_wd_work, i32 noundef %call97) #8
  br label %if.end99

if.end99:                                         ; preds = %if.then96, %if.then94.if.end99_crit_edge
  %64 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %add.ptr, align 4
  %call101 = tail call i32 @abx500_set_register_interruptible(ptr noundef %65, i8 noundef zeroext 11, i8 noundef zeroext 64, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end108, label %do.end106

do.end106:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.144) #11
  br label %cleanup

if.end108:                                        ; preds = %if.end99
  %call.i280 = tail call fastcc i32 @ab8500_charger_set_current(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 66) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i280)
  %tobool110.not = icmp eq i32 %call.i280, 0
  br i1 %tobool110.not, label %if.end108.if.end127_crit_edge, label %do.end114

if.end108.if.end127_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

do.end114:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.144) #11
  br label %cleanup

if.else117:                                       ; preds = %is_ab8500_1p1_or_earlier.exit.if.else117_crit_edge, %if.else91.if.else117_crit_edge
  %70 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %add.ptr, align 4
  %call119 = tail call i32 @abx500_set_register_interruptible(ptr noundef %71, i8 noundef zeroext 11, i8 noundef zeroext -128, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.else117.if.end127_crit_edge, label %do.end124

if.else117.if.end127_crit_edge:                   ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

do.end124:                                        ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.144) #11
  br label %cleanup

if.end127:                                        ; preds = %if.else117.if.end127_crit_edge, %if.end108.if.end127_crit_edge
  %74 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %add.ptr, align 4
  %call14.i = tail call i32 @abx500_set_register_interruptible(ptr noundef %75, i8 noundef zeroext 11, i8 noundef zeroext 83, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end127.if.end136_crit_edge, label %ab8500_charger_led_en.exit282

if.end127.if.end136_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end136

ab8500_charger_led_en.exit282:                    ; preds = %if.end127
  %76 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.201) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp129 = icmp slt i32 %call14.i, 0
  br i1 %cmp129, label %do.end134, label %ab8500_charger_led_en.exit282.if.end136_crit_edge

ab8500_charger_led_en.exit282.if.end136_crit_edge: ; preds = %ab8500_charger_led_en.exit282
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end136

do.end134:                                        ; preds = %ab8500_charger_led_en.exit282
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.174) #11
  br label %if.end136

if.end136:                                        ; preds = %do.end134, %ab8500_charger_led_en.exit282.if.end136_crit_edge, %if.end127.if.end136_crit_edge
  %charger_online138 = getelementptr i8, ptr %charger, i32 76
  %80 = ptrtoint ptr %charger_online138 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %charger_online138, align 4
  %wd_expired = getelementptr i8, ptr %charger, i32 88
  %81 = ptrtoint ptr %wd_expired to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %wd_expired, align 4
  %vddadc_en_ac140 = getelementptr i8, ptr %charger, i32 -133
  %82 = ptrtoint ptr %vddadc_en_ac140 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %vddadc_en_ac140, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool141.not = icmp eq i8 %83, 0
  br i1 %tobool141.not, label %if.end136.do.body147_crit_edge, label %if.then142

if.end136.do.body147_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body147

if.then142:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  %regu143 = getelementptr i8, ptr %charger, i32 120
  %84 = ptrtoint ptr %regu143 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regu143, align 4
  %call144 = tail call i32 @regulator_disable(ptr noundef %85) #8
  %86 = ptrtoint ptr %vddadc_en_ac140 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %vddadc_en_ac140, align 1
  br label %do.body147

do.body147:                                       ; preds = %if.then142, %if.end136.do.body147_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_ac_en.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_ac_en, %if.end166)) #8
          to label %if.then161 [label %if.end166], !srcloc !771

if.then161:                                       ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_ac_en.__UNIQUE_ID_ddebug317, ptr noundef %88, ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.144) #8
  br label %if.end166

if.end166:                                        ; preds = %if.then161, %do.body147, %if.end89
  %ret.0 = phi i32 [ %retval.0.i277289, %if.end89 ], [ %call14.i, %if.then161 ], [ %call14.i, %do.body147 ]
  %89 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %charger, align 4
  %tobool.not.i = icmp eq ptr %90, null
  br i1 %tobool.not.i, label %if.end166.cleanup_crit_edge, label %if.end.i284

if.end166.cleanup_crit_edge:                      ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i284:                                      ; preds = %if.end166
  %autopower_cfg.i = getelementptr i8, ptr %charger, i32 -118
  %91 = ptrtoint ptr %autopower_cfg.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %autopower_cfg.i, align 2, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool1.not.i283 = icmp eq i8 %92, 0
  br i1 %tobool1.not.i283, label %if.end.i284.if.end23.i_crit_edge, label %if.then2.i

if.end.i284.if.end23.i_crit_edge:                 ; preds = %if.end.i284
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then2.i:                                       ; preds = %if.end.i284
  %usb.i = getelementptr i8, ptr %charger, i32 96
  %93 = ptrtoint ptr %usb.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %usb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool3.not.i = icmp eq i32 %94, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %if.then2.i.if.else.i_crit_edge

if.then2.i.if.else.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then2.i
  %ac.i = getelementptr i8, ptr %charger, i32 72
  %95 = ptrtoint ptr %ac.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %ac.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool5.not.i = icmp eq i32 %96, 0
  br i1 %tobool5.not.i, label %land.lhs.true6.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %autopower.i = getelementptr i8, ptr %charger, i32 -119
  %97 = ptrtoint ptr %autopower.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %autopower.i, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool7.not.i = icmp eq i8 %98, 0
  br i1 %tobool7.not.i, label %land.lhs.true6.i.if.else.i_crit_edge, label %if.then8.i

land.lhs.true6.i.if.else.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then8.i:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  %99 = ptrtoint ptr %autopower.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %autopower.i, align 1
  br label %if.end23.sink.split.i

if.else.i:                                        ; preds = %land.lhs.true6.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.then2.i.if.else.i_crit_edge
  %autopower10.i = getelementptr i8, ptr %charger, i32 -119
  %100 = ptrtoint ptr %autopower10.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %autopower10.i, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool11.not.i = icmp eq i8 %101, 0
  br i1 %tobool11.not.i, label %land.lhs.true12.i, label %if.else.i.if.end23.i_crit_edge

if.else.i.if.end23.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

land.lhs.true12.i:                                ; preds = %if.else.i
  %ac13.i = getelementptr i8, ptr %charger, i32 72
  %102 = ptrtoint ptr %ac13.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ac13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool15.not.i285 = icmp ne i32 %103, 0
  %tobool3.not.not.i = xor i1 %tobool3.not.i, true
  %brmerge.i = select i1 %tobool15.not.i285, i1 true, i1 %tobool3.not.not.i
  br i1 %brmerge.i, label %if.then19.i, label %land.lhs.true12.i.if.end23.i_crit_edge

land.lhs.true12.i.if.end23.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then19.i:                                      ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #10
  %104 = ptrtoint ptr %autopower10.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 1, ptr %autopower10.i, align 1
  br label %if.end23.sink.split.i

if.end23.sink.split.i:                            ; preds = %if.then19.i, %if.then8.i
  %.sink.i = phi i1 [ false, %if.then8.i ], [ true, %if.then19.i ]
  tail call fastcc void @ab8500_enable_disable_sw_fallback(ptr noundef %add.ptr, i1 noundef zeroext %.sink.i) #8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end23.sink.split.i, %land.lhs.true12.i.if.end23.i_crit_edge, %if.else.i.if.end23.i_crit_edge, %if.end.i284.if.end23.i_crit_edge
  tail call void @power_supply_changed(ptr noundef nonnull %90) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end23.i, %if.end166.cleanup_crit_edge, %do.end124, %do.end114, %do.end106, %do.end78, %do.end63, %do.end55, %do.end44, %do.end35, %do.end
  %retval.0 = phi i32 [ -6, %do.end35 ], [ %call39, %do.end44 ], [ %call.i, %do.end55 ], [ %call.i275, %do.end63 ], [ %call73, %do.end78 ], [ -6, %do.end ], [ %call101, %do.end106 ], [ %call.i280, %do.end114 ], [ %call119, %do.end124 ], [ %ret.0, %if.end166.cleanup_crit_edge ], [ %ret.0, %if.end23.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_charger_ac_check_enable(ptr noundef %charger, i32 noundef %vset_uv, i32 noundef %iset_ua) #2 align 64 {
entry:
  %mainch_ctrl1 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mainch_ctrl1) #8
  %0 = ptrtoint ptr %mainch_ctrl1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %mainch_ctrl1, align 1
  %add.ptr = getelementptr i8, ptr %charger, i32 -140
  %ac = getelementptr i8, ptr %charger, i32 72
  %1 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ac, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  %call = call i32 @abx500_get_register_interruptible(ptr noundef %4, i8 noundef zeroext 11, i8 noundef zeroext -128, ptr noundef nonnull %mainch_ctrl1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %do.body4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.203, i32 noundef 1814) #11
  br label %cleanup

do.body4:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_ac_check_enable.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_ac_check_enable, %do.end15)) #8
          to label %if.then11 [label %do.end15], !srcloc !771

if.then11:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  %9 = ptrtoint ptr %mainch_ctrl1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mainch_ctrl1, align 1
  %conv = zext i8 %10 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_ac_check_enable.__UNIQUE_ID_ddebug323, ptr noundef %8, ptr noundef nonnull @.str.205, i32 noundef %conv) #8
  br label %do.end15

do.end15:                                         ; preds = %if.then11, %do.body4
  %11 = ptrtoint ptr %mainch_ctrl1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mainch_ctrl1, align 1
  %13 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool17.not = icmp eq i8 %13, 0
  br i1 %tobool17.not, label %do.end21, label %do.end15.cleanup_crit_edge

do.end15.cleanup_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end21:                                         ; preds = %do.end15
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.207) #11
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 4
  %call24 = call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %17, i8 noundef zeroext 11, i8 noundef zeroext 86, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %do.end30, label %if.end32

do.end30:                                         ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.211, i32 noundef 1827) #11
  br label %cleanup

if.end32:                                         ; preds = %do.end21
  %usb_chg = getelementptr i8, ptr %charger, i32 36
  %call33 = call i32 @ab8500_charger_ac_en(ptr noundef %usb_chg, i32 noundef 1, i32 noundef %vset_uv, i32 noundef %iset_ua)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %do.end39, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.214, i32 noundef 1834) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %if.end32.cleanup_crit_edge, %do.end30, %do.end15.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ %call24, %do.end30 ], [ %call33, %do.end39 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %do.end15.cleanup_crit_edge ], [ %call33, %if.end32.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mainch_ctrl1) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_charger_watchdog_kick(ptr nocapture noundef readonly %charger) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %charger, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %type = getelementptr inbounds %struct.power_supply_desc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 3, label %entry.if.end10_crit_edge
    i32 4, label %if.then5
  ]

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %entry.if.end10_crit_edge
  %.sink = phi i32 [ -176, %if.then5 ], [ -140, %entry.if.end10_crit_edge ]
  %add.ptr8 = getelementptr i8, ptr %charger, i32 %.sink
  %7 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr8, align 4
  %call = tail call i32 @abx500_set_register_interruptible(ptr noundef %8, i8 noundef zeroext 11, i8 noundef zeroext 81, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end10.cleanup_crit_edge, label %do.end

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.216) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %entry.cleanup_crit_edge ], [ %call, %do.end ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_charger_update_charger_current(ptr noundef %charger, i32 noundef %ich_out_ua) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %charger, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %type = getelementptr inbounds %struct.power_supply_desc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.385)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 3, label %entry.if.end10_crit_edge
    i32 4, label %if.then5
  ]

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %entry.if.end10_crit_edge
  %.sink = phi i32 [ -176, %if.then5 ], [ -140, %entry.if.end10_crit_edge ]
  %add.ptr8 = getelementptr i8, ptr %charger, i32 %.sink
  %call.i = tail call fastcc i32 @ab8500_charger_set_current(ptr noundef %add.ptr8, i32 noundef %ich_out_ua, i32 noundef 66) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end12, label %if.end10.cleanup.sink.split_crit_edge

if.end10.cleanup.sink.split_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end12:                                         ; preds = %if.end10
  %7 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr8, align 4
  %call14 = tail call i32 @abx500_set_register_interruptible(ptr noundef %8, i8 noundef zeroext 11, i8 noundef zeroext 86, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end12.cleanup_crit_edge, label %if.end12.cleanup.sink.split_crit_edge

if.end12.cleanup.sink.split_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end12.cleanup.sink.split_crit_edge, %if.end10.cleanup.sink.split_crit_edge
  %.str.154.sink = phi ptr [ @.str.160, %if.end10.cleanup.sink.split_crit_edge ], [ @.str.154, %if.end12.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i, %if.end10.cleanup.sink.split_crit_edge ], [ %call14, %if.end12.cleanup.sink.split_crit_edge ]
  %9 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull %.str.154.sink, ptr noundef nonnull @.str.218) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %entry.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_charger_usb_en(ptr noundef %charger, i32 noundef %enable, i32 noundef %vset_uv, i32 noundef %ich_out_ua) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %charger, i32 -176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %do.body105, label %if.then

if.then:                                          ; preds = %entry
  %usb = getelementptr i8, ptr %charger, i32 60
  %0 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.221) #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  %vddadc_en_usb = getelementptr i8, ptr %charger, i32 -168
  %4 = ptrtoint ptr %vddadc_en_usb to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vddadc_en_usb, align 4, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.do.body14_crit_edge

if.end.do.body14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

if.then4:                                         ; preds = %if.end
  %regu = getelementptr i8, ptr %charger, i32 84
  %6 = ptrtoint ptr %regu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regu, align 4
  %call = tail call i32 @regulator_enable(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.else, label %do.end9

do.end9:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.147) #11
  br label %do.body14

if.else:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %vddadc_en_usb to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %vddadc_en_usb, align 4
  br label %do.body14

do.body14:                                        ; preds = %if.else, %do.end9, %if.end.do.body14_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_usb_en.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_usb_en, %do.end25)) #8
          to label %if.then21 [label %do.end25], !srcloc !771

if.then21:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_usb_en.__UNIQUE_ID_ddebug318, ptr noundef %12, ptr noundef nonnull @.str.225, i32 noundef %vset_uv, i32 noundef %ich_out_ua) #8
  br label %do.end25

do.end25:                                         ; preds = %if.then21, %do.body14
  call void @__sanitizer_cov_trace_const_cmp4(i32 3500000, i32 %vset_uv)
  %cmp.i = icmp slt i32 %vset_uv, 3500000
  br i1 %cmp.i, label %do.end25.ab8500_voltage_to_regval.exit_crit_edge, label %do.end25.for.body.i_crit_edge

do.end25.for.body.i_crit_edge:                    ; preds = %do.end25
  br label %for.body.i

do.end25.ab8500_voltage_to_regval.exit_crit_edge: ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_voltage_to_regval.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end25.for.body.i_crit_edge
  %i.016.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %do.end25.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [78 x i32], ptr @ab8500_charger_voltage_map, i32 0, i32 %i.016.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %vset_uv)
  %cmp2.i = icmp sgt i32 %14, %vset_uv
  br i1 %cmp2.i, label %if.then3.i, label %for.inc.i

if.then3.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = add nsw i32 %i.016.i, -1
  br label %ab8500_voltage_to_regval.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 78
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4600000, i32 %vset_uv)
  %cmp6.i = icmp eq i32 %vset_uv, 4600000
  %..i = select i1 %cmp6.i, i32 77, i32 -1
  br label %ab8500_voltage_to_regval.exit

ab8500_voltage_to_regval.exit:                    ; preds = %for.end.i, %if.then3.i, %do.end25.ab8500_voltage_to_regval.exit_crit_edge
  %retval.0.i266 = phi i32 [ %sub.i, %if.then3.i ], [ 78, %do.end25.ab8500_voltage_to_regval.exit_crit_edge ], [ %..i, %for.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500000, i32 %ich_out_ua)
  %15 = icmp sgt i32 %ich_out_ua, 1500000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i266)
  %cmp = icmp slt i32 %retval.0.i266, 0
  %or.cond = or i1 %15, %cmp
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 4
  br i1 %or.cond, label %do.end32, label %if.end34

do.end32:                                         ; preds = %ab8500_voltage_to_regval.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.151) #11
  br label %cleanup

if.end34:                                         ; preds = %ab8500_voltage_to_regval.exit
  %conv = trunc i32 %retval.0.i266 to i8
  %call36 = tail call i32 @abx500_set_register_interruptible(ptr noundef %17, i8 noundef zeroext 11, i8 noundef zeroext 64, i8 noundef zeroext %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end43, label %do.end41

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.222) #11
  br label %cleanup

if.end43:                                         ; preds = %if.end34
  %bm = getelementptr i8, ptr %charger, i32 -120
  %20 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bm, align 4
  %enable_overshoot = getelementptr inbounds %struct.ab8500_bm_data, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %enable_overshoot to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %enable_overshoot, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool44.not = icmp eq i8 %23, 0
  %spec.select = select i1 %tobool44.not, i8 3, i8 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_usb_en.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_usb_en, %do.end65)) #8
          to label %if.then61 [label %do.end65], !srcloc !771

if.then61:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_usb_en.__UNIQUE_ID_ddebug319, ptr noundef %25, ptr noundef nonnull @.str.230) #8
  br label %do.end65

do.end65:                                         ; preds = %if.then61, %if.end43
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 4
  %call69 = tail call i32 @abx500_set_register_interruptible(ptr noundef %27, i8 noundef zeroext 11, i8 noundef zeroext -64, i8 noundef zeroext %spec.select) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr, align 4
  br i1 %tobool70.not, label %if.end76, label %do.end74

do.end74:                                         ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.222) #11
  br label %cleanup

if.end76:                                         ; preds = %do.end65
  %call.i = tail call i32 @abx500_set_register_interruptible(ptr noundef %29, i8 noundef zeroext 11, i8 noundef zeroext 83, i8 noundef zeroext 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr, align 4
  br i1 %tobool1.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.195) #11
  br label %ab8500_charger_led_en.exit

if.end.i:                                         ; preds = %if.end76
  %call5.i = tail call i32 @abx500_set_register_interruptible(ptr noundef %31, i8 noundef zeroext 11, i8 noundef zeroext 84, i8 noundef zeroext -65) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.if.end85_crit_edge, label %do.end10.i

if.end.i.if.end85_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

do.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.198) #11
  br label %ab8500_charger_led_en.exit

ab8500_charger_led_en.exit:                       ; preds = %do.end10.i, %do.end.i
  %retval.0.i270 = phi i32 [ %call.i, %do.end.i ], [ %call5.i, %do.end10.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i270)
  %cmp78 = icmp slt i32 %retval.0.i270, 0
  br i1 %cmp78, label %do.end83, label %ab8500_charger_led_en.exit.if.end85_crit_edge

ab8500_charger_led_en.exit.if.end85_crit_edge:    ; preds = %ab8500_charger_led_en.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

do.end83:                                         ; preds = %ab8500_charger_led_en.exit
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.165) #11
  br label %if.end85

if.end85:                                         ; preds = %do.end83, %ab8500_charger_led_en.exit.if.end85_crit_edge, %if.end.i.if.end85_crit_edge
  %charger_online = getelementptr i8, ptr %charger, i32 64
  %36 = ptrtoint ptr %charger_online to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %charger_online, align 4
  %max_usb_in_curr = getelementptr i8, ptr %charger, i32 -48
  %37 = ptrtoint ptr %max_usb_in_curr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_usb_in_curr, align 4
  %call87 = tail call fastcc i32 @ab8500_charger_set_vbus_in_curr(ptr noundef %add.ptr, i32 noundef %38)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end94, label %do.end92

do.end92:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.236) #11
  br label %cleanup

if.end94:                                         ; preds = %if.end85
  %call.i271 = tail call fastcc i32 @ab8500_charger_set_current(ptr noundef %add.ptr, i32 noundef %ich_out_ua, i32 noundef 66) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i271)
  %tobool96.not = icmp eq i32 %call.i271, 0
  br i1 %tobool96.not, label %if.end102, label %do.end100

do.end100:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.222) #11
  br label %cleanup

if.end102:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  %charger_wq = getelementptr i8, ptr %charger, i32 88
  %43 = ptrtoint ptr %charger_wq to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %charger_wq, align 4
  %check_vbat_work = getelementptr i8, ptr %charger, i32 184
  %call.i272 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %44, ptr noundef %check_vbat_work, i32 noundef 100) #8
  br label %if.end189

do.body105:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_usb_en.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_usb_en, %do.end123)) #8
          to label %if.then119 [label %do.end123], !srcloc !771

if.then119:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_usb_en.__UNIQUE_ID_ddebug320, ptr noundef %46, ptr noundef nonnull @.str.240, ptr noundef nonnull @.str.222) #8
  br label %do.end123

do.end123:                                        ; preds = %if.then119, %do.body105
  %47 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr, align 4
  %call125 = tail call i32 @abx500_set_register_interruptible(ptr noundef %48, i8 noundef zeroext 11, i8 noundef zeroext -64, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  %49 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr, align 4
  br i1 %tobool126.not, label %if.end132, label %do.end130

do.end130:                                        ; preds = %do.end123
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.222) #11
  br label %cleanup

if.end132:                                        ; preds = %do.end123
  %call14.i = tail call i32 @abx500_set_register_interruptible(ptr noundef %50, i8 noundef zeroext 11, i8 noundef zeroext 83, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end132.if.end141_crit_edge, label %ab8500_charger_led_en.exit274

if.end132.if.end141_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end141

ab8500_charger_led_en.exit274:                    ; preds = %if.end132
  %51 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.201) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp134 = icmp slt i32 %call14.i, 0
  br i1 %cmp134, label %do.end139, label %ab8500_charger_led_en.exit274.if.end141_crit_edge

ab8500_charger_led_en.exit274.if.end141_crit_edge: ; preds = %ab8500_charger_led_en.exit274
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end141

do.end139:                                        ; preds = %ab8500_charger_led_en.exit274
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.174) #11
  br label %if.end141

if.end141:                                        ; preds = %do.end139, %ab8500_charger_led_en.exit274.if.end141_crit_edge, %if.end132.if.end141_crit_edge
  %call142 = tail call fastcc i32 @ab8500_charger_set_vbus_in_curr(ptr noundef %add.ptr, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %if.end149, label %do.end147

do.end147:                                        ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.236) #11
  br label %cleanup

if.end149:                                        ; preds = %if.end141
  %call.i275 = tail call fastcc i32 @ab8500_charger_set_current(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 66) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i275)
  %tobool151.not = icmp eq i32 %call.i275, 0
  br i1 %tobool151.not, label %if.end157, label %do.end155

do.end155:                                        ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.222) #11
  br label %cleanup

if.end157:                                        ; preds = %if.end149
  %charger_online159 = getelementptr i8, ptr %charger, i32 64
  %59 = ptrtoint ptr %charger_online159 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %charger_online159, align 4
  %wd_expired = getelementptr i8, ptr %charger, i32 76
  %60 = ptrtoint ptr %wd_expired to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %wd_expired, align 4
  %vddadc_en_usb161 = getelementptr i8, ptr %charger, i32 -168
  %61 = ptrtoint ptr %vddadc_en_usb161 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %vddadc_en_usb161, align 4, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool162.not = icmp eq i8 %62, 0
  br i1 %tobool162.not, label %if.end157.do.body168_crit_edge, label %if.then163

if.end157.do.body168_crit_edge:                   ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body168

if.then163:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #10
  %regu164 = getelementptr i8, ptr %charger, i32 84
  %63 = ptrtoint ptr %regu164 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regu164, align 4
  %call165 = tail call i32 @regulator_disable(ptr noundef %64) #8
  %65 = ptrtoint ptr %vddadc_en_usb161 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %vddadc_en_usb161, align 4
  br label %do.body168

do.body168:                                       ; preds = %if.then163, %if.end157.do.body168_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_usb_en.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_usb_en, %do.end186)) #8
          to label %if.then182 [label %do.end186], !srcloc !771

if.then182:                                       ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_usb_en.__UNIQUE_ID_ddebug321, ptr noundef %67, ptr noundef nonnull @.str.240, ptr noundef nonnull @.str.222) #8
  br label %do.end186

do.end186:                                        ; preds = %if.then182, %do.body168
  %check_vbat_work187 = getelementptr i8, ptr %charger, i32 184
  %call188 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %check_vbat_work187) #8
  br label %if.end189

if.end189:                                        ; preds = %do.end186, %if.end102
  %68 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %charger, align 4
  %tobool.not.i = icmp eq ptr %69, null
  br i1 %tobool.not.i, label %if.end189.cleanup_crit_edge, label %if.end.i277

if.end189.cleanup_crit_edge:                      ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i277:                                      ; preds = %if.end189
  %autopower_cfg.i = getelementptr i8, ptr %charger, i32 -154
  %70 = ptrtoint ptr %autopower_cfg.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %autopower_cfg.i, align 2, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool1.not.i276 = icmp eq i8 %71, 0
  br i1 %tobool1.not.i276, label %if.end.i277.if.end23.i_crit_edge, label %if.then2.i

if.end.i277.if.end23.i_crit_edge:                 ; preds = %if.end.i277
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then2.i:                                       ; preds = %if.end.i277
  %usb.i = getelementptr i8, ptr %charger, i32 60
  %72 = ptrtoint ptr %usb.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %usb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool3.not.i = icmp eq i32 %73, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %if.then2.i.if.else.i_crit_edge

if.then2.i.if.else.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then2.i
  %ac.i = getelementptr i8, ptr %charger, i32 36
  %74 = ptrtoint ptr %ac.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ac.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool5.not.i = icmp eq i32 %75, 0
  br i1 %tobool5.not.i, label %land.lhs.true6.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %autopower.i = getelementptr i8, ptr %charger, i32 -155
  %76 = ptrtoint ptr %autopower.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %autopower.i, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool7.not.i = icmp eq i8 %77, 0
  br i1 %tobool7.not.i, label %land.lhs.true6.i.if.else.i_crit_edge, label %if.then8.i

land.lhs.true6.i.if.else.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then8.i:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %autopower.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %autopower.i, align 1
  br label %if.end23.sink.split.i

if.else.i:                                        ; preds = %land.lhs.true6.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.then2.i.if.else.i_crit_edge
  %autopower10.i = getelementptr i8, ptr %charger, i32 -155
  %79 = ptrtoint ptr %autopower10.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %autopower10.i, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool11.not.i = icmp eq i8 %80, 0
  br i1 %tobool11.not.i, label %land.lhs.true12.i, label %if.else.i.if.end23.i_crit_edge

if.else.i.if.end23.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

land.lhs.true12.i:                                ; preds = %if.else.i
  %ac13.i = getelementptr i8, ptr %charger, i32 36
  %81 = ptrtoint ptr %ac13.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %ac13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool15.not.i278 = icmp ne i32 %82, 0
  %tobool3.not.not.i = xor i1 %tobool3.not.i, true
  %brmerge.i = select i1 %tobool15.not.i278, i1 true, i1 %tobool3.not.not.i
  br i1 %brmerge.i, label %if.then19.i, label %land.lhs.true12.i.if.end23.i_crit_edge

land.lhs.true12.i.if.end23.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then19.i:                                      ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %autopower10.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %autopower10.i, align 1
  br label %if.end23.sink.split.i

if.end23.sink.split.i:                            ; preds = %if.then19.i, %if.then8.i
  %.sink.i = phi i1 [ false, %if.then8.i ], [ true, %if.then19.i ]
  tail call fastcc void @ab8500_enable_disable_sw_fallback(ptr noundef %add.ptr, i1 noundef zeroext %.sink.i) #8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end23.sink.split.i, %land.lhs.true12.i.if.end23.i_crit_edge, %if.else.i.if.end23.i_crit_edge, %if.end.i277.if.end23.i_crit_edge
  tail call void @power_supply_changed(ptr noundef nonnull %69) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end23.i, %if.end189.cleanup_crit_edge, %do.end155, %do.end147, %do.end130, %do.end100, %do.end92, %do.end74, %do.end41, %do.end32, %do.end
  %retval.0 = phi i32 [ -6, %do.end32 ], [ %call36, %do.end41 ], [ %call69, %do.end74 ], [ %call87, %do.end92 ], [ %call.i271, %do.end100 ], [ -6, %do.end ], [ %call125, %do.end130 ], [ %call142, %do.end147 ], [ %call.i275, %do.end155 ], [ 0, %if.end189.cleanup_crit_edge ], [ 0, %if.end23.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_charger_usb_check_enable(ptr noundef %charger, i32 noundef %vset_uv, i32 noundef %iset_ua) #2 align 64 {
entry:
  %usbch_ctrl1 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %usbch_ctrl1) #8
  %0 = ptrtoint ptr %usbch_ctrl1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %usbch_ctrl1, align 1
  %add.ptr = getelementptr i8, ptr %charger, i32 -176
  %usb = getelementptr i8, ptr %charger, i32 60
  %1 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %usb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  %call = call i32 @abx500_get_register_interruptible(ptr noundef %4, i8 noundef zeroext 11, i8 noundef zeroext -64, ptr noundef nonnull %usbch_ctrl1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %do.body4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.203, i32 noundef 1765) #11
  br label %cleanup

do.body4:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_usb_check_enable.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_usb_check_enable, %do.end15)) #8
          to label %if.then11 [label %do.end15], !srcloc !771

if.then11:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  %9 = ptrtoint ptr %usbch_ctrl1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %usbch_ctrl1, align 1
  %conv = zext i8 %10 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_usb_check_enable.__UNIQUE_ID_ddebug322, ptr noundef %8, ptr noundef nonnull @.str.253, i32 noundef %conv) #8
  br label %do.end15

do.end15:                                         ; preds = %if.then11, %do.body4
  %11 = ptrtoint ptr %usbch_ctrl1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %usbch_ctrl1, align 1
  %13 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool17.not = icmp eq i8 %13, 0
  br i1 %tobool17.not, label %do.end21, label %do.end15.cleanup_crit_edge

do.end15.cleanup_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end21:                                         ; preds = %do.end15
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.207) #11
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 4
  %call24 = call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %17, i8 noundef zeroext 11, i8 noundef zeroext 86, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %do.end30, label %if.end32

do.end30:                                         ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.211, i32 noundef 1777) #11
  br label %cleanup

if.end32:                                         ; preds = %do.end21
  %call33 = call i32 @ab8500_charger_usb_en(ptr noundef %charger, i32 noundef 1, i32 noundef %vset_uv, i32 noundef %iset_ua)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %do.end39, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.259, i32 noundef 1784) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %if.end32.cleanup_crit_edge, %do.end30, %do.end15.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ %call24, %do.end30 ], [ %call33, %do.end39 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %do.end15.cleanup_crit_edge ], [ %call33, %if.end32.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %usbch_ctrl1) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ab8500_charger_check_hw_failure_work(ptr noundef %work) #2 align 64 {
entry:
  %reg_value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_value) #8
  %0 = ptrtoint ptr %reg_value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reg_value, align 1, !annotation !773
  %add.ptr = getelementptr i8, ptr %work, i32 -460
  %flags = getelementptr i8, ptr %work, i32 -400
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %flags, align 4, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  %call = call i32 @abx500_get_register_interruptible(ptr noundef %4, i8 noundef zeroext 11, i8 noundef zeroext 1, ptr noundef nonnull %reg_value) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.261, ptr noundef nonnull @.str.262) #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  %7 = ptrtoint ptr %reg_value to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %reg_value, align 1
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then4:                                         ; preds = %if.end
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %flags, align 4
  %ac_chg = getelementptr i8, ptr %work, i32 -320
  %11 = ptrtoint ptr %ac_chg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ac_chg, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.then4.if.end8_crit_edge, label %if.end.i

if.then4.if.end8_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end.i:                                         ; preds = %if.then4
  %autopower_cfg.i = getelementptr i8, ptr %work, i32 -438
  %13 = ptrtoint ptr %autopower_cfg.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %autopower_cfg.i, align 2, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool1.not.i = icmp eq i8 %14, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end23.i_crit_edge, label %if.then2.i

if.end.i.if.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then2.i:                                       ; preds = %if.end.i
  %usb.i = getelementptr i8, ptr %work, i32 -224
  %15 = ptrtoint ptr %usb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %usb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool3.not.i = icmp eq i32 %16, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %if.then2.i.if.else.i_crit_edge

if.then2.i.if.else.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then2.i
  %ac.i = getelementptr i8, ptr %work, i32 -248
  %17 = ptrtoint ptr %ac.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ac.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool5.not.i = icmp eq i32 %18, 0
  br i1 %tobool5.not.i, label %land.lhs.true6.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %autopower.i = getelementptr i8, ptr %work, i32 -439
  %19 = ptrtoint ptr %autopower.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %autopower.i, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool7.not.i = icmp eq i8 %20, 0
  br i1 %tobool7.not.i, label %land.lhs.true6.i.if.else.i_crit_edge, label %if.then8.i

land.lhs.true6.i.if.else.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then8.i:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %autopower.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %autopower.i, align 1
  br label %if.end23.sink.split.i

if.else.i:                                        ; preds = %land.lhs.true6.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.then2.i.if.else.i_crit_edge
  %autopower10.i = getelementptr i8, ptr %work, i32 -439
  %22 = ptrtoint ptr %autopower10.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %autopower10.i, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool11.not.i = icmp eq i8 %23, 0
  br i1 %tobool11.not.i, label %land.lhs.true12.i, label %if.else.i.if.end23.i_crit_edge

if.else.i.if.end23.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

land.lhs.true12.i:                                ; preds = %if.else.i
  %ac13.i = getelementptr i8, ptr %work, i32 -248
  %24 = ptrtoint ptr %ac13.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ac13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool15.not.i = icmp ne i32 %25, 0
  %tobool3.not.not.i = xor i1 %tobool3.not.i, true
  %brmerge.i = select i1 %tobool15.not.i, i1 true, i1 %tobool3.not.not.i
  br i1 %brmerge.i, label %if.then19.i, label %land.lhs.true12.i.if.end23.i_crit_edge

land.lhs.true12.i.if.end23.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then19.i:                                      ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %autopower10.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %autopower10.i, align 1
  br label %if.end23.sink.split.i

if.end23.sink.split.i:                            ; preds = %if.then19.i, %if.then8.i
  %.sink.i = phi i1 [ false, %if.then8.i ], [ true, %if.then19.i ]
  call fastcc void @ab8500_enable_disable_sw_fallback(ptr noundef %add.ptr, i1 noundef zeroext %.sink.i) #8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end23.sink.split.i, %land.lhs.true12.i.if.end23.i_crit_edge, %if.else.i.if.end23.i_crit_edge, %if.end.i.if.end23.i_crit_edge
  call void @power_supply_changed(ptr noundef nonnull %12) #8
  br label %if.end8

if.end8:                                          ; preds = %if.end23.i, %if.then4.if.end8_crit_edge, %if.end.if.end8_crit_edge, %entry.if.end8_crit_edge
  %vbus_ovv = getelementptr i8, ptr %work, i32 -397
  %27 = ptrtoint ptr %vbus_ovv to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %vbus_ovv, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool10.not = icmp eq i8 %28, 0
  br i1 %tobool10.not, label %if.end8.if.end30_crit_edge, label %if.then11

if.end8.if.end30_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then11:                                        ; preds = %if.end8
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr, align 4
  %call13 = call i32 @abx500_get_register_interruptible(ptr noundef %30, i8 noundef zeroext 11, i8 noundef zeroext 3, ptr noundef nonnull %reg_value) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %do.end19, label %if.end21

do.end19:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.261, ptr noundef nonnull @.str.262) #11
  br label %cleanup

if.end21:                                         ; preds = %if.then11
  %33 = ptrtoint ptr %reg_value to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %reg_value, align 1
  %35 = and i8 %34, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool24.not = icmp eq i8 %35, 0
  br i1 %tobool24.not, label %if.then25, label %if.end21.if.end30_crit_edge

if.end21.if.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then25:                                        ; preds = %if.end21
  %36 = ptrtoint ptr %vbus_ovv to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %vbus_ovv, align 1
  %usb_chg = getelementptr i8, ptr %work, i32 -284
  %37 = ptrtoint ptr %usb_chg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %usb_chg, align 4
  %tobool.not.i61 = icmp eq ptr %38, null
  br i1 %tobool.not.i61, label %if.then25.if.end30_crit_edge, label %if.end.i64

if.then25.if.end30_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.end.i64:                                       ; preds = %if.then25
  %autopower_cfg.i62 = getelementptr i8, ptr %work, i32 -438
  %39 = ptrtoint ptr %autopower_cfg.i62 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %autopower_cfg.i62, align 2, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool1.not.i63 = icmp eq i8 %40, 0
  br i1 %tobool1.not.i63, label %if.end.i64.if.end23.i86_crit_edge, label %if.then2.i67

if.end.i64.if.end23.i86_crit_edge:                ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i86

if.then2.i67:                                     ; preds = %if.end.i64
  %usb.i65 = getelementptr i8, ptr %work, i32 -224
  %41 = ptrtoint ptr %usb.i65 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %usb.i65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool3.not.i66 = icmp eq i32 %42, 0
  br i1 %tobool3.not.i66, label %land.lhs.true.i70, label %if.then2.i67.if.else.i77_crit_edge

if.then2.i67.if.else.i77_crit_edge:               ; preds = %if.then2.i67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i77

land.lhs.true.i70:                                ; preds = %if.then2.i67
  %ac.i68 = getelementptr i8, ptr %work, i32 -248
  %43 = ptrtoint ptr %ac.i68 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ac.i68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool5.not.i69 = icmp eq i32 %44, 0
  br i1 %tobool5.not.i69, label %land.lhs.true6.i73, label %land.lhs.true.i70.if.else.i77_crit_edge

land.lhs.true.i70.if.else.i77_crit_edge:          ; preds = %land.lhs.true.i70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i77

land.lhs.true6.i73:                               ; preds = %land.lhs.true.i70
  %autopower.i71 = getelementptr i8, ptr %work, i32 -439
  %45 = ptrtoint ptr %autopower.i71 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %autopower.i71, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool7.not.i72 = icmp eq i8 %46, 0
  br i1 %tobool7.not.i72, label %land.lhs.true6.i73.if.else.i77_crit_edge, label %if.then8.i74

land.lhs.true6.i73.if.else.i77_crit_edge:         ; preds = %land.lhs.true6.i73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i77

if.then8.i74:                                     ; preds = %land.lhs.true6.i73
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %autopower.i71 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %autopower.i71, align 1
  br label %if.end23.sink.split.i85

if.else.i77:                                      ; preds = %land.lhs.true6.i73.if.else.i77_crit_edge, %land.lhs.true.i70.if.else.i77_crit_edge, %if.then2.i67.if.else.i77_crit_edge
  %autopower10.i75 = getelementptr i8, ptr %work, i32 -439
  %48 = ptrtoint ptr %autopower10.i75 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %autopower10.i75, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool11.not.i76 = icmp eq i8 %49, 0
  br i1 %tobool11.not.i76, label %land.lhs.true12.i82, label %if.else.i77.if.end23.i86_crit_edge

if.else.i77.if.end23.i86_crit_edge:               ; preds = %if.else.i77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i86

land.lhs.true12.i82:                              ; preds = %if.else.i77
  %ac13.i78 = getelementptr i8, ptr %work, i32 -248
  %50 = ptrtoint ptr %ac13.i78 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ac13.i78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool15.not.i79 = icmp ne i32 %51, 0
  %tobool3.not.not.i80 = xor i1 %tobool3.not.i66, true
  %brmerge.i81 = select i1 %tobool15.not.i79, i1 true, i1 %tobool3.not.not.i80
  br i1 %brmerge.i81, label %if.then19.i83, label %land.lhs.true12.i82.if.end23.i86_crit_edge

land.lhs.true12.i82.if.end23.i86_crit_edge:       ; preds = %land.lhs.true12.i82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i86

if.then19.i83:                                    ; preds = %land.lhs.true12.i82
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %autopower10.i75 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %autopower10.i75, align 1
  br label %if.end23.sink.split.i85

if.end23.sink.split.i85:                          ; preds = %if.then19.i83, %if.then8.i74
  %.sink.i84 = phi i1 [ false, %if.then8.i74 ], [ true, %if.then19.i83 ]
  call fastcc void @ab8500_enable_disable_sw_fallback(ptr noundef %add.ptr, i1 noundef zeroext %.sink.i84) #8
  br label %if.end23.i86

if.end23.i86:                                     ; preds = %if.end23.sink.split.i85, %land.lhs.true12.i82.if.end23.i86_crit_edge, %if.else.i77.if.end23.i86_crit_edge, %if.end.i64.if.end23.i86_crit_edge
  call void @power_supply_changed(ptr noundef nonnull %38) #8
  br label %if.end30

if.end30:                                         ; preds = %if.end23.i86, %if.then25.if.end30_crit_edge, %if.end21.if.end30_crit_edge, %if.end8.if.end30_crit_edge
  %53 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %flags, align 4, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool33.not = icmp eq i8 %54, 0
  br i1 %tobool33.not, label %lor.lhs.false, label %if.end30.if.then39_crit_edge

if.end30.if.then39_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then39

lor.lhs.false:                                    ; preds = %if.end30
  %55 = ptrtoint ptr %vbus_ovv to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %vbus_ovv, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool37.not = icmp eq i8 %56, 0
  br i1 %tobool37.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then39_crit_edge

lor.lhs.false.if.then39_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then39

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then39:                                        ; preds = %lor.lhs.false.if.then39_crit_edge, %if.end30.if.then39_crit_edge
  %charger_wq = getelementptr i8, ptr %work, i32 -196
  %57 = ptrtoint ptr %charger_wq to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %charger_wq, align 4
  %call40 = call i32 @round_jiffies(i32 noundef 100) #8
  %call.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %58, ptr noundef %work, i32 noundef %call40) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %lor.lhs.false.cleanup_crit_edge, %do.end19, %do.end
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_value) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ab8500_charger_check_usbchargernotok_work(ptr noundef %work) #2 align 64 {
entry:
  %reg_value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_value) #8
  %0 = ptrtoint ptr %reg_value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reg_value, align 1, !annotation !773
  %add.ptr = getelementptr i8, ptr %work, i32 -560
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %call = call i32 @abx500_get_register_interruptible(ptr noundef %2, i8 noundef zeroext 11, i8 noundef zeroext 3, ptr noundef nonnull %reg_value) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.261, ptr noundef nonnull @.str.265) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %usbchargernotok = getelementptr i8, ptr %work, i32 -496
  %5 = ptrtoint ptr %usbchargernotok to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %usbchargernotok, align 4, !range !772
  %7 = ptrtoint ptr %reg_value to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %reg_value, align 1
  %9 = and i8 %8, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %usbchargernotok to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %usbchargernotok, align 4
  %charger_wq = getelementptr i8, ptr %work, i32 -296
  %11 = ptrtoint ptr %charger_wq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %charger_wq, align 4
  %call.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %work, i32 noundef 100) #8
  br label %if.end10

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %usbchargernotok to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %usbchargernotok, align 4
  %vbus_collapse = getelementptr i8, ptr %work, i32 -494
  %14 = ptrtoint ptr %vbus_collapse to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %vbus_collapse, align 2
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then3
  %15 = ptrtoint ptr %usbchargernotok to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %usbchargernotok, align 4, !range !772
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %16)
  %cmp17.not = icmp eq i8 %6, %16
  br i1 %cmp17.not, label %if.end10.cleanup_crit_edge, label %if.then19

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then19:                                        ; preds = %if.end10
  %usb_chg = getelementptr i8, ptr %work, i32 -384
  %17 = ptrtoint ptr %usb_chg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %usb_chg, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.then19.cleanup_crit_edge, label %if.end.i

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then19
  %autopower_cfg.i = getelementptr i8, ptr %work, i32 -538
  %19 = ptrtoint ptr %autopower_cfg.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %autopower_cfg.i, align 2, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool1.not.i = icmp eq i8 %20, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end23.i_crit_edge, label %if.then2.i

if.end.i.if.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then2.i:                                       ; preds = %if.end.i
  %usb.i = getelementptr i8, ptr %work, i32 -324
  %21 = ptrtoint ptr %usb.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %usb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool3.not.i = icmp eq i32 %22, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %if.then2.i.if.else.i_crit_edge

if.then2.i.if.else.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then2.i
  %ac.i = getelementptr i8, ptr %work, i32 -348
  %23 = ptrtoint ptr %ac.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ac.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool5.not.i = icmp eq i32 %24, 0
  br i1 %tobool5.not.i, label %land.lhs.true6.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %autopower.i = getelementptr i8, ptr %work, i32 -539
  %25 = ptrtoint ptr %autopower.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %autopower.i, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool7.not.i = icmp eq i8 %26, 0
  br i1 %tobool7.not.i, label %land.lhs.true6.i.if.else.i_crit_edge, label %if.then8.i

land.lhs.true6.i.if.else.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then8.i:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %autopower.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %autopower.i, align 1
  br label %if.end23.sink.split.i

if.else.i:                                        ; preds = %land.lhs.true6.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.then2.i.if.else.i_crit_edge
  %autopower10.i = getelementptr i8, ptr %work, i32 -539
  %28 = ptrtoint ptr %autopower10.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %autopower10.i, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool11.not.i = icmp eq i8 %29, 0
  br i1 %tobool11.not.i, label %land.lhs.true12.i, label %if.else.i.if.end23.i_crit_edge

if.else.i.if.end23.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

land.lhs.true12.i:                                ; preds = %if.else.i
  %ac13.i = getelementptr i8, ptr %work, i32 -348
  %30 = ptrtoint ptr %ac13.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ac13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool15.not.i = icmp ne i32 %31, 0
  %tobool3.not.not.i = xor i1 %tobool3.not.i, true
  %brmerge.i = select i1 %tobool15.not.i, i1 true, i1 %tobool3.not.not.i
  br i1 %brmerge.i, label %if.then19.i, label %land.lhs.true12.i.if.end23.i_crit_edge

land.lhs.true12.i.if.end23.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then19.i:                                      ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %autopower10.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %autopower10.i, align 1
  br label %if.end23.sink.split.i

if.end23.sink.split.i:                            ; preds = %if.then19.i, %if.then8.i
  %.sink.i = phi i1 [ false, %if.then8.i ], [ true, %if.then19.i ]
  call fastcc void @ab8500_enable_disable_sw_fallback(ptr noundef %add.ptr, i1 noundef zeroext %.sink.i) #8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end23.sink.split.i, %land.lhs.true12.i.if.end23.i_crit_edge, %if.else.i.if.end23.i_crit_edge, %if.end.i.if.end23.i_crit_edge
  call void @power_supply_changed(ptr noundef nonnull %18) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end23.i, %if.then19.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_value) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ab8500_charger_ac_attached_work(ptr noundef %work) #2 align 64 {
entry:
  %statval = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -960
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %statval) #8
  %0 = ptrtoint ptr %statval to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %statval, align 1, !annotation !773
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %call = call i32 @abx500_get_register_interruptible(ptr noundef %2, i8 noundef zeroext 11, i8 noundef zeroext 1, ptr noundef nonnull %statval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %if.end6.8.do.end_crit_edge, %if.end6.7.do.end_crit_edge, %if.end6.6.do.end_crit_edge, %if.end6.5.do.end_crit_edge, %if.end6.4.do.end_crit_edge, %if.end6.3.do.end_crit_edge, %if.end6.2.do.end_crit_edge, %if.end6.1.do.end_crit_edge, %if.end6.do.end_crit_edge, %entry.do.end_crit_edge
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.203, i32 noundef 2166) #11
  br label %reschedule

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %statval to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %statval, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %6)
  %cmp3.not = icmp ugt i8 %6, -65
  br i1 %cmp3.not, label %if.end6, label %if.end.reschedule_crit_edge

if.end.reschedule_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %reschedule

if.end6:                                          ; preds = %if.end
  call void @msleep(i32 noundef 10) #8
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  %call.1 = call i32 @abx500_get_register_interruptible(ptr noundef %8, i8 noundef zeroext 11, i8 noundef zeroext 1, ptr noundef nonnull %statval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp1.1 = icmp slt i32 %call.1, 0
  br i1 %cmp1.1, label %if.end6.do.end_crit_edge, label %if.end.1

if.end6.do.end_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.1:                                         ; preds = %if.end6
  %9 = ptrtoint ptr %statval to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %statval, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %10)
  %cmp3.not.1 = icmp ugt i8 %10, -65
  br i1 %cmp3.not.1, label %if.end6.1, label %if.end.1.reschedule_crit_edge

if.end.1.reschedule_crit_edge:                    ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %reschedule

if.end6.1:                                        ; preds = %if.end.1
  call void @msleep(i32 noundef 10) #8
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  %call.2 = call i32 @abx500_get_register_interruptible(ptr noundef %12, i8 noundef zeroext 11, i8 noundef zeroext 1, ptr noundef nonnull %statval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp1.2 = icmp slt i32 %call.2, 0
  br i1 %cmp1.2, label %if.end6.1.do.end_crit_edge, label %if.end.2

if.end6.1.do.end_crit_edge:                       ; preds = %if.end6.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.2:                                         ; preds = %if.end6.1
  %13 = ptrtoint ptr %statval to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %statval, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %14)
  %cmp3.not.2 = icmp ugt i8 %14, -65
  br i1 %cmp3.not.2, label %if.end6.2, label %if.end.2.reschedule_crit_edge

if.end.2.reschedule_crit_edge:                    ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %reschedule

if.end6.2:                                        ; preds = %if.end.2
  call void @msleep(i32 noundef 10) #8
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 4
  %call.3 = call i32 @abx500_get_register_interruptible(ptr noundef %16, i8 noundef zeroext 11, i8 noundef zeroext 1, ptr noundef nonnull %statval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %cmp1.3 = icmp slt i32 %call.3, 0
  br i1 %cmp1.3, label %if.end6.2.do.end_crit_edge, label %if.end.3

if.end6.2.do.end_crit_edge:                       ; preds = %if.end6.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.3:                                         ; preds = %if.end6.2
  %17 = ptrtoint ptr %statval to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %statval, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %18)
  %cmp3.not.3 = icmp ugt i8 %18, -65
  br i1 %cmp3.not.3, label %if.end6.3, label %if.end.3.reschedule_crit_edge

if.end.3.reschedule_crit_edge:                    ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %reschedule

if.end6.3:                                        ; preds = %if.end.3
  call void @msleep(i32 noundef 10) #8
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr, align 4
  %call.4 = call i32 @abx500_get_register_interruptible(ptr noundef %20, i8 noundef zeroext 11, i8 noundef zeroext 1, ptr noundef nonnull %statval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %cmp1.4 = icmp slt i32 %call.4, 0
  br i1 %cmp1.4, label %if.end6.3.do.end_crit_edge, label %if.end.4

if.end6.3.do.end_crit_edge:                       ; preds = %if.end6.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.4:                                         ; preds = %if.end6.3
  %21 = ptrtoint ptr %statval to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %statval, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %22)
  %cmp3.not.4 = icmp ugt i8 %22, -65
  br i1 %cmp3.not.4, label %if.end6.4, label %if.end.4.reschedule_crit_edge

if.end.4.reschedule_crit_edge:                    ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %reschedule

if.end6.4:                                        ; preds = %if.end.4
  call void @msleep(i32 noundef 10) #8
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr, align 4
  %call.5 = call i32 @abx500_get_register_interruptible(ptr noundef %24, i8 noundef zeroext 11, i8 noundef zeroext 1, ptr noundef nonnull %statval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %cmp1.5 = icmp slt i32 %call.5, 0
  br i1 %cmp1.5, label %if.end6.4.do.end_crit_edge, label %if.end.5

if.end6.4.do.end_crit_edge:                       ; preds = %if.end6.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.5:                                         ; preds = %if.end6.4
  %25 = ptrtoint ptr %statval to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %statval, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %26)
  %cmp3.not.5 = icmp ugt i8 %26, -65
  br i1 %cmp3.not.5, label %if.end6.5, label %if.end.5.reschedule_crit_edge

if.end.5.reschedule_crit_edge:                    ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %reschedule

if.end6.5:                                        ; preds = %if.end.5
  call void @msleep(i32 noundef 10) #8
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr, align 4
  %call.6 = call i32 @abx500_get_register_interruptible(ptr noundef %28, i8 noundef zeroext 11, i8 noundef zeroext 1, ptr noundef nonnull %statval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %cmp1.6 = icmp slt i32 %call.6, 0
  br i1 %cmp1.6, label %if.end6.5.do.end_crit_edge, label %if.end.6

if.end6.5.do.end_crit_edge:                       ; preds = %if.end6.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.6:                                         ; preds = %if.end6.5
  %29 = ptrtoint ptr %statval to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %statval, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %30)
  %cmp3.not.6 = icmp ugt i8 %30, -65
  br i1 %cmp3.not.6, label %if.end6.6, label %if.end.6.reschedule_crit_edge

if.end.6.reschedule_crit_edge:                    ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %reschedule

if.end6.6:                                        ; preds = %if.end.6
  call void @msleep(i32 noundef 10) #8
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr, align 4
  %call.7 = call i32 @abx500_get_register_interruptible(ptr noundef %32, i8 noundef zeroext 11, i8 noundef zeroext 1, ptr noundef nonnull %statval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %cmp1.7 = icmp slt i32 %call.7, 0
  br i1 %cmp1.7, label %if.end6.6.do.end_crit_edge, label %if.end.7

if.end6.6.do.end_crit_edge:                       ; preds = %if.end6.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.7:                                         ; preds = %if.end6.6
  %33 = ptrtoint ptr %statval to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %statval, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %34)
  %cmp3.not.7 = icmp ugt i8 %34, -65
  br i1 %cmp3.not.7, label %if.end6.7, label %if.end.7.reschedule_crit_edge

if.end.7.reschedule_crit_edge:                    ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %reschedule

if.end6.7:                                        ; preds = %if.end.7
  call void @msleep(i32 noundef 10) #8
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr, align 4
  %call.8 = call i32 @abx500_get_register_interruptible(ptr noundef %36, i8 noundef zeroext 11, i8 noundef zeroext 1, ptr noundef nonnull %statval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.8)
  %cmp1.8 = icmp slt i32 %call.8, 0
  br i1 %cmp1.8, label %if.end6.7.do.end_crit_edge, label %if.end.8

if.end6.7.do.end_crit_edge:                       ; preds = %if.end6.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.8:                                         ; preds = %if.end6.7
  %37 = ptrtoint ptr %statval to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %statval, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %38)
  %cmp3.not.8 = icmp ugt i8 %38, -65
  br i1 %cmp3.not.8, label %if.end6.8, label %if.end.8.reschedule_crit_edge

if.end.8.reschedule_crit_edge:                    ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %reschedule

if.end6.8:                                        ; preds = %if.end.8
  call void @msleep(i32 noundef 10) #8
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr, align 4
  %call.9 = call i32 @abx500_get_register_interruptible(ptr noundef %40, i8 noundef zeroext 11, i8 noundef zeroext 1, ptr noundef nonnull %statval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.9)
  %cmp1.9 = icmp slt i32 %call.9, 0
  br i1 %cmp1.9, label %if.end6.8.do.end_crit_edge, label %if.end.9

if.end6.8.do.end_crit_edge:                       ; preds = %if.end6.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.9:                                         ; preds = %if.end6.8
  %41 = ptrtoint ptr %statval to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %statval, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %42)
  %cmp3.not.9 = icmp ugt i8 %42, -65
  br i1 %cmp3.not.9, label %if.end6.9, label %if.end.9.reschedule_crit_edge

if.end.9.reschedule_crit_edge:                    ; preds = %if.end.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %reschedule

if.end6.9:                                        ; preds = %if.end.9
  call void @__sanitizer_cov_trace_pc() #10
  call void @msleep(i32 noundef 10) #8
  %ac_chg = getelementptr i8, ptr %work, i32 -820
  %call7 = call i32 @ab8500_charger_ac_en(ptr noundef %ac_chg, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %charger_wq = getelementptr i8, ptr %work, i32 -696
  %43 = ptrtoint ptr %charger_wq to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %charger_wq, align 4
  %ac_work = getelementptr i8, ptr %work, i32 300
  %call.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %44, ptr noundef %ac_work) #8
  %charger_attached_mutex = getelementptr i8, ptr %work, i32 536
  call void @mutex_lock_nested(ptr noundef %charger_attached_mutex, i32 noundef 0) #8
  call void @mutex_unlock(ptr noundef %charger_attached_mutex) #8
  br label %cleanup

reschedule:                                       ; preds = %if.end.9.reschedule_crit_edge, %if.end.8.reschedule_crit_edge, %if.end.7.reschedule_crit_edge, %if.end.6.reschedule_crit_edge, %if.end.5.reschedule_crit_edge, %if.end.4.reschedule_crit_edge, %if.end.3.reschedule_crit_edge, %if.end.2.reschedule_crit_edge, %if.end.1.reschedule_crit_edge, %if.end.reschedule_crit_edge, %do.end
  %charger_wq10 = getelementptr i8, ptr %work, i32 -696
  %45 = ptrtoint ptr %charger_wq10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %charger_wq10, align 4
  %call.i26 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %46, ptr noundef %work, i32 noundef 100) #8
  br label %cleanup

cleanup:                                          ; preds = %reschedule, %if.end6.9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %statval) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ab8500_charger_usb_attached_work(ptr noundef %work) #2 align 64 {
entry:
  %statval = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1060
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %statval) #8
  %0 = ptrtoint ptr %statval to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %statval, align 1, !annotation !773
  br label %for.body

for.body:                                         ; preds = %if.end6.for.body_crit_edge, %entry
  %i.022 = phi i32 [ 0, %entry ], [ %inc, %if.end6.for.body_crit_edge ]
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %call = call i32 @abx500_get_register_interruptible(ptr noundef %2, i8 noundef zeroext 11, i8 noundef zeroext 2, ptr noundef nonnull %statval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.203, i32 noundef 2127) #11
  br label %reschedule

if.end:                                           ; preds = %for.body
  %5 = ptrtoint ptr %statval to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %statval, align 1
  %7 = and i8 %6, 65
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %7)
  %cmp3.not = icmp eq i8 %7, 65
  br i1 %cmp3.not, label %if.end6, label %if.end.reschedule_crit_edge

if.end.reschedule_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %reschedule

if.end6:                                          ; preds = %if.end
  call void @msleep(i32 noundef 10) #8
  %inc = add nuw nsw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.end, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %usb_chg = getelementptr i8, ptr %work, i32 -884
  %call7 = call i32 @ab8500_charger_usb_en(ptr noundef %usb_chg, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %charger_attached_mutex = getelementptr i8, ptr %work, i32 436
  call void @mutex_lock_nested(ptr noundef %charger_attached_mutex, i32 noundef 0) #8
  call void @mutex_unlock(ptr noundef %charger_attached_mutex) #8
  br label %cleanup

reschedule:                                       ; preds = %if.end.reschedule_crit_edge, %do.end
  %charger_wq = getelementptr i8, ptr %work, i32 -796
  %8 = ptrtoint ptr %charger_wq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %charger_wq, align 4
  %call.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %work, i32 noundef 100) #8
  br label %cleanup

cleanup:                                          ; preds = %reschedule, %for.end
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %statval) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ab8500_charger_kick_watchdog_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -660
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 @abx500_set_register_interruptible(ptr noundef %1, i8 noundef zeroext 11, i8 noundef zeroext 81, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.216) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %charger_wq = getelementptr i8, ptr %work, i32 -396
  %4 = ptrtoint ptr %charger_wq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %charger_wq, align 4
  %call2 = tail call i32 @round_jiffies(i32 noundef 6000) #8
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %work, i32 noundef %call2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ab8500_charger_check_vbat_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -360
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @power_supply_class to i32))
  %0 = load ptr, ptr @power_supply_class, align 4
  %usb_chg = getelementptr i8, ptr %work, i32 -184
  %1 = ptrtoint ptr %usb_chg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %usb_chg, align 4
  %call = tail call i32 @class_for_each_device(ptr noundef %0, ptr noundef null, ptr noundef %2, ptr noundef nonnull @ab8500_charger_get_ext_psy_data) #8
  %old_vbat = getelementptr i8, ptr %work, i32 -344
  %3 = ptrtoint ptr %old_vbat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %old_vbat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %vbat = getelementptr i8, ptr %work, i32 -348
  %5 = ptrtoint ptr %vbat to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vbat, align 4
  %7 = ptrtoint ptr %old_vbat to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %old_vbat, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = phi i32 [ %6, %if.then ], [ %4, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3801, i32 %8)
  %cmp3 = icmp slt i32 %8, 3801
  %vbat4 = getelementptr i8, ptr %work, i32 -348
  %9 = ptrtoint ptr %vbat4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vbat4, align 4
  br i1 %cmp3, label %land.lhs.true, label %land.lhs.true8

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3801, i32 %10)
  %cmp5 = icmp slt i32 %10, 3801
  br i1 %cmp5, label %land.lhs.true.if.end26_crit_edge, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

land.lhs.true8:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3800, i32 %10)
  %cmp10 = icmp sgt i32 %10, 3800
  br i1 %cmp10, label %land.lhs.true8.if.end26_crit_edge, label %land.lhs.true8.do.body_crit_edge

land.lhs.true8.do.body_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

land.lhs.true8.if.end26_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

do.body:                                          ; preds = %land.lhs.true8.do.body_crit_edge, %land.lhs.true.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_check_vbat_work.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_check_vbat_work, %do.end)) #8
          to label %if.then17 [label %do.end], !srcloc !771

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  %max_usb_in_curr = getelementptr i8, ptr %work, i32 -232
  %13 = ptrtoint ptr %max_usb_in_curr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_usb_in_curr, align 4
  %vbat18 = getelementptr i8, ptr %work, i32 -348
  %15 = ptrtoint ptr %vbat18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vbat18, align 4
  %17 = ptrtoint ptr %old_vbat to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %old_vbat, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_check_vbat_work.__UNIQUE_ID_ddebug324, ptr noundef %12, ptr noundef nonnull @.str.270, i32 noundef %14, i32 noundef %16, i32 noundef %18) #8
  br label %do.end

do.end:                                           ; preds = %if.then17, %do.body
  %max_usb_in_curr21 = getelementptr i8, ptr %work, i32 -232
  %19 = ptrtoint ptr %max_usb_in_curr21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_usb_in_curr21, align 4
  %call23 = tail call fastcc i32 @ab8500_charger_set_vbus_in_curr(ptr noundef %add.ptr, i32 noundef %20)
  %21 = ptrtoint ptr %usb_chg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %usb_chg, align 4
  tail call void @power_supply_changed(ptr noundef %22) #8
  br label %if.end26

if.end26:                                         ; preds = %do.end, %land.lhs.true8.if.end26_crit_edge, %land.lhs.true.if.end26_crit_edge
  %vbat27 = getelementptr i8, ptr %work, i32 -348
  %23 = ptrtoint ptr %vbat27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vbat27, align 4
  %25 = ptrtoint ptr %old_vbat to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %old_vbat, align 4
  %26 = add i32 %24, -3701
  call void @__sanitizer_cov_trace_const_cmp4(i32 199, i32 %26)
  %27 = icmp ult i32 %26, 199
  %t.0 = select i1 %27, i32 100, i32 1000
  %charger_wq = getelementptr i8, ptr %work, i32 -96
  %28 = ptrtoint ptr %charger_wq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %charger_wq, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %29, ptr noundef %work, i32 noundef %t.0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ab8500_charger_usb_link_attach_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -860
  %charger_online = getelementptr i8, ptr %work, i32 -620
  %0 = ptrtoint ptr %charger_online to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %charger_online, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then:                                          ; preds = %entry
  %max_usb_in_curr = getelementptr i8, ptr %work, i32 -732
  %2 = ptrtoint ptr %max_usb_in_curr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_usb_in_curr, align 4
  %call = tail call fastcc i32 @ab8500_charger_set_vbus_in_curr(ptr noundef %add.ptr, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end3_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  tail call fastcc void @ab8500_charger_set_usb_connected(ptr noundef %add.ptr, i1 noundef zeroext true)
  %usb_chg = getelementptr i8, ptr %work, i32 -684
  %4 = ptrtoint ptr %usb_chg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_chg, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end3.cleanup_crit_edge, label %if.end.i

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end3
  %autopower_cfg.i = getelementptr i8, ptr %work, i32 -838
  %6 = ptrtoint ptr %autopower_cfg.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %autopower_cfg.i, align 2, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end23.i_crit_edge, label %if.then2.i

if.end.i.if.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then2.i:                                       ; preds = %if.end.i
  %usb.i = getelementptr i8, ptr %work, i32 -624
  %8 = ptrtoint ptr %usb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not.i = icmp eq i32 %9, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %if.then2.i.if.else.i_crit_edge

if.then2.i.if.else.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then2.i
  %ac.i = getelementptr i8, ptr %work, i32 -648
  %10 = ptrtoint ptr %ac.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ac.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not.i = icmp eq i32 %11, 0
  br i1 %tobool5.not.i, label %land.lhs.true6.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %autopower.i = getelementptr i8, ptr %work, i32 -839
  %12 = ptrtoint ptr %autopower.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %autopower.i, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool7.not.i = icmp eq i8 %13, 0
  br i1 %tobool7.not.i, label %land.lhs.true6.i.if.else.i_crit_edge, label %if.then8.i

land.lhs.true6.i.if.else.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then8.i:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %autopower.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %autopower.i, align 1
  br label %if.end23.sink.split.i

if.else.i:                                        ; preds = %land.lhs.true6.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.then2.i.if.else.i_crit_edge
  %autopower10.i = getelementptr i8, ptr %work, i32 -839
  %15 = ptrtoint ptr %autopower10.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %autopower10.i, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool11.not.i = icmp eq i8 %16, 0
  br i1 %tobool11.not.i, label %land.lhs.true12.i, label %if.else.i.if.end23.i_crit_edge

if.else.i.if.end23.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

land.lhs.true12.i:                                ; preds = %if.else.i
  %ac13.i = getelementptr i8, ptr %work, i32 -648
  %17 = ptrtoint ptr %ac13.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ac13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool15.not.i = icmp ne i32 %18, 0
  %tobool3.not.not.i = xor i1 %tobool3.not.i, true
  %brmerge.i = select i1 %tobool15.not.i, i1 true, i1 %tobool3.not.not.i
  br i1 %brmerge.i, label %if.then19.i, label %land.lhs.true12.i.if.end23.i_crit_edge

land.lhs.true12.i.if.end23.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then19.i:                                      ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %autopower10.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %autopower10.i, align 1
  br label %if.end23.sink.split.i

if.end23.sink.split.i:                            ; preds = %if.then19.i, %if.then8.i
  %.sink.i = phi i1 [ false, %if.then8.i ], [ true, %if.then19.i ]
  tail call fastcc void @ab8500_enable_disable_sw_fallback(ptr noundef %add.ptr, i1 noundef zeroext %.sink.i) #8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end23.sink.split.i, %land.lhs.true12.i.if.end23.i_crit_edge, %if.else.i.if.end23.i_crit_edge, %if.end.i.if.end23.i_crit_edge
  tail call void @power_supply_changed(ptr noundef nonnull %5) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end23.i, %if.end3.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ab8500_charger_usb_state_changed_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -760
  %vbus_detected = getelementptr i8, ptr %work, i32 -756
  %0 = ptrtoint ptr %vbus_detected to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vbus_detected, align 4, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.body, label %do.body9

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_usb_state_changed_work.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_usb_state_changed_work, %cleanup)) #8
          to label %if.then6 [label %cleanup], !srcloc !771

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_usb_state_changed_work.__UNIQUE_ID_ddebug335, ptr noundef %3, ptr noundef nonnull @.str.274, ptr noundef nonnull @.str.273) #8
  br label %cleanup

do.body9:                                         ; preds = %entry
  %usb_state = getelementptr i8, ptr %work, i32 -692
  %usb_lock = getelementptr i8, ptr %work, i32 -676
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %usb_lock) #8
  %state_tmp = getelementptr i8, ptr %work, i32 -680
  %4 = ptrtoint ptr %state_tmp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state_tmp, align 4
  %state = getelementptr i8, ptr %work, i32 -684
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %state, align 4
  %usb_current_tmp_ua = getelementptr i8, ptr %work, i32 -688
  %7 = ptrtoint ptr %usb_current_tmp_ua to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %usb_current_tmp_ua, align 4
  %9 = ptrtoint ptr %usb_state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %usb_state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %usb_lock, i32 noundef %call12) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_usb_state_changed_work.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_usb_state_changed_work, %do.end45)) #8
          to label %if.then37 [label %do.end45], !srcloc !771

if.then37:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 4
  %14 = ptrtoint ptr %usb_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %usb_state, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_usb_state_changed_work.__UNIQUE_ID_ddebug336, ptr noundef %11, ptr noundef nonnull @.str.275, ptr noundef nonnull @.str.273, i32 noundef %13, i32 noundef %15) #8
  br label %do.end45

do.end45:                                         ; preds = %if.then37, %do.body9
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.386)
  switch i32 %17, label %do.end45.cleanup_crit_edge [
    i32 0, label %do.end45.sw.bb_crit_edge
    i32 1, label %do.end45.sw.bb_crit_edge120
    i32 3, label %do.end45.sw.bb_crit_edge121
    i32 5, label %do.end45.sw.bb_crit_edge122
    i32 4, label %sw.bb48
    i32 2, label %do.end45.sw.bb49_crit_edge
  ]

do.end45.sw.bb49_crit_edge:                       ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb49

do.end45.sw.bb_crit_edge122:                      ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

do.end45.sw.bb_crit_edge121:                      ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

do.end45.sw.bb_crit_edge120:                      ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

do.end45.sw.bb_crit_edge:                         ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

do.end45.cleanup_crit_edge:                       ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %do.end45.sw.bb_crit_edge, %do.end45.sw.bb_crit_edge120, %do.end45.sw.bb_crit_edge121, %do.end45.sw.bb_crit_edge122
  tail call fastcc void @ab8500_charger_set_usb_connected(ptr noundef %add.ptr, i1 noundef zeroext false)
  %usb_chg = getelementptr i8, ptr %work, i32 -584
  %19 = ptrtoint ptr %usb_chg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %usb_chg, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %sw.bb.cleanup_crit_edge, label %if.end.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %autopower_cfg.i = getelementptr i8, ptr %work, i32 -738
  %21 = ptrtoint ptr %autopower_cfg.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %autopower_cfg.i, align 2, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool1.not.i = icmp eq i8 %22, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end23.i_crit_edge, label %if.then2.i

if.end.i.if.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then2.i:                                       ; preds = %if.end.i
  %usb.i = getelementptr i8, ptr %work, i32 -524
  %23 = ptrtoint ptr %usb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %usb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool3.not.i = icmp eq i32 %24, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %if.then2.i.if.else.i_crit_edge

if.then2.i.if.else.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then2.i
  %ac.i = getelementptr i8, ptr %work, i32 -548
  %25 = ptrtoint ptr %ac.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ac.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool5.not.i = icmp eq i32 %26, 0
  br i1 %tobool5.not.i, label %land.lhs.true6.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %autopower.i = getelementptr i8, ptr %work, i32 -739
  %27 = ptrtoint ptr %autopower.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %autopower.i, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool7.not.i = icmp eq i8 %28, 0
  br i1 %tobool7.not.i, label %land.lhs.true6.i.if.else.i_crit_edge, label %if.then8.i

land.lhs.true6.i.if.else.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then8.i:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %autopower.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %autopower.i, align 1
  br label %if.end23.sink.split.i

if.else.i:                                        ; preds = %land.lhs.true6.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.then2.i.if.else.i_crit_edge
  %autopower10.i = getelementptr i8, ptr %work, i32 -739
  %30 = ptrtoint ptr %autopower10.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %autopower10.i, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool11.not.i = icmp eq i8 %31, 0
  br i1 %tobool11.not.i, label %land.lhs.true12.i, label %if.else.i.if.end23.i_crit_edge

if.else.i.if.end23.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

land.lhs.true12.i:                                ; preds = %if.else.i
  %ac13.i = getelementptr i8, ptr %work, i32 -548
  %32 = ptrtoint ptr %ac13.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ac13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool15.not.i = icmp ne i32 %33, 0
  %tobool3.not.not.i = xor i1 %tobool3.not.i, true
  %brmerge.i = select i1 %tobool15.not.i, i1 true, i1 %tobool3.not.not.i
  br i1 %brmerge.i, label %if.then19.i, label %land.lhs.true12.i.if.end23.i_crit_edge

land.lhs.true12.i.if.end23.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then19.i:                                      ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %autopower10.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %autopower10.i, align 1
  br label %if.end23.sink.split.i

if.end23.sink.split.i:                            ; preds = %if.then19.i, %if.then8.i
  %.sink.i = phi i1 [ false, %if.then8.i ], [ true, %if.then19.i ]
  tail call fastcc void @ab8500_enable_disable_sw_fallback(ptr noundef %add.ptr, i1 noundef zeroext %.sink.i) #8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end23.sink.split.i, %land.lhs.true12.i.if.end23.i_crit_edge, %if.else.i.if.end23.i_crit_edge, %if.end.i.if.end23.i_crit_edge
  tail call void @power_supply_changed(ptr noundef nonnull %20) #8
  br label %cleanup

sw.bb48:                                          ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef 1000) #8
  br label %sw.bb49

sw.bb49:                                          ; preds = %sw.bb48, %do.end45.sw.bb49_crit_edge
  %35 = ptrtoint ptr %usb_state to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %usb_state, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.387)
  switch i32 %36, label %ab8500_charger_get_usb_cur.exit [
    i32 100000, label %sw.bb49.if.then52_crit_edge
    i32 200000, label %sw.bb1.i
    i32 300000, label %sw.bb4.i
    i32 400000, label %sw.bb7.i
    i32 500000, label %sw.bb10.i
  ]

sw.bb49.if.then52_crit_edge:                      ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then52

sw.bb1.i:                                         ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then52

sw.bb4.i:                                         ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then52

sw.bb7.i:                                         ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then52

sw.bb10.i:                                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then52

ab8500_charger_get_usb_cur.exit:                  ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #10
  %max_usb_in_curr13.i = getelementptr i8, ptr %work, i32 -632
  %38 = ptrtoint ptr %max_usb_in_curr13.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 50000, ptr %max_usb_in_curr13.i, align 4
  %set_max_ua.i = getelementptr i8, ptr %work, i32 -628
  %39 = ptrtoint ptr %set_max_ua.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 50000, ptr %set_max_ua.i, align 4
  br label %cleanup

if.then52:                                        ; preds = %sw.bb10.i, %sw.bb7.i, %sw.bb4.i, %sw.bb1.i, %sw.bb49.if.then52_crit_edge
  %.sink.i85.ph = phi i32 [ 98000, %sw.bb49.if.then52_crit_edge ], [ 193000, %sw.bb1.i ], [ 290000, %sw.bb4.i ], [ 380000, %sw.bb7.i ], [ 500000, %sw.bb10.i ]
  %max_usb_in_curr13.i117 = getelementptr i8, ptr %work, i32 -632
  %40 = ptrtoint ptr %max_usb_in_curr13.i117 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %.sink.i85.ph, ptr %max_usb_in_curr13.i117, align 4
  %set_max_ua.i118 = getelementptr i8, ptr %work, i32 -628
  %41 = ptrtoint ptr %set_max_ua.i118 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %.sink.i85.ph, ptr %set_max_ua.i118, align 4
  %call53 = tail call fastcc i32 @ab8500_charger_set_vbus_in_curr(ptr noundef %add.ptr, i32 noundef %.sink.i85.ph)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.then52.cleanup_crit_edge

if.then52.cleanup_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end56:                                         ; preds = %if.then52
  tail call fastcc void @ab8500_charger_set_usb_connected(ptr noundef %add.ptr, i1 noundef zeroext true)
  %usb_chg57 = getelementptr i8, ptr %work, i32 -584
  %42 = ptrtoint ptr %usb_chg57 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %usb_chg57, align 4
  %tobool.not.i86 = icmp eq ptr %43, null
  br i1 %tobool.not.i86, label %if.end56.cleanup_crit_edge, label %if.end.i89

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i89:                                       ; preds = %if.end56
  %autopower_cfg.i87 = getelementptr i8, ptr %work, i32 -738
  %44 = ptrtoint ptr %autopower_cfg.i87 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %autopower_cfg.i87, align 2, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool1.not.i88 = icmp eq i8 %45, 0
  br i1 %tobool1.not.i88, label %if.end.i89.if.end23.i111_crit_edge, label %if.then2.i92

if.end.i89.if.end23.i111_crit_edge:               ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i111

if.then2.i92:                                     ; preds = %if.end.i89
  %usb.i90 = getelementptr i8, ptr %work, i32 -524
  %46 = ptrtoint ptr %usb.i90 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %usb.i90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool3.not.i91 = icmp eq i32 %47, 0
  br i1 %tobool3.not.i91, label %land.lhs.true.i95, label %if.then2.i92.if.else.i102_crit_edge

if.then2.i92.if.else.i102_crit_edge:              ; preds = %if.then2.i92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i102

land.lhs.true.i95:                                ; preds = %if.then2.i92
  %ac.i93 = getelementptr i8, ptr %work, i32 -548
  %48 = ptrtoint ptr %ac.i93 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ac.i93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool5.not.i94 = icmp eq i32 %49, 0
  br i1 %tobool5.not.i94, label %land.lhs.true6.i98, label %land.lhs.true.i95.if.else.i102_crit_edge

land.lhs.true.i95.if.else.i102_crit_edge:         ; preds = %land.lhs.true.i95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i102

land.lhs.true6.i98:                               ; preds = %land.lhs.true.i95
  %autopower.i96 = getelementptr i8, ptr %work, i32 -739
  %50 = ptrtoint ptr %autopower.i96 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %autopower.i96, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool7.not.i97 = icmp eq i8 %51, 0
  br i1 %tobool7.not.i97, label %land.lhs.true6.i98.if.else.i102_crit_edge, label %if.then8.i99

land.lhs.true6.i98.if.else.i102_crit_edge:        ; preds = %land.lhs.true6.i98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i102

if.then8.i99:                                     ; preds = %land.lhs.true6.i98
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %autopower.i96 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %autopower.i96, align 1
  br label %if.end23.sink.split.i110

if.else.i102:                                     ; preds = %land.lhs.true6.i98.if.else.i102_crit_edge, %land.lhs.true.i95.if.else.i102_crit_edge, %if.then2.i92.if.else.i102_crit_edge
  %autopower10.i100 = getelementptr i8, ptr %work, i32 -739
  %53 = ptrtoint ptr %autopower10.i100 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %autopower10.i100, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool11.not.i101 = icmp eq i8 %54, 0
  br i1 %tobool11.not.i101, label %land.lhs.true12.i107, label %if.else.i102.if.end23.i111_crit_edge

if.else.i102.if.end23.i111_crit_edge:             ; preds = %if.else.i102
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i111

land.lhs.true12.i107:                             ; preds = %if.else.i102
  %ac13.i103 = getelementptr i8, ptr %work, i32 -548
  %55 = ptrtoint ptr %ac13.i103 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ac13.i103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool15.not.i104 = icmp ne i32 %56, 0
  %tobool3.not.not.i105 = xor i1 %tobool3.not.i91, true
  %brmerge.i106 = select i1 %tobool15.not.i104, i1 true, i1 %tobool3.not.not.i105
  br i1 %brmerge.i106, label %if.then19.i108, label %land.lhs.true12.i107.if.end23.i111_crit_edge

land.lhs.true12.i107.if.end23.i111_crit_edge:     ; preds = %land.lhs.true12.i107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i111

if.then19.i108:                                   ; preds = %land.lhs.true12.i107
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %autopower10.i100 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %autopower10.i100, align 1
  br label %if.end23.sink.split.i110

if.end23.sink.split.i110:                         ; preds = %if.then19.i108, %if.then8.i99
  %.sink.i109 = phi i1 [ false, %if.then8.i99 ], [ true, %if.then19.i108 ]
  tail call fastcc void @ab8500_enable_disable_sw_fallback(ptr noundef %add.ptr, i1 noundef zeroext %.sink.i109) #8
  br label %if.end23.i111

if.end23.i111:                                    ; preds = %if.end23.sink.split.i110, %land.lhs.true12.i107.if.end23.i111_crit_edge, %if.else.i102.if.end23.i111_crit_edge, %if.end.i89.if.end23.i111_crit_edge
  tail call void @power_supply_changed(ptr noundef nonnull %43) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end23.i111, %if.end56.cleanup_crit_edge, %if.then52.cleanup_crit_edge, %ab8500_charger_get_usb_cur.exit, %if.end23.i, %sw.bb.cleanup_crit_edge, %do.end45.cleanup_crit_edge, %if.then6, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ab8500_charger_vbus_drop_end_work(ptr noundef %work) #2 align 64 {
entry:
  %reg_value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1160
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_value) #8
  %0 = ptrtoint ptr %reg_value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reg_value, align 1, !annotation !773
  %vbus_drop_end = getelementptr i8, ptr %work, i32 -1093
  %1 = ptrtoint ptr %vbus_drop_end to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %vbus_drop_end, align 1
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 @abx500_set_register_interruptible(ptr noundef %3, i8 noundef zeroext 11, i8 noundef zeroext 86, i8 noundef zeroext 1) #8
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %call2 = call i32 @abx500_get_register_interruptible(ptr noundef %5, i8 noundef zeroext 11, i8 noundef zeroext 3, ptr noundef nonnull %reg_value) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.276) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %reg_value to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %reg_value, align 1
  %10 = lshr i8 %9, 4
  %11 = zext i8 %10 to i32
  %arrayidx = getelementptr [16 x i32], ptr @ab8500_charge_input_curr_map, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %max_usb_in_curr = getelementptr i8, ptr %work, i32 -1032
  %calculated_max_ua = getelementptr i8, ptr %work, i32 -1024
  %14 = ptrtoint ptr %calculated_max_ua to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %calculated_max_ua, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp4.not = icmp eq i32 %15, %13
  br i1 %cmp4.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %calculated_max_ua to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %calculated_max_ua, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_vbus_drop_end_work.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_vbus_drop_end_work, %if.end46)) #8
          to label %if.then15 [label %if.end46], !srcloc !771

if.then15:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 4
  %19 = ptrtoint ptr %calculated_max_ua to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %calculated_max_ua, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_vbus_drop_end_work.__UNIQUE_ID_ddebug342, ptr noundef %18, ptr noundef nonnull @.str.277, i32 noundef %20) #8
  br label %if.end46

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %set_max_ua = getelementptr i8, ptr %work, i32 -1028
  %21 = ptrtoint ptr %set_max_ua to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %13, ptr %set_max_ua, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_vbus_drop_end_work.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_vbus_drop_end_work, %if.end46)) #8
          to label %if.then39 [label %if.end46], !srcloc !771

if.then39:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 4
  %24 = ptrtoint ptr %set_max_ua to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %set_max_ua, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_vbus_drop_end_work.__UNIQUE_ID_ddebug343, ptr noundef %23, ptr noundef nonnull @.str.278, i32 noundef %25) #8
  br label %if.end46

if.end46:                                         ; preds = %if.then39, %if.else, %if.then15, %if.then6
  %usb = getelementptr i8, ptr %work, i32 -924
  %26 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %usb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool47.not = icmp eq i32 %27, 0
  br i1 %tobool47.not, label %if.end46.cleanup_crit_edge, label %if.then48

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %max_usb_in_curr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_usb_in_curr, align 4
  %call50 = call fastcc i32 @ab8500_charger_set_vbus_in_curr(ptr noundef %add.ptr, i32 noundef %29)
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %if.end46.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_value) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ab8500_charger_usb_link_status_work(ptr noundef %work) #2 align 64 {
entry:
  %val.i = alloca i8, align 1
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !773
  %add.ptr = getelementptr i8, ptr %work, i32 -1348
  %call = tail call fastcc i32 @ab8500_charger_detect_chargers(ptr noundef %add.ptr, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr i8, ptr %work, i32 -1312
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 4
  %version.i = getelementptr inbounds %struct.ab8500, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i.not = icmp eq i32 %4, 0
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  %.353 = select i1 %cmp.i.not, i8 -128, i8 -108
  %call5 = call i32 @abx500_get_register_interruptible(ptr noundef %6, i8 noundef zeroext 5, i8 noundef zeroext %.353, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5)
  %cmp7 = icmp sgt i32 %call5, -1
  br i1 %cmp7, label %do.body, label %do.body19

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_usb_link_status_work.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_usb_link_status_work, %if.end38)) #8
          to label %if.then15 [label %if.end38], !srcloc !771

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %val, align 1
  %conv = zext i8 %10 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_usb_link_status_work.__UNIQUE_ID_ddebug327, ptr noundef %8, ptr noundef nonnull @.str.280, i32 noundef %conv) #8
  br label %if.end38

do.body19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_usb_link_status_work.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_usb_link_status_work, %if.end38)) #8
          to label %if.then33 [label %if.end38], !srcloc !771

if.then33:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_usb_link_status_work.__UNIQUE_ID_ddebug328, ptr noundef %12, ptr noundef nonnull @.str.281) #8
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %do.body19, %if.then15, %do.body
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent, align 4
  %version.i305 = getelementptr inbounds %struct.ab8500, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %version.i305 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %version.i305, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i306.not = icmp eq i32 %16, 0
  %. = select i1 %cmp.i306.not, i32 120, i32 248
  %and = and i32 %call, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool45.not = icmp eq i32 %and, 0
  br i1 %tobool45.not, label %if.then145, label %if.then46

if.then46:                                        ; preds = %if.end38
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %val, align 1
  %conv47 = zext i8 %18 to i32
  %and49 = and i32 %., %conv47
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %and49)
  %cmp50 = icmp eq i32 %and49, 120
  br i1 %cmp50, label %land.lhs.true, label %if.then46.if.end79_crit_edge

if.then46.if.end79_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

land.lhs.true:                                    ; preds = %if.then46
  %invalid_charger_detect_state = getelementptr i8, ptr %work, i32 -1324
  %19 = ptrtoint ptr %invalid_charger_detect_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %invalid_charger_detect_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp52 = icmp eq i32 %20, 0
  br i1 %cmp52, label %do.body55, label %land.lhs.true.if.end79_crit_edge

land.lhs.true.if.end79_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

do.body55:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_usb_link_status_work.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_usb_link_status_work, %do.end73)) #8
          to label %if.then69 [label %do.end73], !srcloc !771

if.then69:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_usb_link_status_work.__UNIQUE_ID_ddebug329, ptr noundef %22, ptr noundef nonnull @.str.282) #8
  br label %do.end73

do.end73:                                         ; preds = %if.then69, %do.body55
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr, align 4
  %call75 = call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %24, i8 noundef zeroext 11, i8 noundef zeroext -64, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr, align 4
  %call77 = call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %26, i8 noundef zeroext 5, i8 noundef zeroext -126, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  %27 = ptrtoint ptr %invalid_charger_detect_state to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %invalid_charger_detect_state, align 4
  br label %cleanup

if.end79:                                         ; preds = %land.lhs.true.if.end79_crit_edge, %if.then46.if.end79_crit_edge
  %invalid_charger_detect_state80 = getelementptr i8, ptr %work, i32 -1324
  %28 = ptrtoint ptr %invalid_charger_detect_state80 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %invalid_charger_detect_state80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp81 = icmp eq i32 %29, 1
  br i1 %cmp81, label %do.body84, label %if.end79.do.body147_crit_edge

if.end79.do.body147_crit_edge:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body147

do.body84:                                        ; preds = %if.end79
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_usb_link_status_work.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_usb_link_status_work, %do.end102)) #8
          to label %if.then98 [label %do.end102], !srcloc !771

if.then98:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_usb_link_status_work.__UNIQUE_ID_ddebug330, ptr noundef %31, ptr noundef nonnull @.str.283) #8
  br label %do.end102

do.end102:                                        ; preds = %if.then98, %do.body84
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr, align 4
  %call104 = call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %33, i8 noundef zeroext 5, i8 noundef zeroext -126, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  %34 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parent, align 4
  %version.i308 = getelementptr inbounds %struct.ab8500, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %version.i308 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %version.i308, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i309.not = icmp eq i32 %37, 0
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr, align 4
  %.354 = select i1 %cmp.i309.not, i8 -128, i8 -108
  %call110 = call i32 @abx500_get_register_interruptible(ptr noundef %39, i8 noundef zeroext 5, i8 noundef zeroext %.354, ptr noundef nonnull %val) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_usb_link_status_work.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_usb_link_status_work, %if.end142)) #8
          to label %if.then129 [label %if.end142], !srcloc !771

if.then129:                                       ; preds = %do.end102
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr, align 4
  %42 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %val, align 1
  %conv131 = zext i8 %43 to i32
  %and133 = and i32 %., %conv131
  %44 = lshr exact i32 %and133, 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_usb_link_status_work.__UNIQUE_ID_ddebug331, ptr noundef %41, ptr noundef nonnull @.str.284, i32 noundef %44) #8
  br label %if.end142

if.end142:                                        ; preds = %if.then129, %do.end102
  %45 = ptrtoint ptr %invalid_charger_detect_state80 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %invalid_charger_detect_state80, align 4
  br label %do.body147

if.then145:                                       ; preds = %if.end38
  %invalid_charger_detect_state141 = getelementptr i8, ptr %work, i32 -1324
  %46 = ptrtoint ptr %invalid_charger_detect_state141 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %invalid_charger_detect_state141, align 4
  %vbus_detected = getelementptr i8, ptr %work, i32 -1344
  %47 = ptrtoint ptr %vbus_detected to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %vbus_detected, align 4
  call fastcc void @ab8500_charger_set_usb_connected(ptr noundef %add.ptr, i1 noundef zeroext false)
  %usb_chg = getelementptr i8, ptr %work, i32 -1172
  %48 = ptrtoint ptr %usb_chg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %usb_chg, align 4
  %tobool.not.i = icmp eq ptr %49, null
  br i1 %tobool.not.i, label %if.then145.cleanup_crit_edge, label %if.end.i

if.then145.cleanup_crit_edge:                     ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then145
  %autopower_cfg.i = getelementptr i8, ptr %work, i32 -1326
  %50 = ptrtoint ptr %autopower_cfg.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %autopower_cfg.i, align 2, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool1.not.i = icmp eq i8 %51, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end23.i_crit_edge, label %if.then2.i

if.end.i.if.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then2.i:                                       ; preds = %if.end.i
  %usb.i = getelementptr i8, ptr %work, i32 -1112
  %52 = ptrtoint ptr %usb.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %usb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool3.not.i = icmp eq i32 %53, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %if.then2.i.if.else.i_crit_edge

if.then2.i.if.else.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then2.i
  %ac.i = getelementptr i8, ptr %work, i32 -1136
  %54 = ptrtoint ptr %ac.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ac.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool5.not.i = icmp eq i32 %55, 0
  br i1 %tobool5.not.i, label %land.lhs.true6.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %autopower.i = getelementptr i8, ptr %work, i32 -1327
  %56 = ptrtoint ptr %autopower.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %autopower.i, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool7.not.i = icmp eq i8 %57, 0
  br i1 %tobool7.not.i, label %land.lhs.true6.i.if.else.i_crit_edge, label %if.then8.i

land.lhs.true6.i.if.else.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then8.i:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %autopower.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %autopower.i, align 1
  br label %if.end23.sink.split.i

if.else.i:                                        ; preds = %land.lhs.true6.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.then2.i.if.else.i_crit_edge
  %autopower10.i = getelementptr i8, ptr %work, i32 -1327
  %59 = ptrtoint ptr %autopower10.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %autopower10.i, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool11.not.i = icmp eq i8 %60, 0
  br i1 %tobool11.not.i, label %land.lhs.true12.i, label %if.else.i.if.end23.i_crit_edge

if.else.i.if.end23.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

land.lhs.true12.i:                                ; preds = %if.else.i
  %ac13.i = getelementptr i8, ptr %work, i32 -1136
  %61 = ptrtoint ptr %ac13.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ac13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool15.not.i = icmp ne i32 %62, 0
  %tobool3.not.not.i = xor i1 %tobool3.not.i, true
  %brmerge.i = select i1 %tobool15.not.i, i1 true, i1 %tobool3.not.not.i
  br i1 %brmerge.i, label %if.then19.i, label %land.lhs.true12.i.if.end23.i_crit_edge

land.lhs.true12.i.if.end23.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then19.i:                                      ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %autopower10.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %autopower10.i, align 1
  br label %if.end23.sink.split.i

if.end23.sink.split.i:                            ; preds = %if.then19.i, %if.then8.i
  %.sink.i = phi i1 [ false, %if.then8.i ], [ true, %if.then19.i ]
  call fastcc void @ab8500_enable_disable_sw_fallback(ptr noundef %add.ptr, i1 noundef zeroext %.sink.i) #8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end23.sink.split.i, %land.lhs.true12.i.if.end23.i_crit_edge, %if.else.i.if.end23.i_crit_edge, %if.end.i.if.end23.i_crit_edge
  call void @power_supply_changed(ptr noundef nonnull %49) #8
  br label %cleanup

do.body147:                                       ; preds = %if.end142, %if.end79.do.body147_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_usb_link_status_work.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_usb_link_status_work, %do.end165)) #8
          to label %if.then161 [label %do.end165], !srcloc !771

if.then161:                                       ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_usb_link_status_work.__UNIQUE_ID_ddebug332, ptr noundef %65, ptr noundef nonnull @.str.285, ptr noundef nonnull @.str.279) #8
  br label %do.end165

do.end165:                                        ; preds = %if.then161, %do.body147
  %vbus_detected166 = getelementptr i8, ptr %work, i32 -1344
  %66 = ptrtoint ptr %vbus_detected166 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %vbus_detected166, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #8
  %67 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 -1, ptr %val.i, align 1, !annotation !773
  %68 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %add.ptr, align 4
  %call.i = call i32 @abx500_get_register_interruptible(ptr noundef %69, i8 noundef zeroext 14, i8 noundef zeroext 20, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i311 = icmp slt i32 %call.i, 0
  br i1 %cmp.i311, label %do.end.i, label %if.end.i312

do.end.i:                                         ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.261, ptr noundef nonnull @.str.288) #11
  br label %ab8500_charger_read_usb_type.exit

if.end.i312:                                      ; preds = %do.end165
  %72 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %parent, align 4
  %version.i.i = getelementptr inbounds %struct.ab8500, ptr %73, i32 0, i32 6
  %74 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp.i.not.i = icmp eq i32 %75, 0
  %76 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %add.ptr, align 4
  %..i = select i1 %cmp.i.not.i, i8 -128, i8 -108
  %call7.i = call i32 @abx500_get_register_interruptible(ptr noundef %77, i8 noundef zeroext 5, i8 noundef zeroext %..i, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp9.i = icmp slt i32 %call7.i, 0
  br i1 %cmp9.i, label %do.end13.i, label %if.end15.i

do.end13.i:                                       ; preds = %if.end.i312
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.261, ptr noundef nonnull @.str.288) #11
  br label %ab8500_charger_read_usb_type.exit

if.end15.i:                                       ; preds = %if.end.i312
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %parent, align 4
  %version.i41.i = getelementptr inbounds %struct.ab8500, ptr %81, i32 0, i32 6
  %82 = ptrtoint ptr %version.i41.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %version.i41.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp.i42.not.i = icmp eq i32 %83, 0
  %84 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %val.i, align 1
  %86 = lshr i8 %85, 3
  %87 = and i8 %86, 15
  %storemerge.i = select i1 %cmp.i42.not.i, i8 %87, i8 %86
  store i8 %storemerge.i, ptr %val.i, align 1
  %conv27.i = zext i8 %storemerge.i to i32
  %call28.i = call fastcc i32 @ab8500_charger_max_usb_curr(ptr noundef %add.ptr, i32 noundef %conv27.i) #8
  br label %ab8500_charger_read_usb_type.exit

ab8500_charger_read_usb_type.exit:                ; preds = %if.end15.i, %do.end13.i, %do.end.i
  %retval.0.i313 = phi i32 [ %call.i, %do.end.i ], [ %call7.i, %do.end13.i ], [ %call28.i, %if.end15.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  %88 = zext i32 %retval.0.i313 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.388)
  switch i32 %retval.0.i313, label %ab8500_charger_read_usb_type.exit.cleanup_crit_edge [
    i32 0, label %if.end176
    i32 -6, label %if.then172
  ]

ab8500_charger_read_usb_type.exit.cleanup_crit_edge: ; preds = %ab8500_charger_read_usb_type.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then172:                                       ; preds = %ab8500_charger_read_usb_type.exit
  call fastcc void @ab8500_charger_set_usb_connected(ptr noundef %add.ptr, i1 noundef zeroext false)
  %usb_chg173 = getelementptr i8, ptr %work, i32 -1172
  %89 = ptrtoint ptr %usb_chg173 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %usb_chg173, align 4
  %tobool.not.i314 = icmp eq ptr %90, null
  br i1 %tobool.not.i314, label %if.then172.cleanup_crit_edge, label %if.end.i317

if.then172.cleanup_crit_edge:                     ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i317:                                      ; preds = %if.then172
  %autopower_cfg.i315 = getelementptr i8, ptr %work, i32 -1326
  %91 = ptrtoint ptr %autopower_cfg.i315 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %autopower_cfg.i315, align 2, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool1.not.i316 = icmp eq i8 %92, 0
  br i1 %tobool1.not.i316, label %if.end.i317.if.end23.i339_crit_edge, label %if.then2.i320

if.end.i317.if.end23.i339_crit_edge:              ; preds = %if.end.i317
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i339

if.then2.i320:                                    ; preds = %if.end.i317
  %usb.i318 = getelementptr i8, ptr %work, i32 -1112
  %93 = ptrtoint ptr %usb.i318 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %usb.i318, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool3.not.i319 = icmp eq i32 %94, 0
  br i1 %tobool3.not.i319, label %land.lhs.true.i323, label %if.then2.i320.if.else.i330_crit_edge

if.then2.i320.if.else.i330_crit_edge:             ; preds = %if.then2.i320
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i330

land.lhs.true.i323:                               ; preds = %if.then2.i320
  %ac.i321 = getelementptr i8, ptr %work, i32 -1136
  %95 = ptrtoint ptr %ac.i321 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %ac.i321, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool5.not.i322 = icmp eq i32 %96, 0
  br i1 %tobool5.not.i322, label %land.lhs.true6.i326, label %land.lhs.true.i323.if.else.i330_crit_edge

land.lhs.true.i323.if.else.i330_crit_edge:        ; preds = %land.lhs.true.i323
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i330

land.lhs.true6.i326:                              ; preds = %land.lhs.true.i323
  %autopower.i324 = getelementptr i8, ptr %work, i32 -1327
  %97 = ptrtoint ptr %autopower.i324 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %autopower.i324, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool7.not.i325 = icmp eq i8 %98, 0
  br i1 %tobool7.not.i325, label %land.lhs.true6.i326.if.else.i330_crit_edge, label %if.then8.i327

land.lhs.true6.i326.if.else.i330_crit_edge:       ; preds = %land.lhs.true6.i326
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i330

if.then8.i327:                                    ; preds = %land.lhs.true6.i326
  call void @__sanitizer_cov_trace_pc() #10
  %99 = ptrtoint ptr %autopower.i324 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %autopower.i324, align 1
  br label %if.end23.sink.split.i338

if.else.i330:                                     ; preds = %land.lhs.true6.i326.if.else.i330_crit_edge, %land.lhs.true.i323.if.else.i330_crit_edge, %if.then2.i320.if.else.i330_crit_edge
  %autopower10.i328 = getelementptr i8, ptr %work, i32 -1327
  %100 = ptrtoint ptr %autopower10.i328 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %autopower10.i328, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool11.not.i329 = icmp eq i8 %101, 0
  br i1 %tobool11.not.i329, label %land.lhs.true12.i335, label %if.else.i330.if.end23.i339_crit_edge

if.else.i330.if.end23.i339_crit_edge:             ; preds = %if.else.i330
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i339

land.lhs.true12.i335:                             ; preds = %if.else.i330
  %ac13.i331 = getelementptr i8, ptr %work, i32 -1136
  %102 = ptrtoint ptr %ac13.i331 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ac13.i331, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool15.not.i332 = icmp ne i32 %103, 0
  %tobool3.not.not.i333 = xor i1 %tobool3.not.i319, true
  %brmerge.i334 = select i1 %tobool15.not.i332, i1 true, i1 %tobool3.not.not.i333
  br i1 %brmerge.i334, label %if.then19.i336, label %land.lhs.true12.i335.if.end23.i339_crit_edge

land.lhs.true12.i335.if.end23.i339_crit_edge:     ; preds = %land.lhs.true12.i335
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i339

if.then19.i336:                                   ; preds = %land.lhs.true12.i335
  call void @__sanitizer_cov_trace_pc() #10
  %104 = ptrtoint ptr %autopower10.i328 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 1, ptr %autopower10.i328, align 1
  br label %if.end23.sink.split.i338

if.end23.sink.split.i338:                         ; preds = %if.then19.i336, %if.then8.i327
  %.sink.i337 = phi i1 [ false, %if.then8.i327 ], [ true, %if.then19.i336 ]
  call fastcc void @ab8500_enable_disable_sw_fallback(ptr noundef %add.ptr, i1 noundef zeroext %.sink.i337) #8
  br label %if.end23.i339

if.end23.i339:                                    ; preds = %if.end23.sink.split.i338, %land.lhs.true12.i335.if.end23.i339_crit_edge, %if.else.i330.if.end23.i339_crit_edge, %if.end.i317.if.end23.i339_crit_edge
  call void @power_supply_changed(ptr noundef nonnull %90) #8
  br label %cleanup

if.end176:                                        ; preds = %ab8500_charger_read_usb_type.exit
  %usb_device_is_unrecognised = getelementptr i8, ptr %work, i32 -1328
  %105 = ptrtoint ptr %usb_device_is_unrecognised to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %usb_device_is_unrecognised, align 4, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool177.not = icmp eq i8 %106, 0
  br i1 %tobool177.not, label %if.else200, label %do.body179

do.body179:                                       ; preds = %if.end176
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_usb_link_status_work.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_usb_link_status_work, %do.end197)) #8
          to label %if.then193 [label %do.end197], !srcloc !771

if.then193:                                       ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #10
  %107 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_usb_link_status_work.__UNIQUE_ID_ddebug333, ptr noundef %108, ptr noundef nonnull @.str.286, i32 noundef 5000) #8
  br label %do.end197

do.end197:                                        ; preds = %if.then193, %do.body179
  %charger_wq = getelementptr i8, ptr %work, i32 -1084
  %109 = ptrtoint ptr %charger_wq to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %charger_wq, align 4
  %attach_work = getelementptr i8, ptr %work, i32 -488
  %call.i341 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %110, ptr noundef %attach_work, i32 noundef 500) #8
  br label %cleanup

if.else200:                                       ; preds = %if.end176
  %is_aca_rid = getelementptr i8, ptr %work, i32 -1320
  %111 = ptrtoint ptr %is_aca_rid to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %is_aca_rid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %112)
  %cmp201 = icmp eq i32 %112, 1
  br i1 %cmp201, label %if.then203, label %if.else228

if.then203:                                       ; preds = %if.else200
  %113 = ptrtoint ptr %is_aca_rid to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 2, ptr %is_aca_rid, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_usb_link_status_work.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_usb_link_status_work, %do.end223)) #8
          to label %if.then219 [label %do.end223], !srcloc !771

if.then219:                                       ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #10
  %114 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_usb_link_status_work.__UNIQUE_ID_ddebug334, ptr noundef %115, ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.279, i32 noundef 5000) #8
  br label %do.end223

do.end223:                                        ; preds = %if.then219, %if.then203
  %charger_wq224 = getelementptr i8, ptr %work, i32 -1084
  %116 = ptrtoint ptr %charger_wq224 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %charger_wq224, align 4
  %attach_work225 = getelementptr i8, ptr %work, i32 -488
  %call.i342 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %117, ptr noundef %attach_work225, i32 noundef 500) #8
  br label %cleanup

if.else228:                                       ; preds = %if.else200
  call void @__sanitizer_cov_trace_pc() #10
  %charger_wq229 = getelementptr i8, ptr %work, i32 -1084
  %118 = ptrtoint ptr %charger_wq229 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %charger_wq229, align 4
  %attach_work230 = getelementptr i8, ptr %work, i32 -488
  %call.i343 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %119, ptr noundef %attach_work230, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else228, %do.end223, %do.end197, %if.end23.i339, %if.then172.cleanup_crit_edge, %ab8500_charger_read_usb_type.exit.cleanup_crit_edge, %if.end23.i, %if.then145.cleanup_crit_edge, %do.end73, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ab8500_charger_ac_work(ptr nocapture noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1260
  %call = tail call fastcc i32 @ab8500_charger_detect_chargers(ptr noundef %add.ptr, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then1

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %ac_conn = getelementptr i8, ptr %work, i32 -1254
  %0 = ptrtoint ptr %ac_conn to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %ac_conn, align 2
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end.if.end4_crit_edge
  %.sink = phi i32 [ 1, %if.then1 ], [ 0, %if.end.if.end4_crit_edge ]
  %1 = getelementptr i8, ptr %work, i32 -1048
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %.sink, ptr %1, align 4
  %ac_chg = getelementptr i8, ptr %work, i32 -1120
  %3 = ptrtoint ptr %ac_chg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ac_chg, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end4.ab8500_power_supply_changed.exit_crit_edge, label %if.end.i

if.end4.ab8500_power_supply_changed.exit_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_power_supply_changed.exit

if.end.i:                                         ; preds = %if.end4
  %autopower_cfg.i = getelementptr i8, ptr %work, i32 -1238
  %5 = ptrtoint ptr %autopower_cfg.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %autopower_cfg.i, align 2, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not.i = icmp eq i8 %6, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end23.i_crit_edge, label %if.then2.i

if.end.i.if.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then2.i:                                       ; preds = %if.end.i
  %usb.i = getelementptr i8, ptr %work, i32 -1024
  %7 = ptrtoint ptr %usb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %usb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not.i = icmp eq i32 %8, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %if.then2.i.if.else.i_crit_edge

if.then2.i.if.else.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then2.i
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not.i = icmp eq i32 %10, 0
  br i1 %tobool5.not.i, label %land.lhs.true6.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %autopower.i = getelementptr i8, ptr %work, i32 -1239
  %11 = ptrtoint ptr %autopower.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %autopower.i, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool7.not.i = icmp eq i8 %12, 0
  br i1 %tobool7.not.i, label %land.lhs.true6.i.if.else.i_crit_edge, label %if.then8.i

land.lhs.true6.i.if.else.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then8.i:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %autopower.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %autopower.i, align 1
  br label %if.end23.sink.split.i

if.else.i:                                        ; preds = %land.lhs.true6.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.then2.i.if.else.i_crit_edge
  %autopower10.i = getelementptr i8, ptr %work, i32 -1239
  %14 = ptrtoint ptr %autopower10.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %autopower10.i, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool11.not.i = icmp eq i8 %15, 0
  br i1 %tobool11.not.i, label %land.lhs.true12.i, label %if.else.i.if.end23.i_crit_edge

if.else.i.if.end23.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

land.lhs.true12.i:                                ; preds = %if.else.i
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool15.not.i = icmp ne i32 %17, 0
  %tobool3.not.not.i = xor i1 %tobool3.not.i, true
  %brmerge.i = select i1 %tobool15.not.i, i1 true, i1 %tobool3.not.not.i
  br i1 %brmerge.i, label %if.then19.i, label %land.lhs.true12.i.if.end23.i_crit_edge

land.lhs.true12.i.if.end23.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then19.i:                                      ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %autopower10.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %autopower10.i, align 1
  br label %if.end23.sink.split.i

if.end23.sink.split.i:                            ; preds = %if.then19.i, %if.then8.i
  %.sink.i = phi i1 [ false, %if.then8.i ], [ true, %if.then19.i ]
  tail call fastcc void @ab8500_enable_disable_sw_fallback(ptr noundef %add.ptr, i1 noundef zeroext %.sink.i) #8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end23.sink.split.i, %land.lhs.true12.i.if.end23.i_crit_edge, %if.else.i.if.end23.i_crit_edge, %if.end.i.if.end23.i_crit_edge
  tail call void @power_supply_changed(ptr noundef nonnull %4) #8
  br label %ab8500_power_supply_changed.exit

ab8500_power_supply_changed.exit:                 ; preds = %if.end23.i, %if.end4.ab8500_power_supply_changed.exit_crit_edge
  %19 = ptrtoint ptr %ac_chg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ac_chg, align 4
  %dev = getelementptr inbounds %struct.power_supply, ptr %20, i32 0, i32 7
  tail call void @sysfs_notify(ptr noundef %dev, ptr noundef null, ptr noundef nonnull @.str.82) #8
  br label %cleanup

cleanup:                                          ; preds = %ab8500_power_supply_changed.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ab8500_charger_detect_usb_type_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1304
  %call = tail call fastcc i32 @ab8500_charger_detect_chargers(ptr noundef %add.ptr, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %do.body10

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_detect_usb_type_work.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_detect_usb_type_work, %do.end)) #8
          to label %if.then8 [label %do.end], !srcloc !771

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_detect_usb_type_work.__UNIQUE_ID_ddebug325, ptr noundef %1, ptr noundef nonnull @.str.307, ptr noundef nonnull @.str.306) #8
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %vbus_detected = getelementptr i8, ptr %work, i32 -1300
  %2 = ptrtoint ptr %vbus_detected to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %vbus_detected, align 4
  tail call fastcc void @ab8500_charger_set_usb_connected(ptr noundef %add.ptr, i1 noundef zeroext false)
  %usb_chg = getelementptr i8, ptr %work, i32 -1128
  %3 = ptrtoint ptr %usb_chg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %usb_chg, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %do.end.cleanup_crit_edge, label %if.end.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %do.end
  %autopower_cfg.i = getelementptr i8, ptr %work, i32 -1282
  %5 = ptrtoint ptr %autopower_cfg.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %autopower_cfg.i, align 2, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not.i = icmp eq i8 %6, 0
  br i1 %tobool1.not.i, label %if.end.i.cleanup.sink.split_crit_edge, label %if.then2.i

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then2.i:                                       ; preds = %if.end.i
  %usb.i = getelementptr i8, ptr %work, i32 -1068
  %7 = ptrtoint ptr %usb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %usb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not.i = icmp eq i32 %8, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %if.then2.i.if.else.i_crit_edge

if.then2.i.if.else.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then2.i
  %ac.i = getelementptr i8, ptr %work, i32 -1092
  %9 = ptrtoint ptr %ac.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ac.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not.i = icmp eq i32 %10, 0
  br i1 %tobool5.not.i, label %land.lhs.true6.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %autopower.i = getelementptr i8, ptr %work, i32 -1283
  %11 = ptrtoint ptr %autopower.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %autopower.i, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool7.not.i = icmp eq i8 %12, 0
  br i1 %tobool7.not.i, label %land.lhs.true6.i.if.else.i_crit_edge, label %if.then8.i

land.lhs.true6.i.if.else.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then8.i:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %autopower.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %autopower.i, align 1
  br label %cleanup.sink.split.sink.split

if.else.i:                                        ; preds = %land.lhs.true6.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.then2.i.if.else.i_crit_edge
  %autopower10.i = getelementptr i8, ptr %work, i32 -1283
  %14 = ptrtoint ptr %autopower10.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %autopower10.i, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool11.not.i = icmp eq i8 %15, 0
  br i1 %tobool11.not.i, label %land.lhs.true12.i, label %if.else.i.cleanup.sink.split_crit_edge

if.else.i.cleanup.sink.split_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.lhs.true12.i:                                ; preds = %if.else.i
  %ac13.i = getelementptr i8, ptr %work, i32 -1092
  %16 = ptrtoint ptr %ac13.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ac13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool15.not.i = icmp ne i32 %17, 0
  %tobool3.not.not.i = xor i1 %tobool3.not.i, true
  %brmerge.i = select i1 %tobool15.not.i, i1 true, i1 %tobool3.not.not.i
  br i1 %brmerge.i, label %if.then19.i, label %land.lhs.true12.i.cleanup.sink.split_crit_edge

land.lhs.true12.i.cleanup.sink.split_crit_edge:   ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then19.i:                                      ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %autopower10.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %autopower10.i, align 1
  br label %cleanup.sink.split.sink.split

do.body10:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_detect_usb_type_work.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_detect_usb_type_work, %do.end28)) #8
          to label %if.then24 [label %do.end28], !srcloc !771

if.then24:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_detect_usb_type_work.__UNIQUE_ID_ddebug326, ptr noundef %20, ptr noundef nonnull @.str.285, ptr noundef nonnull @.str.306) #8
  br label %do.end28

do.end28:                                         ; preds = %if.then24, %do.body10
  %vbus_detected29 = getelementptr i8, ptr %work, i32 -1300
  %21 = ptrtoint ptr %vbus_detected29 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %vbus_detected29, align 4
  %parent = getelementptr i8, ptr %work, i32 -1268
  %22 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent, align 4
  %version.i.i = getelementptr inbounds %struct.ab8500, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i.not.i = icmp eq i32 %25, 0
  br i1 %cmp.i.not.i, label %is_ab8500_1p1_or_earlier.exit, label %do.end28.if.else39_crit_edge

do.end28.if.else39_crit_edge:                     ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else39

is_ab8500_1p1_or_earlier.exit:                    ; preds = %do.end28
  %chip_id.i = getelementptr inbounds %struct.ab8500, ptr %23, i32 0, i32 7
  %26 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %27)
  %cmp.i = icmp ugt i8 %27, 17
  br i1 %cmp.i, label %is_ab8500_1p1_or_earlier.exit.if.else39_crit_edge, label %if.then32

is_ab8500_1p1_or_earlier.exit.if.else39_crit_edge: ; preds = %is_ab8500_1p1_or_earlier.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else39

if.then32:                                        ; preds = %is_ab8500_1p1_or_earlier.exit
  %call33 = tail call fastcc i32 @ab8500_charger_detect_usb_type(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then35, label %if.then32.cleanup_crit_edge

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then35:                                        ; preds = %if.then32
  tail call fastcc void @ab8500_charger_set_usb_connected(ptr noundef %add.ptr, i1 noundef zeroext true)
  %usb_chg36 = getelementptr i8, ptr %work, i32 -1128
  %28 = ptrtoint ptr %usb_chg36 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %usb_chg36, align 4
  %tobool.not.i77 = icmp eq ptr %29, null
  br i1 %tobool.not.i77, label %if.then35.cleanup_crit_edge, label %if.end.i80

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i80:                                       ; preds = %if.then35
  %autopower_cfg.i78 = getelementptr i8, ptr %work, i32 -1282
  %30 = ptrtoint ptr %autopower_cfg.i78 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %autopower_cfg.i78, align 2, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool1.not.i79 = icmp eq i8 %31, 0
  br i1 %tobool1.not.i79, label %if.end.i80.cleanup.sink.split_crit_edge, label %if.then2.i83

if.end.i80.cleanup.sink.split_crit_edge:          ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then2.i83:                                     ; preds = %if.end.i80
  %usb.i81 = getelementptr i8, ptr %work, i32 -1068
  %32 = ptrtoint ptr %usb.i81 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %usb.i81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool3.not.i82 = icmp eq i32 %33, 0
  br i1 %tobool3.not.i82, label %land.lhs.true.i86, label %if.then2.i83.if.else.i93_crit_edge

if.then2.i83.if.else.i93_crit_edge:               ; preds = %if.then2.i83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i93

land.lhs.true.i86:                                ; preds = %if.then2.i83
  %ac.i84 = getelementptr i8, ptr %work, i32 -1092
  %34 = ptrtoint ptr %ac.i84 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ac.i84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool5.not.i85 = icmp eq i32 %35, 0
  br i1 %tobool5.not.i85, label %land.lhs.true6.i89, label %land.lhs.true.i86.if.else.i93_crit_edge

land.lhs.true.i86.if.else.i93_crit_edge:          ; preds = %land.lhs.true.i86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i93

land.lhs.true6.i89:                               ; preds = %land.lhs.true.i86
  %autopower.i87 = getelementptr i8, ptr %work, i32 -1283
  %36 = ptrtoint ptr %autopower.i87 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %autopower.i87, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool7.not.i88 = icmp eq i8 %37, 0
  br i1 %tobool7.not.i88, label %land.lhs.true6.i89.if.else.i93_crit_edge, label %if.then8.i90

land.lhs.true6.i89.if.else.i93_crit_edge:         ; preds = %land.lhs.true6.i89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i93

if.then8.i90:                                     ; preds = %land.lhs.true6.i89
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %autopower.i87 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %autopower.i87, align 1
  br label %cleanup.sink.split.sink.split

if.else.i93:                                      ; preds = %land.lhs.true6.i89.if.else.i93_crit_edge, %land.lhs.true.i86.if.else.i93_crit_edge, %if.then2.i83.if.else.i93_crit_edge
  %autopower10.i91 = getelementptr i8, ptr %work, i32 -1283
  %39 = ptrtoint ptr %autopower10.i91 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %autopower10.i91, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool11.not.i92 = icmp eq i8 %40, 0
  br i1 %tobool11.not.i92, label %land.lhs.true12.i98, label %if.else.i93.cleanup.sink.split_crit_edge

if.else.i93.cleanup.sink.split_crit_edge:         ; preds = %if.else.i93
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.lhs.true12.i98:                              ; preds = %if.else.i93
  %ac13.i94 = getelementptr i8, ptr %work, i32 -1092
  %41 = ptrtoint ptr %ac13.i94 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ac13.i94, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool15.not.i95 = icmp ne i32 %42, 0
  %tobool3.not.not.i96 = xor i1 %tobool3.not.i82, true
  %brmerge.i97 = select i1 %tobool15.not.i95, i1 true, i1 %tobool3.not.not.i96
  br i1 %brmerge.i97, label %if.then19.i99, label %land.lhs.true12.i98.cleanup.sink.split_crit_edge

land.lhs.true12.i98.cleanup.sink.split_crit_edge: ; preds = %land.lhs.true12.i98
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then19.i99:                                    ; preds = %land.lhs.true12.i98
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %autopower10.i91 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %autopower10.i91, align 1
  br label %cleanup.sink.split.sink.split

if.else39:                                        ; preds = %is_ab8500_1p1_or_earlier.exit.if.else39_crit_edge, %do.end28.if.else39_crit_edge
  %vbus_detected_start = getelementptr i8, ptr %work, i32 -1299
  %44 = ptrtoint ptr %vbus_detected_start to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %vbus_detected_start, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool40.not = icmp eq i8 %45, 0
  br i1 %tobool40.not, label %if.else39.cleanup_crit_edge, label %if.then41

if.else39.cleanup_crit_edge:                      ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then41:                                        ; preds = %if.else39
  %46 = ptrtoint ptr %vbus_detected_start to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %vbus_detected_start, align 1
  %call43 = tail call fastcc i32 @ab8500_charger_detect_usb_type(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then45, label %if.then41.cleanup_crit_edge

if.then41.cleanup_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then45:                                        ; preds = %if.then41
  tail call fastcc void @ab8500_charger_set_usb_connected(ptr noundef %add.ptr, i1 noundef zeroext true)
  %usb_chg46 = getelementptr i8, ptr %work, i32 -1128
  %47 = ptrtoint ptr %usb_chg46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %usb_chg46, align 4
  %tobool.not.i104 = icmp eq ptr %48, null
  br i1 %tobool.not.i104, label %if.then45.cleanup_crit_edge, label %if.end.i107

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i107:                                      ; preds = %if.then45
  %autopower_cfg.i105 = getelementptr i8, ptr %work, i32 -1282
  %49 = ptrtoint ptr %autopower_cfg.i105 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %autopower_cfg.i105, align 2, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool1.not.i106 = icmp eq i8 %50, 0
  br i1 %tobool1.not.i106, label %if.end.i107.cleanup.sink.split_crit_edge, label %if.then2.i110

if.end.i107.cleanup.sink.split_crit_edge:         ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then2.i110:                                    ; preds = %if.end.i107
  %usb.i108 = getelementptr i8, ptr %work, i32 -1068
  %51 = ptrtoint ptr %usb.i108 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %usb.i108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool3.not.i109 = icmp eq i32 %52, 0
  br i1 %tobool3.not.i109, label %land.lhs.true.i113, label %if.then2.i110.if.else.i120_crit_edge

if.then2.i110.if.else.i120_crit_edge:             ; preds = %if.then2.i110
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i120

land.lhs.true.i113:                               ; preds = %if.then2.i110
  %ac.i111 = getelementptr i8, ptr %work, i32 -1092
  %53 = ptrtoint ptr %ac.i111 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ac.i111, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool5.not.i112 = icmp eq i32 %54, 0
  br i1 %tobool5.not.i112, label %land.lhs.true6.i116, label %land.lhs.true.i113.if.else.i120_crit_edge

land.lhs.true.i113.if.else.i120_crit_edge:        ; preds = %land.lhs.true.i113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i120

land.lhs.true6.i116:                              ; preds = %land.lhs.true.i113
  %autopower.i114 = getelementptr i8, ptr %work, i32 -1283
  %55 = ptrtoint ptr %autopower.i114 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %autopower.i114, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool7.not.i115 = icmp eq i8 %56, 0
  br i1 %tobool7.not.i115, label %land.lhs.true6.i116.if.else.i120_crit_edge, label %if.then8.i117

land.lhs.true6.i116.if.else.i120_crit_edge:       ; preds = %land.lhs.true6.i116
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i120

if.then8.i117:                                    ; preds = %land.lhs.true6.i116
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %autopower.i114 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %autopower.i114, align 1
  br label %cleanup.sink.split.sink.split

if.else.i120:                                     ; preds = %land.lhs.true6.i116.if.else.i120_crit_edge, %land.lhs.true.i113.if.else.i120_crit_edge, %if.then2.i110.if.else.i120_crit_edge
  %autopower10.i118 = getelementptr i8, ptr %work, i32 -1283
  %58 = ptrtoint ptr %autopower10.i118 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %autopower10.i118, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool11.not.i119 = icmp eq i8 %59, 0
  br i1 %tobool11.not.i119, label %land.lhs.true12.i125, label %if.else.i120.cleanup.sink.split_crit_edge

if.else.i120.cleanup.sink.split_crit_edge:        ; preds = %if.else.i120
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.lhs.true12.i125:                             ; preds = %if.else.i120
  %ac13.i121 = getelementptr i8, ptr %work, i32 -1092
  %60 = ptrtoint ptr %ac13.i121 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ac13.i121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool15.not.i122 = icmp ne i32 %61, 0
  %tobool3.not.not.i123 = xor i1 %tobool3.not.i109, true
  %brmerge.i124 = select i1 %tobool15.not.i122, i1 true, i1 %tobool3.not.not.i123
  br i1 %brmerge.i124, label %if.then19.i126, label %land.lhs.true12.i125.cleanup.sink.split_crit_edge

land.lhs.true12.i125.cleanup.sink.split_crit_edge: ; preds = %land.lhs.true12.i125
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then19.i126:                                   ; preds = %land.lhs.true12.i125
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %autopower10.i118 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %autopower10.i118, align 1
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.then19.i126, %if.then8.i117, %if.then19.i99, %if.then8.i90, %if.then19.i, %if.then8.i
  %.sink.i127.sink = phi i1 [ false, %if.then8.i ], [ true, %if.then19.i ], [ false, %if.then8.i90 ], [ true, %if.then19.i99 ], [ false, %if.then8.i117 ], [ true, %if.then19.i126 ]
  %.sink.ph = phi ptr [ %4, %if.then8.i ], [ %4, %if.then19.i ], [ %29, %if.then8.i90 ], [ %29, %if.then19.i99 ], [ %48, %if.then8.i117 ], [ %48, %if.then19.i126 ]
  tail call fastcc void @ab8500_enable_disable_sw_fallback(ptr noundef %add.ptr, i1 noundef zeroext %.sink.i127.sink) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %land.lhs.true12.i125.cleanup.sink.split_crit_edge, %if.else.i120.cleanup.sink.split_crit_edge, %if.end.i107.cleanup.sink.split_crit_edge, %land.lhs.true12.i98.cleanup.sink.split_crit_edge, %if.else.i93.cleanup.sink.split_crit_edge, %if.end.i80.cleanup.sink.split_crit_edge, %land.lhs.true12.i.cleanup.sink.split_crit_edge, %if.else.i.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %4, %land.lhs.true12.i.cleanup.sink.split_crit_edge ], [ %4, %if.else.i.cleanup.sink.split_crit_edge ], [ %4, %if.end.i.cleanup.sink.split_crit_edge ], [ %29, %land.lhs.true12.i98.cleanup.sink.split_crit_edge ], [ %29, %if.else.i93.cleanup.sink.split_crit_edge ], [ %29, %if.end.i80.cleanup.sink.split_crit_edge ], [ %48, %land.lhs.true12.i125.cleanup.sink.split_crit_edge ], [ %48, %if.else.i120.cleanup.sink.split_crit_edge ], [ %48, %if.end.i107.cleanup.sink.split_crit_edge ], [ %.sink.ph, %cleanup.sink.split.sink.split ]
  tail call void @power_supply_changed(ptr noundef nonnull %.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then45.cleanup_crit_edge, %if.then41.cleanup_crit_edge, %if.else39.cleanup_crit_edge, %if.then35.cleanup_crit_edge, %if.then32.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ab8500_charger_check_main_thermal_prot_work(ptr nocapture noundef %work) #2 align 64 {
entry:
  %reg_value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_value) #8
  %0 = ptrtoint ptr %reg_value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reg_value, align 1, !annotation !773
  %add.ptr = getelementptr i8, ptr %work, i32 -1392
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %call = call i32 @abx500_get_register_interruptible(ptr noundef %2, i8 noundef zeroext 11, i8 noundef zeroext 1, ptr noundef nonnull %reg_value) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.261, ptr noundef nonnull @.str.313) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %reg_value to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reg_value, align 1
  %7 = lshr i8 %6, 1
  %.lobit = and i8 %7, 1
  %8 = getelementptr i8, ptr %work, i32 -1331
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %.lobit, ptr %8, align 1
  %ac_chg = getelementptr i8, ptr %work, i32 -1252
  %10 = ptrtoint ptr %ac_chg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ac_chg, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %autopower_cfg.i = getelementptr i8, ptr %work, i32 -1370
  %12 = ptrtoint ptr %autopower_cfg.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %autopower_cfg.i, align 2, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool1.not.i = icmp eq i8 %13, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end23.i_crit_edge, label %if.then2.i

if.end.i.if.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then2.i:                                       ; preds = %if.end.i
  %usb.i = getelementptr i8, ptr %work, i32 -1156
  %14 = ptrtoint ptr %usb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %usb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool3.not.i = icmp eq i32 %15, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %if.then2.i.if.else.i_crit_edge

if.then2.i.if.else.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then2.i
  %ac.i = getelementptr i8, ptr %work, i32 -1180
  %16 = ptrtoint ptr %ac.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ac.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool5.not.i = icmp eq i32 %17, 0
  br i1 %tobool5.not.i, label %land.lhs.true6.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %autopower.i = getelementptr i8, ptr %work, i32 -1371
  %18 = ptrtoint ptr %autopower.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %autopower.i, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool7.not.i = icmp eq i8 %19, 0
  br i1 %tobool7.not.i, label %land.lhs.true6.i.if.else.i_crit_edge, label %if.then8.i

land.lhs.true6.i.if.else.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then8.i:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %autopower.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %autopower.i, align 1
  br label %if.end23.sink.split.i

if.else.i:                                        ; preds = %land.lhs.true6.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.then2.i.if.else.i_crit_edge
  %autopower10.i = getelementptr i8, ptr %work, i32 -1371
  %21 = ptrtoint ptr %autopower10.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %autopower10.i, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool11.not.i = icmp eq i8 %22, 0
  br i1 %tobool11.not.i, label %land.lhs.true12.i, label %if.else.i.if.end23.i_crit_edge

if.else.i.if.end23.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

land.lhs.true12.i:                                ; preds = %if.else.i
  %ac13.i = getelementptr i8, ptr %work, i32 -1180
  %23 = ptrtoint ptr %ac13.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ac13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool15.not.i = icmp ne i32 %24, 0
  %tobool3.not.not.i = xor i1 %tobool3.not.i, true
  %brmerge.i = select i1 %tobool15.not.i, i1 true, i1 %tobool3.not.not.i
  br i1 %brmerge.i, label %if.then19.i, label %land.lhs.true12.i.if.end23.i_crit_edge

land.lhs.true12.i.if.end23.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then19.i:                                      ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %autopower10.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %autopower10.i, align 1
  br label %if.end23.sink.split.i

if.end23.sink.split.i:                            ; preds = %if.then19.i, %if.then8.i
  %.sink.i = phi i1 [ false, %if.then8.i ], [ true, %if.then19.i ]
  call fastcc void @ab8500_enable_disable_sw_fallback(ptr noundef %add.ptr, i1 noundef zeroext %.sink.i) #8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end23.sink.split.i, %land.lhs.true12.i.if.end23.i_crit_edge, %if.else.i.if.end23.i_crit_edge, %if.end.i.if.end23.i_crit_edge
  call void @power_supply_changed(ptr noundef nonnull %11) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end23.i, %if.end.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_value) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ab8500_charger_check_usb_thermal_prot_work(ptr nocapture noundef %work) #2 align 64 {
entry:
  %reg_value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_value) #8
  %0 = ptrtoint ptr %reg_value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reg_value, align 1, !annotation !773
  %add.ptr = getelementptr i8, ptr %work, i32 -1436
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %call = call i32 @abx500_get_register_interruptible(ptr noundef %2, i8 noundef zeroext 11, i8 noundef zeroext 3, ptr noundef nonnull %reg_value) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.261, ptr noundef nonnull @.str.314) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %reg_value to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reg_value, align 1
  %7 = lshr i8 %6, 1
  %.lobit = and i8 %7, 1
  %8 = getelementptr i8, ptr %work, i32 -1374
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %.lobit, ptr %8, align 2
  %usb_chg = getelementptr i8, ptr %work, i32 -1260
  %10 = ptrtoint ptr %usb_chg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb_chg, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %autopower_cfg.i = getelementptr i8, ptr %work, i32 -1414
  %12 = ptrtoint ptr %autopower_cfg.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %autopower_cfg.i, align 2, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool1.not.i = icmp eq i8 %13, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end23.i_crit_edge, label %if.then2.i

if.end.i.if.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then2.i:                                       ; preds = %if.end.i
  %usb.i = getelementptr i8, ptr %work, i32 -1200
  %14 = ptrtoint ptr %usb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %usb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool3.not.i = icmp eq i32 %15, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %if.then2.i.if.else.i_crit_edge

if.then2.i.if.else.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then2.i
  %ac.i = getelementptr i8, ptr %work, i32 -1224
  %16 = ptrtoint ptr %ac.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ac.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool5.not.i = icmp eq i32 %17, 0
  br i1 %tobool5.not.i, label %land.lhs.true6.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %autopower.i = getelementptr i8, ptr %work, i32 -1415
  %18 = ptrtoint ptr %autopower.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %autopower.i, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool7.not.i = icmp eq i8 %19, 0
  br i1 %tobool7.not.i, label %land.lhs.true6.i.if.else.i_crit_edge, label %if.then8.i

land.lhs.true6.i.if.else.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then8.i:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %autopower.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %autopower.i, align 1
  br label %if.end23.sink.split.i

if.else.i:                                        ; preds = %land.lhs.true6.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.then2.i.if.else.i_crit_edge
  %autopower10.i = getelementptr i8, ptr %work, i32 -1415
  %21 = ptrtoint ptr %autopower10.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %autopower10.i, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool11.not.i = icmp eq i8 %22, 0
  br i1 %tobool11.not.i, label %land.lhs.true12.i, label %if.else.i.if.end23.i_crit_edge

if.else.i.if.end23.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

land.lhs.true12.i:                                ; preds = %if.else.i
  %ac13.i = getelementptr i8, ptr %work, i32 -1224
  %23 = ptrtoint ptr %ac13.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ac13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool15.not.i = icmp ne i32 %24, 0
  %tobool3.not.not.i = xor i1 %tobool3.not.i, true
  %brmerge.i = select i1 %tobool15.not.i, i1 true, i1 %tobool3.not.not.i
  br i1 %brmerge.i, label %if.then19.i, label %land.lhs.true12.i.if.end23.i_crit_edge

land.lhs.true12.i.if.end23.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then19.i:                                      ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %autopower10.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %autopower10.i, align 1
  br label %if.end23.sink.split.i

if.end23.sink.split.i:                            ; preds = %if.then19.i, %if.then8.i
  %.sink.i = phi i1 [ false, %if.then8.i ], [ true, %if.then19.i ]
  call fastcc void @ab8500_enable_disable_sw_fallback(ptr noundef %add.ptr, i1 noundef zeroext %.sink.i) #8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end23.sink.split.i, %land.lhs.true12.i.if.end23.i_crit_edge, %if.else.i.if.end23.i_crit_edge, %if.end.i.if.end23.i_crit_edge
  call void @power_supply_changed(ptr noundef nonnull %11) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end23.i, %if.end.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_value) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ab8500_charger_init_hw_registers(ptr noundef readonly %di) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 14
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %version.i.i = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not.i = icmp eq i32 %3, 0
  br i1 %cmp.i.not.i, label %is_ab8500_1p1_or_earlier.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

is_ab8500_1p1_or_earlier.exit:                    ; preds = %entry
  %chip_id.i = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %5)
  %cmp.i = icmp ugt i8 %5, 17
  br i1 %cmp.i, label %is_ab8500_1p1_or_earlier.exit.if.then_crit_edge, label %is_ab8500_1p1_or_earlier.exit.if.end14_crit_edge

is_ab8500_1p1_or_earlier.exit.if.end14_crit_edge: ; preds = %is_ab8500_1p1_or_earlier.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

is_ab8500_1p1_or_earlier.exit.if.then_crit_edge:  ; preds = %is_ab8500_1p1_or_earlier.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %is_ab8500_1p1_or_earlier.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %6 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %di, align 4
  %call1 = tail call i32 @abx500_set_register_interruptible(ptr noundef %7, i8 noundef zeroext 11, i8 noundef zeroext 65, i8 noundef zeroext 77) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  %8 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %di, align 4
  br i1 %tobool2.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.315) #11
  br label %out

if.end:                                           ; preds = %if.then
  %call6 = tail call i32 @abx500_set_register_interruptible(ptr noundef %9, i8 noundef zeroext 11, i8 noundef zeroext 67, i8 noundef zeroext 15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end.if.end14_crit_edge, label %do.end11

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.318) #11
  br label %out

if.end14:                                         ; preds = %if.end.if.end14_crit_edge, %is_ab8500_1p1_or_earlier.exit.if.end14_crit_edge
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent, align 4
  %version.i.i140 = getelementptr inbounds %struct.ab8500, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %version.i.i140 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %version.i.i140, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.i.not.i141 = icmp eq i32 %15, 1
  br i1 %cmp.i.not.i141, label %is_ab8505_2p0.exit, label %if.end14.if.else_crit_edge

if.end14.if.else_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

is_ab8505_2p0.exit:                               ; preds = %if.end14
  %chip_id.i142 = getelementptr inbounds %struct.ab8500, ptr %13, i32 0, i32 7
  %16 = ptrtoint ptr %chip_id.i142 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %chip_id.i142, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %17)
  %cmp.i143.not = icmp eq i8 %17, 32
  br i1 %cmp.i143.not, label %if.then18, label %is_ab8505_2p0.exit.if.else_crit_edge

is_ab8505_2p0.exit.if.else_crit_edge:             ; preds = %is_ab8505_2p0.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then18:                                        ; preds = %is_ab8505_2p0.exit
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %di, align 4
  %call20 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %19, i8 noundef zeroext 11, i8 noundef zeroext -63, i8 noundef zeroext 4, i8 noundef zeroext 4) #8
  br label %if.end23

if.else:                                          ; preds = %is_ab8505_2p0.exit.if.else_crit_edge, %if.end14.if.else_crit_edge
  %20 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %di, align 4
  %call22 = tail call i32 @abx500_set_register_interruptible(ptr noundef %21, i8 noundef zeroext 11, i8 noundef zeroext -63, i8 noundef zeroext 60) #8
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then18
  %ret.0 = phi i32 [ %call20, %if.then18 ], [ %call22, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool24.not = icmp eq i32 %ret.0, 0
  %22 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %di, align 4
  br i1 %tobool24.not, label %if.end30, label %do.end28

do.end28:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.321) #11
  br label %out

if.end30:                                         ; preds = %if.end23
  %call32 = tail call i32 @abx500_set_register_interruptible(ptr noundef %23, i8 noundef zeroext 21, i8 noundef zeroext 14, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  %24 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %di, align 4
  br i1 %tobool33.not, label %if.end39, label %do.end37

do.end37:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.324) #11
  br label %out

if.end39:                                         ; preds = %if.end30
  %call41 = tail call i32 @abx500_set_register_interruptible(ptr noundef %25, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end48, label %do.end46

do.end46:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.327) #11
  br label %out

if.end48:                                         ; preds = %if.end39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 13529124) #8
  %29 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %di, align 4
  %call50 = tail call i32 @abx500_set_register_interruptible(ptr noundef %30, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  %31 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %di, align 4
  br i1 %tobool51.not, label %if.end57, label %do.end55

do.end55:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.330) #11
  br label %out

if.end57:                                         ; preds = %if.end48
  %call59 = tail call i32 @abx500_set_register_interruptible(ptr noundef %32, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  %33 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %di, align 4
  br i1 %tobool60.not, label %if.end66, label %do.end64

do.end64:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.333) #11
  br label %out

if.end66:                                         ; preds = %if.end57
  %call68 = tail call i32 @abx500_set_register_interruptible(ptr noundef %34, i8 noundef zeroext 11, i8 noundef zeroext 80, i8 noundef zeroext 48) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  %35 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %di, align 4
  br i1 %tobool69.not, label %if.end75, label %do.end73

do.end73:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.336) #11
  br label %out

if.end75:                                         ; preds = %if.end66
  %call14.i = tail call i32 @abx500_set_register_interruptible(ptr noundef %36, i8 noundef zeroext 11, i8 noundef zeroext 83, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end75.if.end82_crit_edge, label %ab8500_charger_led_en.exit

if.end75.if.end82_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

ab8500_charger_led_en.exit:                       ; preds = %if.end75
  %37 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.201) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp = icmp slt i32 %call14.i, 0
  br i1 %cmp, label %do.end80, label %ab8500_charger_led_en.exit.if.end82_crit_edge

ab8500_charger_led_en.exit.if.end82_crit_edge:    ; preds = %ab8500_charger_led_en.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

do.end80:                                         ; preds = %ab8500_charger_led_en.exit
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.174) #11
  br label %out

if.end82:                                         ; preds = %ab8500_charger_led_en.exit.if.end82_crit_edge, %if.end75.if.end82_crit_edge
  %41 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %di, align 4
  %bm = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 19
  %43 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bm, align 4
  %bkup_bat_v = getelementptr inbounds %struct.ab8500_bm_data, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %bkup_bat_v to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bkup_bat_v, align 4
  %and = and i32 %46, 3
  %bkup_bat_i = getelementptr inbounds %struct.ab8500_bm_data, ptr %44, i32 0, i32 7
  %47 = ptrtoint ptr %bkup_bat_i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bkup_bat_i, align 4
  %or = or i32 %and, %48
  %conv = trunc i32 %or to i8
  %call85 = tail call i32 @abx500_set_register_interruptible(ptr noundef %42, i8 noundef zeroext 15, i8 noundef zeroext 12, i8 noundef zeroext %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  %49 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %di, align 4
  br i1 %tobool86.not, label %if.end92, label %do.end90

do.end90:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.341) #11
  br label %out

if.end92:                                         ; preds = %if.end82
  %call94 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %50, i8 noundef zeroext 15, i8 noundef zeroext 11, i8 noundef zeroext 16, i8 noundef zeroext 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %cmp95 = icmp slt i32 %call94, 0
  br i1 %cmp95, label %do.end100, label %if.end92.out_crit_edge

if.end92.out_crit_edge:                           ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end100:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.344, ptr noundef nonnull @.str.316) #11
  br label %out

out:                                              ; preds = %do.end100, %if.end92.out_crit_edge, %do.end90, %do.end80, %do.end73, %do.end64, %do.end55, %do.end46, %do.end37, %do.end28, %do.end11, %do.end
  %ret.1 = phi i32 [ %ret.0, %do.end28 ], [ %call32, %do.end37 ], [ %call41, %do.end46 ], [ %call50, %do.end55 ], [ %call59, %do.end64 ], [ %call68, %do.end73 ], [ %call14.i, %do.end80 ], [ %call85, %do.end90 ], [ %call94, %do.end100 ], [ %call94, %if.end92.out_crit_edge ], [ %call1, %do.end ], [ %call6, %do.end11 ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ab8500_bm_of_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ab8500_charger_detect_chargers(ptr nocapture noundef readonly %di, i1 noundef zeroext %probe) unnamed_addr #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !773
  %1 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %di, align 4
  %call = call i32 @abx500_get_register_interruptible(ptr noundef %2, i8 noundef zeroext 11, i8 noundef zeroext 0, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %di, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.261, ptr noundef nonnull @.str.355) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val, align 1
  %7 = and i8 %6, 1
  %8 = zext i8 %7 to i32
  br i1 %probe, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @msleep(i32 noundef 110) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %9 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %di, align 4
  %call8 = call i32 @abx500_get_register_interruptible(ptr noundef %10, i8 noundef zeroext 11, i8 noundef zeroext 2, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %do.end14, label %do.body17

do.end14:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %di, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.261, ptr noundef nonnull @.str.355) #11
  br label %cleanup

do.body17:                                        ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_detect_chargers.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_detect_chargers, %do.end29)) #8
          to label %if.then24 [label %do.end29], !srcloc !771

if.then24:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %di, align 4
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %val, align 1
  %conv26 = zext i8 %16 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_detect_chargers.__UNIQUE_ID_ddebug295, ptr noundef %14, ptr noundef nonnull @.str.358, ptr noundef nonnull @.str.355, i32 noundef %conv26) #8
  br label %do.end29

do.end29:                                         ; preds = %if.then24, %do.body17
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %val, align 1
  %19 = and i8 %18, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %.not = icmp eq i8 %19, 3
  %or = or i32 %8, 2
  %result.1 = select i1 %.not, i32 %or, i32 %8
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %do.end14, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call8, %do.end14 ], [ %result.1, %do.end29 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ab8500_power_supply_changed(ptr nocapture noundef %di, ptr noundef %psy) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %psy, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %autopower_cfg = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 10
  %0 = ptrtoint ptr %autopower_cfg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %autopower_cfg, align 2, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end.if.end23_crit_edge, label %if.then2

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then2:                                         ; preds = %if.end
  %usb = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 26
  %2 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.then2.if.else_crit_edge

if.then2.if.else_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.then2
  %ac = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 25
  %4 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ac, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %land.lhs.true6, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true6:                                   ; preds = %land.lhs.true
  %autopower = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 9
  %6 = ptrtoint ptr %autopower to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %autopower, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not = icmp eq i8 %7, 0
  br i1 %tobool7.not, label %land.lhs.true6.if.else_crit_edge, label %if.then8

land.lhs.true6.if.else_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %autopower to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %autopower, align 1
  br label %if.end23.sink.split

if.else:                                          ; preds = %land.lhs.true6.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.then2.if.else_crit_edge
  %autopower10 = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 9
  %9 = ptrtoint ptr %autopower10 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %autopower10, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool11.not = icmp eq i8 %10, 0
  br i1 %tobool11.not, label %land.lhs.true12, label %if.else.if.end23_crit_edge

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

land.lhs.true12:                                  ; preds = %if.else
  %ac13 = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 25
  %11 = ptrtoint ptr %ac13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ac13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool15.not = icmp ne i32 %12, 0
  %tobool3.not.not = xor i1 %tobool3.not, true
  %brmerge = select i1 %tobool15.not, i1 true, i1 %tobool3.not.not
  br i1 %brmerge, label %if.then19, label %land.lhs.true12.if.end23_crit_edge

land.lhs.true12.if.end23_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then19:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %autopower10 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %autopower10, align 1
  br label %if.end23.sink.split

if.end23.sink.split:                              ; preds = %if.then19, %if.then8
  %.sink = phi i1 [ false, %if.then8 ], [ true, %if.then19 ]
  tail call fastcc void @ab8500_enable_disable_sw_fallback(ptr noundef %di, i1 noundef zeroext %.sink)
  br label %if.end23

if.end23:                                         ; preds = %if.end23.sink.split, %land.lhs.true12.if.end23_crit_edge, %if.else.if.end23_crit_edge, %if.end.if.end23_crit_edge
  tail call void @power_supply_changed(ptr noundef nonnull %psy) #8
  br label %return

return:                                           ; preds = %if.end23, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_find_device_by_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ab8500_charger_compare_dev(ptr noundef readnone %dev, ptr noundef readnone %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %dev, %data
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_phy(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_charger_usb_notifier_call(ptr noundef %nb, i32 noundef %event, ptr nocapture noundef readonly %power) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -1484
  %0 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %event)
  %cmp.not = icmp eq i32 %event, 1
  br i1 %cmp.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_usb_notifier_call.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_usb_notifier_call, %cleanup)) #8
          to label %if.then5 [label %cleanup], !srcloc !771

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_usb_notifier_call.__UNIQUE_ID_ddebug353, ptr noundef %3, ptr noundef nonnull @.str.375) #8
  br label %cleanup

if.end6:                                          ; preds = %entry
  %usb_state = getelementptr i8, ptr %nb, i32 -1416
  %4 = ptrtoint ptr %usb_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usb_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %5)
  %cmp7 = icmp eq i32 %5, 2000
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp8 = icmp ugt i32 %1, 2
  %or.cond = select i1 %cmp7, i1 %cmp8, i1 false
  br i1 %or.cond, label %if.end6.do.body23_crit_edge, label %if.else

if.end6.do.body23_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body23

if.else:                                          ; preds = %if.end6
  %6 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.389)
  switch i32 %1, label %if.else15 [
    i32 0, label %if.else.do.body23_crit_edge
    i32 2, label %if.then14
  ]

if.else.do.body23_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body23

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body23

if.else15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp16 = icmp ugt i32 %1, 7
  %. = select i1 %cmp16, i32 2, i32 1
  br label %do.body23

do.body23:                                        ; preds = %if.else15, %if.then14, %if.else.do.body23_crit_edge, %if.end6.do.body23_crit_edge
  %bm_usb_state.0 = phi i32 [ 3, %if.then14 ], [ 4, %if.end6.do.body23_crit_edge ], [ %1, %if.else.do.body23_crit_edge ], [ %., %if.else15 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_usb_notifier_call.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_usb_notifier_call, %do.end41)) #8
          to label %if.then37 [label %do.end41], !srcloc !771

if.then37:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_usb_notifier_call.__UNIQUE_ID_ddebug354, ptr noundef %8, ptr noundef nonnull @.str.376, ptr noundef nonnull @.str.374, i32 noundef %bm_usb_state.0, i32 noundef %1) #8
  br label %do.end41

do.end41:                                         ; preds = %if.then37, %do.body23
  %usb_lock = getelementptr i8, ptr %nb, i32 -1400
  tail call void @_raw_spin_lock(ptr noundef %usb_lock) #8
  %state_tmp = getelementptr i8, ptr %nb, i32 -1404
  %9 = ptrtoint ptr %state_tmp to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %bm_usb_state.0, ptr %state_tmp, align 4
  %mul = mul i32 %1, 1000
  %usb_current_tmp_ua = getelementptr i8, ptr %nb, i32 -1412
  %10 = ptrtoint ptr %usb_current_tmp_ua to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul, ptr %usb_current_tmp_ua, align 4
  tail call void @_raw_spin_unlock(ptr noundef %usb_lock) #8
  %charger_wq = getelementptr i8, ptr %nb, i32 -1220
  %11 = ptrtoint ptr %charger_wq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %charger_wq, align 4
  %usb_state_changed_work = getelementptr i8, ptr %nb, i32 -724
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %usb_state_changed_work, i32 noundef 50) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %if.then5, %do.body
  %retval.0 = phi i32 [ 1, %do.end41 ], [ 0, %if.then5 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_master_add_with_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_phy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ab8500_bm_of_remove(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_charger_mainchunplugdet_handler(i32 noundef %irq, ptr noundef %_di) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_mainchunplugdet_handler.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_mainchunplugdet_handler, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !771

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %_di to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_di, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_mainchunplugdet_handler.__UNIQUE_ID_ddebug337, ptr noundef %1, ptr noundef nonnull @.str.113) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %charger_wq = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 28
  %2 = ptrtoint ptr %charger_wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %charger_wq, align 4
  %ac_work = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 39
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %ac_work) #8
  %ac_charger_attached_work = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 36
  %call5 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ac_charger_attached_work) #8
  %charger_attached_mutex = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 46
  tail call void @mutex_lock_nested(ptr noundef %charger_attached_mutex, i32 noundef 0) #8
  tail call void @mutex_unlock(ptr noundef %charger_attached_mutex) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_charger_mainchplugdet_handler(i32 noundef %irq, ptr noundef %_di) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_mainchplugdet_handler.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_mainchplugdet_handler, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !771

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %_di to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_di, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_mainchplugdet_handler.__UNIQUE_ID_ddebug338, ptr noundef %1, ptr noundef nonnull @.str.115) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %charger_wq = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 28
  %2 = ptrtoint ptr %charger_wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %charger_wq, align 4
  %ac_work = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 39
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %ac_work) #8
  %charger_attached_mutex = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 46
  tail call void @mutex_lock_nested(ptr noundef %charger_attached_mutex, i32 noundef 0) #8
  tail call void @mutex_unlock(ptr noundef %charger_attached_mutex) #8
  %parent = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 14
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 4
  %version.i = getelementptr inbounds %struct.ab8500, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.not = icmp eq i32 %7, 0
  br i1 %cmp.i.not, label %if.then8, label %do.end.if.end11_crit_edge

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %charger_wq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %charger_wq, align 4
  %ac_charger_attached_work = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 36
  %call.i19 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %ac_charger_attached_work, i32 noundef 100) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %do.end.if.end11_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_charger_mainextchnotok_handler(i32 noundef %irq, ptr noundef %_di) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_mainextchnotok_handler.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_mainextchnotok_handler, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !771

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %_di to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_di, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_mainextchnotok_handler.__UNIQUE_ID_ddebug339, ptr noundef %1, ptr noundef nonnull @.str.117) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 20
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %flags, align 4
  %ac_chg = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 23
  %3 = ptrtoint ptr %ac_chg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ac_chg, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %do.end.ab8500_power_supply_changed.exit_crit_edge, label %if.end.i

do.end.ab8500_power_supply_changed.exit_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_power_supply_changed.exit

if.end.i:                                         ; preds = %do.end
  %autopower_cfg.i = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 10
  %5 = ptrtoint ptr %autopower_cfg.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %autopower_cfg.i, align 2, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not.i = icmp eq i8 %6, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end23.i_crit_edge, label %if.then2.i

if.end.i.if.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then2.i:                                       ; preds = %if.end.i
  %usb.i = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 26
  %7 = ptrtoint ptr %usb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %usb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not.i = icmp eq i32 %8, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %if.then2.i.if.else.i_crit_edge

if.then2.i.if.else.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then2.i
  %ac.i = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 25
  %9 = ptrtoint ptr %ac.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ac.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not.i = icmp eq i32 %10, 0
  br i1 %tobool5.not.i, label %land.lhs.true6.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %autopower.i = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 9
  %11 = ptrtoint ptr %autopower.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %autopower.i, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool7.not.i = icmp eq i8 %12, 0
  br i1 %tobool7.not.i, label %land.lhs.true6.i.if.else.i_crit_edge, label %if.then8.i

land.lhs.true6.i.if.else.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then8.i:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %autopower.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %autopower.i, align 1
  br label %if.end23.sink.split.i

if.else.i:                                        ; preds = %land.lhs.true6.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.then2.i.if.else.i_crit_edge
  %autopower10.i = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 9
  %14 = ptrtoint ptr %autopower10.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %autopower10.i, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool11.not.i = icmp eq i8 %15, 0
  br i1 %tobool11.not.i, label %land.lhs.true12.i, label %if.else.i.if.end23.i_crit_edge

if.else.i.if.end23.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

land.lhs.true12.i:                                ; preds = %if.else.i
  %ac13.i = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 25
  %16 = ptrtoint ptr %ac13.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ac13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool15.not.i = icmp ne i32 %17, 0
  %tobool3.not.not.i = xor i1 %tobool3.not.i, true
  %brmerge.i = select i1 %tobool15.not.i, i1 true, i1 %tobool3.not.not.i
  br i1 %brmerge.i, label %if.then19.i, label %land.lhs.true12.i.if.end23.i_crit_edge

land.lhs.true12.i.if.end23.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then19.i:                                      ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %autopower10.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %autopower10.i, align 1
  br label %if.end23.sink.split.i

if.end23.sink.split.i:                            ; preds = %if.then19.i, %if.then8.i
  %.sink.i = phi i1 [ false, %if.then8.i ], [ true, %if.then19.i ]
  tail call fastcc void @ab8500_enable_disable_sw_fallback(ptr noundef %_di, i1 noundef zeroext %.sink.i) #8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end23.sink.split.i, %land.lhs.true12.i.if.end23.i_crit_edge, %if.else.i.if.end23.i_crit_edge, %if.end.i.if.end23.i_crit_edge
  tail call void @power_supply_changed(ptr noundef nonnull %4) #8
  br label %ab8500_power_supply_changed.exit

ab8500_power_supply_changed.exit:                 ; preds = %if.end23.i, %do.end.ab8500_power_supply_changed.exit_crit_edge
  %charger_wq = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 28
  %19 = ptrtoint ptr %charger_wq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %charger_wq, align 4
  %check_hw_failure_work = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 31
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %20, ptr noundef %check_hw_failure_work, i32 noundef 0) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_charger_mainchthprotr_handler(i32 noundef %irq, ptr noundef %_di) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_mainchthprotr_handler.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_mainchthprotr_handler, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !771

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %_di to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_di, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_mainchthprotr_handler.__UNIQUE_ID_ddebug340, ptr noundef %1, ptr noundef nonnull @.str.119) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %charger_wq = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 28
  %2 = ptrtoint ptr %charger_wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %charger_wq, align 4
  %check_main_thermal_prot_work = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 42
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %check_main_thermal_prot_work) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_charger_mainchthprotf_handler(i32 noundef %irq, ptr noundef %_di) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_mainchthprotf_handler.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_mainchthprotf_handler, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !771

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %_di to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_di, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_mainchthprotf_handler.__UNIQUE_ID_ddebug341, ptr noundef %1, ptr noundef nonnull @.str.121) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %charger_wq = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 28
  %2 = ptrtoint ptr %charger_wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %charger_wq, align 4
  %check_main_thermal_prot_work = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 42
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %check_main_thermal_prot_work) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_charger_vbusdetf_handler(i32 noundef %irq, ptr noundef %_di) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vbus_detected = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 1
  %0 = ptrtoint ptr %vbus_detected to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %vbus_detected, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_vbusdetf_handler.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_vbusdetf_handler, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !771

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %_di to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %_di, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_vbusdetf_handler.__UNIQUE_ID_ddebug344, ptr noundef %2, ptr noundef nonnull @.str.123) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %charger_wq = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 28
  %3 = ptrtoint ptr %charger_wq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %charger_wq, align 4
  %detect_usb_type_work = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 40
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %detect_usb_type_work) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_charger_vbusdetr_handler(i32 noundef %irq, ptr noundef %_di) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vbus_detected = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 1
  %0 = ptrtoint ptr %vbus_detected to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %vbus_detected, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_vbusdetr_handler.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_vbusdetr_handler, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !771

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %_di to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %_di, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_vbusdetr_handler.__UNIQUE_ID_ddebug345, ptr noundef %2, ptr noundef nonnull @.str.125) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %charger_wq = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 28
  %3 = ptrtoint ptr %charger_wq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %charger_wq, align 4
  %detect_usb_type_work = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 40
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %detect_usb_type_work) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_charger_usblinkstatus_handler(i32 noundef %irq, ptr noundef %_di) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_usblinkstatus_handler.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_usblinkstatus_handler, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !771

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %_di to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_di, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_usblinkstatus_handler.__UNIQUE_ID_ddebug346, ptr noundef %1, ptr noundef nonnull @.str.127) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %charger_wq = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 28
  %2 = ptrtoint ptr %charger_wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %charger_wq, align 4
  %usb_link_status_work = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 41
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %usb_link_status_work) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_charger_usbchthprotr_handler(i32 noundef %irq, ptr noundef %_di) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_usbchthprotr_handler.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_usbchthprotr_handler, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !771

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %_di to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_di, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_usbchthprotr_handler.__UNIQUE_ID_ddebug347, ptr noundef %1, ptr noundef nonnull @.str.129) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %charger_wq = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 28
  %2 = ptrtoint ptr %charger_wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %charger_wq, align 4
  %check_usb_thermal_prot_work = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 43
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %check_usb_thermal_prot_work) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_charger_usbchthprotf_handler(i32 noundef %irq, ptr noundef %_di) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_usbchthprotf_handler.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_usbchthprotf_handler, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !771

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %_di to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_di, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_usbchthprotf_handler.__UNIQUE_ID_ddebug348, ptr noundef %1, ptr noundef nonnull @.str.131) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %charger_wq = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 28
  %2 = ptrtoint ptr %charger_wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %charger_wq, align 4
  %check_usb_thermal_prot_work = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 43
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %check_usb_thermal_prot_work) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_charger_usbchargernotokr_handler(i32 noundef %irq, ptr noundef %_di) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_usbchargernotokr_handler.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_usbchargernotokr_handler, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !771

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %_di to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_di, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_usbchargernotokr_handler.__UNIQUE_ID_ddebug349, ptr noundef %1, ptr noundef nonnull @.str.133) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %charger_wq = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 28
  %2 = ptrtoint ptr %charger_wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %charger_wq, align 4
  %check_usbchgnotok_work = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 32
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %check_usbchgnotok_work, i32 noundef 0) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_charger_vbusovv_handler(i32 noundef %irq, ptr noundef %_di) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_vbusovv_handler.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_vbusovv_handler, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !771

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %_di to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_di, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_vbusovv_handler.__UNIQUE_ID_ddebug352, ptr noundef %1, ptr noundef nonnull @.str.135) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %vbus_ovv = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 20, i32 3
  %2 = ptrtoint ptr %vbus_ovv to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %vbus_ovv, align 1
  %usb_chg = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 24
  %3 = ptrtoint ptr %usb_chg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %usb_chg, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %do.end.ab8500_power_supply_changed.exit_crit_edge, label %if.end.i

do.end.ab8500_power_supply_changed.exit_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_power_supply_changed.exit

if.end.i:                                         ; preds = %do.end
  %autopower_cfg.i = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 10
  %5 = ptrtoint ptr %autopower_cfg.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %autopower_cfg.i, align 2, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not.i = icmp eq i8 %6, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end23.i_crit_edge, label %if.then2.i

if.end.i.if.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then2.i:                                       ; preds = %if.end.i
  %usb.i = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 26
  %7 = ptrtoint ptr %usb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %usb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not.i = icmp eq i32 %8, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %if.then2.i.if.else.i_crit_edge

if.then2.i.if.else.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then2.i
  %ac.i = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 25
  %9 = ptrtoint ptr %ac.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ac.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not.i = icmp eq i32 %10, 0
  br i1 %tobool5.not.i, label %land.lhs.true6.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %autopower.i = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 9
  %11 = ptrtoint ptr %autopower.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %autopower.i, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool7.not.i = icmp eq i8 %12, 0
  br i1 %tobool7.not.i, label %land.lhs.true6.i.if.else.i_crit_edge, label %if.then8.i

land.lhs.true6.i.if.else.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then8.i:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %autopower.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %autopower.i, align 1
  br label %if.end23.sink.split.i

if.else.i:                                        ; preds = %land.lhs.true6.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.then2.i.if.else.i_crit_edge
  %autopower10.i = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 9
  %14 = ptrtoint ptr %autopower10.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %autopower10.i, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool11.not.i = icmp eq i8 %15, 0
  br i1 %tobool11.not.i, label %land.lhs.true12.i, label %if.else.i.if.end23.i_crit_edge

if.else.i.if.end23.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

land.lhs.true12.i:                                ; preds = %if.else.i
  %ac13.i = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 25
  %16 = ptrtoint ptr %ac13.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ac13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool15.not.i = icmp ne i32 %17, 0
  %tobool3.not.not.i = xor i1 %tobool3.not.i, true
  %brmerge.i = select i1 %tobool15.not.i, i1 true, i1 %tobool3.not.not.i
  br i1 %brmerge.i, label %if.then19.i, label %land.lhs.true12.i.if.end23.i_crit_edge

land.lhs.true12.i.if.end23.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then19.i:                                      ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %autopower10.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %autopower10.i, align 1
  br label %if.end23.sink.split.i

if.end23.sink.split.i:                            ; preds = %if.then19.i, %if.then8.i
  %.sink.i = phi i1 [ false, %if.then8.i ], [ true, %if.then19.i ]
  tail call fastcc void @ab8500_enable_disable_sw_fallback(ptr noundef %_di, i1 noundef zeroext %.sink.i) #8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end23.sink.split.i, %land.lhs.true12.i.if.end23.i_crit_edge, %if.else.i.if.end23.i_crit_edge, %if.end.i.if.end23.i_crit_edge
  tail call void @power_supply_changed(ptr noundef nonnull %4) #8
  br label %ab8500_power_supply_changed.exit

ab8500_power_supply_changed.exit:                 ; preds = %if.end23.i, %do.end.ab8500_power_supply_changed.exit_crit_edge
  %charger_wq = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 28
  %19 = ptrtoint ptr %charger_wq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %charger_wq, align 4
  %check_hw_failure_work = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 31
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %20, ptr noundef %check_hw_failure_work, i32 noundef 0) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_charger_chwdexp_handler(i32 noundef %irq, ptr noundef %_di) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_chwdexp_handler.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_chwdexp_handler, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !771

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %_di to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_di, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_chwdexp_handler.__UNIQUE_ID_ddebug350, ptr noundef %1, ptr noundef nonnull @.str.137) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %charger_online = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 25, i32 1
  %2 = ptrtoint ptr %charger_online to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %charger_online, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not = icmp eq i32 %3, 0
  br i1 %tobool4.not, label %do.end.if.end7_crit_edge, label %if.then5

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then5:                                         ; preds = %do.end
  %wd_expired = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 25, i32 4
  %4 = ptrtoint ptr %wd_expired to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %wd_expired, align 4
  %ac_chg = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 23
  %5 = ptrtoint ptr %ac_chg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ac_chg, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.then5.if.end7_crit_edge, label %if.end.i

if.then5.if.end7_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end.i:                                         ; preds = %if.then5
  %autopower_cfg.i = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 10
  %7 = ptrtoint ptr %autopower_cfg.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %autopower_cfg.i, align 2, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not.i = icmp eq i8 %8, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end23.i_crit_edge, label %if.then2.i

if.end.i.if.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then2.i:                                       ; preds = %if.end.i
  %usb.i = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 26
  %9 = ptrtoint ptr %usb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %usb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.not.i = icmp eq i32 %10, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %if.then2.i.if.else.i_crit_edge

if.then2.i.if.else.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then2.i
  %ac.i = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 25
  %11 = ptrtoint ptr %ac.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ac.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool5.not.i = icmp eq i32 %12, 0
  br i1 %tobool5.not.i, label %land.lhs.true6.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %autopower.i = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 9
  %13 = ptrtoint ptr %autopower.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %autopower.i, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool7.not.i = icmp eq i8 %14, 0
  br i1 %tobool7.not.i, label %land.lhs.true6.i.if.else.i_crit_edge, label %if.then8.i

land.lhs.true6.i.if.else.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then8.i:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %autopower.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %autopower.i, align 1
  br label %if.end23.sink.split.i

if.else.i:                                        ; preds = %land.lhs.true6.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.then2.i.if.else.i_crit_edge
  %autopower10.i = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 9
  %16 = ptrtoint ptr %autopower10.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %autopower10.i, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool11.not.i = icmp eq i8 %17, 0
  br i1 %tobool11.not.i, label %land.lhs.true12.i, label %if.else.i.if.end23.i_crit_edge

if.else.i.if.end23.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

land.lhs.true12.i:                                ; preds = %if.else.i
  %ac13.i = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 25
  %18 = ptrtoint ptr %ac13.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ac13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool15.not.i = icmp ne i32 %19, 0
  %tobool3.not.not.i = xor i1 %tobool3.not.i, true
  %brmerge.i = select i1 %tobool15.not.i, i1 true, i1 %tobool3.not.not.i
  br i1 %brmerge.i, label %if.then19.i, label %land.lhs.true12.i.if.end23.i_crit_edge

land.lhs.true12.i.if.end23.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then19.i:                                      ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %autopower10.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %autopower10.i, align 1
  br label %if.end23.sink.split.i

if.end23.sink.split.i:                            ; preds = %if.then19.i, %if.then8.i
  %.sink.i = phi i1 [ false, %if.then8.i ], [ true, %if.then19.i ]
  tail call fastcc void @ab8500_enable_disable_sw_fallback(ptr noundef %_di, i1 noundef zeroext %.sink.i) #8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end23.sink.split.i, %land.lhs.true12.i.if.end23.i_crit_edge, %if.else.i.if.end23.i_crit_edge, %if.end.i.if.end23.i_crit_edge
  tail call void @power_supply_changed(ptr noundef nonnull %6) #8
  br label %if.end7

if.end7:                                          ; preds = %if.end23.i, %if.then5.if.end7_crit_edge, %do.end.if.end7_crit_edge
  %charger_online8 = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 26, i32 1
  %21 = ptrtoint ptr %charger_online8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %charger_online8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool9.not = icmp eq i32 %22, 0
  br i1 %tobool9.not, label %if.end7.if.end14_crit_edge, label %if.then10

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then10:                                        ; preds = %if.end7
  %wd_expired12 = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 26, i32 4
  %23 = ptrtoint ptr %wd_expired12 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %wd_expired12, align 4
  %usb_chg = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 24
  %24 = ptrtoint ptr %usb_chg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %usb_chg, align 4
  %tobool.not.i23 = icmp eq ptr %25, null
  br i1 %tobool.not.i23, label %if.then10.if.end14_crit_edge, label %if.end.i26

if.then10.if.end14_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end.i26:                                       ; preds = %if.then10
  %autopower_cfg.i24 = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 10
  %26 = ptrtoint ptr %autopower_cfg.i24 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %autopower_cfg.i24, align 2, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool1.not.i25 = icmp eq i8 %27, 0
  br i1 %tobool1.not.i25, label %if.end.i26.if.end23.i48_crit_edge, label %if.then2.i29

if.end.i26.if.end23.i48_crit_edge:                ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i48

if.then2.i29:                                     ; preds = %if.end.i26
  %usb.i27 = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 26
  %28 = ptrtoint ptr %usb.i27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %usb.i27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool3.not.i28 = icmp eq i32 %29, 0
  br i1 %tobool3.not.i28, label %land.lhs.true.i32, label %if.then2.i29.if.else.i39_crit_edge

if.then2.i29.if.else.i39_crit_edge:               ; preds = %if.then2.i29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i39

land.lhs.true.i32:                                ; preds = %if.then2.i29
  %ac.i30 = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 25
  %30 = ptrtoint ptr %ac.i30 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ac.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool5.not.i31 = icmp eq i32 %31, 0
  br i1 %tobool5.not.i31, label %land.lhs.true6.i35, label %land.lhs.true.i32.if.else.i39_crit_edge

land.lhs.true.i32.if.else.i39_crit_edge:          ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i39

land.lhs.true6.i35:                               ; preds = %land.lhs.true.i32
  %autopower.i33 = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 9
  %32 = ptrtoint ptr %autopower.i33 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %autopower.i33, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool7.not.i34 = icmp eq i8 %33, 0
  br i1 %tobool7.not.i34, label %land.lhs.true6.i35.if.else.i39_crit_edge, label %if.then8.i36

land.lhs.true6.i35.if.else.i39_crit_edge:         ; preds = %land.lhs.true6.i35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i39

if.then8.i36:                                     ; preds = %land.lhs.true6.i35
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %autopower.i33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %autopower.i33, align 1
  br label %if.end23.sink.split.i47

if.else.i39:                                      ; preds = %land.lhs.true6.i35.if.else.i39_crit_edge, %land.lhs.true.i32.if.else.i39_crit_edge, %if.then2.i29.if.else.i39_crit_edge
  %autopower10.i37 = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 9
  %35 = ptrtoint ptr %autopower10.i37 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %autopower10.i37, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool11.not.i38 = icmp eq i8 %36, 0
  br i1 %tobool11.not.i38, label %land.lhs.true12.i44, label %if.else.i39.if.end23.i48_crit_edge

if.else.i39.if.end23.i48_crit_edge:               ; preds = %if.else.i39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i48

land.lhs.true12.i44:                              ; preds = %if.else.i39
  %ac13.i40 = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 25
  %37 = ptrtoint ptr %ac13.i40 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ac13.i40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool15.not.i41 = icmp ne i32 %38, 0
  %tobool3.not.not.i42 = xor i1 %tobool3.not.i28, true
  %brmerge.i43 = select i1 %tobool15.not.i41, i1 true, i1 %tobool3.not.not.i42
  br i1 %brmerge.i43, label %if.then19.i45, label %land.lhs.true12.i44.if.end23.i48_crit_edge

land.lhs.true12.i44.if.end23.i48_crit_edge:       ; preds = %land.lhs.true12.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i48

if.then19.i45:                                    ; preds = %land.lhs.true12.i44
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %autopower10.i37 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %autopower10.i37, align 1
  br label %if.end23.sink.split.i47

if.end23.sink.split.i47:                          ; preds = %if.then19.i45, %if.then8.i36
  %.sink.i46 = phi i1 [ false, %if.then8.i36 ], [ true, %if.then19.i45 ]
  tail call fastcc void @ab8500_enable_disable_sw_fallback(ptr noundef %_di, i1 noundef zeroext %.sink.i46) #8
  br label %if.end23.i48

if.end23.i48:                                     ; preds = %if.end23.sink.split.i47, %land.lhs.true12.i44.if.end23.i48_crit_edge, %if.else.i39.if.end23.i48_crit_edge, %if.end.i26.if.end23.i48_crit_edge
  tail call void @power_supply_changed(ptr noundef nonnull %25) #8
  br label %if.end14

if.end14:                                         ; preds = %if.end23.i48, %if.then10.if.end14_crit_edge, %if.end7.if.end14_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_charger_vbuschdropend_handler(i32 noundef %irq, ptr noundef %_di) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_vbuschdropend_handler.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_vbuschdropend_handler, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !771

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %_di to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_di, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_vbuschdropend_handler.__UNIQUE_ID_ddebug351, ptr noundef %1, ptr noundef nonnull @.str.139) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %vbus_drop_end = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 20, i32 7
  %2 = ptrtoint ptr %vbus_drop_end to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %vbus_drop_end, align 1
  %charger_wq = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 28
  %3 = ptrtoint ptr %charger_wq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %charger_wq, align 4
  %vbus_drop_end_work = getelementptr inbounds %struct.ab8500_charger, ptr %_di, i32 0, i32 38
  %call4 = tail call i32 @round_jiffies(i32 noundef 3000) #8
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %vbus_drop_end_work, i32 noundef %call4) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_set_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ab8500_charger_set_current(ptr noundef %di, i32 noundef %ich_ua, i32 noundef %reg) unnamed_addr #2 align 64 {
entry:
  %reg_value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_value) #8
  %0 = ptrtoint ptr %reg_value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reg_value, align 1, !annotation !773
  %current_stepping_sessions = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %current_stepping_sessions, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %current_stepping_sessions, i32 1, i32 3, i32 1) #8
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %current_stepping_sessions, ptr %current_stepping_sessions, i32 1, ptr elementtype(i32) %current_stepping_sessions) #8, !srcloc !774
  %2 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %di, align 4
  %conv = trunc i32 %reg to i8
  %call = call i32 @abx500_get_register_interruptible(ptr noundef %3, i8 noundef zeroext 11, i8 noundef zeroext %conv, ptr noundef nonnull %reg_value) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %di, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.178) #11
  br label %exit_set_current

if.end:                                           ; preds = %entry
  %6 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.390)
  switch i32 %reg, label %do.end35 [
    i32 130, label %sw.bb
    i32 194, label %sw.bb7
    i32 66, label %sw.bb15
  ]

sw.bb:                                            ; preds = %if.end
  %7 = ptrtoint ptr %reg_value to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %reg_value, align 1
  %9 = lshr i8 %8, 4
  %10 = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000, i32 %ich_ua)
  %11 = icmp slt i32 %ich_ua, 200000
  br i1 %11, label %sw.bb.ab8500_current_to_regval.exit_crit_edge, label %for.inc.1.i

sw.bb.ab8500_current_to_regval.exit_crit_edge:    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_current_to_regval.exit

for.inc.1.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 300000, i32 %ich_ua)
  %cmp2.2.i = icmp ult i32 %ich_ua, 300000
  br i1 %cmp2.2.i, label %for.inc.1.i.ab8500_current_to_regval.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.ab8500_current_to_regval.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_current_to_regval.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %ich_ua)
  %cmp2.3.i = icmp ult i32 %ich_ua, 400000
  br i1 %cmp2.3.i, label %for.inc.2.i.ab8500_current_to_regval.exit_crit_edge, label %for.inc.3.i

for.inc.2.i.ab8500_current_to_regval.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_current_to_regval.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %ich_ua)
  %cmp2.4.i = icmp ult i32 %ich_ua, 500000
  br i1 %cmp2.4.i, label %for.inc.3.i.ab8500_current_to_regval.exit_crit_edge, label %for.inc.4.i

for.inc.3.i.ab8500_current_to_regval.exit_crit_edge: ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_current_to_regval.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 600000, i32 %ich_ua)
  %cmp2.5.i = icmp ult i32 %ich_ua, 600000
  br i1 %cmp2.5.i, label %for.inc.4.i.ab8500_current_to_regval.exit_crit_edge, label %for.inc.5.i

for.inc.4.i.ab8500_current_to_regval.exit_crit_edge: ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_current_to_regval.exit

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 700000, i32 %ich_ua)
  %cmp2.6.i = icmp ult i32 %ich_ua, 700000
  br i1 %cmp2.6.i, label %for.inc.5.i.ab8500_current_to_regval.exit_crit_edge, label %for.inc.6.i

for.inc.5.i.ab8500_current_to_regval.exit_crit_edge: ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_current_to_regval.exit

for.inc.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 800000, i32 %ich_ua)
  %cmp2.7.i = icmp ult i32 %ich_ua, 800000
  br i1 %cmp2.7.i, label %for.inc.6.i.ab8500_current_to_regval.exit_crit_edge, label %for.inc.7.i

for.inc.6.i.ab8500_current_to_regval.exit_crit_edge: ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_current_to_regval.exit

for.inc.7.i:                                      ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 900000, i32 %ich_ua)
  %cmp2.8.i = icmp ult i32 %ich_ua, 900000
  br i1 %cmp2.8.i, label %for.inc.7.i.ab8500_current_to_regval.exit_crit_edge, label %for.inc.8.i

for.inc.7.i.ab8500_current_to_regval.exit_crit_edge: ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_current_to_regval.exit

for.inc.8.i:                                      ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %ich_ua)
  %cmp2.9.i = icmp ult i32 %ich_ua, 1000000
  br i1 %cmp2.9.i, label %for.inc.8.i.ab8500_current_to_regval.exit_crit_edge, label %for.inc.9.i

for.inc.8.i.ab8500_current_to_regval.exit_crit_edge: ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_current_to_regval.exit

for.inc.9.i:                                      ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1100000, i32 %ich_ua)
  %cmp2.10.i = icmp ult i32 %ich_ua, 1100000
  br i1 %cmp2.10.i, label %for.inc.9.i.ab8500_current_to_regval.exit_crit_edge, label %for.inc.10.i

for.inc.9.i.ab8500_current_to_regval.exit_crit_edge: ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_current_to_regval.exit

for.inc.10.i:                                     ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200000, i32 %ich_ua)
  %cmp2.11.i = icmp ult i32 %ich_ua, 1200000
  br i1 %cmp2.11.i, label %for.inc.10.i.ab8500_current_to_regval.exit_crit_edge, label %for.inc.11.i

for.inc.10.i.ab8500_current_to_regval.exit_crit_edge: ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_current_to_regval.exit

for.inc.11.i:                                     ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1300000, i32 %ich_ua)
  %cmp2.12.i = icmp ult i32 %ich_ua, 1300000
  br i1 %cmp2.12.i, label %for.inc.11.i.ab8500_current_to_regval.exit_crit_edge, label %for.inc.12.i

for.inc.11.i.ab8500_current_to_regval.exit_crit_edge: ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_current_to_regval.exit

for.inc.12.i:                                     ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1400000, i32 %ich_ua)
  %cmp2.13.i = icmp ult i32 %ich_ua, 1400000
  br i1 %cmp2.13.i, label %for.inc.12.i.ab8500_current_to_regval.exit_crit_edge, label %for.inc.13.i

for.inc.12.i.ab8500_current_to_regval.exit_crit_edge: ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_current_to_regval.exit

for.inc.13.i:                                     ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500000, i32 %ich_ua)
  %cmp2.14.i = icmp ult i32 %ich_ua, 1500000
  br i1 %cmp2.14.i, label %for.inc.13.i.ab8500_current_to_regval.exit_crit_edge, label %for.inc.15.i

for.inc.13.i.ab8500_current_to_regval.exit_crit_edge: ; preds = %for.inc.13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_current_to_regval.exit

for.inc.15.i:                                     ; preds = %for.inc.13.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500000, i32 %ich_ua)
  %cmp6.i = icmp eq i32 %ich_ua, 1500000
  %..i = select i1 %cmp6.i, i32 15, i32 -1
  br label %ab8500_current_to_regval.exit

ab8500_current_to_regval.exit:                    ; preds = %for.inc.15.i, %for.inc.13.i.ab8500_current_to_regval.exit_crit_edge, %for.inc.12.i.ab8500_current_to_regval.exit_crit_edge, %for.inc.11.i.ab8500_current_to_regval.exit_crit_edge, %for.inc.10.i.ab8500_current_to_regval.exit_crit_edge, %for.inc.9.i.ab8500_current_to_regval.exit_crit_edge, %for.inc.8.i.ab8500_current_to_regval.exit_crit_edge, %for.inc.7.i.ab8500_current_to_regval.exit_crit_edge, %for.inc.6.i.ab8500_current_to_regval.exit_crit_edge, %for.inc.5.i.ab8500_current_to_regval.exit_crit_edge, %for.inc.4.i.ab8500_current_to_regval.exit_crit_edge, %for.inc.3.i.ab8500_current_to_regval.exit_crit_edge, %for.inc.2.i.ab8500_current_to_regval.exit_crit_edge, %for.inc.1.i.ab8500_current_to_regval.exit_crit_edge, %sw.bb.ab8500_current_to_regval.exit_crit_edge
  %retval.0.i288 = phi i32 [ 0, %sw.bb.ab8500_current_to_regval.exit_crit_edge ], [ %..i, %for.inc.15.i ], [ 1, %for.inc.1.i.ab8500_current_to_regval.exit_crit_edge ], [ 2, %for.inc.2.i.ab8500_current_to_regval.exit_crit_edge ], [ 3, %for.inc.3.i.ab8500_current_to_regval.exit_crit_edge ], [ 4, %for.inc.4.i.ab8500_current_to_regval.exit_crit_edge ], [ 5, %for.inc.5.i.ab8500_current_to_regval.exit_crit_edge ], [ 6, %for.inc.6.i.ab8500_current_to_regval.exit_crit_edge ], [ 7, %for.inc.7.i.ab8500_current_to_regval.exit_crit_edge ], [ 8, %for.inc.8.i.ab8500_current_to_regval.exit_crit_edge ], [ 9, %for.inc.9.i.ab8500_current_to_regval.exit_crit_edge ], [ 10, %for.inc.10.i.ab8500_current_to_regval.exit_crit_edge ], [ 11, %for.inc.11.i.ab8500_current_to_regval.exit_crit_edge ], [ 12, %for.inc.12.i.ab8500_current_to_regval.exit_crit_edge ], [ 13, %for.inc.13.i.ab8500_current_to_regval.exit_crit_edge ]
  %ac = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 25
  br label %sw.epilog.sink.split

sw.bb7:                                           ; preds = %if.end
  %12 = ptrtoint ptr %reg_value to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %reg_value, align 1
  %14 = lshr i8 %13, 4
  %15 = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 98000, i32 %ich_ua)
  %16 = icmp slt i32 %ich_ua, 98000
  br i1 %16, label %sw.bb7.ab8500_vbus_in_curr_to_regval.exit_crit_edge, label %for.inc.1.i290

sw.bb7.ab8500_vbus_in_curr_to_regval.exit_crit_edge: ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_vbus_in_curr_to_regval.exit

for.inc.1.i290:                                   ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_const_cmp4(i32 193000, i32 %ich_ua)
  %cmp2.2.i289 = icmp ult i32 %ich_ua, 193000
  br i1 %cmp2.2.i289, label %for.inc.1.i290.ab8500_vbus_in_curr_to_regval.exit_crit_edge, label %for.inc.2.i292

for.inc.1.i290.ab8500_vbus_in_curr_to_regval.exit_crit_edge: ; preds = %for.inc.1.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_vbus_in_curr_to_regval.exit

for.inc.2.i292:                                   ; preds = %for.inc.1.i290
  call void @__sanitizer_cov_trace_const_cmp4(i32 290000, i32 %ich_ua)
  %cmp2.3.i291 = icmp ult i32 %ich_ua, 290000
  br i1 %cmp2.3.i291, label %for.inc.2.i292.ab8500_vbus_in_curr_to_regval.exit_crit_edge, label %for.inc.3.i294

for.inc.2.i292.ab8500_vbus_in_curr_to_regval.exit_crit_edge: ; preds = %for.inc.2.i292
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_vbus_in_curr_to_regval.exit

for.inc.3.i294:                                   ; preds = %for.inc.2.i292
  call void @__sanitizer_cov_trace_const_cmp4(i32 380000, i32 %ich_ua)
  %cmp2.4.i293 = icmp ult i32 %ich_ua, 380000
  br i1 %cmp2.4.i293, label %for.inc.3.i294.ab8500_vbus_in_curr_to_regval.exit_crit_edge, label %for.inc.4.i296

for.inc.3.i294.ab8500_vbus_in_curr_to_regval.exit_crit_edge: ; preds = %for.inc.3.i294
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_vbus_in_curr_to_regval.exit

for.inc.4.i296:                                   ; preds = %for.inc.3.i294
  call void @__sanitizer_cov_trace_const_cmp4(i32 450000, i32 %ich_ua)
  %cmp2.5.i295 = icmp ult i32 %ich_ua, 450000
  br i1 %cmp2.5.i295, label %for.inc.4.i296.ab8500_vbus_in_curr_to_regval.exit_crit_edge, label %for.inc.5.i298

for.inc.4.i296.ab8500_vbus_in_curr_to_regval.exit_crit_edge: ; preds = %for.inc.4.i296
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_vbus_in_curr_to_regval.exit

for.inc.5.i298:                                   ; preds = %for.inc.4.i296
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %ich_ua)
  %cmp2.6.i297 = icmp ult i32 %ich_ua, 500000
  br i1 %cmp2.6.i297, label %for.inc.5.i298.ab8500_vbus_in_curr_to_regval.exit_crit_edge, label %for.inc.6.i300

for.inc.5.i298.ab8500_vbus_in_curr_to_regval.exit_crit_edge: ; preds = %for.inc.5.i298
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_vbus_in_curr_to_regval.exit

for.inc.6.i300:                                   ; preds = %for.inc.5.i298
  call void @__sanitizer_cov_trace_const_cmp4(i32 600000, i32 %ich_ua)
  %cmp2.7.i299 = icmp ult i32 %ich_ua, 600000
  br i1 %cmp2.7.i299, label %for.inc.6.i300.ab8500_vbus_in_curr_to_regval.exit_crit_edge, label %for.inc.7.i302

for.inc.6.i300.ab8500_vbus_in_curr_to_regval.exit_crit_edge: ; preds = %for.inc.6.i300
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_vbus_in_curr_to_regval.exit

for.inc.7.i302:                                   ; preds = %for.inc.6.i300
  call void @__sanitizer_cov_trace_const_cmp4(i32 700000, i32 %ich_ua)
  %cmp2.8.i301 = icmp ult i32 %ich_ua, 700000
  br i1 %cmp2.8.i301, label %for.inc.7.i302.ab8500_vbus_in_curr_to_regval.exit_crit_edge, label %for.inc.8.i304

for.inc.7.i302.ab8500_vbus_in_curr_to_regval.exit_crit_edge: ; preds = %for.inc.7.i302
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_vbus_in_curr_to_regval.exit

for.inc.8.i304:                                   ; preds = %for.inc.7.i302
  call void @__sanitizer_cov_trace_const_cmp4(i32 800000, i32 %ich_ua)
  %cmp2.9.i303 = icmp ult i32 %ich_ua, 800000
  br i1 %cmp2.9.i303, label %for.inc.8.i304.ab8500_vbus_in_curr_to_regval.exit_crit_edge, label %for.inc.9.i306

for.inc.8.i304.ab8500_vbus_in_curr_to_regval.exit_crit_edge: ; preds = %for.inc.8.i304
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_vbus_in_curr_to_regval.exit

for.inc.9.i306:                                   ; preds = %for.inc.8.i304
  call void @__sanitizer_cov_trace_const_cmp4(i32 900000, i32 %ich_ua)
  %cmp2.10.i305 = icmp ult i32 %ich_ua, 900000
  br i1 %cmp2.10.i305, label %for.inc.9.i306.ab8500_vbus_in_curr_to_regval.exit_crit_edge, label %for.inc.10.i308

for.inc.9.i306.ab8500_vbus_in_curr_to_regval.exit_crit_edge: ; preds = %for.inc.9.i306
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_vbus_in_curr_to_regval.exit

for.inc.10.i308:                                  ; preds = %for.inc.9.i306
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %ich_ua)
  %cmp2.11.i307 = icmp ult i32 %ich_ua, 1000000
  br i1 %cmp2.11.i307, label %for.inc.10.i308.ab8500_vbus_in_curr_to_regval.exit_crit_edge, label %for.inc.11.i310

for.inc.10.i308.ab8500_vbus_in_curr_to_regval.exit_crit_edge: ; preds = %for.inc.10.i308
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_vbus_in_curr_to_regval.exit

for.inc.11.i310:                                  ; preds = %for.inc.10.i308
  call void @__sanitizer_cov_trace_const_cmp4(i32 1100000, i32 %ich_ua)
  %cmp2.12.i309 = icmp ult i32 %ich_ua, 1100000
  br i1 %cmp2.12.i309, label %for.inc.11.i310.ab8500_vbus_in_curr_to_regval.exit_crit_edge, label %for.inc.12.i312

for.inc.11.i310.ab8500_vbus_in_curr_to_regval.exit_crit_edge: ; preds = %for.inc.11.i310
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_vbus_in_curr_to_regval.exit

for.inc.12.i312:                                  ; preds = %for.inc.11.i310
  call void @__sanitizer_cov_trace_const_cmp4(i32 1300000, i32 %ich_ua)
  %cmp2.13.i311 = icmp ult i32 %ich_ua, 1300000
  br i1 %cmp2.13.i311, label %for.inc.12.i312.ab8500_vbus_in_curr_to_regval.exit_crit_edge, label %for.inc.13.i314

for.inc.12.i312.ab8500_vbus_in_curr_to_regval.exit_crit_edge: ; preds = %for.inc.12.i312
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_vbus_in_curr_to_regval.exit

for.inc.13.i314:                                  ; preds = %for.inc.12.i312
  call void @__sanitizer_cov_trace_const_cmp4(i32 1400000, i32 %ich_ua)
  %cmp2.14.i313 = icmp ult i32 %ich_ua, 1400000
  br i1 %cmp2.14.i313, label %for.inc.13.i314.ab8500_vbus_in_curr_to_regval.exit_crit_edge, label %for.inc.14.i

for.inc.13.i314.ab8500_vbus_in_curr_to_regval.exit_crit_edge: ; preds = %for.inc.13.i314
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_vbus_in_curr_to_regval.exit

for.inc.14.i:                                     ; preds = %for.inc.13.i314
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500000, i32 %ich_ua)
  %cmp2.15.i = icmp ult i32 %ich_ua, 1500000
  br i1 %cmp2.15.i, label %for.inc.14.i.ab8500_vbus_in_curr_to_regval.exit_crit_edge, label %for.inc.15.i317

for.inc.14.i.ab8500_vbus_in_curr_to_regval.exit_crit_edge: ; preds = %for.inc.14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_vbus_in_curr_to_regval.exit

for.inc.15.i317:                                  ; preds = %for.inc.14.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500000, i32 %ich_ua)
  %cmp6.i315 = icmp eq i32 %ich_ua, 1500000
  %..i316 = select i1 %cmp6.i315, i32 15, i32 -1
  br label %ab8500_vbus_in_curr_to_regval.exit

ab8500_vbus_in_curr_to_regval.exit:               ; preds = %for.inc.15.i317, %for.inc.14.i.ab8500_vbus_in_curr_to_regval.exit_crit_edge, %for.inc.13.i314.ab8500_vbus_in_curr_to_regval.exit_crit_edge, %for.inc.12.i312.ab8500_vbus_in_curr_to_regval.exit_crit_edge, %for.inc.11.i310.ab8500_vbus_in_curr_to_regval.exit_crit_edge, %for.inc.10.i308.ab8500_vbus_in_curr_to_regval.exit_crit_edge, %for.inc.9.i306.ab8500_vbus_in_curr_to_regval.exit_crit_edge, %for.inc.8.i304.ab8500_vbus_in_curr_to_regval.exit_crit_edge, %for.inc.7.i302.ab8500_vbus_in_curr_to_regval.exit_crit_edge, %for.inc.6.i300.ab8500_vbus_in_curr_to_regval.exit_crit_edge, %for.inc.5.i298.ab8500_vbus_in_curr_to_regval.exit_crit_edge, %for.inc.4.i296.ab8500_vbus_in_curr_to_regval.exit_crit_edge, %for.inc.3.i294.ab8500_vbus_in_curr_to_regval.exit_crit_edge, %for.inc.2.i292.ab8500_vbus_in_curr_to_regval.exit_crit_edge, %for.inc.1.i290.ab8500_vbus_in_curr_to_regval.exit_crit_edge, %sw.bb7.ab8500_vbus_in_curr_to_regval.exit_crit_edge
  %retval.0.i318 = phi i32 [ 0, %sw.bb7.ab8500_vbus_in_curr_to_regval.exit_crit_edge ], [ %..i316, %for.inc.15.i317 ], [ 1, %for.inc.1.i290.ab8500_vbus_in_curr_to_regval.exit_crit_edge ], [ 2, %for.inc.2.i292.ab8500_vbus_in_curr_to_regval.exit_crit_edge ], [ 3, %for.inc.3.i294.ab8500_vbus_in_curr_to_regval.exit_crit_edge ], [ 4, %for.inc.4.i296.ab8500_vbus_in_curr_to_regval.exit_crit_edge ], [ 5, %for.inc.5.i298.ab8500_vbus_in_curr_to_regval.exit_crit_edge ], [ 6, %for.inc.6.i300.ab8500_vbus_in_curr_to_regval.exit_crit_edge ], [ 7, %for.inc.7.i302.ab8500_vbus_in_curr_to_regval.exit_crit_edge ], [ 8, %for.inc.8.i304.ab8500_vbus_in_curr_to_regval.exit_crit_edge ], [ 9, %for.inc.9.i306.ab8500_vbus_in_curr_to_regval.exit_crit_edge ], [ 10, %for.inc.10.i308.ab8500_vbus_in_curr_to_regval.exit_crit_edge ], [ 11, %for.inc.11.i310.ab8500_vbus_in_curr_to_regval.exit_crit_edge ], [ 12, %for.inc.12.i312.ab8500_vbus_in_curr_to_regval.exit_crit_edge ], [ 13, %for.inc.13.i314.ab8500_vbus_in_curr_to_regval.exit_crit_edge ], [ 14, %for.inc.14.i.ab8500_vbus_in_curr_to_regval.exit_crit_edge ]
  %usb = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 26
  br label %sw.epilog.sink.split

sw.bb15:                                          ; preds = %if.end
  %17 = ptrtoint ptr %reg_value to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %reg_value, align 1
  %conv16 = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000, i32 %ich_ua)
  %19 = icmp slt i32 %ich_ua, 200000
  br i1 %19, label %sw.bb15.ab8500_current_to_regval.exit349_crit_edge, label %for.inc.1.i320

sw.bb15.ab8500_current_to_regval.exit349_crit_edge: ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_current_to_regval.exit349

for.inc.1.i320:                                   ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_const_cmp4(i32 300000, i32 %ich_ua)
  %cmp2.2.i319 = icmp ult i32 %ich_ua, 300000
  br i1 %cmp2.2.i319, label %for.inc.1.i320.ab8500_current_to_regval.exit349_crit_edge, label %for.inc.2.i322

for.inc.1.i320.ab8500_current_to_regval.exit349_crit_edge: ; preds = %for.inc.1.i320
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_current_to_regval.exit349

for.inc.2.i322:                                   ; preds = %for.inc.1.i320
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %ich_ua)
  %cmp2.3.i321 = icmp ult i32 %ich_ua, 400000
  br i1 %cmp2.3.i321, label %for.inc.2.i322.ab8500_current_to_regval.exit349_crit_edge, label %for.inc.3.i324

for.inc.2.i322.ab8500_current_to_regval.exit349_crit_edge: ; preds = %for.inc.2.i322
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_current_to_regval.exit349

for.inc.3.i324:                                   ; preds = %for.inc.2.i322
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %ich_ua)
  %cmp2.4.i323 = icmp ult i32 %ich_ua, 500000
  br i1 %cmp2.4.i323, label %for.inc.3.i324.ab8500_current_to_regval.exit349_crit_edge, label %for.inc.4.i326

for.inc.3.i324.ab8500_current_to_regval.exit349_crit_edge: ; preds = %for.inc.3.i324
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_current_to_regval.exit349

for.inc.4.i326:                                   ; preds = %for.inc.3.i324
  call void @__sanitizer_cov_trace_const_cmp4(i32 600000, i32 %ich_ua)
  %cmp2.5.i325 = icmp ult i32 %ich_ua, 600000
  br i1 %cmp2.5.i325, label %for.inc.4.i326.ab8500_current_to_regval.exit349_crit_edge, label %for.inc.5.i328

for.inc.4.i326.ab8500_current_to_regval.exit349_crit_edge: ; preds = %for.inc.4.i326
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_current_to_regval.exit349

for.inc.5.i328:                                   ; preds = %for.inc.4.i326
  call void @__sanitizer_cov_trace_const_cmp4(i32 700000, i32 %ich_ua)
  %cmp2.6.i327 = icmp ult i32 %ich_ua, 700000
  br i1 %cmp2.6.i327, label %for.inc.5.i328.ab8500_current_to_regval.exit349_crit_edge, label %for.inc.6.i330

for.inc.5.i328.ab8500_current_to_regval.exit349_crit_edge: ; preds = %for.inc.5.i328
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_current_to_regval.exit349

for.inc.6.i330:                                   ; preds = %for.inc.5.i328
  call void @__sanitizer_cov_trace_const_cmp4(i32 800000, i32 %ich_ua)
  %cmp2.7.i329 = icmp ult i32 %ich_ua, 800000
  br i1 %cmp2.7.i329, label %for.inc.6.i330.ab8500_current_to_regval.exit349_crit_edge, label %for.inc.7.i332

for.inc.6.i330.ab8500_current_to_regval.exit349_crit_edge: ; preds = %for.inc.6.i330
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_current_to_regval.exit349

for.inc.7.i332:                                   ; preds = %for.inc.6.i330
  call void @__sanitizer_cov_trace_const_cmp4(i32 900000, i32 %ich_ua)
  %cmp2.8.i331 = icmp ult i32 %ich_ua, 900000
  br i1 %cmp2.8.i331, label %for.inc.7.i332.ab8500_current_to_regval.exit349_crit_edge, label %for.inc.8.i334

for.inc.7.i332.ab8500_current_to_regval.exit349_crit_edge: ; preds = %for.inc.7.i332
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_current_to_regval.exit349

for.inc.8.i334:                                   ; preds = %for.inc.7.i332
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %ich_ua)
  %cmp2.9.i333 = icmp ult i32 %ich_ua, 1000000
  br i1 %cmp2.9.i333, label %for.inc.8.i334.ab8500_current_to_regval.exit349_crit_edge, label %for.inc.9.i336

for.inc.8.i334.ab8500_current_to_regval.exit349_crit_edge: ; preds = %for.inc.8.i334
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_current_to_regval.exit349

for.inc.9.i336:                                   ; preds = %for.inc.8.i334
  call void @__sanitizer_cov_trace_const_cmp4(i32 1100000, i32 %ich_ua)
  %cmp2.10.i335 = icmp ult i32 %ich_ua, 1100000
  br i1 %cmp2.10.i335, label %for.inc.9.i336.ab8500_current_to_regval.exit349_crit_edge, label %for.inc.10.i338

for.inc.9.i336.ab8500_current_to_regval.exit349_crit_edge: ; preds = %for.inc.9.i336
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_current_to_regval.exit349

for.inc.10.i338:                                  ; preds = %for.inc.9.i336
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200000, i32 %ich_ua)
  %cmp2.11.i337 = icmp ult i32 %ich_ua, 1200000
  br i1 %cmp2.11.i337, label %for.inc.10.i338.ab8500_current_to_regval.exit349_crit_edge, label %for.inc.11.i340

for.inc.10.i338.ab8500_current_to_regval.exit349_crit_edge: ; preds = %for.inc.10.i338
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_current_to_regval.exit349

for.inc.11.i340:                                  ; preds = %for.inc.10.i338
  call void @__sanitizer_cov_trace_const_cmp4(i32 1300000, i32 %ich_ua)
  %cmp2.12.i339 = icmp ult i32 %ich_ua, 1300000
  br i1 %cmp2.12.i339, label %for.inc.11.i340.ab8500_current_to_regval.exit349_crit_edge, label %for.inc.12.i342

for.inc.11.i340.ab8500_current_to_regval.exit349_crit_edge: ; preds = %for.inc.11.i340
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_current_to_regval.exit349

for.inc.12.i342:                                  ; preds = %for.inc.11.i340
  call void @__sanitizer_cov_trace_const_cmp4(i32 1400000, i32 %ich_ua)
  %cmp2.13.i341 = icmp ult i32 %ich_ua, 1400000
  br i1 %cmp2.13.i341, label %for.inc.12.i342.ab8500_current_to_regval.exit349_crit_edge, label %for.inc.13.i344

for.inc.12.i342.ab8500_current_to_regval.exit349_crit_edge: ; preds = %for.inc.12.i342
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_current_to_regval.exit349

for.inc.13.i344:                                  ; preds = %for.inc.12.i342
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500000, i32 %ich_ua)
  %cmp2.14.i343 = icmp ult i32 %ich_ua, 1500000
  br i1 %cmp2.14.i343, label %for.inc.13.i344.ab8500_current_to_regval.exit349_crit_edge, label %for.inc.15.i347

for.inc.13.i344.ab8500_current_to_regval.exit349_crit_edge: ; preds = %for.inc.13.i344
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_current_to_regval.exit349

for.inc.15.i347:                                  ; preds = %for.inc.13.i344
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500000, i32 %ich_ua)
  %cmp6.i345 = icmp eq i32 %ich_ua, 1500000
  %..i346 = select i1 %cmp6.i345, i32 15, i32 -1
  br label %ab8500_current_to_regval.exit349

ab8500_current_to_regval.exit349:                 ; preds = %for.inc.15.i347, %for.inc.13.i344.ab8500_current_to_regval.exit349_crit_edge, %for.inc.12.i342.ab8500_current_to_regval.exit349_crit_edge, %for.inc.11.i340.ab8500_current_to_regval.exit349_crit_edge, %for.inc.10.i338.ab8500_current_to_regval.exit349_crit_edge, %for.inc.9.i336.ab8500_current_to_regval.exit349_crit_edge, %for.inc.8.i334.ab8500_current_to_regval.exit349_crit_edge, %for.inc.7.i332.ab8500_current_to_regval.exit349_crit_edge, %for.inc.6.i330.ab8500_current_to_regval.exit349_crit_edge, %for.inc.5.i328.ab8500_current_to_regval.exit349_crit_edge, %for.inc.4.i326.ab8500_current_to_regval.exit349_crit_edge, %for.inc.3.i324.ab8500_current_to_regval.exit349_crit_edge, %for.inc.2.i322.ab8500_current_to_regval.exit349_crit_edge, %for.inc.1.i320.ab8500_current_to_regval.exit349_crit_edge, %sw.bb15.ab8500_current_to_regval.exit349_crit_edge
  %retval.0.i348 = phi i32 [ 0, %sw.bb15.ab8500_current_to_regval.exit349_crit_edge ], [ %..i346, %for.inc.15.i347 ], [ 1, %for.inc.1.i320.ab8500_current_to_regval.exit349_crit_edge ], [ 2, %for.inc.2.i322.ab8500_current_to_regval.exit349_crit_edge ], [ 3, %for.inc.3.i324.ab8500_current_to_regval.exit349_crit_edge ], [ 4, %for.inc.4.i326.ab8500_current_to_regval.exit349_crit_edge ], [ 5, %for.inc.5.i328.ab8500_current_to_regval.exit349_crit_edge ], [ 6, %for.inc.6.i330.ab8500_current_to_regval.exit349_crit_edge ], [ 7, %for.inc.7.i332.ab8500_current_to_regval.exit349_crit_edge ], [ 8, %for.inc.8.i334.ab8500_current_to_regval.exit349_crit_edge ], [ 9, %for.inc.9.i336.ab8500_current_to_regval.exit349_crit_edge ], [ 10, %for.inc.10.i338.ab8500_current_to_regval.exit349_crit_edge ], [ 11, %for.inc.11.i340.ab8500_current_to_regval.exit349_crit_edge ], [ 12, %for.inc.12.i342.ab8500_current_to_regval.exit349_crit_edge ], [ 13, %for.inc.13.i344.ab8500_current_to_regval.exit349_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i348)
  %tobool19.not = icmp ne i32 %retval.0.i348, 0
  %sub = sub nsw i32 %retval.0.i348, %conv16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp20 = icmp sgt i32 %sub, 1
  %or.cond = select i1 %tobool19.not, i1 %cmp20, i1 false
  %step_udelay.0 = select i1 %or.cond, i32 100000, i32 1000
  %usb24 = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 26
  %20 = ptrtoint ptr %usb24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %usb24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool26.not = icmp eq i32 %21, 0
  br i1 %tobool26.not, label %land.lhs.true27, label %ab8500_current_to_regval.exit349.sw.epilog_crit_edge

ab8500_current_to_regval.exit349.sw.epilog_crit_edge: ; preds = %ab8500_current_to_regval.exit349
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true27:                                  ; preds = %ab8500_current_to_regval.exit349
  call void @__sanitizer_cov_trace_pc() #10
  %ac28 = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 25
  br label %sw.epilog.sink.split

do.end35:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %di, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.178) #11
  br label %exit_set_current

sw.epilog.sink.split:                             ; preds = %land.lhs.true27, %ab8500_vbus_in_curr_to_regval.exit, %ab8500_current_to_regval.exit
  %ac28.sink = phi ptr [ %ac28, %land.lhs.true27 ], [ %usb, %ab8500_vbus_in_curr_to_regval.exit ], [ %ac, %ab8500_current_to_regval.exit ]
  %step_udelay.1.ph = phi i32 [ %step_udelay.0, %land.lhs.true27 ], [ 100000, %ab8500_vbus_in_curr_to_regval.exit ], [ 1000, %ab8500_current_to_regval.exit ]
  %shift_value.0.ph = phi i32 [ 0, %land.lhs.true27 ], [ 4, %ab8500_vbus_in_curr_to_regval.exit ], [ 4, %ab8500_current_to_regval.exit ]
  %prev_curr_index.0.ph = phi i32 [ %conv16, %land.lhs.true27 ], [ %15, %ab8500_vbus_in_curr_to_regval.exit ], [ %10, %ab8500_current_to_regval.exit ]
  %curr_index.0.ph = phi i32 [ %retval.0.i348, %land.lhs.true27 ], [ %retval.0.i318, %ab8500_vbus_in_curr_to_regval.exit ], [ %retval.0.i288, %ab8500_current_to_regval.exit ]
  %24 = ptrtoint ptr %ac28.sink to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ac28.sink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool30.not = icmp eq i32 %25, 0
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %ab8500_current_to_regval.exit349.sw.epilog_crit_edge
  %no_stepping.0.off0 = phi i1 [ false, %ab8500_current_to_regval.exit349.sw.epilog_crit_edge ], [ %tobool30.not, %sw.epilog.sink.split ]
  %step_udelay.1 = phi i32 [ %step_udelay.0, %ab8500_current_to_regval.exit349.sw.epilog_crit_edge ], [ %step_udelay.1.ph, %sw.epilog.sink.split ]
  %shift_value.0 = phi i32 [ 0, %ab8500_current_to_regval.exit349.sw.epilog_crit_edge ], [ %shift_value.0.ph, %sw.epilog.sink.split ]
  %prev_curr_index.0 = phi i32 [ %conv16, %ab8500_current_to_regval.exit349.sw.epilog_crit_edge ], [ %prev_curr_index.0.ph, %sw.epilog.sink.split ]
  %curr_index.0 = phi i32 [ %retval.0.i348, %ab8500_current_to_regval.exit349.sw.epilog_crit_edge ], [ %curr_index.0.ph, %sw.epilog.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %curr_index.0)
  %cmp37 = icmp slt i32 %curr_index.0, 0
  br i1 %cmp37, label %do.end42, label %if.end44

do.end42:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %di, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.183) #11
  br label %exit_set_current

if.end44:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_cmp4(i32 %prev_curr_index.0, i32 %curr_index.0)
  %cmp45 = icmp eq i32 %prev_curr_index.0, %curr_index.0
  br i1 %cmp45, label %do.body48, label %do.body60

do.body48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_set_current.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_set_current, %exit_set_current)) #8
          to label %if.then54 [label %exit_set_current], !srcloc !771

if.then54:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %di, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_set_current.__UNIQUE_ID_ddebug306, ptr noundef %29, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.178, i32 noundef %reg) #8
  br label %exit_set_current

do.body60:                                        ; preds = %if.end44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_set_current.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_set_current, %do.end78)) #8
          to label %if.then74 [label %do.end78], !srcloc !771

if.then74:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %di, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_set_current.__UNIQUE_ID_ddebug307, ptr noundef %31, ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.178, i32 noundef %ich_ua, i32 noundef %reg) #8
  br label %do.end78

do.end78:                                         ; preds = %if.then74, %do.body60
  br i1 %no_stepping.0.off0, label %if.then80, label %if.else

if.then80:                                        ; preds = %do.end78
  %32 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %di, align 4
  %shl = shl nuw nsw i32 %curr_index.0, %shift_value.0
  %conv85 = trunc i32 %shl to i8
  %call86 = call i32 @abx500_set_register_interruptible(ptr noundef %33, i8 noundef zeroext 11, i8 noundef zeroext %conv, i8 noundef zeroext %conv85) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.then80.exit_set_current_crit_edge, label %do.end91

if.then80.exit_set_current_crit_edge:             ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_set_current

do.end91:                                         ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %di, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.178) #11
  br label %exit_set_current

if.else:                                          ; preds = %do.end78
  call void @__sanitizer_cov_trace_cmp4(i32 %prev_curr_index.0, i32 %curr_index.0)
  %cmp94 = icmp ugt i32 %prev_curr_index.0, %curr_index.0
  br i1 %cmp94, label %do.body100.lr.ph, label %for.cond142.preheader

for.cond142.preheader:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %prev_curr_index.0, i32 %curr_index.0)
  %cmp143.not359.not = icmp ult i32 %prev_curr_index.0, %curr_index.0
  br i1 %cmp143.not359.not, label %do.body148.lr.ph, label %for.cond142.preheader.exit_set_current_crit_edge

for.cond142.preheader.exit_set_current_crit_edge: ; preds = %for.cond142.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_set_current

do.body148.lr.ph:                                 ; preds = %for.cond142.preheader
  %mul187 = shl nuw nsw i32 %step_udelay.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 194, i32 %reg)
  %cmp.i = icmp eq i32 %reg, 194
  %vbus_drop_end.i = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 20, i32 7
  br label %do.body148

do.body100.lr.ph:                                 ; preds = %if.else
  %mul139 = shl nuw nsw i32 %step_udelay.1, 1
  br label %do.body100

do.body100:                                       ; preds = %for.inc.do.body100_crit_edge, %do.body100.lr.ph
  %i.0363.in = phi i32 [ %prev_curr_index.0, %do.body100.lr.ph ], [ %i.0363, %for.inc.do.body100_crit_edge ]
  %i.0363 = add nsw i32 %i.0363.in, -1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_set_current.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_set_current, %do.end121)) #8
          to label %if.then114 [label %do.end121], !srcloc !771

if.then114:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %di, align 4
  %conv117 = and i32 %i.0363, 255
  %shl118 = shl i32 %conv117, %shift_value.0
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_set_current.__UNIQUE_ID_ddebug308, ptr noundef %37, ptr noundef nonnull @.str.189, i32 noundef %shl118, i32 noundef %reg) #8
  br label %do.end121

do.end121:                                        ; preds = %if.then114, %do.body100
  %38 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %di, align 4
  %shl126 = shl i32 %i.0363, %shift_value.0
  %conv127 = trunc i32 %shl126 to i8
  %call128 = call i32 @abx500_set_register_interruptible(ptr noundef %39, i8 noundef zeroext 11, i8 noundef zeroext %conv, i8 noundef zeroext %conv127) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.end135, label %do.end133

do.end133:                                        ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %di, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.178) #11
  br label %exit_set_current

if.end135:                                        ; preds = %do.end121
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0363, i32 %curr_index.0)
  %cmp136.not = icmp eq i32 %i.0363, %curr_index.0
  br i1 %cmp136.not, label %if.end135.for.inc_crit_edge, label %if.then138

if.end135.for.inc_crit_edge:                      ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then138:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  call void @usleep_range_state(i32 noundef %step_udelay.1, i32 noundef %mul139, i32 noundef 2) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then138, %if.end135.for.inc_crit_edge
  %cmp98.not.not = icmp sgt i32 %i.0363, %curr_index.0
  br i1 %cmp98.not.not, label %for.inc.do.body100_crit_edge, label %for.inc.exit_set_current_crit_edge

for.inc.exit_set_current_crit_edge:               ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_set_current

for.inc.do.body100_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body100

do.body148:                                       ; preds = %ab8500_charger_check_continue_stepping.exit.do.body148_crit_edge, %do.body148.lr.ph
  %i.1360.in = phi i32 [ %prev_curr_index.0, %do.body148.lr.ph ], [ %i.1360, %ab8500_charger_check_continue_stepping.exit.do.body148_crit_edge ]
  %i.1360 = add nuw nsw i32 %i.1360.in, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_set_current.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_set_current, %do.end169)) #8
          to label %if.then162 [label %do.end169], !srcloc !771

if.then162:                                       ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %di, align 4
  %conv165 = and i32 %i.1360, 255
  %shl166 = shl i32 %conv165, %shift_value.0
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_set_current.__UNIQUE_ID_ddebug309, ptr noundef %43, ptr noundef nonnull @.str.192, i32 noundef %shl166, i32 noundef %reg) #8
  br label %do.end169

do.end169:                                        ; preds = %if.then162, %do.body148
  %44 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %di, align 4
  %shl174 = shl i32 %i.1360, %shift_value.0
  %conv175 = trunc i32 %shl174 to i8
  %call176 = call i32 @abx500_set_register_interruptible(ptr noundef %45, i8 noundef zeroext 11, i8 noundef zeroext %conv, i8 noundef zeroext %conv175) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %if.end183, label %do.end181

do.end181:                                        ; preds = %do.end169
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %di, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.178) #11
  br label %exit_set_current

if.end183:                                        ; preds = %do.end169
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1360, i32 %curr_index.0)
  %cmp184.not = icmp eq i32 %i.1360, %curr_index.0
  br i1 %cmp184.not, label %if.end183.if.end188_crit_edge, label %if.then186

if.end183.if.end188_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end188

if.then186:                                       ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #10
  call void @usleep_range_state(i32 noundef %step_udelay.1, i32 noundef %mul187, i32 noundef 2) #8
  br label %if.end188

if.end188:                                        ; preds = %if.then186, %if.end183.if.end188_crit_edge
  br i1 %cmp.i, label %if.then.i, label %if.end188.ab8500_charger_check_continue_stepping.exit_crit_edge

if.end188.ab8500_charger_check_continue_stepping.exit_crit_edge: ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_charger_check_continue_stepping.exit

if.then.i:                                        ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %vbus_drop_end.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %vbus_drop_end.i, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i = icmp eq i8 %49, 0
  br label %ab8500_charger_check_continue_stepping.exit

ab8500_charger_check_continue_stepping.exit:      ; preds = %if.then.i, %if.end188.ab8500_charger_check_continue_stepping.exit_crit_edge
  %retval.0.i350 = phi i1 [ %tobool.not.i, %if.then.i ], [ true, %if.end188.ab8500_charger_check_continue_stepping.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1360, i32 %curr_index.0)
  %cmp143.not = icmp sge i32 %i.1360, %curr_index.0
  %allow.0.off0.not = xor i1 %retval.0.i350, true
  %brmerge = select i1 %cmp143.not, i1 true, i1 %allow.0.off0.not
  br i1 %brmerge, label %ab8500_charger_check_continue_stepping.exit.exit_set_current_crit_edge, label %ab8500_charger_check_continue_stepping.exit.do.body148_crit_edge

ab8500_charger_check_continue_stepping.exit.do.body148_crit_edge: ; preds = %ab8500_charger_check_continue_stepping.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body148

ab8500_charger_check_continue_stepping.exit.exit_set_current_crit_edge: ; preds = %ab8500_charger_check_continue_stepping.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_set_current

exit_set_current:                                 ; preds = %ab8500_charger_check_continue_stepping.exit.exit_set_current_crit_edge, %do.end181, %for.inc.exit_set_current_crit_edge, %do.end133, %for.cond142.preheader.exit_set_current_crit_edge, %do.end91, %if.then80.exit_set_current_crit_edge, %if.then54, %do.body48, %do.end42, %do.end35, %do.end
  %ret.3 = phi i32 [ %call, %do.end ], [ -6, %do.end35 ], [ -6, %do.end42 ], [ %call86, %do.end91 ], [ 0, %if.then80.exit_set_current_crit_edge ], [ %call128, %do.end133 ], [ 0, %if.then54 ], [ %call176, %do.end181 ], [ 0, %do.body48 ], [ %call, %for.cond142.preheader.exit_set_current_crit_edge ], [ 0, %for.inc.exit_set_current_crit_edge ], [ 0, %ab8500_charger_check_continue_stepping.exit.exit_set_current_crit_edge ]
  %call.i.i287 = call zeroext i1 @__kasan_check_write(ptr noundef %current_stepping_sessions, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %current_stepping_sessions, i32 1, i32 3, i32 1) #8
  %50 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %current_stepping_sessions, ptr %current_stepping_sessions, i32 1, ptr elementtype(i32) %current_stepping_sessions) #8, !srcloc !775
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_value) #8
  ret i32 %ret.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_get_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_mask_and_set_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ab8500_charger_set_vbus_in_curr(ptr noundef %di, i32 noundef %ich_in_ua) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bm = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 19
  %0 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bm, align 4
  %chg_params = getelementptr inbounds %struct.ab8500_bm_data, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %chg_params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chg_params, align 4
  %usb_curr_max_ua = getelementptr inbounds %struct.ab8500_bm_charger_parameters, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %usb_curr_max_ua to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usb_curr_max_ua, align 4
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 %ich_in_ua)
  %set_max_ua = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 22, i32 1
  %7 = ptrtoint ptr %set_max_ua to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %set_max_ua, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1 = icmp sgt i32 %8, 0
  %9 = tail call i32 @llvm.smin.i32(i32 %8, i32 %6)
  %min_value.0 = select i1 %cmp1, i32 %9, i32 %6
  %usb_state = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 21
  %10 = ptrtoint ptr %usb_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %usb_state, align 4
  %12 = tail call i32 @llvm.smin.i32(i32 %11, i32 %min_value.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1053 = icmp slt i32 %11, 0
  %min_value.1 = select i1 %cmp1053, i32 %min_value.0, i32 %12
  %13 = zext i32 %min_value.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.391)
  switch i32 %min_value.1, label %entry.do.end_crit_edge [
    i32 100000, label %sw.bb
    i32 500000, label %sw.bb24
  ]

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %vbat = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 6
  %14 = ptrtoint ptr %vbat to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vbat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3800, i32 %15)
  %cmp21 = icmp slt i32 %15, 3800
  %spec.select = select i1 %cmp21, i32 50000, i32 100000
  br label %do.end

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %vbat25 = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 6
  %16 = ptrtoint ptr %vbat25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vbat25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3800, i32 %17)
  %cmp26 = icmp slt i32 %17, 3800
  %spec.select52 = select i1 %cmp26, i32 450000, i32 500000
  br label %do.end

do.end:                                           ; preds = %sw.bb24, %sw.bb, %entry.do.end_crit_edge
  %min_value.2 = phi i32 [ %min_value.1, %entry.do.end_crit_edge ], [ %spec.select, %sw.bb ], [ %spec.select52, %sw.bb24 ]
  %18 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.250, i32 noundef %min_value.2) #11
  %usb_ipt_crnt_lock = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 29
  tail call void @mutex_lock_nested(ptr noundef %usb_ipt_crnt_lock, i32 noundef 0) #8
  %call = tail call fastcc i32 @ab8500_charger_set_current(ptr noundef %di, i32 noundef %min_value.2, i32 noundef 194)
  tail call void @mutex_unlock(ptr noundef %usb_ipt_crnt_lock) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @class_for_each_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_charger_get_ext_psy_data(ptr nocapture noundef readonly %dev, ptr nocapture noundef %data) #2 align 64 {
entry:
  %ret = alloca %union.power_supply_propval, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %supplied_to = getelementptr inbounds %struct.power_supply, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %supplied_to to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %supplied_to, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #8
  %4 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %ret, align 4, !annotation !773
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %num_supplicants = getelementptr inbounds %struct.power_supply, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %num_supplicants to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_supplicants, align 8
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call2 = tail call i32 @match_string(ptr noundef %3, i32 noundef %8, ptr noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup13_crit_edge, label %for.cond.preheader

entry.cleanup13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup13

for.cond.preheader:                               ; preds = %entry
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %num_properties31 = getelementptr inbounds %struct.power_supply_desc, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %num_properties31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_properties31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp432.not = icmp eq i32 %16, 0
  br i1 %cmp432.not, label %for.cond.preheader.cleanup13_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup13_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup13

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %vbat = getelementptr i8, ptr %data, i32 -164
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %17 = phi ptr [ %14, %for.body.lr.ph ], [ %30, %cleanup.for.body_crit_edge ]
  %j.033 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %properties = getelementptr inbounds %struct.power_supply_desc, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %properties, align 4
  %arrayidx = getelementptr i32, ptr %19, i32 %j.033
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %call6 = call i32 @power_supply_get_property(ptr noundef %1, i32 noundef %21, ptr noundef nonnull %ret) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %21)
  %cond = icmp eq i32 %21, 12
  %or.cond = and i1 %cond, %tobool.not
  br i1 %or.cond, label %sw.bb, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %for.body
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %type = getelementptr inbounds %struct.power_supply_desc, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cond20 = icmp eq i32 %25, 1
  br i1 %cond20, label %sw.bb10, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb10:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ret, align 4
  %div = sdiv i32 %27, 1000
  %28 = ptrtoint ptr %vbat to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div, ptr %vbat, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb10, %sw.bb.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %j.033, 1
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 8
  %num_properties = getelementptr inbounds %struct.power_supply_desc, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %num_properties to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_properties, align 4
  %cmp4 = icmp ult i32 %inc, %32
  br i1 %cmp4, label %cleanup.for.body_crit_edge, label %cleanup.cleanup13_crit_edge

cleanup.cleanup13_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup13

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup13:                                        ; preds = %cleanup.cleanup13_crit_edge, %for.cond.preheader.cleanup13_crit_edge, %entry.cleanup13_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_get_property(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ab8500_charger_set_usb_connected(ptr noundef %di, i1 noundef zeroext %connected) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i1 %connected to i32
  %usb = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 26
  %0 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp.not = icmp eq i32 %1, %conv
  br i1 %cmp.not, label %entry.if.end36_crit_edge, label %do.body

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_set_usb_connected.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_set_usb_connected, %do.end)) #8
          to label %if.then7 [label %do.end], !srcloc !771

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_set_usb_connected.__UNIQUE_ID_ddebug294, ptr noundef %3, ptr noundef nonnull @.str.272, i32 noundef %conv) #8
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %4 = ptrtoint ptr %usb to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %usb, align 4
  br i1 %connected, label %do.end.if.end16_crit_edge, label %if.then15

do.end.if.end16_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then15:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %vbus_drop_end = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 20, i32 7
  %5 = ptrtoint ptr %vbus_drop_end to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %vbus_drop_end, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %do.end.if.end16_crit_edge
  %usb_chg = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 24
  %6 = ptrtoint ptr %usb_chg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_chg, align 4
  %tobool17.not = icmp eq ptr %7, null
  br i1 %tobool17.not, label %if.end16.if.end22_crit_edge, label %if.then18

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %dev21 = getelementptr inbounds %struct.power_supply, ptr %7, i32 0, i32 7
  tail call void @sysfs_notify(ptr noundef %dev21, ptr noundef null, ptr noundef nonnull @.str.82) #8
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end16.if.end22_crit_edge
  br i1 %connected, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end22
  %charger_attached_mutex = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 46
  tail call void @mutex_lock_nested(ptr noundef %charger_attached_mutex, i32 noundef 0) #8
  tail call void @mutex_unlock(ptr noundef %charger_attached_mutex) #8
  %parent = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 14
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 4
  %version.i = getelementptr inbounds %struct.ab8500, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.not = icmp eq i32 %11, 0
  br i1 %cmp.i.not, label %if.then28, label %if.then24.if.end36_crit_edge

if.then24.if.end36_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then28:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %charger_wq = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 28
  %12 = ptrtoint ptr %charger_wq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %charger_wq, align 4
  %usb_charger_attached_work = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 37
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %usb_charger_attached_work, i32 noundef 100) #8
  br label %if.end36

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %usb_charger_attached_work31 = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 37
  %call32 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %usb_charger_attached_work31) #8
  %charger_attached_mutex33 = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 46
  tail call void @mutex_lock_nested(ptr noundef %charger_attached_mutex33, i32 noundef 0) #8
  tail call void @mutex_unlock(ptr noundef %charger_attached_mutex33) #8
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then28, %if.then24.if.end36_crit_edge, %entry.if.end36_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ab8500_charger_max_usb_curr(ptr noundef %di, i32 noundef %link_status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_device_is_unrecognised = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 8
  %0 = ptrtoint ptr %usb_device_is_unrecognised to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %usb_device_is_unrecognised, align 4
  %1 = zext i32 %link_status to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.392)
  switch i32 %link_status, label %do.end192 [
    i32 1, label %entry.do.body_crit_edge
    i32 2, label %entry.do.body_crit_edge299
    i32 3, label %entry.do.body_crit_edge300
    i32 6, label %sw.bb4
    i32 5, label %sw.bb8
    i32 11, label %sw.bb12
    i32 8, label %do.body17
    i32 9, label %sw.bb39
    i32 4, label %sw.bb64
    i32 7, label %sw.bb68
    i32 12, label %entry.sw.bb72_crit_edge
    i32 10, label %entry.sw.bb72_crit_edge301
    i32 0, label %sw.bb76
    i32 13, label %entry.do.end105_crit_edge
    i32 14, label %sw.bb109
    i32 20, label %entry.sw.bb159_crit_edge
    i32 21, label %entry.sw.bb159_crit_edge302
    i32 22, label %entry.sw.bb159_crit_edge303
    i32 19, label %entry.sw.bb159_crit_edge304
    i32 15, label %do.end186
  ]

entry.sw.bb159_crit_edge304:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb159

entry.sw.bb159_crit_edge303:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb159

entry.sw.bb159_crit_edge302:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb159

entry.sw.bb159_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb159

entry.do.end105_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end105

entry.sw.bb72_crit_edge301:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb72

entry.sw.bb72_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb72

entry.do.body_crit_edge300:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

entry.do.body_crit_edge299:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge299, %entry.do.body_crit_edge300
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_max_usb_curr.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_max_usb_curr, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !771

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_max_usb_curr.__UNIQUE_ID_ddebug296, ptr noundef %3, ptr noundef nonnull @.str.292) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %max_usb_in_curr = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 22
  %4 = ptrtoint ptr %max_usb_in_curr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 500000, ptr %max_usb_in_curr, align 4
  %is_aca_rid = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 12
  %5 = ptrtoint ptr %is_aca_rid to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %is_aca_rid, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %max_usb_in_curr5 = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 22
  %6 = ptrtoint ptr %max_usb_in_curr5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 500000, ptr %max_usb_in_curr5, align 4
  %is_aca_rid7 = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 12
  %7 = ptrtoint ptr %is_aca_rid7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %is_aca_rid7, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %max_usb_in_curr9 = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 22
  %8 = ptrtoint ptr %max_usb_in_curr9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 500000, ptr %max_usb_in_curr9, align 4
  %is_aca_rid11 = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 12
  %9 = ptrtoint ptr %is_aca_rid11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %is_aca_rid11, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %max_usb_in_curr13 = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 22
  %10 = ptrtoint ptr %max_usb_in_curr13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 900000, ptr %max_usb_in_curr13, align 4
  %is_aca_rid15 = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 12
  %11 = ptrtoint ptr %is_aca_rid15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %is_aca_rid15, align 4
  br label %sw.epilog

do.body17:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_max_usb_curr.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_max_usb_curr, %do.end35)) #8
          to label %if.then31 [label %do.end35], !srcloc !771

if.then31:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_max_usb_curr.__UNIQUE_ID_ddebug297, ptr noundef %13, ptr noundef nonnull @.str.293) #8
  br label %do.end35

do.end35:                                         ; preds = %if.then31, %do.body17
  %max_usb_in_curr36 = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 22
  %14 = ptrtoint ptr %max_usb_in_curr36 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 500000, ptr %max_usb_in_curr36, align 4
  %is_aca_rid38 = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 12
  %15 = ptrtoint ptr %is_aca_rid38 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %is_aca_rid38, align 4
  br label %sw.epilog

sw.bb39:                                          ; preds = %entry
  %max_usb_in_curr40 = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 22
  %16 = ptrtoint ptr %max_usb_in_curr40 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1300000, ptr %max_usb_in_curr40, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_max_usb_curr.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_max_usb_curr, %do.end62)) #8
          to label %if.then56 [label %do.end62], !srcloc !771

if.then56:                                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %di, align 4
  %19 = ptrtoint ptr %max_usb_in_curr40 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_usb_in_curr40, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_max_usb_curr.__UNIQUE_ID_ddebug298, ptr noundef %18, ptr noundef nonnull @.str.294, i32 noundef 9, i32 noundef %20) #8
  br label %do.end62

do.end62:                                         ; preds = %if.then56, %sw.bb39
  %is_aca_rid63 = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 12
  %21 = ptrtoint ptr %is_aca_rid63 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %is_aca_rid63, align 4
  br label %sw.epilog

sw.bb64:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %max_usb_in_curr65 = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 22
  %22 = ptrtoint ptr %max_usb_in_curr65 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 500000, ptr %max_usb_in_curr65, align 4
  %is_aca_rid67 = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 12
  %23 = ptrtoint ptr %is_aca_rid67 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %is_aca_rid67, align 4
  br label %sw.epilog

sw.bb68:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %max_usb_in_curr69 = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 22
  %24 = ptrtoint ptr %max_usb_in_curr69 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1500000, ptr %max_usb_in_curr69, align 4
  %is_aca_rid71 = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 12
  %25 = ptrtoint ptr %is_aca_rid71 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %is_aca_rid71, align 4
  br label %sw.epilog

sw.bb72:                                          ; preds = %entry.sw.bb72_crit_edge, %entry.sw.bb72_crit_edge301
  %max_usb_in_curr73 = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 22
  %26 = ptrtoint ptr %max_usb_in_curr73 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1500000, ptr %max_usb_in_curr73, align 4
  %is_aca_rid75 = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 12
  %27 = ptrtoint ptr %is_aca_rid75 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %is_aca_rid75, align 4
  br label %sw.epilog

sw.bb76:                                          ; preds = %entry
  %vbus_detected = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 1
  %28 = ptrtoint ptr %vbus_detected to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %vbus_detected, align 4, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool77.not = icmp eq i8 %29, 0
  br i1 %tobool77.not, label %sw.bb76.do.end105_crit_edge, label %if.then78

sw.bb76.do.end105_crit_edge:                      ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end105

if.then78:                                        ; preds = %sw.bb76
  %30 = ptrtoint ptr %usb_device_is_unrecognised to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %usb_device_is_unrecognised, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_max_usb_curr.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_max_usb_curr, %do.end98)) #8
          to label %if.then94 [label %do.end98], !srcloc !771

if.then94:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_max_usb_curr.__UNIQUE_ID_ddebug299, ptr noundef %32, ptr noundef nonnull @.str.295) #8
  br label %do.end98

do.end98:                                         ; preds = %if.then94, %if.then78
  %max_usb_in_curr99 = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 22
  %33 = ptrtoint ptr %max_usb_in_curr99 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1500000, ptr %max_usb_in_curr99, align 4
  br label %sw.epilog

do.end105:                                        ; preds = %sw.bb76.do.end105_crit_edge, %entry.do.end105_crit_edge
  %34 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.296) #11
  %max_usb_in_curr107 = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 22
  %36 = ptrtoint ptr %max_usb_in_curr107 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 50000, ptr %max_usb_in_curr107, align 4
  br label %sw.epilog

sw.bb109:                                         ; preds = %entry
  %parent = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 14
  %37 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %parent, align 4
  %version.i = getelementptr inbounds %struct.ab8500, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i.not = icmp eq i32 %40, 0
  br i1 %cmp.i.not, label %if.then112, label %do.body117

if.then112:                                       ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_pc() #10
  %vbus_collapse = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 20, i32 6
  %41 = ptrtoint ptr %vbus_collapse to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %vbus_collapse, align 2
  %42 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.298) #11
  br label %sw.epilog

do.body117:                                       ; preds = %sw.bb109
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_max_usb_curr.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_max_usb_curr, %do.end135)) #8
          to label %if.then131 [label %do.end135], !srcloc !771

if.then131:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_max_usb_curr.__UNIQUE_ID_ddebug300, ptr noundef %45, ptr noundef nonnull @.str.296) #8
  br label %do.end135

do.end135:                                        ; preds = %if.then131, %do.body117
  %max_usb_in_curr136 = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 22
  %46 = ptrtoint ptr %max_usb_in_curr136 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 50000, ptr %max_usb_in_curr136, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_max_usb_curr.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_max_usb_curr, %sw.epilog)) #8
          to label %if.then152 [label %sw.epilog], !srcloc !771

if.then152:                                       ; preds = %do.end135
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %di, align 4
  %49 = ptrtoint ptr %max_usb_in_curr136 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %max_usb_in_curr136, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_max_usb_curr.__UNIQUE_ID_ddebug301, ptr noundef %48, ptr noundef nonnull @.str.294, i32 noundef 14, i32 noundef %50) #8
  br label %sw.epilog

sw.bb159:                                         ; preds = %entry.sw.bb159_crit_edge, %entry.sw.bb159_crit_edge302, %entry.sw.bb159_crit_edge303, %entry.sw.bb159_crit_edge304
  %max_usb_in_curr160 = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 22
  %51 = ptrtoint ptr %max_usb_in_curr160 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 500000, ptr %max_usb_in_curr160, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_max_usb_curr.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_max_usb_curr, %sw.epilog)) #8
          to label %if.then176 [label %sw.epilog], !srcloc !771

if.then176:                                       ; preds = %sw.bb159
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %di, align 4
  %54 = ptrtoint ptr %max_usb_in_curr160 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %max_usb_in_curr160, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_max_usb_curr.__UNIQUE_ID_ddebug302, ptr noundef %53, ptr noundef nonnull @.str.294, i32 noundef %link_status, i32 noundef %55) #8
  br label %sw.epilog

do.end186:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.301) #11
  %max_usb_in_curr188 = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 22
  %58 = ptrtoint ptr %max_usb_in_curr188 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 500000, ptr %max_usb_in_curr188, align 4
  br label %sw.epilog

do.end192:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.304) #11
  %max_usb_in_curr194 = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 22
  %61 = ptrtoint ptr %max_usb_in_curr194 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 50000, ptr %max_usb_in_curr194, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end192, %do.end186, %if.then176, %sw.bb159, %if.then152, %do.end135, %if.then112, %do.end105, %do.end98, %sw.bb72, %sw.bb68, %sw.bb64, %do.end62, %do.end35, %sw.bb12, %sw.bb8, %sw.bb4, %do.end
  %ret.0 = phi i32 [ -6, %do.end192 ], [ 0, %do.end186 ], [ 0, %if.then176 ], [ -6, %if.then112 ], [ -6, %do.end105 ], [ 0, %do.end98 ], [ 0, %sw.bb72 ], [ 0, %sw.bb68 ], [ 0, %sw.bb64 ], [ 0, %do.end62 ], [ 0, %do.end35 ], [ 0, %sw.bb12 ], [ 0, %sw.bb8 ], [ 0, %sw.bb4 ], [ 0, %do.end ], [ -6, %if.then152 ], [ -6, %do.end135 ], [ 0, %sw.bb159 ]
  %max_usb_in_curr196 = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 22
  %62 = ptrtoint ptr %max_usb_in_curr196 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %max_usb_in_curr196, align 4
  %set_max_ua = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 22, i32 1
  %64 = ptrtoint ptr %set_max_ua to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %set_max_ua, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_max_usb_curr.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_max_usb_curr, %do.end219)) #8
          to label %if.then213 [label %do.end219], !srcloc !771

if.then213:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %di, align 4
  %67 = ptrtoint ptr %set_max_ua to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %set_max_ua, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_max_usb_curr.__UNIQUE_ID_ddebug303, ptr noundef %66, ptr noundef nonnull @.str.294, i32 noundef %link_status, i32 noundef %68) #8
  br label %do.end219

do.end219:                                        ; preds = %if.then213, %sw.epilog
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ab8500_charger_detect_usb_type(ptr noundef %di) unnamed_addr #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !773
  %parent = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %do.end49.for.body_crit_edge, %entry
  %i.092 = phi i32 [ 0, %entry ], [ %inc, %do.end49.for.body_crit_edge ]
  call void @msleep(i32 noundef 250) #8
  %1 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %di, align 4
  %call = call i32 @abx500_get_register_interruptible(ptr noundef %2, i8 noundef zeroext 14, i8 noundef zeroext 20, ptr noundef nonnull %val) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_detect_usb_type.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_detect_usb_type, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !771

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %di, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val, align 1
  %conv = zext i8 %6 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_detect_usb_type.__UNIQUE_ID_ddebug304, ptr noundef %4, ptr noundef nonnull @.str.309, ptr noundef nonnull @.str.308, i32 noundef %conv) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6 = icmp slt i32 %call, 0
  br i1 %cmp6, label %do.end11, label %if.end13

do.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %di, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.261, ptr noundef nonnull @.str.308) #11
  br label %cleanup

if.end13:                                         ; preds = %do.end
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 4
  %version.i = getelementptr inbounds %struct.ab8500, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.not = icmp eq i32 %12, 0
  %13 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %di, align 4
  %. = select i1 %cmp.i.not, i8 -128, i8 -108
  %call20 = call i32 @abx500_get_register_interruptible(ptr noundef %14, i8 noundef zeroext 5, i8 noundef zeroext %., ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp22 = icmp slt i32 %call20, 0
  br i1 %cmp22, label %do.end27, label %do.body30

do.end27:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %di, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.261, ptr noundef nonnull @.str.308) #11
  br label %cleanup

do.body30:                                        ; preds = %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_charger_detect_usb_type.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_charger_detect_usb_type, %do.end49)) #8
          to label %if.then44 [label %do.end49], !srcloc !771

if.then44:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %di, align 4
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %val, align 1
  %conv46 = zext i8 %20 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_charger_detect_usb_type.__UNIQUE_ID_ddebug305, ptr noundef %18, ptr noundef nonnull @.str.312, ptr noundef nonnull @.str.308, i32 noundef %conv46) #8
  br label %do.end49

do.end49:                                         ; preds = %if.then44, %do.body30
  %21 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent, align 4
  %version.i86 = getelementptr inbounds %struct.ab8500, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %version.i86 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %version.i86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i87.not = icmp eq i32 %24, 0
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %val, align 1
  %27 = lshr i8 %26, 3
  %28 = and i8 %27, 15
  %storemerge = select i1 %cmp.i87.not, i8 %28, i8 %27
  store i8 %storemerge, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %storemerge)
  %tobool62.not = icmp ne i8 %storemerge, 0
  %inc = add nuw nsw i32 %i.092, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 10
  %or.cond = select i1 %tobool62.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %for.end, label %do.end49.for.body_crit_edge

do.end49.for.body_crit_edge:                      ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %val, align 1
  %conv65 = zext i8 %30 to i32
  %call66 = call fastcc i32 @ab8500_charger_max_usb_curr(ptr noundef %di, i32 noundef %conv65)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end27, %do.end11
  %retval.0 = phi i32 [ %call, %do.end11 ], [ %call20, %do.end27 ], [ %call66, %for.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_charger_ac_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %ich.i = alloca i32, align 4
  %val.i = alloca i8, align 1
  %vch.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #8
  %add.ptr = getelementptr i8, ptr %call, i32 -140
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.393)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %sw.bb12
    i32 3, label %sw.bb14
    i32 12, label %sw.bb16
    i32 13, label %sw.bb23
    i32 17, label %sw.bb28
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %flags = getelementptr i8, ptr %call, i32 -80
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %flags, align 4, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.else, label %sw.bb.cleanup.sink.split_crit_edge

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.else:                                          ; preds = %sw.bb
  %wd_expired = getelementptr i8, ptr %call, i32 88
  %3 = ptrtoint ptr %wd_expired to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %wd_expired, align 4, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.else
  %wd_expired2 = getelementptr i8, ptr %call, i32 112
  %5 = ptrtoint ptr %wd_expired2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %wd_expired2, align 4, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  br i1 %tobool3.not, label %if.else5, label %lor.lhs.false.cleanup.sink.split_crit_edge

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.else5:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %main_thermal_prot = getelementptr i8, ptr %call, i32 -79
  %7 = ptrtoint ptr %main_thermal_prot to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %main_thermal_prot, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not = icmp eq i8 %8, 0
  %. = select i1 %tobool7.not, i32 1, i32 2
  br label %cleanup.sink.split

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %charger_online = getelementptr i8, ptr %call, i32 76
  %9 = ptrtoint ptr %charger_online to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %charger_online, align 4
  br label %cleanup.sink.split

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ac15 = getelementptr i8, ptr %call, i32 72
  %11 = ptrtoint ptr %ac15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ac15, align 4
  br label %cleanup.sink.split

sw.bb16:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vch.i) #8
  %13 = ptrtoint ptr %vch.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %vch.i, align 4, !annotation !773
  %ac.i = getelementptr i8, ptr %call, i32 72
  %14 = ptrtoint ptr %ac.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ac.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb16
  %adc_main_charger_v.i = getelementptr i8, ptr %call, i32 -100
  %16 = ptrtoint ptr %adc_main_charger_v.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adc_main_charger_v.i, align 4
  %call.i = call i32 @iio_read_channel_processed(ptr noundef %17, ptr noundef nonnull %vch.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then.i.ab8500_charger_get_ac_voltage.exit_crit_edge

if.then.i.ab8500_charger_get_ac_voltage.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_charger_get_ac_voltage.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.347, ptr noundef nonnull @.str.348) #11
  br label %ab8500_charger_get_ac_voltage.exit

if.else.i:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %vch.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %vch.i, align 4
  br label %ab8500_charger_get_ac_voltage.exit

ab8500_charger_get_ac_voltage.exit:               ; preds = %if.else.i, %do.end.i, %if.then.i.ab8500_charger_get_ac_voltage.exit_crit_edge
  %21 = ptrtoint ptr %vch.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vch.i, align 4
  %mul.i = mul i32 %22, 1000
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vch.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mul.i)
  %cmp = icmp sgt i32 %mul.i, -1
  br i1 %cmp, label %if.then18, label %ab8500_charger_get_ac_voltage.exit.if.end20_crit_edge

ab8500_charger_get_ac_voltage.exit.if.end20_crit_edge: ; preds = %ab8500_charger_get_ac_voltage.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then18:                                        ; preds = %ab8500_charger_get_ac_voltage.exit
  call void @__sanitizer_cov_trace_pc() #10
  %charger_voltage_uv = getelementptr i8, ptr %call, i32 80
  %23 = ptrtoint ptr %charger_voltage_uv to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul.i, ptr %charger_voltage_uv, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %ab8500_charger_get_ac_voltage.exit.if.end20_crit_edge
  %charger_voltage_uv22 = getelementptr i8, ptr %call, i32 80
  %24 = ptrtoint ptr %charger_voltage_uv22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %charger_voltage_uv22, align 4
  br label %cleanup.sink.split

sw.bb23:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #8
  %26 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %val.i, align 1, !annotation !773
  %charger_online.i = getelementptr i8, ptr %call, i32 76
  %27 = ptrtoint ptr %charger_online.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %charger_online.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i62 = icmp eq i32 %28, 0
  br i1 %tobool.not.i62, label %sw.bb23.ab8500_charger_ac_cv.exit_crit_edge, label %if.then.i65

sw.bb23.ab8500_charger_ac_cv.exit_crit_edge:      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_charger_ac_cv.exit

if.then.i65:                                      ; preds = %sw.bb23
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr, align 4
  %call.i63 = call i32 @abx500_get_register_interruptible(ptr noundef %30, i8 noundef zeroext 11, i8 noundef zeroext 0, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %cmp.i64 = icmp slt i32 %call.i63, 0
  br i1 %cmp.i64, label %do.end.i66, label %if.end.i

do.end.i66:                                       ; preds = %if.then.i65
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.261, ptr noundef nonnull @.str.349) #11
  br label %ab8500_charger_ac_cv.exit

if.end.i:                                         ; preds = %if.then.i65
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %val.i, align 1
  %35 = lshr i8 %34, 2
  %.lobit.i = and i8 %35, 1
  %36 = zext i8 %.lobit.i to i32
  br label %ab8500_charger_ac_cv.exit

ab8500_charger_ac_cv.exit:                        ; preds = %if.end.i, %do.end.i66, %sw.bb23.ab8500_charger_ac_cv.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.end.i66 ], [ 0, %sw.bb23.ab8500_charger_ac_cv.exit_crit_edge ], [ %36, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  %cv_active = getelementptr i8, ptr %call, i32 84
  %37 = ptrtoint ptr %cv_active to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %retval.0.i, ptr %cv_active, align 4
  br label %cleanup.sink.split

sw.bb28:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ich.i) #8
  %38 = ptrtoint ptr %ich.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %ich.i, align 4, !annotation !773
  %charger_online.i67 = getelementptr i8, ptr %call, i32 76
  %39 = ptrtoint ptr %charger_online.i67 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %charger_online.i67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i68 = icmp eq i32 %40, 0
  br i1 %tobool.not.i68, label %if.else.i73, label %if.then.i71

if.then.i71:                                      ; preds = %sw.bb28
  %adc_main_charger_c.i = getelementptr i8, ptr %call, i32 -96
  %41 = ptrtoint ptr %adc_main_charger_c.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %adc_main_charger_c.i, align 4
  %call.i69 = call i32 @iio_read_channel_processed(ptr noundef %42, ptr noundef nonnull %ich.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %cmp.i70 = icmp slt i32 %call.i69, 0
  br i1 %cmp.i70, label %do.end.i72, label %if.then.i71.ab8500_charger_get_ac_current.exit_crit_edge

if.then.i71.ab8500_charger_get_ac_current.exit_crit_edge: ; preds = %if.then.i71
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_charger_get_ac_current.exit

do.end.i72:                                       ; preds = %if.then.i71
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.347, ptr noundef nonnull @.str.350) #11
  br label %ab8500_charger_get_ac_current.exit

if.else.i73:                                      ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %ich.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %ich.i, align 4
  br label %ab8500_charger_get_ac_current.exit

ab8500_charger_get_ac_current.exit:               ; preds = %if.else.i73, %do.end.i72, %if.then.i71.ab8500_charger_get_ac_current.exit_crit_edge
  %46 = ptrtoint ptr %ich.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ich.i, align 4
  %mul.i74 = mul i32 %47, 1000
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ich.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mul.i74)
  %cmp30 = icmp sgt i32 %mul.i74, -1
  br i1 %cmp30, label %if.then31, label %ab8500_charger_get_ac_current.exit.if.end33_crit_edge

ab8500_charger_get_ac_current.exit.if.end33_crit_edge: ; preds = %ab8500_charger_get_ac_current.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then31:                                        ; preds = %ab8500_charger_get_ac_current.exit
  call void @__sanitizer_cov_trace_pc() #10
  %charger_current_ua = getelementptr i8, ptr %call, i32 92
  %48 = ptrtoint ptr %charger_current_ua to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %mul.i74, ptr %charger_current_ua, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %ab8500_charger_get_ac_current.exit.if.end33_crit_edge
  %charger_current_ua35 = getelementptr i8, ptr %call, i32 92
  %49 = ptrtoint ptr %charger_current_ua35 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %charger_current_ua35, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end33, %ab8500_charger_ac_cv.exit, %if.end20, %sw.bb14, %sw.bb12, %if.else5, %lor.lhs.false.cleanup.sink.split_crit_edge, %if.else.cleanup.sink.split_crit_edge, %sw.bb.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %10, %sw.bb12 ], [ %12, %sw.bb14 ], [ %25, %if.end20 ], [ %retval.0.i, %ab8500_charger_ac_cv.exit ], [ %50, %if.end33 ], [ 5, %sw.bb.cleanup.sink.split_crit_edge ], [ 3, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ 3, %if.else.cleanup.sink.split_crit_edge ], [ %., %if.else5 ]
  %51 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_processed(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_charger_usb_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %ich.i = alloca i32, align 4
  %val.i = alloca i8, align 1
  %vch.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #8
  %add.ptr = getelementptr i8, ptr %call, i32 -176
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.394)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %sw.bb17
    i32 3, label %sw.bb19
    i32 12, label %sw.bb21
    i32 13, label %sw.bb28
    i32 17, label %sw.bb33
    i32 18, label %sw.bb41
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %usbchargernotok = getelementptr i8, ptr %call, i32 -112
  %1 = ptrtoint ptr %usbchargernotok to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %usbchargernotok, align 4, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.else, label %sw.bb.cleanup.sink.split_crit_edge

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.else:                                          ; preds = %sw.bb
  %wd_expired = getelementptr i8, ptr %call, i32 52
  %3 = ptrtoint ptr %wd_expired to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %wd_expired, align 4, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.else
  %wd_expired2 = getelementptr i8, ptr %call, i32 76
  %5 = ptrtoint ptr %wd_expired2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %wd_expired2, align 4, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  br i1 %tobool3.not, label %if.else5, label %lor.lhs.false.cleanup.sink.split_crit_edge

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.else5:                                         ; preds = %lor.lhs.false
  %usb_thermal_prot = getelementptr i8, ptr %call, i32 -114
  %7 = ptrtoint ptr %usb_thermal_prot to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %usb_thermal_prot, align 2, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not = icmp eq i8 %8, 0
  br i1 %tobool7.not, label %if.else9, label %if.else5.cleanup.sink.split_crit_edge

if.else5.cleanup.sink.split_crit_edge:            ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.else9:                                         ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #10
  %vbus_ovv = getelementptr i8, ptr %call, i32 -113
  %9 = ptrtoint ptr %vbus_ovv to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %vbus_ovv, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool11.not = icmp eq i8 %10, 0
  %. = select i1 %tobool11.not, i32 1, i32 4
  br label %cleanup.sink.split

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %charger_online = getelementptr i8, ptr %call, i32 64
  %11 = ptrtoint ptr %charger_online to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %charger_online, align 4
  br label %cleanup.sink.split

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %usb20 = getelementptr i8, ptr %call, i32 60
  %13 = ptrtoint ptr %usb20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %usb20, align 4
  br label %cleanup.sink.split

sw.bb21:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vch.i) #8
  %15 = ptrtoint ptr %vch.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %vch.i, align 4, !annotation !773
  %usb.i = getelementptr i8, ptr %call, i32 60
  %16 = ptrtoint ptr %usb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %usb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb21
  %adc_vbus_v.i = getelementptr i8, ptr %call, i32 -128
  %18 = ptrtoint ptr %adc_vbus_v.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adc_vbus_v.i, align 4
  %call.i = call i32 @iio_read_channel_processed(ptr noundef %19, ptr noundef nonnull %vch.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then.i.ab8500_charger_get_vbus_voltage.exit_crit_edge

if.then.i.ab8500_charger_get_vbus_voltage.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_charger_get_vbus_voltage.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.347, ptr noundef nonnull @.str.352) #11
  br label %ab8500_charger_get_vbus_voltage.exit

if.else.i:                                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %vch.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %vch.i, align 4
  br label %ab8500_charger_get_vbus_voltage.exit

ab8500_charger_get_vbus_voltage.exit:             ; preds = %if.else.i, %do.end.i, %if.then.i.ab8500_charger_get_vbus_voltage.exit_crit_edge
  %23 = ptrtoint ptr %vch.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vch.i, align 4
  %mul.i = mul i32 %24, 1000
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vch.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mul.i)
  %cmp = icmp sgt i32 %mul.i, -1
  br i1 %cmp, label %if.then23, label %ab8500_charger_get_vbus_voltage.exit.if.end25_crit_edge

ab8500_charger_get_vbus_voltage.exit.if.end25_crit_edge: ; preds = %ab8500_charger_get_vbus_voltage.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then23:                                        ; preds = %ab8500_charger_get_vbus_voltage.exit
  call void @__sanitizer_cov_trace_pc() #10
  %charger_voltage_uv = getelementptr i8, ptr %call, i32 68
  %25 = ptrtoint ptr %charger_voltage_uv to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul.i, ptr %charger_voltage_uv, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %ab8500_charger_get_vbus_voltage.exit.if.end25_crit_edge
  %charger_voltage_uv27 = getelementptr i8, ptr %call, i32 68
  %26 = ptrtoint ptr %charger_voltage_uv27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %charger_voltage_uv27, align 4
  br label %cleanup.sink.split

sw.bb28:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #8
  %28 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %val.i, align 1, !annotation !773
  %charger_online.i = getelementptr i8, ptr %call, i32 64
  %29 = ptrtoint ptr %charger_online.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %charger_online.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i78 = icmp eq i32 %30, 0
  br i1 %tobool.not.i78, label %sw.bb28.ab8500_charger_usb_cv.exit_crit_edge, label %if.then.i81

sw.bb28.ab8500_charger_usb_cv.exit_crit_edge:     ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_charger_usb_cv.exit

if.then.i81:                                      ; preds = %sw.bb28
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr, align 4
  %call.i79 = call i32 @abx500_get_register_interruptible(ptr noundef %32, i8 noundef zeroext 11, i8 noundef zeroext 2, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %cmp.i80 = icmp slt i32 %call.i79, 0
  br i1 %cmp.i80, label %do.end.i82, label %if.end.i

do.end.i82:                                       ; preds = %if.then.i81
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.261, ptr noundef nonnull @.str.353) #11
  br label %ab8500_charger_usb_cv.exit

if.end.i:                                         ; preds = %if.then.i81
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %val.i, align 1
  %37 = lshr i8 %36, 3
  %.lobit.i = and i8 %37, 1
  %38 = zext i8 %.lobit.i to i32
  br label %ab8500_charger_usb_cv.exit

ab8500_charger_usb_cv.exit:                       ; preds = %if.end.i, %do.end.i82, %sw.bb28.ab8500_charger_usb_cv.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.end.i82 ], [ %38, %if.end.i ], [ 0, %sw.bb28.ab8500_charger_usb_cv.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  %cv_active = getelementptr i8, ptr %call, i32 72
  %39 = ptrtoint ptr %cv_active to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %retval.0.i, ptr %cv_active, align 4
  br label %cleanup.sink.split

sw.bb33:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ich.i) #8
  %40 = ptrtoint ptr %ich.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %ich.i, align 4, !annotation !773
  %charger_online.i83 = getelementptr i8, ptr %call, i32 64
  %41 = ptrtoint ptr %charger_online.i83 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %charger_online.i83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i84 = icmp eq i32 %42, 0
  br i1 %tobool.not.i84, label %if.else.i89, label %if.then.i87

if.then.i87:                                      ; preds = %sw.bb33
  %adc_usb_charger_c.i = getelementptr i8, ptr %call, i32 -124
  %43 = ptrtoint ptr %adc_usb_charger_c.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %adc_usb_charger_c.i, align 4
  %call.i85 = call i32 @iio_read_channel_processed(ptr noundef %44, ptr noundef nonnull %ich.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %cmp.i86 = icmp slt i32 %call.i85, 0
  br i1 %cmp.i86, label %do.end.i88, label %if.then.i87.ab8500_charger_get_usb_current.exit_crit_edge

if.then.i87.ab8500_charger_get_usb_current.exit_crit_edge: ; preds = %if.then.i87
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_charger_get_usb_current.exit

do.end.i88:                                       ; preds = %if.then.i87
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.347, ptr noundef nonnull @.str.354) #11
  br label %ab8500_charger_get_usb_current.exit

if.else.i89:                                      ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %ich.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %ich.i, align 4
  br label %ab8500_charger_get_usb_current.exit

ab8500_charger_get_usb_current.exit:              ; preds = %if.else.i89, %do.end.i88, %if.then.i87.ab8500_charger_get_usb_current.exit_crit_edge
  %48 = ptrtoint ptr %ich.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ich.i, align 4
  %mul.i90 = mul i32 %49, 1000
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ich.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mul.i90)
  %cmp35 = icmp sgt i32 %mul.i90, -1
  br i1 %cmp35, label %if.then36, label %ab8500_charger_get_usb_current.exit.if.end38_crit_edge

ab8500_charger_get_usb_current.exit.if.end38_crit_edge: ; preds = %ab8500_charger_get_usb_current.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then36:                                        ; preds = %ab8500_charger_get_usb_current.exit
  call void @__sanitizer_cov_trace_pc() #10
  %charger_current_ua = getelementptr i8, ptr %call, i32 80
  %50 = ptrtoint ptr %charger_current_ua to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %mul.i90, ptr %charger_current_ua, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %ab8500_charger_get_usb_current.exit.if.end38_crit_edge
  %charger_current_ua40 = getelementptr i8, ptr %call, i32 80
  %51 = ptrtoint ptr %charger_current_ua40 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %charger_current_ua40, align 4
  br label %cleanup.sink.split

sw.bb41:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %vbus_collapse = getelementptr i8, ptr %call, i32 -110
  %53 = ptrtoint ptr %vbus_collapse to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %vbus_collapse, align 2, !range !772
  %55 = zext i8 %54 to i32
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb41, %if.end38, %ab8500_charger_usb_cv.exit, %if.end25, %sw.bb19, %sw.bb17, %if.else9, %if.else5.cleanup.sink.split_crit_edge, %lor.lhs.false.cleanup.sink.split_crit_edge, %if.else.cleanup.sink.split_crit_edge, %sw.bb.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %12, %sw.bb17 ], [ %14, %sw.bb19 ], [ %27, %if.end25 ], [ %retval.0.i, %ab8500_charger_usb_cv.exit ], [ %52, %if.end38 ], [ 5, %sw.bb.cleanup.sink.split_crit_edge ], [ 3, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ 3, %if.else.cleanup.sink.split_crit_edge ], [ 2, %if.else5.cleanup.sink.split_crit_edge ], [ %., %if.else9 ], [ %55, %sw.bb41 ]
  %56 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ab8500_enable_disable_sw_fallback(ptr nocapture noundef readonly %di, i1 noundef zeroext %fallback) unnamed_addr #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !773
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_enable_disable_sw_fallback.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_enable_disable_sw_fallback, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !771

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %di, align 4
  %conv = zext i1 %fallback to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_enable_disable_sw_fallback.__UNIQUE_ID_ddebug293, ptr noundef %2, ptr noundef nonnull @.str.360, i32 noundef %conv) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %parent = getelementptr inbounds %struct.ab8500_charger, ptr %di, i32 0, i32 14
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 4
  %version.i = getelementptr inbounds %struct.ab8500, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.not = icmp eq i32 %6, 0
  %.89 = select i1 %cmp.i.not, i8 21, i8 1
  %.90 = select i1 %cmp.i.not, i8 0, i8 3
  %7 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %di, align 4
  %call11 = call i32 @abx500_get_register_interruptible(ptr noundef %8, i8 noundef zeroext %.89, i8 noundef zeroext %.90, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %do.end16, label %if.end18

do.end16:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %di, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.361, i32 noundef 374) #11
  br label %cleanup

if.end18:                                         ; preds = %do.end
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 4
  %version.i91 = getelementptr inbounds %struct.ab8500, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %version.i91 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %version.i91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i92.not = icmp eq i32 %14, 0
  br i1 %cmp.i92.not, label %if.then22, label %if.end18.if.end32_crit_edge

if.end18.if.end32_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then22:                                        ; preds = %if.end18
  %15 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %di, align 4
  %call24 = call i32 @abx500_set_register_interruptible(ptr noundef %16, i8 noundef zeroext 17, i8 noundef zeroext 0, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then22.if.end32_crit_edge, label %if.then22.disable_otp.sink.split_crit_edge

if.then22.disable_otp.sink.split_crit_edge:       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_otp.sink.split

if.then22.if.end32_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.end32:                                         ; preds = %if.then22.if.end32_crit_edge, %if.end18.if.end32_crit_edge
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %val, align 1
  %19 = select i1 %cmp.i.not, i8 8, i8 1
  %20 = xor i8 %19, -1
  %conv42 = and i8 %18, %20
  %conv37 = or i8 %18, %19
  %storemerge = select i1 %fallback, i8 %conv37, i8 %conv42
  store i8 %storemerge, ptr %val, align 1
  %21 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %di, align 4
  %call45 = call i32 @abx500_set_register_interruptible(ptr noundef %22, i8 noundef zeroext %.89, i8 noundef zeroext %.90, i8 noundef zeroext %storemerge) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end32.disable_otp_crit_edge, label %if.end32.disable_otp.sink.split_crit_edge

if.end32.disable_otp.sink.split_crit_edge:        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_otp.sink.split

if.end32.disable_otp_crit_edge:                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_otp

disable_otp.sink.split:                           ; preds = %if.end32.disable_otp.sink.split_crit_edge, %if.then22.disable_otp.sink.split_crit_edge
  %.sink98 = phi i32 [ 382, %if.then22.disable_otp.sink.split_crit_edge ], [ 395, %if.end32.disable_otp.sink.split_crit_edge ]
  %23 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %di, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.363, i32 noundef %.sink98) #11
  br label %disable_otp

disable_otp:                                      ; preds = %disable_otp.sink.split, %if.end32.disable_otp_crit_edge
  %25 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent, align 4
  %version.i94 = getelementptr inbounds %struct.ab8500, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %version.i94 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %version.i94, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i95.not = icmp eq i32 %28, 0
  br i1 %cmp.i95.not, label %if.then56, label %disable_otp.cleanup_crit_edge

disable_otp.cleanup_crit_edge:                    ; preds = %disable_otp
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then56:                                        ; preds = %disable_otp
  %29 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %di, align 4
  %call58 = call i32 @abx500_set_register_interruptible(ptr noundef %30, i8 noundef zeroext 17, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then56.cleanup_crit_edge, label %do.end63

if.then56.cleanup_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end63:                                         ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %di, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.363, i32 noundef 403) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end63, %if.then56.cleanup_crit_edge, %disable_otp.cleanup_crit_edge, %do.end16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_match_add_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_external_charger_prepare(ptr nocapture noundef readnone %charger_nb, i32 noundef %event, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @abx500_set_register_interruptible(ptr noundef %data, i8 noundef zeroext 1, i8 noundef zeroext 82, i8 noundef zeroext 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %data, ptr noundef nonnull @.str.369, i32 noundef %call) #11
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @abx500_set_register_interruptible(ptr noundef %data, i8 noundef zeroext 1, i8 noundef zeroext 82, i8 noundef zeroext 7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %do.end6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %data, ptr noundef nonnull @.str.372, i32 noundef %call1) #11
  br label %out

out:                                              ; preds = %do.end6, %if.end.out_crit_edge, %do.end
  %ret.0 = phi i32 [ %call, %do.end ], [ %call1, %do.end6 ], [ %call1, %if.end.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_charger_bind(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.377, i32 noundef 655370, i32 noundef 1) #8
  %charger_wq = getelementptr inbounds %struct.ab8500_charger, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %charger_wq to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %charger_wq, align 4
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc i32 @ab8500_charger_detect_chargers(ptr noundef %1, i1 noundef zeroext false)
  %and = and i32 %call3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %if.then4

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then4:                                         ; preds = %if.end
  %parent = getelementptr inbounds %struct.ab8500_charger, ptr %1, i32 0, i32 14
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 4
  %version.i = getelementptr inbounds %struct.ab8500, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.not = icmp eq i32 %6, 0
  br i1 %cmp.i.not, label %if.then7, label %if.then4.if.end11_crit_edge

if.then4.if.end11_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %charger_wq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %charger_wq, align 4
  %ac_charger_attached_work = getelementptr inbounds %struct.ab8500_charger, ptr %1, i32 0, i32 36
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %ac_charger_attached_work, i32 noundef 100) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.then4.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %and12 = and i32 %call3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end24_crit_edge, label %if.then14

if.end11.if.end24_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then14:                                        ; preds = %if.end11
  %parent15 = getelementptr inbounds %struct.ab8500_charger, ptr %1, i32 0, i32 14
  %9 = ptrtoint ptr %parent15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent15, align 4
  %version.i52 = getelementptr inbounds %struct.ab8500, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %version.i52 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %version.i52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i53.not = icmp eq i32 %12, 0
  br i1 %cmp.i53.not, label %if.then18, label %if.then14.if.end21_crit_edge

if.then14.if.end21_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then18:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %charger_wq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %charger_wq, align 4
  %usb_charger_attached_work = getelementptr inbounds %struct.ab8500_charger, ptr %1, i32 0, i32 37
  %call.i55 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %usb_charger_attached_work, i32 noundef 100) #8
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.then14.if.end21_crit_edge
  %vbus_detected = getelementptr inbounds %struct.ab8500_charger, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %vbus_detected to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %vbus_detected, align 4
  %vbus_detected_start = getelementptr inbounds %struct.ab8500_charger, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %vbus_detected_start to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %vbus_detected_start, align 1
  %17 = ptrtoint ptr %charger_wq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %charger_wq, align 4
  %detect_usb_type_work = getelementptr inbounds %struct.ab8500_charger, ptr %1, i32 0, i32 40
  %call.i56 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %detect_usb_type_work) #8
  br label %if.end24

if.end24:                                         ; preds = %if.end21, %if.end11.if.end24_crit_edge
  %call25 = tail call i32 @component_bind_all(ptr noundef %dev, ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end24.cleanup_crit_edge, label %if.end24.cleanup.sink.split_crit_edge

if.end24.cleanup.sink.split_crit_edge:            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end24.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.381.sink = phi ptr [ @.str.378, %entry.cleanup.sink.split_crit_edge ], [ @.str.381, %if.end24.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -12, %entry.cleanup.sink.split_crit_edge ], [ %call25, %if.end24.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.381.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end24.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ab8500_charger_unbind(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ac_chg = getelementptr inbounds %struct.ab8500_charger, ptr %1, i32 0, i32 23
  %call1 = tail call i32 @ab8500_charger_ac_en(ptr noundef %ac_chg, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %usb_chg = getelementptr inbounds %struct.ab8500_charger, ptr %1, i32 0, i32 24
  %call2 = tail call i32 @ab8500_charger_usb_en(ptr noundef %usb_chg, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call4 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %3, i8 noundef zeroext 15, i8 noundef zeroext 11, i8 noundef zeroext 16, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.344, ptr noundef nonnull @.str.383) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %charger_wq = getelementptr inbounds %struct.ab8500_charger, ptr %1, i32 0, i32 28
  %6 = ptrtoint ptr %charger_wq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %charger_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %7) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  tail call void @flush_workqueue(ptr noundef %8) #8
  tail call void @component_unbind_all(ptr noundef %dev, ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_bind_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_unbind_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_master_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_charger_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %check_hw_failure_work = getelementptr inbounds %struct.ab8500_charger, ptr %1, i32 0, i32 31
  %call1 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %check_hw_failure_work) #8
  %vbus_drop_end_work = getelementptr inbounds %struct.ab8500_charger, ptr %1, i32 0, i32 38
  %call2 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %vbus_drop_end_work) #8
  %attach_work = getelementptr inbounds %struct.ab8500_charger, ptr %1, i32 0, i32 35
  %call3 = tail call zeroext i1 @flush_delayed_work(ptr noundef %attach_work) #8
  %usb_charger_attached_work = getelementptr inbounds %struct.ab8500_charger, ptr %1, i32 0, i32 37
  %call4 = tail call zeroext i1 @flush_delayed_work(ptr noundef %usb_charger_attached_work) #8
  %ac_charger_attached_work = getelementptr inbounds %struct.ab8500_charger, ptr %1, i32 0, i32 36
  %call5 = tail call zeroext i1 @flush_delayed_work(ptr noundef %ac_charger_attached_work) #8
  %check_usbchgnotok_work = getelementptr inbounds %struct.ab8500_charger, ptr %1, i32 0, i32 32
  %call6 = tail call zeroext i1 @flush_delayed_work(ptr noundef %check_usbchgnotok_work) #8
  %check_vbat_work = getelementptr inbounds %struct.ab8500_charger, ptr %1, i32 0, i32 30
  %call7 = tail call zeroext i1 @flush_delayed_work(ptr noundef %check_vbat_work) #8
  %kick_wd_work = getelementptr inbounds %struct.ab8500_charger, ptr %1, i32 0, i32 33
  %call8 = tail call zeroext i1 @flush_delayed_work(ptr noundef %kick_wd_work) #8
  %usb_link_status_work = getelementptr inbounds %struct.ab8500_charger, ptr %1, i32 0, i32 41
  %call9 = tail call zeroext i1 @flush_work(ptr noundef %usb_link_status_work) #8
  %ac_work = getelementptr inbounds %struct.ab8500_charger, ptr %1, i32 0, i32 39
  %call10 = tail call zeroext i1 @flush_work(ptr noundef %ac_work) #8
  %detect_usb_type_work = getelementptr inbounds %struct.ab8500_charger, ptr %1, i32 0, i32 40
  %call11 = tail call zeroext i1 @flush_work(ptr noundef %detect_usb_type_work) #8
  %current_stepping_sessions = getelementptr inbounds %struct.ab8500_charger, ptr %1, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %current_stepping_sessions, i32 noundef 4) #8
  %2 = ptrtoint ptr %current_stepping_sessions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %current_stepping_sessions, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %. = select i1 %tobool.not, i32 0, i32 -11
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_charger_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ac_conn = getelementptr inbounds %struct.ab8500_charger, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ac_conn to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ac_conn, align 2, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %land.lhs.true

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

land.lhs.true:                                    ; preds = %entry
  %parent = getelementptr inbounds %struct.ab8500_charger, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 4
  %version.i.i = getelementptr inbounds %struct.ab8500, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.not.i = icmp eq i32 %7, 0
  br i1 %cmp.i.not.i, label %is_ab8500_1p1_or_earlier.exit, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

is_ab8500_1p1_or_earlier.exit:                    ; preds = %land.lhs.true
  %chip_id.i = getelementptr inbounds %struct.ab8500, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %9)
  %cmp.i = icmp ugt i8 %9, 17
  br i1 %cmp.i, label %is_ab8500_1p1_or_earlier.exit.if.end10_crit_edge, label %if.then

is_ab8500_1p1_or_earlier.exit.if.end10_crit_edge: ; preds = %is_ab8500_1p1_or_earlier.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then:                                          ; preds = %is_ab8500_1p1_or_earlier.exit
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call4 = tail call i32 @abx500_set_register_interruptible(ptr noundef %11, i8 noundef zeroext 11, i8 noundef zeroext 81, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.216) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %charger_wq = getelementptr inbounds %struct.ab8500_charger, ptr %1, i32 0, i32 28
  %14 = ptrtoint ptr %charger_wq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %charger_wq, align 4
  %kick_wd_work = getelementptr inbounds %struct.ab8500_charger, ptr %1, i32 0, i32 33
  %call8 = tail call i32 @round_jiffies(i32 noundef 6000) #8
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %kick_wd_work, i32 noundef %call8) #8
  br label %if.end10

if.end10:                                         ; preds = %if.end, %is_ab8500_1p1_or_earlier.exit.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %entry.if.end10_crit_edge
  %flags = getelementptr inbounds %struct.ab8500_charger, ptr %1, i32 0, i32 20
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %flags, align 4, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool11.not = icmp eq i8 %17, 0
  br i1 %tobool11.not, label %lor.lhs.false, label %if.end10.if.then14_crit_edge

if.end10.if.then14_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

lor.lhs.false:                                    ; preds = %if.end10
  %vbus_ovv = getelementptr inbounds %struct.ab8500_charger, ptr %1, i32 0, i32 20, i32 3
  %18 = ptrtoint ptr %vbus_ovv to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %vbus_ovv, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool13.not = icmp eq i8 %19, 0
  br i1 %tobool13.not, label %lor.lhs.false.if.end17_crit_edge, label %lor.lhs.false.if.then14_crit_edge

lor.lhs.false.if.then14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

lor.lhs.false.if.end17_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then14:                                        ; preds = %lor.lhs.false.if.then14_crit_edge, %if.end10.if.then14_crit_edge
  %charger_wq15 = getelementptr inbounds %struct.ab8500_charger, ptr %1, i32 0, i32 28
  %20 = ptrtoint ptr %charger_wq15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %charger_wq15, align 4
  %check_hw_failure_work = getelementptr inbounds %struct.ab8500_charger, ptr %1, i32 0, i32 31
  %call.i36 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %21, ptr noundef %check_hw_failure_work, i32 noundef 0) #8
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %lor.lhs.false.if.end17_crit_edge
  %vbus_drop_end = getelementptr inbounds %struct.ab8500_charger, ptr %1, i32 0, i32 20, i32 7
  %22 = ptrtoint ptr %vbus_drop_end to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %vbus_drop_end, align 1, !range !772
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool19.not = icmp eq i8 %23, 0
  br i1 %tobool19.not, label %if.end17.if.end23_crit_edge, label %if.then20

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %charger_wq21 = getelementptr inbounds %struct.ab8500_charger, ptr %1, i32 0, i32 28
  %24 = ptrtoint ptr %charger_wq21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %charger_wq21, align 4
  %vbus_drop_end_work = getelementptr inbounds %struct.ab8500_charger, ptr %1, i32 0, i32 38
  %call.i37 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %vbus_drop_end_work, i32 noundef 0) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end17.if.end23_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_register_drivers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 367)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 367)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !42, !43, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !109, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !210, !212, !213, !214, !216, !217, !218, !220, !221, !222, !224, !225, !226, !228, !229, !230, !232, !233, !234, !236, !237, !238, !240, !241, !242, !244, !245, !246, !248, !250, !252, !254, !256, !257, !258, !259, !261, !262, !264, !265, !266, !267, !269, !270, !271, !273, !274, !275, !277, !278, !279, !281, !282, !283, !285, !286, !288, !289, !290, !292, !293, !295, !296, !298, !299, !301, !302, !303, !305, !306, !308, !309, !310, !311, !313, !314, !315, !317, !318, !319, !321, !322, !324, !325, !327, !328, !330, !331, !333, !334, !336, !337, !339, !340, !342, !344, !345, !346, !347, !349, !350, !351, !353, !354, !355, !357, !358, !359, !360, !362, !363, !365, !366, !367, !368, !370, !371, !372, !374, !375, !376, !378, !379, !380, !381, !383, !384, !385, !387, !388, !390, !392, !394, !395, !396, !397, !399, !400, !402, !403, !405, !406, !408, !409, !411, !412, !414, !415, !417, !418, !420, !421, !422, !424, !425, !427, !428, !430, !431, !433, !434, !436, !437, !439, !440, !441, !443, !445, !446, !447, !448, !450, !451, !452, !454, !455, !457, !458, !460, !461, !463, !464, !465, !467, !468, !469, !470, !472, !473, !475, !476, !477, !479, !480, !481, !483, !484, !485, !487, !488, !489, !491, !492, !493, !495, !496, !497, !499, !500, !501, !503, !504, !506, !507, !508, !510, !511, !513, !514, !516, !517, !518, !520, !521, !523, !524, !526, !527, !529, !530, !532, !533, !535, !536, !538, !539, !541, !542, !543, !545, !546, !548, !549, !550, !552, !553, !555, !556, !558, !559, !561, !562, !563, !565, !566, !567, !569, !571, !573, !575, !576, !577, !579, !580, !581, !583, !585, !586, !587, !589, !591, !592, !593, !595, !596, !598, !599, !601, !602, !604, !605, !606, !608, !609, !610, !612, !613, !614, !615, !617, !618, !619, !621, !622, !623, !625, !626, !627, !629, !630, !631, !633, !634, !635, !637, !638, !639, !641, !642, !643, !645, !646, !648, !649, !650, !652, !653, !654, !656, !658, !660, !662, !663, !664, !665, !667, !668, !669, !671, !672, !673, !675, !677, !679, !681, !682, !683, !685, !686, !687, !689, !690, !691, !693, !694, !695, !697, !698, !700, !701, !703, !704, !705, !707, !708, !709, !711, !712, !713, !715, !716, !718, !719, !721, !723, !724, !725, !726, !728, !729, !730, !732, !733, !734, !736, !737, !739, !741, !743, !744, !745, !746, !748, !749, !750, !752, !753, !754, !756, !758, !760, !761}
!llvm.module.flags = !{!762, !763, !764, !765, !766, !767, !768, !769}
!llvm.ident = !{!770}

!0 = !{ptr @__initcall__kmod_ab8500_charger__356_3773_ab8500_charger_init6, !1, !"__initcall__kmod_ab8500_charger__356_3773_ab8500_charger_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3773, i32 1}
!2 = !{ptr @__exitcall_ab8500_charger_exit, !3, !"__exitcall_ab8500_charger_exit", i1 false, i1 false}
!3 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3774, i32 1}
!4 = !{ptr @__UNIQUE_ID_file357, !5, !"__UNIQUE_ID_file357", i1 false, i1 false}
!5 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3776, i32 1}
!6 = !{ptr @__UNIQUE_ID_license358, !5, !"__UNIQUE_ID_license358", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author359, !8, !"__UNIQUE_ID_author359", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3777, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias360, !10, !"__UNIQUE_ID_alias360", i1 false, i1 false}
!10 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3778, i32 1}
!11 = !{ptr @__UNIQUE_ID_description361, !12, !"__UNIQUE_ID_description361", i1 false, i1 false}
!12 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3779, i32 1}
!13 = !{ptr @ab8500_charger_component_drivers, !14, !"ab8500_charger_component_drivers", i1 false, i1 false}
!14 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3411, i32 38}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3748, i32 11}
!17 = !{ptr @ab8500_charger_driver, !18, !"ab8500_charger_driver", i1 false, i1 false}
!18 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3744, i32 31}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3439, i32 48}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3446, i32 53}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3449, i32 9}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3452, i32 53}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3455, i32 9}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3458, i32 45}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3461, i32 9}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3464, i32 52}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3467, i32 9}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3476, i32 37}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3479, i32 3}
!41 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ab8500_charger_probe._entry, !40, !"_entry", i1 false, i1 false}
!46 = !{ptr @ab8500_charger_probe._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3495, i32 4}
!49 = !{ptr @ab8500_charger_probe._entry.16, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @ab8500_charger_probe._entry_ptr.18, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3499, i32 3}
!53 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @ab8500_charger_probe.__UNIQUE_ID_ddebug355, !52, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!55 = !{ptr @ab8500_charger_probe.__key, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3504, i32 2}
!57 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @ab8500_charger_probe.__key.22, !59, !"__key", i1 false, i1 false}
!59 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3505, i32 2}
!60 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @ab8500_charger_probe.__key.24, !62, !"__key", i1 false, i1 false}
!62 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3555, i32 2}
!63 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @ab8500_charger_probe.__key.26, !65, !"__key", i1 false, i1 false}
!65 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3558, i32 2}
!66 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @ab8500_charger_probe.__key.28, !65, !"__key", i1 false, i1 false}
!68 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @ab8500_charger_probe.__key.30, !70, !"__key", i1 false, i1 false}
!70 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3560, i32 2}
!71 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @ab8500_charger_probe.__key.32, !70, !"__key", i1 false, i1 false}
!73 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @ab8500_charger_probe.__key.34, !75, !"__key", i1 false, i1 false}
!75 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3563, i32 2}
!76 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @ab8500_charger_probe.__key.36, !75, !"__key", i1 false, i1 false}
!78 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @ab8500_charger_probe.__key.38, !80, !"__key", i1 false, i1 false}
!80 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3565, i32 2}
!81 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @ab8500_charger_probe.__key.40, !80, !"__key", i1 false, i1 false}
!83 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @ab8500_charger_probe.__key.42, !85, !"__key", i1 false, i1 false}
!85 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3577, i32 2}
!86 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @ab8500_charger_probe.__key.44, !85, !"__key", i1 false, i1 false}
!88 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @ab8500_charger_probe.__key.46, !90, !"__key", i1 false, i1 false}
!90 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3580, i32 2}
!91 = !{ptr @.str.47, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @ab8500_charger_probe.__key.48, !90, !"__key", i1 false, i1 false}
!93 = !{ptr @.str.49, !90, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @ab8500_charger_probe.__key.50, !95, !"__key", i1 false, i1 false}
!95 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3583, i32 2}
!96 = !{ptr @.str.51, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @ab8500_charger_probe.__key.52, !95, !"__key", i1 false, i1 false}
!98 = !{ptr @.str.53, !95, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @ab8500_charger_probe.__key.54, !100, !"__key", i1 false, i1 false}
!100 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3586, i32 2}
!101 = !{ptr @.str.55, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @ab8500_charger_probe.__key.56, !100, !"__key", i1 false, i1 false}
!103 = !{ptr @.str.57, !100, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @ab8500_charger_probe.__key.58, !105, !"__key", i1 false, i1 false}
!105 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3589, i32 2}
!106 = !{ptr @.str.59, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @ab8500_charger_probe.__key.60, !105, !"__key", i1 false, i1 false}
!108 = !{ptr @.str.61, !105, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @ab8500_charger_probe.__key.62, !110, !"__key", i1 false, i1 false}
!110 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3593, i32 2}
!111 = !{ptr @.str.63, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @ab8500_charger_probe.__key.64, !113, !"__key", i1 false, i1 false}
!113 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3595, i32 2}
!114 = !{ptr @.str.65, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @ab8500_charger_probe.__key.66, !116, !"__key", i1 false, i1 false}
!116 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3596, i32 2}
!117 = !{ptr @.str.67, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @ab8500_charger_probe.__key.68, !119, !"__key", i1 false, i1 false}
!119 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3600, i32 2}
!120 = !{ptr @.str.69, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @ab8500_charger_probe.__key.70, !122, !"__key", i1 false, i1 false}
!122 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3602, i32 2}
!123 = !{ptr @.str.71, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.73, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3609, i32 3}
!126 = !{ptr @ab8500_charger_probe._entry.72, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @ab8500_charger_probe._entry_ptr.74, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.76, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3619, i32 4}
!130 = !{ptr @ab8500_charger_probe._entry.75, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @ab8500_charger_probe._entry_ptr.77, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.79, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3629, i32 3}
!134 = !{ptr @ab8500_charger_probe._entry.78, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @ab8500_charger_probe._entry_ptr.80, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.81, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3640, i32 10}
!138 = !{ptr @.str.82, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3648, i32 49}
!140 = !{ptr @.str.84, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3667, i32 3}
!142 = !{ptr @ab8500_charger_probe._entry.83, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @ab8500_charger_probe._entry_ptr.85, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.87, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3672, i32 3}
!146 = !{ptr @ab8500_charger_probe._entry.86, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @ab8500_charger_probe._entry_ptr.88, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.90, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3685, i32 3}
!150 = !{ptr @ab8500_charger_probe._entry.89, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @ab8500_charger_probe._entry_ptr.91, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.93, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3692, i32 3}
!154 = !{ptr @ab8500_charger_probe._entry.92, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @ab8500_charger_probe._entry_ptr.94, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.96, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3701, i32 3}
!158 = !{ptr @ab8500_charger_probe._entry.95, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @ab8500_charger_probe._entry_ptr.97, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.98, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3184, i32 3}
!162 = !{ptr @.str.99, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3185, i32 3}
!164 = !{ptr @.str.100, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3186, i32 3}
!166 = !{ptr @.str.101, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3187, i32 3}
!168 = !{ptr @.str.102, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3188, i32 3}
!170 = !{ptr @.str.103, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3189, i32 3}
!172 = !{ptr @.str.104, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3190, i32 3}
!174 = !{ptr @.str.105, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3191, i32 3}
!176 = !{ptr @.str.106, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3192, i32 3}
!178 = !{ptr @.str.107, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3193, i32 3}
!180 = !{ptr @.str.108, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3194, i32 3}
!182 = !{ptr @.str.109, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3195, i32 3}
!184 = !{ptr @.str.110, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3196, i32 3}
!186 = !{ptr @.str.111, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3197, i32 3}
!188 = !{ptr @ab8500_charger_irq, !189, !"ab8500_charger_irq", i1 false, i1 false}
!189 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3183, i32 41}
!190 = !{ptr @.str.112, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/power/supply/ab8500_charger.c", i32 2580, i32 2}
!192 = !{ptr @.str.113, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @ab8500_charger_mainchunplugdet_handler.__UNIQUE_ID_ddebug337, !191, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!194 = !{ptr @.str.114, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/power/supply/ab8500_charger.c", i32 2601, i32 2}
!196 = !{ptr @.str.115, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @ab8500_charger_mainchplugdet_handler.__UNIQUE_ID_ddebug338, !195, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!198 = !{ptr @.str.116, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/power/supply/ab8500_charger.c", i32 2625, i32 2}
!200 = !{ptr @.str.117, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @ab8500_charger_mainextchnotok_handler.__UNIQUE_ID_ddebug339, !199, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!202 = !{ptr @.str.118, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/power/supply/ab8500_charger.c", i32 2647, i32 2}
!204 = !{ptr @.str.119, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @ab8500_charger_mainchthprotr_handler.__UNIQUE_ID_ddebug340, !203, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!206 = !{ptr @.str.120, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/power/supply/ab8500_charger.c", i32 2666, i32 2}
!208 = !{ptr @.str.121, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @ab8500_charger_mainchthprotf_handler.__UNIQUE_ID_ddebug341, !207, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!210 = !{ptr @.str.122, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/power/supply/ab8500_charger.c", i32 2731, i32 2}
!212 = !{ptr @.str.123, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @ab8500_charger_vbusdetf_handler.__UNIQUE_ID_ddebug344, !211, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!214 = !{ptr @.str.124, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/power/supply/ab8500_charger.c", i32 2749, i32 2}
!216 = !{ptr @.str.125, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @ab8500_charger_vbusdetr_handler.__UNIQUE_ID_ddebug345, !215, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!218 = !{ptr @.str.126, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/power/supply/ab8500_charger.c", i32 2767, i32 2}
!220 = !{ptr @.str.127, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @ab8500_charger_usblinkstatus_handler.__UNIQUE_ID_ddebug346, !219, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!222 = !{ptr @.str.128, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/power/supply/ab8500_charger.c", i32 2786, i32 2}
!224 = !{ptr @.str.129, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @ab8500_charger_usbchthprotr_handler.__UNIQUE_ID_ddebug347, !223, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!226 = !{ptr @.str.130, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/power/supply/ab8500_charger.c", i32 2805, i32 2}
!228 = !{ptr @.str.131, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @ab8500_charger_usbchthprotf_handler.__UNIQUE_ID_ddebug348, !227, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!230 = !{ptr @.str.132, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/power/supply/ab8500_charger.c", i32 2823, i32 2}
!232 = !{ptr @.str.133, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @ab8500_charger_usbchargernotokr_handler.__UNIQUE_ID_ddebug349, !231, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!234 = !{ptr @.str.134, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/power/supply/ab8500_charger.c", i32 2893, i32 2}
!236 = !{ptr @.str.135, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @ab8500_charger_vbusovv_handler.__UNIQUE_ID_ddebug352, !235, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!238 = !{ptr @.str.136, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/power/supply/ab8500_charger.c", i32 2840, i32 2}
!240 = !{ptr @.str.137, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @ab8500_charger_chwdexp_handler.__UNIQUE_ID_ddebug350, !239, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!242 = !{ptr @.str.138, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/power/supply/ab8500_charger.c", i32 2869, i32 2}
!244 = !{ptr @.str.139, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @ab8500_charger_vbuschdropend_handler.__UNIQUE_ID_ddebug351, !243, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!246 = !{ptr @.str.140, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3317, i32 2}
!248 = !{ptr @.str.141, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3318, i32 2}
!250 = !{ptr @.str.142, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3319, i32 2}
!252 = !{ptr @supply_interface, !253, !"supply_interface", i1 false, i1 false}
!253 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3316, i32 14}
!254 = !{ptr @.str.143, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1407, i32 4}
!256 = !{ptr @.str.144, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @ab8500_charger_ac_en._entry, !255, !"_entry", i1 false, i1 false}
!258 = !{ptr @ab8500_charger_ac_en._entry_ptr, !255, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.145, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1412, i32 3}
!261 = !{ptr @ab8500_charger_ac_en.__UNIQUE_ID_ddebug316, !260, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!262 = !{ptr @.str.147, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1427, i32 5}
!264 = !{ptr @.str.148, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @ab8500_charger_ac_en._entry.146, !263, !"_entry", i1 false, i1 false}
!266 = !{ptr @ab8500_charger_ac_en._entry_ptr.149, !263, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.151, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1439, i32 4}
!269 = !{ptr @ab8500_charger_ac_en._entry.150, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @ab8500_charger_ac_en._entry_ptr.152, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.154, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1449, i32 4}
!273 = !{ptr @ab8500_charger_ac_en._entry.153, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @ab8500_charger_ac_en._entry_ptr.155, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.157, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1456, i32 4}
!277 = !{ptr @ab8500_charger_ac_en._entry.156, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @ab8500_charger_ac_en._entry_ptr.158, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.160, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1463, i32 4}
!281 = !{ptr @ab8500_charger_ac_en._entry.159, !280, !"_entry", i1 false, i1 false}
!282 = !{ptr @ab8500_charger_ac_en._entry_ptr.161, !280, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @ab8500_charger_ac_en._entry.162, !284, !"_entry", i1 false, i1 false}
!284 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1477, i32 4}
!285 = !{ptr @ab8500_charger_ac_en._entry_ptr.163, !284, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.165, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1484, i32 4}
!288 = !{ptr @ab8500_charger_ac_en._entry.164, !287, !"_entry", i1 false, i1 false}
!289 = !{ptr @ab8500_charger_ac_en._entry_ptr.166, !287, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @ab8500_charger_ac_en._entry.167, !291, !"_entry", i1 false, i1 false}
!291 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1517, i32 5}
!292 = !{ptr @ab8500_charger_ac_en._entry_ptr.168, !291, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @ab8500_charger_ac_en._entry.169, !294, !"_entry", i1 false, i1 false}
!294 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1524, i32 5}
!295 = !{ptr @ab8500_charger_ac_en._entry_ptr.170, !294, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @ab8500_charger_ac_en._entry.171, !297, !"_entry", i1 false, i1 false}
!297 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1534, i32 5}
!298 = !{ptr @ab8500_charger_ac_en._entry_ptr.172, !297, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.174, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1542, i32 4}
!301 = !{ptr @ab8500_charger_ac_en._entry.173, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @ab8500_charger_ac_en._entry_ptr.175, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.176, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1553, i32 3}
!305 = !{ptr @ab8500_charger_ac_en.__UNIQUE_ID_ddebug317, !304, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!306 = !{ptr @.str.177, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1166, i32 3}
!308 = !{ptr @.str.178, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @ab8500_charger_set_current._entry, !307, !"_entry", i1 false, i1 false}
!310 = !{ptr @ab8500_charger_set_current._entry_ptr, !307, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.180, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1201, i32 3}
!313 = !{ptr @ab8500_charger_set_current._entry.179, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @ab8500_charger_set_current._entry_ptr.181, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.183, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1207, i32 3}
!317 = !{ptr @ab8500_charger_set_current._entry.182, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @ab8500_charger_set_current._entry_ptr.184, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.185, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1214, i32 3}
!321 = !{ptr @ab8500_charger_set_current.__UNIQUE_ID_ddebug306, !320, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!322 = !{ptr @.str.186, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1220, i32 2}
!324 = !{ptr @ab8500_charger_set_current.__UNIQUE_ID_ddebug307, !323, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!325 = !{ptr @ab8500_charger_set_current._entry.187, !326, !"_entry", i1 false, i1 false}
!326 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1227, i32 4}
!327 = !{ptr @ab8500_charger_set_current._entry_ptr.188, !326, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.189, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1230, i32 4}
!330 = !{ptr @ab8500_charger_set_current.__UNIQUE_ID_ddebug308, !329, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!331 = !{ptr @ab8500_charger_set_current._entry.190, !332, !"_entry", i1 false, i1 false}
!332 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1235, i32 5}
!333 = !{ptr @ab8500_charger_set_current._entry_ptr.191, !332, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @.str.192, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1244, i32 4}
!336 = !{ptr @ab8500_charger_set_current.__UNIQUE_ID_ddebug309, !335, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!337 = !{ptr @ab8500_charger_set_current._entry.193, !338, !"_entry", i1 false, i1 false}
!338 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1249, i32 5}
!339 = !{ptr @ab8500_charger_set_current._entry_ptr.194, !338, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @ab8500_charge_input_curr_map, !341, !"ab8500_charge_input_curr_map", i1 false, i1 false}
!341 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1033, i32 12}
!342 = !{ptr @.str.195, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1358, i32 4}
!344 = !{ptr @.str.196, !343, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @ab8500_charger_led_en._entry, !343, !"_entry", i1 false, i1 false}
!346 = !{ptr @ab8500_charger_led_en._entry_ptr, !343, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @.str.198, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1366, i32 4}
!349 = !{ptr @ab8500_charger_led_en._entry.197, !348, !"_entry", i1 false, i1 false}
!350 = !{ptr @ab8500_charger_led_en._entry_ptr.199, !348, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @.str.201, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1375, i32 4}
!353 = !{ptr @ab8500_charger_led_en._entry.200, !352, !"_entry", i1 false, i1 false}
!354 = !{ptr @ab8500_charger_led_en._entry_ptr.202, !352, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.203, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1814, i32 3}
!357 = !{ptr @.str.204, !356, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @ab8500_charger_ac_check_enable._entry, !356, !"_entry", i1 false, i1 false}
!359 = !{ptr @ab8500_charger_ac_check_enable._entry_ptr, !356, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @.str.205, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1817, i32 2}
!362 = !{ptr @ab8500_charger_ac_check_enable.__UNIQUE_ID_ddebug323, !361, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!363 = !{ptr @.str.207, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1820, i32 3}
!365 = !{ptr @.str.208, !364, !"<string literal>", i1 false, i1 false}
!366 = !{ptr @ab8500_charger_ac_check_enable._entry.206, !364, !"_entry", i1 false, i1 false}
!367 = !{ptr @ab8500_charger_ac_check_enable._entry_ptr.209, !364, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @.str.211, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1827, i32 4}
!370 = !{ptr @ab8500_charger_ac_check_enable._entry.210, !369, !"_entry", i1 false, i1 false}
!371 = !{ptr @ab8500_charger_ac_check_enable._entry_ptr.212, !369, !"_entry_ptr", i1 false, i1 false}
!372 = !{ptr @.str.214, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1833, i32 4}
!374 = !{ptr @ab8500_charger_ac_check_enable._entry.213, !373, !"_entry", i1 false, i1 false}
!375 = !{ptr @ab8500_charger_ac_check_enable._entry_ptr.215, !373, !"_entry_ptr", i1 false, i1 false}
!376 = !{ptr @.str.216, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1863, i32 3}
!378 = !{ptr @.str.217, !377, !"<string literal>", i1 false, i1 false}
!379 = !{ptr @ab8500_charger_watchdog_kick._entry, !377, !"_entry", i1 false, i1 false}
!380 = !{ptr @ab8500_charger_watchdog_kick._entry_ptr, !377, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @.str.218, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1891, i32 3}
!383 = !{ptr @ab8500_charger_update_charger_current._entry, !382, !"_entry", i1 false, i1 false}
!384 = !{ptr @ab8500_charger_update_charger_current._entry_ptr, !382, !"_entry_ptr", i1 false, i1 false}
!385 = !{ptr @ab8500_charger_update_charger_current._entry.219, !386, !"_entry", i1 false, i1 false}
!386 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1901, i32 3}
!387 = !{ptr @ab8500_charger_update_charger_current._entry_ptr.220, !386, !"_entry_ptr", i1 false, i1 false}
!388 = !{ptr @ab8500_charger_voltage_map, !389, !"ab8500_charger_voltage_map", i1 false, i1 false}
!389 = !{!"../drivers/power/supply/ab8500_charger.c", i32 930, i32 12}
!390 = distinct !{null, !391, !"ab8500_charge_output_curr_map", i1 false, i1 false}
!391 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1039, i32 12}
!392 = !{ptr @.str.221, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1583, i32 4}
!394 = !{ptr @.str.222, !393, !"<string literal>", i1 false, i1 false}
!395 = !{ptr @ab8500_charger_usb_en._entry, !393, !"_entry", i1 false, i1 false}
!396 = !{ptr @ab8500_charger_usb_en._entry_ptr, !393, !"_entry_ptr", i1 false, i1 false}
!397 = !{ptr @ab8500_charger_usb_en._entry.223, !398, !"_entry", i1 false, i1 false}
!398 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1600, i32 5}
!399 = !{ptr @ab8500_charger_usb_en._entry_ptr.224, !398, !"_entry_ptr", i1 false, i1 false}
!400 = !{ptr @.str.225, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1607, i32 3}
!402 = !{ptr @ab8500_charger_usb_en.__UNIQUE_ID_ddebug318, !401, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!403 = !{ptr @ab8500_charger_usb_en._entry.226, !404, !"_entry", i1 false, i1 false}
!404 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1613, i32 4}
!405 = !{ptr @ab8500_charger_usb_en._entry_ptr.227, !404, !"_entry_ptr", i1 false, i1 false}
!406 = !{ptr @ab8500_charger_usb_en._entry.228, !407, !"_entry", i1 false, i1 false}
!407 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1626, i32 4}
!408 = !{ptr @ab8500_charger_usb_en._entry_ptr.229, !407, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @.str.230, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1634, i32 3}
!411 = !{ptr @ab8500_charger_usb_en.__UNIQUE_ID_ddebug319, !410, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!412 = !{ptr @ab8500_charger_usb_en._entry.231, !413, !"_entry", i1 false, i1 false}
!413 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1639, i32 4}
!414 = !{ptr @ab8500_charger_usb_en._entry_ptr.232, !413, !"_entry_ptr", i1 false, i1 false}
!415 = !{ptr @ab8500_charger_usb_en._entry.233, !416, !"_entry", i1 false, i1 false}
!416 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1646, i32 4}
!417 = !{ptr @ab8500_charger_usb_en._entry_ptr.234, !416, !"_entry_ptr", i1 false, i1 false}
!418 = !{ptr @.str.236, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1654, i32 4}
!420 = !{ptr @ab8500_charger_usb_en._entry.235, !419, !"_entry", i1 false, i1 false}
!421 = !{ptr @ab8500_charger_usb_en._entry_ptr.237, !419, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @ab8500_charger_usb_en._entry.238, !423, !"_entry", i1 false, i1 false}
!423 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1661, i32 4}
!424 = !{ptr @ab8500_charger_usb_en._entry_ptr.239, !423, !"_entry_ptr", i1 false, i1 false}
!425 = !{ptr @.str.240, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1671, i32 3}
!427 = !{ptr @ab8500_charger_usb_en.__UNIQUE_ID_ddebug320, !426, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!428 = !{ptr @ab8500_charger_usb_en._entry.241, !429, !"_entry", i1 false, i1 false}
!429 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1676, i32 4}
!430 = !{ptr @ab8500_charger_usb_en._entry_ptr.242, !429, !"_entry_ptr", i1 false, i1 false}
!431 = !{ptr @ab8500_charger_usb_en._entry.243, !432, !"_entry", i1 false, i1 false}
!432 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1683, i32 4}
!433 = !{ptr @ab8500_charger_usb_en._entry_ptr.244, !432, !"_entry_ptr", i1 false, i1 false}
!434 = !{ptr @ab8500_charger_usb_en._entry.245, !435, !"_entry", i1 false, i1 false}
!435 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1687, i32 4}
!436 = !{ptr @ab8500_charger_usb_en._entry_ptr.246, !435, !"_entry_ptr", i1 false, i1 false}
!437 = !{ptr @.str.248, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1694, i32 4}
!439 = !{ptr @ab8500_charger_usb_en._entry.247, !438, !"_entry", i1 false, i1 false}
!440 = !{ptr @ab8500_charger_usb_en._entry_ptr.249, !438, !"_entry_ptr", i1 false, i1 false}
!441 = !{ptr @ab8500_charger_usb_en.__UNIQUE_ID_ddebug321, !442, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!442 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1708, i32 3}
!443 = !{ptr @.str.250, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1300, i32 2}
!445 = !{ptr @.str.251, !444, !"<string literal>", i1 false, i1 false}
!446 = !{ptr @ab8500_charger_set_vbus_in_curr._entry, !444, !"_entry", i1 false, i1 false}
!447 = !{ptr @ab8500_charger_set_vbus_in_curr._entry_ptr, !444, !"_entry_ptr", i1 false, i1 false}
!448 = !{ptr @.str.252, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1765, i32 3}
!450 = !{ptr @ab8500_charger_usb_check_enable._entry, !449, !"_entry", i1 false, i1 false}
!451 = !{ptr @ab8500_charger_usb_check_enable._entry_ptr, !449, !"_entry_ptr", i1 false, i1 false}
!452 = !{ptr @.str.253, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1768, i32 2}
!454 = !{ptr @ab8500_charger_usb_check_enable.__UNIQUE_ID_ddebug322, !453, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!455 = !{ptr @ab8500_charger_usb_check_enable._entry.254, !456, !"_entry", i1 false, i1 false}
!456 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1771, i32 3}
!457 = !{ptr @ab8500_charger_usb_check_enable._entry_ptr.255, !456, !"_entry_ptr", i1 false, i1 false}
!458 = !{ptr @ab8500_charger_usb_check_enable._entry.256, !459, !"_entry", i1 false, i1 false}
!459 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1777, i32 4}
!460 = !{ptr @ab8500_charger_usb_check_enable._entry_ptr.257, !459, !"_entry_ptr", i1 false, i1 false}
!461 = !{ptr @.str.259, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1783, i32 4}
!463 = !{ptr @ab8500_charger_usb_check_enable._entry.258, !462, !"_entry", i1 false, i1 false}
!464 = !{ptr @ab8500_charger_usb_check_enable._entry_ptr.260, !462, !"_entry_ptr", i1 false, i1 false}
!465 = !{ptr @.str.261, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/power/supply/ab8500_charger.c", i32 2020, i32 4}
!467 = !{ptr @.str.262, !466, !"<string literal>", i1 false, i1 false}
!468 = !{ptr @ab8500_charger_check_hw_failure_work._entry, !466, !"_entry", i1 false, i1 false}
!469 = !{ptr @ab8500_charger_check_hw_failure_work._entry_ptr, !466, !"_entry_ptr", i1 false, i1 false}
!470 = !{ptr @ab8500_charger_check_hw_failure_work._entry.263, !471, !"_entry", i1 false, i1 false}
!471 = !{!"../drivers/power/supply/ab8500_charger.c", i32 2033, i32 4}
!472 = !{ptr @ab8500_charger_check_hw_failure_work._entry_ptr.264, !471, !"_entry_ptr", i1 false, i1 false}
!473 = !{ptr @.str.265, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/power/supply/ab8500_charger.c", i32 2490, i32 3}
!475 = !{ptr @ab8500_charger_check_usbchargernotok_work._entry, !474, !"_entry", i1 false, i1 false}
!476 = !{ptr @ab8500_charger_check_usbchargernotok_work._entry_ptr, !474, !"_entry_ptr", i1 false, i1 false}
!477 = !{ptr @.str.266, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/power/supply/ab8500_charger.c", i32 2166, i32 4}
!479 = !{ptr @ab8500_charger_ac_attached_work._entry, !478, !"_entry", i1 false, i1 false}
!480 = !{ptr @ab8500_charger_ac_attached_work._entry_ptr, !478, !"_entry_ptr", i1 false, i1 false}
!481 = !{ptr @.str.267, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/power/supply/ab8500_charger.c", i32 2127, i32 4}
!483 = !{ptr @ab8500_charger_usb_attached_work._entry, !482, !"_entry", i1 false, i1 false}
!484 = !{ptr @ab8500_charger_usb_attached_work._entry_ptr, !482, !"_entry_ptr", i1 false, i1 false}
!485 = !{ptr @.str.268, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/power/supply/ab8500_charger.c", i32 2072, i32 3}
!487 = !{ptr @ab8500_charger_kick_watchdog_work._entry, !486, !"_entry", i1 false, i1 false}
!488 = !{ptr @ab8500_charger_kick_watchdog_work._entry_ptr, !486, !"_entry_ptr", i1 false, i1 false}
!489 = !{ptr @.str.269, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1980, i32 3}
!491 = !{ptr @.str.270, !490, !"<string literal>", i1 false, i1 false}
!492 = !{ptr @ab8500_charger_check_vbat_work.__UNIQUE_ID_ddebug324, !490, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!493 = !{ptr @.str.271, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/power/supply/ab8500_charger.c", i32 446, i32 3}
!495 = !{ptr @.str.272, !494, !"<string literal>", i1 false, i1 false}
!496 = !{ptr @ab8500_charger_set_usb_connected.__UNIQUE_ID_ddebug294, !494, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!497 = !{ptr @.str.273, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/power/supply/ab8500_charger.c", i32 2419, i32 3}
!499 = !{ptr @.str.274, !498, !"<string literal>", i1 false, i1 false}
!500 = !{ptr @ab8500_charger_usb_state_changed_work.__UNIQUE_ID_ddebug335, !498, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!501 = !{ptr @.str.275, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../drivers/power/supply/ab8500_charger.c", i32 2430, i32 2}
!503 = !{ptr @ab8500_charger_usb_state_changed_work.__UNIQUE_ID_ddebug336, !502, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!504 = !{ptr @.str.276, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/power/supply/ab8500_charger.c", i32 2689, i32 3}
!506 = !{ptr @ab8500_charger_vbus_drop_end_work._entry, !505, !"_entry", i1 false, i1 false}
!507 = !{ptr @ab8500_charger_vbus_drop_end_work._entry_ptr, !505, !"_entry_ptr", i1 false, i1 false}
!508 = !{ptr @.str.277, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/power/supply/ab8500_charger.c", i32 2699, i32 3}
!510 = !{ptr @ab8500_charger_vbus_drop_end_work.__UNIQUE_ID_ddebug342, !509, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!511 = !{ptr @.str.278, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/power/supply/ab8500_charger.c", i32 2709, i32 3}
!513 = !{ptr @ab8500_charger_vbus_drop_end_work.__UNIQUE_ID_ddebug343, !512, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!514 = !{ptr @.str.279, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/power/supply/ab8500_charger.c", i32 2313, i32 3}
!516 = !{ptr @.str.280, !515, !"<string literal>", i1 false, i1 false}
!517 = !{ptr @ab8500_charger_usb_link_status_work.__UNIQUE_ID_ddebug327, !515, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!518 = !{ptr @.str.281, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/power/supply/ab8500_charger.c", i32 2315, i32 3}
!520 = !{ptr @ab8500_charger_usb_link_status_work.__UNIQUE_ID_ddebug328, !519, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!521 = !{ptr @.str.282, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/power/supply/ab8500_charger.c", i32 2326, i32 4}
!523 = !{ptr @ab8500_charger_usb_link_status_work.__UNIQUE_ID_ddebug329, !522, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!524 = !{ptr @.str.283, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../drivers/power/supply/ab8500_charger.c", i32 2342, i32 4}
!526 = !{ptr @ab8500_charger_usb_link_status_work.__UNIQUE_ID_ddebug330, !525, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!527 = !{ptr @.str.284, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../drivers/power/supply/ab8500_charger.c", i32 2358, i32 4}
!529 = !{ptr @ab8500_charger_usb_link_status_work.__UNIQUE_ID_ddebug331, !528, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!530 = !{ptr @.str.285, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../drivers/power/supply/ab8500_charger.c", i32 2373, i32 2}
!532 = !{ptr @ab8500_charger_usb_link_status_work.__UNIQUE_ID_ddebug332, !531, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!533 = !{ptr @.str.286, !534, !"<string literal>", i1 false, i1 false}
!534 = !{!"../drivers/power/supply/ab8500_charger.c", i32 2386, i32 3}
!535 = !{ptr @ab8500_charger_usb_link_status_work.__UNIQUE_ID_ddebug333, !534, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!536 = !{ptr @.str.287, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/power/supply/ab8500_charger.c", i32 2397, i32 3}
!538 = !{ptr @ab8500_charger_usb_link_status_work.__UNIQUE_ID_ddebug334, !537, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!539 = !{ptr @.str.288, !540, !"<string literal>", i1 false, i1 false}
!540 = !{!"../drivers/power/supply/ab8500_charger.c", i32 838, i32 3}
!541 = !{ptr @ab8500_charger_read_usb_type._entry, !540, !"_entry", i1 false, i1 false}
!542 = !{ptr @ab8500_charger_read_usb_type._entry_ptr, !540, !"_entry_ptr", i1 false, i1 false}
!543 = !{ptr @ab8500_charger_read_usb_type._entry.289, !544, !"_entry", i1 false, i1 false}
!544 = !{!"../drivers/power/supply/ab8500_charger.c", i32 848, i32 3}
!545 = !{ptr @ab8500_charger_read_usb_type._entry_ptr.290, !544, !"_entry_ptr", i1 false, i1 false}
!546 = !{ptr @.str.291, !547, !"<string literal>", i1 false, i1 false}
!547 = !{!"../drivers/power/supply/ab8500_charger.c", i32 716, i32 3}
!548 = !{ptr @.str.292, !547, !"<string literal>", i1 false, i1 false}
!549 = !{ptr @ab8500_charger_max_usb_curr.__UNIQUE_ID_ddebug296, !547, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!550 = !{ptr @.str.293, !551, !"<string literal>", i1 false, i1 false}
!551 = !{!"../drivers/power/supply/ab8500_charger.c", i32 738, i32 3}
!552 = !{ptr @ab8500_charger_max_usb_curr.__UNIQUE_ID_ddebug297, !551, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!553 = !{ptr @.str.294, !554, !"<string literal>", i1 false, i1 false}
!554 = !{!"../drivers/power/supply/ab8500_charger.c", i32 748, i32 3}
!555 = !{ptr @ab8500_charger_max_usb_curr.__UNIQUE_ID_ddebug298, !554, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!556 = !{ptr @.str.295, !557, !"<string literal>", i1 false, i1 false}
!557 = !{!"../drivers/power/supply/ab8500_charger.c", i32 768, i32 4}
!558 = !{ptr @ab8500_charger_max_usb_curr.__UNIQUE_ID_ddebug299, !557, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!559 = !{ptr @.str.296, !560, !"<string literal>", i1 false, i1 false}
!560 = !{!"../drivers/power/supply/ab8500_charger.c", i32 775, i32 3}
!561 = !{ptr @ab8500_charger_max_usb_curr._entry, !560, !"_entry", i1 false, i1 false}
!562 = !{ptr @ab8500_charger_max_usb_curr._entry_ptr, !560, !"_entry_ptr", i1 false, i1 false}
!563 = !{ptr @.str.298, !564, !"<string literal>", i1 false, i1 false}
!564 = !{!"../drivers/power/supply/ab8500_charger.c", i32 782, i32 4}
!565 = !{ptr @ab8500_charger_max_usb_curr._entry.297, !564, !"_entry", i1 false, i1 false}
!566 = !{ptr @ab8500_charger_max_usb_curr._entry_ptr.299, !564, !"_entry_ptr", i1 false, i1 false}
!567 = !{ptr @ab8500_charger_max_usb_curr.__UNIQUE_ID_ddebug300, !568, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!568 = !{!"../drivers/power/supply/ab8500_charger.c", i32 787, i32 4}
!569 = !{ptr @ab8500_charger_max_usb_curr.__UNIQUE_ID_ddebug301, !570, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!570 = !{!"../drivers/power/supply/ab8500_charger.c", i32 790, i32 4}
!571 = !{ptr @ab8500_charger_max_usb_curr.__UNIQUE_ID_ddebug302, !572, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!572 = !{!"../drivers/power/supply/ab8500_charger.c", i32 801, i32 3}
!573 = !{ptr @.str.301, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../drivers/power/supply/ab8500_charger.c", i32 805, i32 3}
!575 = !{ptr @ab8500_charger_max_usb_curr._entry.300, !574, !"_entry", i1 false, i1 false}
!576 = !{ptr @ab8500_charger_max_usb_curr._entry_ptr.302, !574, !"_entry_ptr", i1 false, i1 false}
!577 = !{ptr @.str.304, !578, !"<string literal>", i1 false, i1 false}
!578 = !{!"../drivers/power/supply/ab8500_charger.c", i32 810, i32 3}
!579 = !{ptr @ab8500_charger_max_usb_curr._entry.303, !578, !"_entry", i1 false, i1 false}
!580 = !{ptr @ab8500_charger_max_usb_curr._entry_ptr.305, !578, !"_entry_ptr", i1 false, i1 false}
!581 = !{ptr @ab8500_charger_max_usb_curr.__UNIQUE_ID_ddebug303, !582, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!582 = !{!"../drivers/power/supply/ab8500_charger.c", i32 817, i32 2}
!583 = !{ptr @.str.306, !584, !"<string literal>", i1 false, i1 false}
!584 = !{!"../drivers/power/supply/ab8500_charger.c", i32 2213, i32 3}
!585 = !{ptr @.str.307, !584, !"<string literal>", i1 false, i1 false}
!586 = !{ptr @ab8500_charger_detect_usb_type_work.__UNIQUE_ID_ddebug325, !584, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!587 = !{ptr @ab8500_charger_detect_usb_type_work.__UNIQUE_ID_ddebug326, !588, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!588 = !{!"../drivers/power/supply/ab8500_charger.c", i32 2218, i32 3}
!589 = !{ptr @.str.308, !590, !"<string literal>", i1 false, i1 false}
!590 = !{!"../drivers/power/supply/ab8500_charger.c", i32 885, i32 3}
!591 = !{ptr @.str.309, !590, !"<string literal>", i1 false, i1 false}
!592 = !{ptr @ab8500_charger_detect_usb_type.__UNIQUE_ID_ddebug304, !590, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!593 = !{ptr @ab8500_charger_detect_usb_type._entry, !594, !"_entry", i1 false, i1 false}
!594 = !{!"../drivers/power/supply/ab8500_charger.c", i32 888, i32 4}
!595 = !{ptr @ab8500_charger_detect_usb_type._entry_ptr, !594, !"_entry_ptr", i1 false, i1 false}
!596 = !{ptr @ab8500_charger_detect_usb_type._entry.310, !597, !"_entry", i1 false, i1 false}
!597 = !{!"../drivers/power/supply/ab8500_charger.c", i32 899, i32 4}
!598 = !{ptr @ab8500_charger_detect_usb_type._entry_ptr.311, !597, !"_entry_ptr", i1 false, i1 false}
!599 = !{ptr @.str.312, !600, !"<string literal>", i1 false, i1 false}
!600 = !{!"../drivers/power/supply/ab8500_charger.c", i32 902, i32 3}
!601 = !{ptr @ab8500_charger_detect_usb_type.__UNIQUE_ID_ddebug305, !600, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!602 = !{ptr @.str.313, !603, !"<string literal>", i1 false, i1 false}
!603 = !{!"../drivers/power/supply/ab8500_charger.c", i32 2528, i32 3}
!604 = !{ptr @ab8500_charger_check_main_thermal_prot_work._entry, !603, !"_entry", i1 false, i1 false}
!605 = !{ptr @ab8500_charger_check_main_thermal_prot_work._entry_ptr, !603, !"_entry_ptr", i1 false, i1 false}
!606 = !{ptr @.str.314, !607, !"<string literal>", i1 false, i1 false}
!607 = !{!"../drivers/power/supply/ab8500_charger.c", i32 2558, i32 3}
!608 = !{ptr @ab8500_charger_check_usb_thermal_prot_work._entry, !607, !"_entry", i1 false, i1 false}
!609 = !{ptr @ab8500_charger_check_usb_thermal_prot_work._entry_ptr, !607, !"_entry_ptr", i1 false, i1 false}
!610 = !{ptr @.str.315, !611, !"<string literal>", i1 false, i1 false}
!611 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3065, i32 4}
!612 = !{ptr @.str.316, !611, !"<string literal>", i1 false, i1 false}
!613 = !{ptr @ab8500_charger_init_hw_registers._entry, !611, !"_entry", i1 false, i1 false}
!614 = !{ptr @ab8500_charger_init_hw_registers._entry_ptr, !611, !"_entry_ptr", i1 false, i1 false}
!615 = !{ptr @.str.318, !616, !"<string literal>", i1 false, i1 false}
!616 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3074, i32 4}
!617 = !{ptr @ab8500_charger_init_hw_registers._entry.317, !616, !"_entry", i1 false, i1 false}
!618 = !{ptr @ab8500_charger_init_hw_registers._entry_ptr.319, !616, !"_entry_ptr", i1 false, i1 false}
!619 = !{ptr @.str.321, !620, !"<string literal>", i1 false, i1 false}
!620 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3095, i32 3}
!621 = !{ptr @ab8500_charger_init_hw_registers._entry.320, !620, !"_entry", i1 false, i1 false}
!622 = !{ptr @ab8500_charger_init_hw_registers._entry_ptr.322, !620, !"_entry_ptr", i1 false, i1 false}
!623 = !{ptr @.str.324, !624, !"<string literal>", i1 false, i1 false}
!624 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3104, i32 3}
!625 = !{ptr @ab8500_charger_init_hw_registers._entry.323, !624, !"_entry", i1 false, i1 false}
!626 = !{ptr @ab8500_charger_init_hw_registers._entry_ptr.325, !624, !"_entry_ptr", i1 false, i1 false}
!627 = !{ptr @.str.327, !628, !"<string literal>", i1 false, i1 false}
!628 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3113, i32 3}
!629 = !{ptr @ab8500_charger_init_hw_registers._entry.326, !628, !"_entry", i1 false, i1 false}
!630 = !{ptr @ab8500_charger_init_hw_registers._entry_ptr.328, !628, !"_entry_ptr", i1 false, i1 false}
!631 = !{ptr @.str.330, !632, !"<string literal>", i1 false, i1 false}
!632 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3131, i32 3}
!633 = !{ptr @ab8500_charger_init_hw_registers._entry.329, !632, !"_entry", i1 false, i1 false}
!634 = !{ptr @ab8500_charger_init_hw_registers._entry_ptr.331, !632, !"_entry_ptr", i1 false, i1 false}
!635 = !{ptr @.str.333, !636, !"<string literal>", i1 false, i1 false}
!636 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3140, i32 3}
!637 = !{ptr @ab8500_charger_init_hw_registers._entry.332, !636, !"_entry", i1 false, i1 false}
!638 = !{ptr @ab8500_charger_init_hw_registers._entry_ptr.334, !636, !"_entry_ptr", i1 false, i1 false}
!639 = !{ptr @.str.336, !640, !"<string literal>", i1 false, i1 false}
!640 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3148, i32 3}
!641 = !{ptr @ab8500_charger_init_hw_registers._entry.335, !640, !"_entry", i1 false, i1 false}
!642 = !{ptr @ab8500_charger_init_hw_registers._entry_ptr.337, !640, !"_entry_ptr", i1 false, i1 false}
!643 = !{ptr @ab8500_charger_init_hw_registers._entry.338, !644, !"_entry", i1 false, i1 false}
!644 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3154, i32 3}
!645 = !{ptr @ab8500_charger_init_hw_registers._entry_ptr.339, !644, !"_entry_ptr", i1 false, i1 false}
!646 = !{ptr @.str.341, !647, !"<string literal>", i1 false, i1 false}
!647 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3163, i32 3}
!648 = !{ptr @ab8500_charger_init_hw_registers._entry.340, !647, !"_entry", i1 false, i1 false}
!649 = !{ptr @ab8500_charger_init_hw_registers._entry_ptr.342, !647, !"_entry_ptr", i1 false, i1 false}
!650 = !{ptr @.str.344, !651, !"<string literal>", i1 false, i1 false}
!651 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3172, i32 3}
!652 = !{ptr @ab8500_charger_init_hw_registers._entry.343, !651, !"_entry", i1 false, i1 false}
!653 = !{ptr @ab8500_charger_init_hw_registers._entry_ptr.345, !651, !"_entry_ptr", i1 false, i1 false}
!654 = !{ptr @.str.346, !655, !"<string literal>", i1 false, i1 false}
!655 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3323, i32 11}
!656 = !{ptr @ab8500_ac_chg_desc, !657, !"ab8500_ac_chg_desc", i1 false, i1 false}
!657 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3322, i32 39}
!658 = !{ptr @ab8500_charger_ac_props, !659, !"ab8500_charger_ac_props", i1 false, i1 false}
!659 = !{!"../drivers/power/supply/ab8500_charger.c", i32 326, i32 35}
!660 = !{ptr @.str.347, !661, !"<string literal>", i1 false, i1 false}
!661 = !{!"../drivers/power/supply/ab8500_charger.c", i32 492, i32 4}
!662 = !{ptr @.str.348, !661, !"<string literal>", i1 false, i1 false}
!663 = !{ptr @ab8500_charger_get_ac_voltage._entry, !661, !"_entry", i1 false, i1 false}
!664 = !{ptr @ab8500_charger_get_ac_voltage._entry_ptr, !661, !"_entry_ptr", i1 false, i1 false}
!665 = !{ptr @.str.349, !666, !"<string literal>", i1 false, i1 false}
!666 = !{!"../drivers/power/supply/ab8500_charger.c", i32 516, i32 4}
!667 = !{ptr @ab8500_charger_ac_cv._entry, !666, !"_entry", i1 false, i1 false}
!668 = !{ptr @ab8500_charger_ac_cv._entry_ptr, !666, !"_entry_ptr", i1 false, i1 false}
!669 = !{ptr @.str.350, !670, !"<string literal>", i1 false, i1 false}
!670 = !{!"../drivers/power/supply/ab8500_charger.c", i32 590, i32 4}
!671 = !{ptr @ab8500_charger_get_ac_current._entry, !670, !"_entry", i1 false, i1 false}
!672 = !{ptr @ab8500_charger_get_ac_current._entry_ptr, !670, !"_entry_ptr", i1 false, i1 false}
!673 = !{ptr @.str.351, !674, !"<string literal>", i1 false, i1 false}
!674 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3331, i32 11}
!675 = !{ptr @ab8500_usb_chg_desc, !676, !"ab8500_usb_chg_desc", i1 false, i1 false}
!676 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3330, i32 39}
!677 = !{ptr @ab8500_charger_usb_props, !678, !"ab8500_charger_usb_props", i1 false, i1 false}
!678 = !{!"../drivers/power/supply/ab8500_charger.c", i32 336, i32 35}
!679 = !{ptr @.str.352, !680, !"<string literal>", i1 false, i1 false}
!680 = !{!"../drivers/power/supply/ab8500_charger.c", i32 544, i32 4}
!681 = !{ptr @ab8500_charger_get_vbus_voltage._entry, !680, !"_entry", i1 false, i1 false}
!682 = !{ptr @ab8500_charger_get_vbus_voltage._entry_ptr, !680, !"_entry_ptr", i1 false, i1 false}
!683 = !{ptr @.str.353, !684, !"<string literal>", i1 false, i1 false}
!684 = !{!"../drivers/power/supply/ab8500_charger.c", i32 614, i32 4}
!685 = !{ptr @ab8500_charger_usb_cv._entry, !684, !"_entry", i1 false, i1 false}
!686 = !{ptr @ab8500_charger_usb_cv._entry_ptr, !684, !"_entry_ptr", i1 false, i1 false}
!687 = !{ptr @.str.354, !688, !"<string literal>", i1 false, i1 false}
!688 = !{!"../drivers/power/supply/ab8500_charger.c", i32 567, i32 4}
!689 = !{ptr @ab8500_charger_get_usb_current._entry, !688, !"_entry", i1 false, i1 false}
!690 = !{ptr @ab8500_charger_get_usb_current._entry_ptr, !688, !"_entry_ptr", i1 false, i1 false}
!691 = !{ptr @.str.355, !692, !"<string literal>", i1 false, i1 false}
!692 = !{!"../drivers/power/supply/ab8500_charger.c", i32 656, i32 3}
!693 = !{ptr @ab8500_charger_detect_chargers._entry, !692, !"_entry", i1 false, i1 false}
!694 = !{ptr @ab8500_charger_detect_chargers._entry_ptr, !692, !"_entry_ptr", i1 false, i1 false}
!695 = !{ptr @ab8500_charger_detect_chargers._entry.356, !696, !"_entry", i1 false, i1 false}
!696 = !{!"../drivers/power/supply/ab8500_charger.c", i32 677, i32 3}
!697 = !{ptr @ab8500_charger_detect_chargers._entry_ptr.357, !696, !"_entry_ptr", i1 false, i1 false}
!698 = !{ptr @.str.358, !699, !"<string literal>", i1 false, i1 false}
!699 = !{!"../drivers/power/supply/ab8500_charger.c", i32 680, i32 2}
!700 = !{ptr @ab8500_charger_detect_chargers.__UNIQUE_ID_ddebug295, !699, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!701 = !{ptr @.str.359, !702, !"<string literal>", i1 false, i1 false}
!702 = !{!"../drivers/power/supply/ab8500_charger.c", i32 359, i32 2}
!703 = !{ptr @.str.360, !702, !"<string literal>", i1 false, i1 false}
!704 = !{ptr @ab8500_enable_disable_sw_fallback.__UNIQUE_ID_ddebug293, !702, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!705 = !{ptr @.str.361, !706, !"<string literal>", i1 false, i1 false}
!706 = !{!"../drivers/power/supply/ab8500_charger.c", i32 374, i32 3}
!707 = !{ptr @ab8500_enable_disable_sw_fallback._entry, !706, !"_entry", i1 false, i1 false}
!708 = !{ptr @ab8500_enable_disable_sw_fallback._entry_ptr, !706, !"_entry_ptr", i1 false, i1 false}
!709 = !{ptr @.str.363, !710, !"<string literal>", i1 false, i1 false}
!710 = !{!"../drivers/power/supply/ab8500_charger.c", i32 382, i32 4}
!711 = !{ptr @ab8500_enable_disable_sw_fallback._entry.362, !710, !"_entry", i1 false, i1 false}
!712 = !{ptr @ab8500_enable_disable_sw_fallback._entry_ptr.364, !710, !"_entry_ptr", i1 false, i1 false}
!713 = !{ptr @ab8500_enable_disable_sw_fallback._entry.365, !714, !"_entry", i1 false, i1 false}
!714 = !{!"../drivers/power/supply/ab8500_charger.c", i32 395, i32 3}
!715 = !{ptr @ab8500_enable_disable_sw_fallback._entry_ptr.366, !714, !"_entry_ptr", i1 false, i1 false}
!716 = !{ptr @ab8500_enable_disable_sw_fallback._entry.367, !717, !"_entry", i1 false, i1 false}
!717 = !{!"../drivers/power/supply/ab8500_charger.c", i32 403, i32 4}
!718 = !{ptr @ab8500_enable_disable_sw_fallback._entry_ptr.368, !717, !"_entry_ptr", i1 false, i1 false}
!719 = !{ptr @charger_nb, !720, !"charger_nb", i1 false, i1 false}
!720 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3312, i32 30}
!721 = !{ptr @.str.369, !722, !"<string literal>", i1 false, i1 false}
!722 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1729, i32 3}
!723 = !{ptr @.str.370, !722, !"<string literal>", i1 false, i1 false}
!724 = !{ptr @ab8500_external_charger_prepare._entry, !722, !"_entry", i1 false, i1 false}
!725 = !{ptr @ab8500_external_charger_prepare._entry_ptr, !722, !"_entry_ptr", i1 false, i1 false}
!726 = !{ptr @.str.372, !727, !"<string literal>", i1 false, i1 false}
!727 = !{!"../drivers/power/supply/ab8500_charger.c", i32 1736, i32 3}
!728 = !{ptr @ab8500_external_charger_prepare._entry.371, !727, !"_entry", i1 false, i1 false}
!729 = !{ptr @ab8500_external_charger_prepare._entry_ptr.373, !727, !"_entry_ptr", i1 false, i1 false}
!730 = !{ptr @.str.374, !731, !"<string literal>", i1 false, i1 false}
!731 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3214, i32 3}
!732 = !{ptr @.str.375, !731, !"<string literal>", i1 false, i1 false}
!733 = !{ptr @ab8500_charger_usb_notifier_call.__UNIQUE_ID_ddebug353, !731, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!734 = !{ptr @.str.376, !735, !"<string literal>", i1 false, i1 false}
!735 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3232, i32 2}
!736 = !{ptr @ab8500_charger_usb_notifier_call.__UNIQUE_ID_ddebug354, !735, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!737 = !{ptr @ab8500_charger_comp_ops, !738, !"ab8500_charger_comp_ops", i1 false, i1 false}
!738 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3406, i32 42}
!739 = !{ptr @.str.377, !740, !"<string literal>", i1 false, i1 false}
!740 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3345, i32 19}
!741 = !{ptr @.str.378, !742, !"<string literal>", i1 false, i1 false}
!742 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3348, i32 3}
!743 = !{ptr @.str.379, !742, !"<string literal>", i1 false, i1 false}
!744 = !{ptr @ab8500_charger_bind._entry, !742, !"_entry", i1 false, i1 false}
!745 = !{ptr @ab8500_charger_bind._entry_ptr, !742, !"_entry_ptr", i1 false, i1 false}
!746 = !{ptr @.str.381, !747, !"<string literal>", i1 false, i1 false}
!747 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3373, i32 3}
!748 = !{ptr @ab8500_charger_bind._entry.380, !747, !"_entry", i1 false, i1 false}
!749 = !{ptr @ab8500_charger_bind._entry_ptr.382, !747, !"_entry_ptr", i1 false, i1 false}
!750 = !{ptr @.str.383, !751, !"<string literal>", i1 false, i1 false}
!751 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3395, i32 3}
!752 = !{ptr @ab8500_charger_unbind._entry, !751, !"_entry", i1 false, i1 false}
!753 = !{ptr @ab8500_charger_unbind._entry_ptr, !751, !"_entry_ptr", i1 false, i1 false}
!754 = !{ptr @ab8500_charger_match, !755, !"ab8500_charger_match", i1 false, i1 false}
!755 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3738, i32 34}
!756 = !{ptr @ab8500_charger_pm_ops, !757, !"ab8500_charger_pm_ops", i1 false, i1 false}
!757 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3736, i32 8}
!758 = !{ptr @.str.384, !759, !"<string literal>", i1 false, i1 false}
!759 = !{!"../drivers/power/supply/ab8500_charger.c", i32 3268, i32 4}
!760 = !{ptr @ab8500_charger_resume._entry, !759, !"_entry", i1 false, i1 false}
!761 = !{ptr @ab8500_charger_resume._entry_ptr, !759, !"_entry_ptr", i1 false, i1 false}
!762 = !{i32 1, !"wchar_size", i32 2}
!763 = !{i32 1, !"min_enum_size", i32 4}
!764 = !{i32 8, !"branch-target-enforcement", i32 0}
!765 = !{i32 8, !"sign-return-address", i32 0}
!766 = !{i32 8, !"sign-return-address-all", i32 0}
!767 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!768 = !{i32 7, !"uwtable", i32 1}
!769 = !{i32 7, !"frame-pointer", i32 2}
!770 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!771 = !{i64 2149057482, i64 2149057487, i64 2149057500, i64 2149057544, i64 2149057578, i64 2149057599}
!772 = !{i8 0, i8 2}
!773 = !{!"auto-init"}
!774 = !{i64 2148456589, i64 2148456615, i64 2148456644, i64 2148456678, i64 2148456709, i64 2148456732}
!775 = !{i64 2148459054, i64 2148459080, i64 2148459109, i64 2148459143, i64 2148459174, i64 2148459197}
