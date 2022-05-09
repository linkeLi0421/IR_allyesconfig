; ModuleID = '/llk/IR_all_yes/drivers/phy/motorola/phy-mapphone-mdm6600.c_pt.bc'
source_filename = "../drivers/phy/motorola/phy-mapphone-mdm6600.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.phy_mdm6600 = type { ptr, ptr, ptr, [3 x ptr], ptr, ptr, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.completion, i8, i8, i8, i32 }
%struct.gpio_descs = type { ptr, i32, [0 x ptr] }

@__initcall__kmod_phy_mapphone_mdm6600__290_669_phy_mdm6600_driver_init6 = internal global ptr @phy_mdm6600_driver_init, section ".initcall6.init", align 4
@phy_mdm6600_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @phy_mdm6600_probe, ptr @phy_mdm6600_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @phy_mdm6600_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_mdm6600_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_phy_mdm6600_driver_exit = internal global ptr @phy_mdm6600_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias291 = internal constant [45 x i8] c"phy_mapphone_mdm6600.alias=platform:gpio_usb\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [61 x i8] c"phy_mapphone_mdm6600.author=Tony Lindgren <tony@atomide.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [61 x i8] c"phy_mapphone_mdm6600.description=mdm6600 gpio usb phy driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [68 x i8] c"phy_mapphone_mdm6600.file=drivers/phy/motorola/phy-mapphone-mdm6600\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [36 x i8] c"phy_mapphone_mdm6600.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"phy-mapphone-mdm6600\00", [43 x i8] zeroinitializer }, align 32
@phy_mdm6600_id_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"motorola,mapphone-mdm6600\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@phy_mdm6600_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_mdm6600_runtime_suspend, ptr @phy_mdm6600_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@phy_mdm6600_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&ddata->bootup_work)->work)\00", [48 x i8] zeroinitializer }, align 32
@phy_mdm6600_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&ddata->bootup_work)->timer\00", [34 x i8] zeroinitializer }, align 32
@phy_mdm6600_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&ddata->status_work)->work)\00", [48 x i8] zeroinitializer }, align 32
@phy_mdm6600_probe.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&ddata->status_work)->timer\00", [34 x i8] zeroinitializer }, align 32
@phy_mdm6600_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"(work_completion)(&(&ddata->modem_wake_work)->work)\00", [44 x i8] zeroinitializer }, align 32
@phy_mdm6600_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&(&ddata->modem_wake_work)->timer\00", [62 x i8] zeroinitializer }, align 32
@phy_mdm6600_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.14, i32 578, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: error with sleep_state: %i\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"phy_mdm6600_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/phy/motorola/phy-mapphone-mdm6600.c\00", [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@phy_mdm6600_probe._entry_ptr = internal global ptr @phy_mdm6600_probe._entry, section ".printk_index", align 4
@phy_mdm6600_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.14, i32 606, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to wake modem: %i\0A\00", [38 x i8] zeroinitializer }, align 32
@phy_mdm6600_probe._entry_ptr.19 = internal global ptr @phy_mdm6600_probe._entry.17, section ".printk_index", align 4
@gpio_usb_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @phy_mdm6600_init, ptr null, ptr @phy_mdm6600_power_on, ptr @phy_mdm6600_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@phy_mdm6600_deferred_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.14, i32 485, ptr @.str.22, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Device not functional\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"phy_mdm6600_deferred_power_on\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@phy_mdm6600_deferred_power_on._entry_ptr = internal global ptr @phy_mdm6600_deferred_power_on._entry, section ".printk_index", align 4
@phy_mdm6600_device_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.14, i32 416, ptr @.str.25, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Waiting for power up request to complete..\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"phy_mdm6600_device_power_on\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@phy_mdm6600_device_power_on._entry_ptr = internal global ptr @phy_mdm6600_device_power_on._entry, section ".printk_index", align 4
@phy_mdm6600_device_power_on._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.24, ptr @.str.14, i32 421, ptr @.str.25, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Powered up OK\0A\00", [17 x i8] zeroinitializer }, align 32
@phy_mdm6600_device_power_on._entry_ptr.28 = internal global ptr @phy_mdm6600_device_power_on._entry.26, section ".printk_index", align 4
@phy_mdm6600_device_power_on._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.24, ptr @.str.14, i32 425, ptr @.str.22, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Timed out powering up\0A\00", [41 x i8] zeroinitializer }, align 32
@phy_mdm6600_device_power_on._entry_ptr.31 = internal global ptr @phy_mdm6600_device_power_on._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mdm6600-wake\00", [19 x i8] zeroinitializer }, align 32
@phy_mdm6600_device_power_on._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.24, ptr @.str.14, i32 444, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no modem wakeirq irq%i: %i\0A\00", [36 x i8] zeroinitializer }, align 32
@phy_mdm6600_device_power_on._entry_ptr.35 = internal global ptr @phy_mdm6600_device_power_on._entry.33, section ".printk_index", align 4
@phy_mdm6600_wakeirq_thread.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.37, ptr @.str.14, ptr @.str.38, i8 0, i8 63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"phy_mapphone_mdm6600\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"phy_mdm6600_wakeirq_thread\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"OOB wake on mode_gpio1: %i\0A\00", [36 x i8] zeroinitializer }, align 32
@phy_mdm6600_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.14, i32 221, ptr @.str.25, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"modem status: %i %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"phy_mdm6600_status\00", [45 x i8] zeroinitializer }, align 32
@phy_mdm6600_status._entry_ptr = internal global ptr @phy_mdm6600_status._entry, section ".printk_index", align 4
@phy_mdm6600_status_name = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"busy\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"qc_dl\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ram_dl\00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"awake\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"asleep\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"shutdown\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"undefined\00", [22 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@phy_mdm6600_init_lines._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.14, i32 330, ptr @.str.25, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gpio %s error %li\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"phy_mdm6600_init_lines\00", [41 x i8] zeroinitializer }, align 32
@phy_mdm6600_init_lines._entry_ptr = internal global ptr @phy_mdm6600_init_lines._entry, section ".printk_index", align 4
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"motorola,mode\00", [18 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"motorola,status\00", [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"motorola,cmd\00", [19 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mdm6600\00", [24 x i8] zeroinitializer }, align 32
@phy_mdm6600_init_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.14, i32 296, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no modem status irq%i: %i\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"phy_mdm6600_init_irq\00", [43 x i8] zeroinitializer }, align 32
@phy_mdm6600_init_irq._entry_ptr = internal global ptr @phy_mdm6600_init_irq._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@phy_mdm6600_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.14, i32 133, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: error with default_state: %i\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"phy_mdm6600_power_on\00", [43 x i8] zeroinitializer }, align 32
@phy_mdm6600_power_on._entry_ptr = internal global ptr @phy_mdm6600_power_on._entry, section ".printk_index", align 4
@phy_mdm6600_power_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.14, i32 158, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: phy_pm_runtime_get: %i\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"phy_mdm6600_power_off\00", [42 x i8] zeroinitializer }, align 32
@phy_mdm6600_power_off._entry_ptr = internal global ptr @phy_mdm6600_power_off._entry, section ".printk_index", align 4
@phy_mdm6600_power_off._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.64, ptr @.str.14, i32 166, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@phy_mdm6600_power_off._entry_ptr.66 = internal global ptr @phy_mdm6600_power_off._entry.65, section ".printk_index", align 4
@phy_mdm6600_device_power_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.14, i32 466, ptr @.str.25, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Waiting for power down request to complete.. \00", [50 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"phy_mdm6600_device_power_off\00", [35 x i8] zeroinitializer }, align 32
@phy_mdm6600_device_power_off._entry_ptr = internal global ptr @phy_mdm6600_device_power_off._entry, section ".printk_index", align 4
@phy_mdm6600_device_power_off._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.14, i32 470, ptr @.str.25, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Powered down OK\0A\00", [47 x i8] zeroinitializer }, align 32
@phy_mdm6600_device_power_off._entry_ptr.71 = internal global ptr @phy_mdm6600_device_power_off._entry.69, section ".printk_index", align 4
@phy_mdm6600_device_power_off._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.68, ptr @.str.14, i32 472, ptr @.str.22, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Timed out powering down\0A\00", [39 x i8] zeroinitializer }, align 32
@phy_mdm6600_device_power_off._entry_ptr.74 = internal global ptr @phy_mdm6600_device_power_off._entry.72, section ".printk_index", align 4
@___asan_gen_.75 = private unnamed_addr constant [19 x i8] c"phy_mdm6600_driver\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 659, i32 31 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 663, i32 11 }
@___asan_gen_.81 = private unnamed_addr constant [21 x i8] c"phy_mdm6600_id_table\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 550, i32 34 }
@___asan_gen_.84 = private unnamed_addr constant [19 x i8] c"phy_mdm6600_pm_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 545, i32 32 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 565, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 567, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 568, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 577, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 606, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant [13 x i8] c"gpio_usb_ops\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 171, i32 29 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 485, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 416, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 421, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 425, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 440, i32 8 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 443, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 255, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 219, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant [24 x i8] c"phy_mdm6600_status_name\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 85, i32 1 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 86, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 86, i32 9 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 86, i32 17 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 86, i32 26 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 86, i32 36 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 87, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 87, i32 12 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 87, i32 24 }
@___asan_gen_.240 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.244 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 87, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 329, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 336, i32 48 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 345, i32 50 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 354, i32 47 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 307, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 308, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 309, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 292, i32 6 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 295, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 132, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 157, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 165, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 466, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 470, i32 4 }
@___asan_gen_.321 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.324 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.325 = private constant [47 x i8] c"../drivers/phy/motorola/phy-mapphone-mdm6600.c\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 472, i32 3 }
@llvm.compiler.used = appending global [108 x ptr] [ptr @__UNIQUE_ID_alias291, ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_phy_mdm6600_driver_exit, ptr @__initcall__kmod_phy_mapphone_mdm6600__290_669_phy_mdm6600_driver_init6, ptr @phy_mdm6600_deferred_power_on._entry, ptr @phy_mdm6600_deferred_power_on._entry_ptr, ptr @phy_mdm6600_device_power_off._entry, ptr @phy_mdm6600_device_power_off._entry.69, ptr @phy_mdm6600_device_power_off._entry.72, ptr @phy_mdm6600_device_power_off._entry_ptr, ptr @phy_mdm6600_device_power_off._entry_ptr.71, ptr @phy_mdm6600_device_power_off._entry_ptr.74, ptr @phy_mdm6600_device_power_on._entry, ptr @phy_mdm6600_device_power_on._entry.26, ptr @phy_mdm6600_device_power_on._entry.29, ptr @phy_mdm6600_device_power_on._entry.33, ptr @phy_mdm6600_device_power_on._entry_ptr, ptr @phy_mdm6600_device_power_on._entry_ptr.28, ptr @phy_mdm6600_device_power_on._entry_ptr.31, ptr @phy_mdm6600_device_power_on._entry_ptr.35, ptr @phy_mdm6600_driver_exit, ptr @phy_mdm6600_init_irq._entry, ptr @phy_mdm6600_init_irq._entry_ptr, ptr @phy_mdm6600_init_lines._entry, ptr @phy_mdm6600_init_lines._entry_ptr, ptr @phy_mdm6600_power_off._entry, ptr @phy_mdm6600_power_off._entry.65, ptr @phy_mdm6600_power_off._entry_ptr, ptr @phy_mdm6600_power_off._entry_ptr.66, ptr @phy_mdm6600_power_on._entry, ptr @phy_mdm6600_power_on._entry_ptr, ptr @phy_mdm6600_probe._entry, ptr @phy_mdm6600_probe._entry.17, ptr @phy_mdm6600_probe._entry_ptr, ptr @phy_mdm6600_probe._entry_ptr.19, ptr @phy_mdm6600_status._entry, ptr @phy_mdm6600_status._entry_ptr, ptr @phy_mdm6600_driver, ptr @.str, ptr @phy_mdm6600_id_table, ptr @phy_mdm6600_pm_ops, ptr @phy_mdm6600_probe.__key, ptr @.str.1, ptr @phy_mdm6600_probe.__key.2, ptr @.str.3, ptr @phy_mdm6600_probe.__key.4, ptr @.str.5, ptr @phy_mdm6600_probe.__key.6, ptr @.str.7, ptr @phy_mdm6600_probe.__key.8, ptr @.str.9, ptr @phy_mdm6600_probe.__key.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @gpio_usb_ops, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @phy_mdm6600_status_name, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @init_completion.__key, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.73], section "llvm.metadata"
@0 = internal global [84 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_mdm6600_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_mdm6600_id_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_mdm6600_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_mdm6600_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_mdm6600_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_mdm6600_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_mdm6600_probe.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_mdm6600_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_mdm6600_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_mdm6600_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_mdm6600_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_usb_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_mdm6600_deferred_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_mdm6600_device_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_mdm6600_device_power_on._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_mdm6600_device_power_on._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_mdm6600_device_power_on._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_mdm6600_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_mdm6600_status_name to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_mdm6600_init_lines._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_mdm6600_init_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_mdm6600_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_mdm6600_power_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_mdm6600_power_off._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_mdm6600_device_power_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_mdm6600_device_power_off._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_mdm6600_device_power_off._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_mdm6600_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @phy_mdm6600_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @phy_mdm6600_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @phy_mdm6600_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_mdm6600_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 400, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup121_crit_edge, label %do.body1

entry.cleanup121_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup121

do.body1:                                         ; preds = %entry
  %bootup_work = getelementptr inbounds %struct.phy_mdm6600, ptr %call.i, i32 0, i32 7
  tail call void @__init_work(ptr noundef %bootup_work, i32 noundef 0) #7
  %0 = ptrtoint ptr %bootup_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %bootup_work, align 4
  %lockdep_map = getelementptr inbounds %struct.phy_mdm6600, ptr %call.i, i32 0, i32 7, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @phy_mdm6600_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry8 = getelementptr inbounds %struct.phy_mdm6600, ptr %call.i, i32 0, i32 7, i32 0, i32 1
  %1 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry8, ptr %entry8, align 4
  %prev.i = getelementptr inbounds %struct.phy_mdm6600, ptr %call.i, i32 0, i32 7, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry8, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.phy_mdm6600, ptr %call.i, i32 0, i32 7, i32 0, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @phy_mdm6600_deferred_power_on, ptr %func, align 4
  %timer = getelementptr inbounds %struct.phy_mdm6600, ptr %call.i, i32 0, i32 7, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.3, ptr noundef nonnull @phy_mdm6600_probe.__key.2) #7
  %status_work = getelementptr inbounds %struct.phy_mdm6600, ptr %call.i, i32 0, i32 8
  tail call void @__init_work(ptr noundef %status_work, i32 noundef 0) #7
  %4 = ptrtoint ptr %status_work to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %status_work, align 4
  %lockdep_map27 = getelementptr inbounds %struct.phy_mdm6600, ptr %call.i, i32 0, i32 8, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map27, ptr noundef nonnull @.str.5, ptr noundef nonnull @phy_mdm6600_probe.__key.4, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry30 = getelementptr inbounds %struct.phy_mdm6600, ptr %call.i, i32 0, i32 8, i32 0, i32 1
  %5 = ptrtoint ptr %entry30 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry30, ptr %entry30, align 4
  %prev.i177 = getelementptr inbounds %struct.phy_mdm6600, ptr %call.i, i32 0, i32 8, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i177 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry30, ptr %prev.i177, align 4
  %func33 = getelementptr inbounds %struct.phy_mdm6600, ptr %call.i, i32 0, i32 8, i32 0, i32 2
  %7 = ptrtoint ptr %func33 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @phy_mdm6600_status, ptr %func33, align 4
  %timer38 = getelementptr inbounds %struct.phy_mdm6600, ptr %call.i, i32 0, i32 8, i32 1
  tail call void @init_timer_key(ptr noundef %timer38, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.7, ptr noundef nonnull @phy_mdm6600_probe.__key.6) #7
  %modem_wake_work = getelementptr inbounds %struct.phy_mdm6600, ptr %call.i, i32 0, i32 9
  tail call void @__init_work(ptr noundef %modem_wake_work, i32 noundef 0) #7
  %8 = ptrtoint ptr %modem_wake_work to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %modem_wake_work, align 4
  %lockdep_map53 = getelementptr inbounds %struct.phy_mdm6600, ptr %call.i, i32 0, i32 9, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map53, ptr noundef nonnull @.str.9, ptr noundef nonnull @phy_mdm6600_probe.__key.8, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry56 = getelementptr inbounds %struct.phy_mdm6600, ptr %call.i, i32 0, i32 9, i32 0, i32 1
  %9 = ptrtoint ptr %entry56 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry56, ptr %entry56, align 4
  %prev.i178 = getelementptr inbounds %struct.phy_mdm6600, ptr %call.i, i32 0, i32 9, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i178 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry56, ptr %prev.i178, align 4
  %func59 = getelementptr inbounds %struct.phy_mdm6600, ptr %call.i, i32 0, i32 9, i32 0, i32 2
  %11 = ptrtoint ptr %func59 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @phy_mdm6600_modem_wake, ptr %func59, align 4
  %timer64 = getelementptr inbounds %struct.phy_mdm6600, ptr %call.i, i32 0, i32 9, i32 1
  tail call void @init_timer_key(ptr noundef %timer64, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.11, ptr noundef nonnull @phy_mdm6600_probe.__key.10) #7
  %ack = getelementptr inbounds %struct.phy_mdm6600, ptr %call.i, i32 0, i32 10
  %12 = ptrtoint ptr %ack to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %ack, align 4
  %wait.i = getelementptr inbounds %struct.phy_mdm6600, ptr %call.i, i32 0, i32 10, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @init_completion.__key) #7
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call72 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %do.body1.if.end79_crit_edge, label %do.end77

do.body1.if.end79_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

do.end77:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %call72) #10
  br label %if.end79

if.end79:                                         ; preds = %do.end77, %do.body1.if.end79_crit_edge
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 4
  %arrayidx2.i = getelementptr %struct.phy_mdm6600, ptr %call.i, i32 0, i32 3, i32 0
  %call.i179 = tail call ptr @devm_gpiod_get(ptr noundef %18, ptr noundef nonnull @.str.55, i32 noundef 3) #7
  %19 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i179, ptr %arrayidx2.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i179, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end79.cleanup.thread.i_crit_edge, label %for.cond.i

if.end79.cleanup.thread.i_crit_edge:              ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i

for.cond.i:                                       ; preds = %if.end79
  %arrayidx2.1.i = getelementptr %struct.phy_mdm6600, ptr %call.i, i32 0, i32 3, i32 1
  %call.1.i = tail call ptr @devm_gpiod_get(ptr noundef %18, ptr noundef nonnull @.str.56, i32 noundef 3) #7
  %20 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.1.i, ptr %arrayidx2.1.i, align 4
  %cmp.i.1.i = icmp ugt ptr %call.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %for.cond.i.cleanup.thread.i_crit_edge, label %for.cond.1.i

for.cond.i.cleanup.thread.i_crit_edge:            ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx2.2.i = getelementptr %struct.phy_mdm6600, ptr %call.i, i32 0, i32 3, i32 2
  %call.2.i = tail call ptr @devm_gpiod_get(ptr noundef %18, ptr noundef nonnull @.str.57, i32 noundef 7) #7
  %21 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.2.i, ptr %arrayidx2.2.i, align 4
  %cmp.i.2.i = icmp ugt ptr %call.2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2.i, label %for.cond.1.i.cleanup.thread.i_crit_edge, label %for.cond.2.i

for.cond.1.i.cleanup.thread.i_crit_edge:          ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %call8.i = tail call ptr @devm_gpiod_get_array(ptr noundef %18, ptr noundef nonnull @.str.52, i32 noundef 3) #7
  %mode_gpios.i = getelementptr inbounds %struct.phy_mdm6600, ptr %call.i, i32 0, i32 4
  %22 = ptrtoint ptr %mode_gpios.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call8.i, ptr %mode_gpios.i, align 4
  %cmp.i70.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i70.i, label %for.cond.2.i.phy_mdm6600_init_lines.exit_crit_edge, label %if.end14.i

for.cond.2.i.phy_mdm6600_init_lines.exit_crit_edge: ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_mdm6600_init_lines.exit

cleanup.thread.i:                                 ; preds = %for.cond.1.i.cleanup.thread.i_crit_edge, %for.cond.i.cleanup.thread.i_crit_edge, %if.end79.cleanup.thread.i_crit_edge
  %arrayidx2.lcssa.i = phi ptr [ %arrayidx2.i, %if.end79.cleanup.thread.i_crit_edge ], [ %arrayidx2.1.i, %for.cond.i.cleanup.thread.i_crit_edge ], [ %arrayidx2.2.i, %for.cond.1.i.cleanup.thread.i_crit_edge ]
  %.lcssa.i = phi ptr [ @.str.55, %if.end79.cleanup.thread.i_crit_edge ], [ @.str.56, %for.cond.i.cleanup.thread.i_crit_edge ], [ @.str.57, %for.cond.1.i.cleanup.thread.i_crit_edge ]
  %call.lcssa.i = phi ptr [ %call.i179, %if.end79.cleanup.thread.i_crit_edge ], [ %call.1.i, %for.cond.i.cleanup.thread.i_crit_edge ], [ %call.2.i, %for.cond.1.i.cleanup.thread.i_crit_edge ]
  %23 = ptrtoint ptr %call.lcssa.i to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.50, ptr noundef nonnull %.lcssa.i, i32 noundef %23) #10
  %24 = ptrtoint ptr %arrayidx2.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx2.lcssa.i, align 4
  br label %phy_mdm6600_init_lines.exit

if.end14.i:                                       ; preds = %for.cond.2.i
  %ndescs.i = getelementptr inbounds %struct.gpio_descs, ptr %call8.i, i32 0, i32 1
  %26 = ptrtoint ptr %ndescs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ndescs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp16.not.i = icmp eq i32 %27, 2
  br i1 %cmp16.not.i, label %if.end18.i, label %if.end14.i.cleanup121_crit_edge

if.end14.i.cleanup121_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup121

if.end18.i:                                       ; preds = %if.end14.i
  %call19.i = tail call ptr @devm_gpiod_get_array(ptr noundef %18, ptr noundef nonnull @.str.53, i32 noundef 1) #7
  %status_gpios.i = getelementptr inbounds %struct.phy_mdm6600, ptr %call.i, i32 0, i32 5
  %28 = ptrtoint ptr %status_gpios.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call19.i, ptr %status_gpios.i, align 4
  %cmp.i71.i = icmp ugt ptr %call19.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71.i, label %if.end18.i.phy_mdm6600_init_lines.exit_crit_edge, label %if.end25.i

if.end18.i.phy_mdm6600_init_lines.exit_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_mdm6600_init_lines.exit

if.end25.i:                                       ; preds = %if.end18.i
  %ndescs27.i = getelementptr inbounds %struct.gpio_descs, ptr %call19.i, i32 0, i32 1
  %29 = ptrtoint ptr %ndescs27.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ndescs27.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %30)
  %cmp28.not.i = icmp eq i32 %30, 3
  br i1 %cmp28.not.i, label %if.end30.i, label %if.end25.i.cleanup121_crit_edge

if.end25.i.cleanup121_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup121

if.end30.i:                                       ; preds = %if.end25.i
  %call31.i = tail call ptr @devm_gpiod_get_array(ptr noundef %18, ptr noundef nonnull @.str.54, i32 noundef 3) #7
  %cmd_gpios.i = getelementptr inbounds %struct.phy_mdm6600, ptr %call.i, i32 0, i32 6
  %31 = ptrtoint ptr %cmd_gpios.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call31.i, ptr %cmd_gpios.i, align 4
  %cmp.i72.i = icmp ugt ptr %call31.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i72.i, label %if.end30.i.phy_mdm6600_init_lines.exit_crit_edge, label %if.end37.i

if.end30.i.phy_mdm6600_init_lines.exit_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_mdm6600_init_lines.exit

if.end37.i:                                       ; preds = %if.end30.i
  %ndescs39.i = getelementptr inbounds %struct.gpio_descs, ptr %call31.i, i32 0, i32 1
  %32 = ptrtoint ptr %ndescs39.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ndescs39.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %cmp40.not.i = icmp eq i32 %33, 3
  br i1 %cmp40.not.i, label %if.end37.i.if.end83_crit_edge, label %if.end37.i.cleanup121_crit_edge

if.end37.i.cleanup121_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup121

if.end37.i.if.end83_crit_edge:                    ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

phy_mdm6600_init_lines.exit:                      ; preds = %if.end30.i.phy_mdm6600_init_lines.exit_crit_edge, %if.end18.i.phy_mdm6600_init_lines.exit_crit_edge, %cleanup.thread.i, %for.cond.2.i.phy_mdm6600_init_lines.exit_crit_edge
  %retval.2.i.in = phi ptr [ %25, %cleanup.thread.i ], [ %call8.i, %for.cond.2.i.phy_mdm6600_init_lines.exit_crit_edge ], [ %call19.i, %if.end18.i.phy_mdm6600_init_lines.exit_crit_edge ], [ %call31.i, %if.end30.i.phy_mdm6600_init_lines.exit_crit_edge ]
  %retval.2.i = ptrtoint ptr %retval.2.i.in to i32
  %tobool81.not = icmp eq ptr %retval.2.i.in, null
  br i1 %tobool81.not, label %phy_mdm6600_init_lines.exit.if.end83_crit_edge, label %phy_mdm6600_init_lines.exit.cleanup121_crit_edge

phy_mdm6600_init_lines.exit.cleanup121_crit_edge: ; preds = %phy_mdm6600_init_lines.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup121

phy_mdm6600_init_lines.exit.if.end83_crit_edge:   ; preds = %phy_mdm6600_init_lines.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

if.end83:                                         ; preds = %phy_mdm6600_init_lines.exit.if.end83_crit_edge, %if.end37.i.if.end83_crit_edge
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 4
  %status_gpios.i180 = getelementptr inbounds %struct.phy_mdm6600, ptr %call.i, i32 0, i32 5
  %36 = ptrtoint ptr %status_gpios.i180 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %status_gpios.i180, align 4
  %arrayidx.i = getelementptr %struct.gpio_descs, ptr %37, i32 0, i32 2, i32 0
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i, align 4
  %call.i181 = tail call i32 @gpiod_to_irq(ptr noundef %39) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i181)
  %cmp2.i = icmp slt i32 %call.i181, 1
  br i1 %cmp2.i, label %if.end83.cleanup.i_crit_edge, label %if.end.i

if.end83.cleanup.i_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end.i:                                         ; preds = %if.end83
  %call3.i = tail call i32 @devm_request_threaded_irq(ptr noundef %35, i32 noundef %call.i181, ptr noundef null, ptr noundef nonnull @phy_mdm6600_irq_thread, i32 noundef 8195, ptr noundef nonnull @.str.58, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end.i.cleanup.i_crit_edge, label %do.end.i

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.59, i32 noundef %call.i181, i32 noundef %call3.i) #10
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.end.i, %if.end.i.cleanup.i_crit_edge, %if.end83.cleanup.i_crit_edge
  %40 = ptrtoint ptr %status_gpios.i180 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %status_gpios.i180, align 4
  %arrayidx.1.i = getelementptr %struct.gpio_descs, ptr %41, i32 0, i32 2, i32 1
  %42 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.1.i, align 4
  %call.1.i182 = tail call i32 @gpiod_to_irq(ptr noundef %43) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.1.i182)
  %cmp2.1.i = icmp slt i32 %call.1.i182, 1
  br i1 %cmp2.1.i, label %cleanup.i.cleanup.1.i_crit_edge, label %if.end.1.i

cleanup.i.cleanup.1.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.1.i

if.end.1.i:                                       ; preds = %cleanup.i
  %call3.1.i = tail call i32 @devm_request_threaded_irq(ptr noundef %35, i32 noundef %call.1.i182, ptr noundef null, ptr noundef nonnull @phy_mdm6600_irq_thread, i32 noundef 8195, ptr noundef nonnull @.str.58, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.1.i)
  %tobool.not.1.i = icmp eq i32 %call3.1.i, 0
  br i1 %tobool.not.1.i, label %if.end.1.i.cleanup.1.i_crit_edge, label %do.end.1.i

if.end.1.i.cleanup.1.i_crit_edge:                 ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.1.i

do.end.1.i:                                       ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.59, i32 noundef %call.1.i182, i32 noundef %call3.1.i) #10
  br label %cleanup.1.i

cleanup.1.i:                                      ; preds = %do.end.1.i, %if.end.1.i.cleanup.1.i_crit_edge, %cleanup.i.cleanup.1.i_crit_edge
  %44 = ptrtoint ptr %status_gpios.i180 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %status_gpios.i180, align 4
  %arrayidx.2.i = getelementptr %struct.gpio_descs, ptr %45, i32 0, i32 2, i32 2
  %46 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.2.i, align 4
  %call.2.i183 = tail call i32 @gpiod_to_irq(ptr noundef %47) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.2.i183)
  %cmp2.2.i = icmp slt i32 %call.2.i183, 1
  br i1 %cmp2.2.i, label %cleanup.1.i.phy_mdm6600_init_irq.exit_crit_edge, label %if.end.2.i

cleanup.1.i.phy_mdm6600_init_irq.exit_crit_edge:  ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_mdm6600_init_irq.exit

if.end.2.i:                                       ; preds = %cleanup.1.i
  %call3.2.i = tail call i32 @devm_request_threaded_irq(ptr noundef %35, i32 noundef %call.2.i183, ptr noundef null, ptr noundef nonnull @phy_mdm6600_irq_thread, i32 noundef 8195, ptr noundef nonnull @.str.58, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.2.i)
  %tobool.not.2.i = icmp eq i32 %call3.2.i, 0
  br i1 %tobool.not.2.i, label %if.end.2.i.phy_mdm6600_init_irq.exit_crit_edge, label %do.end.2.i

if.end.2.i.phy_mdm6600_init_irq.exit_crit_edge:   ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_mdm6600_init_irq.exit

do.end.2.i:                                       ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.59, i32 noundef %call.2.i183, i32 noundef %call3.2.i) #10
  br label %phy_mdm6600_init_irq.exit

phy_mdm6600_init_irq.exit:                        ; preds = %do.end.2.i, %if.end.2.i.phy_mdm6600_init_irq.exit_crit_edge, %cleanup.1.i.phy_mdm6600_init_irq.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %48 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %48, ptr noundef %bootup_work, i32 noundef 0) #7
  tail call void @msleep(i32 noundef 4500) #7
  %49 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call.i, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %50, i1 noundef zeroext true) #7
  %51 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call.i, align 4
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %52, i32 noundef 1000) #7
  %53 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %54) #7
  %55 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call.i, align 4
  %call.i184 = tail call i32 @__pm_runtime_resume(ptr noundef %56, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i184)
  %cmp = icmp slt i32 %call.i184, 0
  %57 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call.i, align 4
  br i1 %cmp, label %cleanup.thread, label %if.end97

cleanup.thread:                                   ; preds = %phy_mdm6600_init_irq.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %58, ptr noundef nonnull @.str.18, i32 noundef %call.i184) #10
  %59 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call.i, align 4
  tail call fastcc void @pm_runtime_put_noidle(ptr noundef %60)
  br label %if.then119

if.end97:                                         ; preds = %phy_mdm6600_init_irq.exit
  %call99 = tail call ptr @devm_phy_create(ptr noundef %58, ptr noundef null, ptr noundef nonnull @gpio_usb_ops) #7
  %generic_phy = getelementptr inbounds %struct.phy_mdm6600, ptr %call.i, i32 0, i32 1
  %61 = ptrtoint ptr %generic_phy to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call99, ptr %generic_phy, align 4
  %cmp.i = icmp ugt ptr %call99, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then102, label %if.end105

if.then102:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %call99 to i32
  br label %cleanup

if.end105:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i185 = getelementptr inbounds %struct.device, ptr %call99, i32 0, i32 8
  %63 = ptrtoint ptr %driver_data.i.i185 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i, ptr %driver_data.i.i185, align 4
  %64 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call.i, align 4
  %call108 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %65, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #7
  %phy_provider = getelementptr inbounds %struct.phy_mdm6600, ptr %call.i, i32 0, i32 2
  %66 = ptrtoint ptr %phy_provider to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call108, ptr %phy_provider, align 4
  %cmp.i186 = icmp ugt ptr %call108, inttoptr (i32 -4096 to ptr)
  %67 = ptrtoint ptr %call108 to i32
  %spec.select = select i1 %cmp.i186, i32 %67, i32 %call.i184
  br label %cleanup

cleanup:                                          ; preds = %if.end105, %if.then102
  %error.0 = phi i32 [ %62, %if.then102 ], [ %spec.select, %if.end105 ]
  %68 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call.i, align 4
  %call.i187 = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %69, i32 0, i32 12, i32 22
  %70 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %70)
  store volatile i64 %call.i187, ptr %last_busy.i, align 8
  %71 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %call.i, align 4
  %call.i188 = tail call i32 @__pm_runtime_suspend(ptr noundef %72, i32 noundef 13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %cmp118 = icmp slt i32 %error.0, 0
  br i1 %cmp118, label %cleanup.if.then119_crit_edge, label %cleanup.cleanup121_crit_edge

cleanup.cleanup121_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup121

cleanup.if.then119_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then119

if.then119:                                       ; preds = %cleanup.if.then119_crit_edge, %cleanup.thread
  %error.1196 = phi i32 [ %call.i184, %cleanup.thread ], [ %error.0, %cleanup.if.then119_crit_edge ]
  tail call fastcc void @phy_mdm6600_device_power_off(ptr noundef nonnull %call.i)
  br label %cleanup121

cleanup121:                                       ; preds = %if.then119, %cleanup.cleanup121_crit_edge, %phy_mdm6600_init_lines.exit.cleanup121_crit_edge, %if.end37.i.cleanup121_crit_edge, %if.end25.i.cleanup121_crit_edge, %if.end14.i.cleanup121_crit_edge, %entry.cleanup121_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup121_crit_edge ], [ %retval.2.i, %phy_mdm6600_init_lines.exit.cleanup121_crit_edge ], [ %error.1196, %if.then119 ], [ %error.0, %cleanup.cleanup121_crit_edge ], [ -22, %if.end14.i.cleanup121_crit_edge ], [ -22, %if.end25.i.cleanup121_crit_edge ], [ -22, %if.end37.i.cleanup121_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_mdm6600_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx = getelementptr %struct.phy_mdm6600, ptr %1, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %5, i1 noundef zeroext false) #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %7, i32 noundef 4) #7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void @__pm_runtime_disable(ptr noundef %9, i1 noundef zeroext true) #7
  %running = getelementptr inbounds %struct.phy_mdm6600, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %running, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ack = getelementptr inbounds %struct.phy_mdm6600, ptr %1, i32 0, i32 10
  %call5 = tail call i32 @wait_for_completion_timeout(ptr noundef %ack, i32 noundef 800) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #7
  tail call fastcc void @phy_mdm6600_device_power_off(ptr noundef %1)
  %modem_wake_work = getelementptr inbounds %struct.phy_mdm6600, ptr %1, i32 0, i32 9
  %call6 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %modem_wake_work) #7
  %bootup_work = getelementptr inbounds %struct.phy_mdm6600, ptr %1, i32 0, i32 7
  %call7 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %bootup_work) #7
  %status_work = getelementptr inbounds %struct.phy_mdm6600, ptr %1, i32 0, i32 8
  %call8 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %status_work) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @phy_mdm6600_deferred_power_on(ptr noundef %work) #2 align 64 {
entry:
  %values.i.i = alloca [1 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -36
  %mode_gpios.i = getelementptr i8, ptr %work, i32 -12
  %0 = ptrtoint ptr %mode_gpios.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mode_gpios.i, align 4
  %desc.i = getelementptr inbounds %struct.gpio_descs, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc.i, align 4
  %arrayidx3.i = getelementptr %struct.gpio_descs, ptr %1, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx3.i, align 4
  %arrayidx4.i = getelementptr i8, ptr %work, i32 -16
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr i8, ptr %work, i32 -20
  %8 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx6.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 0) #7
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %values.i.i) #7
  %10 = ptrtoint ptr %values.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %values.i.i, align 4
  %cmd_gpios.i.i = getelementptr i8, ptr %work, i32 -4
  %11 = ptrtoint ptr %cmd_gpios.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cmd_gpios.i.i, align 4
  %desc.i.i = getelementptr inbounds %struct.gpio_descs, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call.i.i = call i32 @gpiod_set_array_value_cansleep(i32 noundef 3, ptr noundef %desc.i.i, ptr noundef %14, ptr noundef nonnull %values.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %values.i.i) #7
  call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 0) #7
  call void @msleep(i32 noundef 100) #7
  call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 1) #7
  call void @msleep(i32 noundef 100) #7
  call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 0) #7
  call void @msleep(i32 noundef 4000) #7
  %enabled.i = getelementptr i8, ptr %work, i32 356
  %15 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %enabled.i, align 4
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.23) #10
  %ack.i = getelementptr i8, ptr %work, i32 300
  %call7.i = call i32 @wait_for_completion_timeout(ptr noundef %ack.i, i32 noundef 800) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %status.i = getelementptr i8, ptr %work, i32 360
  %18 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status.i, align 4
  %20 = add i32 %19, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %20)
  %21 = icmp ult i32 %20, 5
  br i1 %21, label %do.end13.i, label %if.then.i.if.end20.i_crit_edge

if.then.i.if.end20.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

do.end13.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.27) #10
  br label %if.end20.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %enabled.i, align 4
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.30) #10
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else.i, %do.end13.i, %if.then.i.if.end20.i_crit_edge
  %call21.i = call i32 @gpiod_direction_input(ptr noundef %5) #7
  %call22.i = call i32 @gpiod_to_irq(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 1
  br i1 %cmp23.i, label %if.end20.i.phy_mdm6600_device_power_on.exit_crit_edge, label %if.end25.i

if.end20.i.phy_mdm6600_device_power_on.exit_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_mdm6600_device_power_on.exit

if.end25.i:                                       ; preds = %if.end20.i
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr, align 4
  %call27.i = call i32 @devm_request_threaded_irq(ptr noundef %28, i32 noundef %call22.i, ptr noundef null, ptr noundef nonnull @phy_mdm6600_wakeirq_thread, i32 noundef 8195, ptr noundef nonnull @.str.32, ptr noundef %add.ptr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end25.i.if.end34.i_crit_edge, label %do.end32.i

if.end25.i.if.end34.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

do.end32.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %30, ptr noundef nonnull @.str.34, i32 noundef %call22.i, i32 noundef %call27.i) #10
  br label %if.end34.i

if.end34.i:                                       ; preds = %do.end32.i, %if.end25.i.if.end34.i_crit_edge
  %running.i = getelementptr i8, ptr %work, i32 357
  %31 = ptrtoint ptr %running.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %running.i, align 1
  br label %phy_mdm6600_device_power_on.exit

phy_mdm6600_device_power_on.exit:                 ; preds = %if.end34.i, %if.end20.i.phy_mdm6600_device_power_on.exit_crit_edge
  %retval.0.i = phi i32 [ %call27.i, %if.end34.i ], [ %call22.i, %if.end20.i.phy_mdm6600_device_power_on.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %phy_mdm6600_device_power_on.exit.if.end_crit_edge, label %do.end

phy_mdm6600_device_power_on.exit.if.end_crit_edge: ; preds = %phy_mdm6600_device_power_on.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %phy_mdm6600_device_power_on.exit
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.20) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %phy_mdm6600_device_power_on.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @phy_mdm6600_status(ptr noundef %work) #2 align 64 {
entry:
  %values = alloca [1 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %values) #7
  %0 = ptrtoint ptr %values to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %values, align 4, !annotation !168
  %add.ptr = getelementptr i8, ptr %work, i32 -136
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %status_gpios = getelementptr i8, ptr %work, i32 -108
  %3 = ptrtoint ptr %status_gpios to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %status_gpios, align 4
  %desc = getelementptr inbounds %struct.gpio_descs, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call = call i32 @gpiod_get_array_value_cansleep(i32 noundef 3, ptr noundef %desc, ptr noundef %6, ptr noundef nonnull %values) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %values to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %values, align 4
  %and = and i32 %8, 7
  %status = getelementptr i8, ptr %work, i32 260
  %9 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and, ptr %status, align 4
  %arrayidx6 = getelementptr [8 x ptr], ptr @phy_mdm6600_status_name, i32 0, i32 %and
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx6, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.39, i32 noundef %and, ptr noundef %11) #10
  %ack = getelementptr i8, ptr %work, i32 200
  call void @complete(ptr noundef %ack) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %values) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @phy_mdm6600_modem_wake(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_gpios.i = getelementptr i8, ptr %work, i32 -212
  %0 = ptrtoint ptr %mode_gpios.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mode_gpios.i, align 4
  %desc.i = getelementptr inbounds %struct.gpio_descs, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #7
  tail call void @usleep_range_state(i32 noundef 5, i32 noundef 15, i32 noundef 2) #7
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 0) #7
  %awake.i = getelementptr i8, ptr %work, i32 158
  %4 = ptrtoint ptr %awake.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %awake.i, align 2, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 5, i32 noundef 15, i32 noundef 2) #7
  br label %phy_mdm6600_wake_modem.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef 200) #7
  br label %phy_mdm6600_wake_modem.exit

phy_mdm6600_wake_modem.exit:                      ; preds = %if.else.i, %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %work, i32 noundef 60) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !169
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #7, !srcloc !170
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !171
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @phy_mdm6600_device_power_off(ptr noundef %ddata) unnamed_addr #2 align 64 {
entry:
  %values.i = alloca [1 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.phy_mdm6600, ptr %ddata, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %enabled = getelementptr inbounds %struct.phy_mdm6600, ptr %ddata, i32 0, i32 11
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %enabled, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %values.i) #7
  %3 = ptrtoint ptr %values.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %values.i, align 4
  %cmd_gpios.i = getelementptr inbounds %struct.phy_mdm6600, ptr %ddata, i32 0, i32 6
  %4 = ptrtoint ptr %cmd_gpios.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd_gpios.i, align 4
  %desc.i = getelementptr inbounds %struct.gpio_descs, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call.i = call i32 @gpiod_set_array_value_cansleep(i32 noundef 3, ptr noundef %desc.i, ptr noundef %7, ptr noundef nonnull %values.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %values.i) #7
  call void @msleep(i32 noundef 100) #7
  call void @gpiod_set_value_cansleep(ptr noundef %1, i32 noundef 1) #7
  %8 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ddata, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.67) #10
  %ack = getelementptr inbounds %struct.phy_mdm6600, ptr %ddata, i32 0, i32 10
  %call1 = call i32 @wait_for_completion_timeout(ptr noundef %ack, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.end9, label %if.then

if.then:                                          ; preds = %entry
  %status = getelementptr inbounds %struct.phy_mdm6600, ptr %ddata, i32 0, i32 14
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %do.end5, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

do.end5:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ddata, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.70) #10
  br label %if.end11

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ddata, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.73) #10
  br label %if.end11

if.end11:                                         ; preds = %do.end9, %do.end5, %if.then.if.end11_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_input(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_mdm6600_wakeirq_thread(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_gpios = getelementptr inbounds %struct.phy_mdm6600, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %mode_gpios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mode_gpios, align 4
  %arrayidx = getelementptr %struct.gpio_descs, ptr %1, i32 1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @gpiod_get_value(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phy_mdm6600_wakeirq_thread.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@phy_mdm6600_wakeirq_thread, %if.then5)) #7
          to label %do.end [label %if.then5], !srcloc !172

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @phy_mdm6600_wakeirq_thread.__UNIQUE_ID_ddebug289, ptr noundef %5, ptr noundef nonnull @.str.38, i32 noundef %call) #7
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  br i1 %cmp, label %if.then9, label %if.end11

if.then9:                                         ; preds = %do.end
  %usage_count.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !169
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !170
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then9.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !171
  br label %cleanup

if.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i24 = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 12, i32 22
  %11 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store volatile i64 %call.i24, ptr %last_busy.i, align 8
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %call.i25 = tail call i32 @__pm_runtime_suspend(ptr noundef %13, i32 noundef 13) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end11.i.i.i.i, %if.then9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end11 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then9.cleanup_crit_edge ], [ 0, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_array_value_cansleep(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_array_value_cansleep(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_mdm6600_irq_thread(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %status_work = getelementptr inbounds %struct.phy_mdm6600, ptr %data, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %status_work, i32 noundef 1) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_mdm6600_init(ptr nocapture noundef readonly %x) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %x, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %enabled = getelementptr inbounds %struct.phy_mdm6600, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ctrl_gpios = getelementptr inbounds %struct.phy_mdm6600, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %ctrl_gpios to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_gpios, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -517, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_mdm6600_power_on(ptr noundef %x) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %x, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ctrl_gpios = getelementptr inbounds %struct.phy_mdm6600, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ctrl_gpios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_gpios, align 4
  %enabled = getelementptr inbounds %struct.phy_mdm6600, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled, align 4, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %do.end

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef %call1) #10
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.end.if.end5_crit_edge
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #7
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %x, i32 0, i32 12, i32 15
  %10 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %if.then8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 @phy_pm_runtime_put(ptr noundef %x) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %if.then8 ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_mdm6600_power_off(ptr noundef %x) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %x, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ctrl_gpios = getelementptr inbounds %struct.phy_mdm6600, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ctrl_gpios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_gpios, align 4
  %enabled = getelementptr inbounds %struct.phy_mdm6600, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled, align 4, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %x, i32 0, i32 12, i32 15
  %6 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %if.then2, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @phy_pm_runtime_get(ptr noundef %x) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3)
  %cmp = icmp sgt i32 %call3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, -115
  %or.cond = or i1 %cmp, %cmp4.not
  br i1 %or.cond, label %if.then2.if.end8_crit_edge, label %do.end

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, i32 noundef %call3) #10
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.then2.if.end8_crit_edge, %if.end.if.end8_crit_edge
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 0) #7
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call10 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end8.cleanup_crit_edge, label %do.end15

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.64, i32 noundef %call10) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %do.end15 ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_pm_runtime_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_pm_runtime_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_mdm6600_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %modem_wake_work = getelementptr inbounds %struct.phy_mdm6600, ptr %1, i32 0, i32 9
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %modem_wake_work) #7
  %awake = getelementptr inbounds %struct.phy_mdm6600, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %awake to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %awake, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_mdm6600_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %modem_wake_work = getelementptr inbounds %struct.phy_mdm6600, ptr %1, i32 0, i32 9
  tail call void @phy_mdm6600_modem_wake(ptr noundef %modem_wake_work)
  %awake = getelementptr inbounds %struct.phy_mdm6600, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %awake to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %awake, align 2
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !49, !51, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !100, !102, !103, !104, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !124, !125, !126, !128, !130, !131, !132, !133, !135, !136, !137, !138, !140, !141, !143, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156}
!llvm.module.flags = !{!158, !159, !160, !161, !162, !163, !164, !165}
!llvm.ident = !{!166}

!0 = !{ptr @__initcall__kmod_phy_mapphone_mdm6600__290_669_phy_mdm6600_driver_init6, !1, !"__initcall__kmod_phy_mapphone_mdm6600__290_669_phy_mdm6600_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 669, i32 1}
!2 = !{ptr @__exitcall_phy_mdm6600_driver_exit, !1, !"__exitcall_phy_mdm6600_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias291, !4, !"__UNIQUE_ID_alias291", i1 false, i1 false}
!4 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 671, i32 1}
!5 = !{ptr @__UNIQUE_ID_author292, !6, !"__UNIQUE_ID_author292", i1 false, i1 false}
!6 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 672, i32 1}
!7 = !{ptr @__UNIQUE_ID_description293, !8, !"__UNIQUE_ID_description293", i1 false, i1 false}
!8 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 673, i32 1}
!9 = !{ptr @__UNIQUE_ID_file294, !10, !"__UNIQUE_ID_file294", i1 false, i1 false}
!10 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 674, i32 1}
!11 = !{ptr @__UNIQUE_ID_license295, !10, !"__UNIQUE_ID_license295", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 663, i32 11}
!14 = !{ptr @phy_mdm6600_driver, !15, !"phy_mdm6600_driver", i1 false, i1 false}
!15 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 659, i32 31}
!16 = !{ptr @phy_mdm6600_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 565, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @phy_mdm6600_probe.__key.2, !17, !"__key", i1 false, i1 false}
!20 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @phy_mdm6600_probe.__key.4, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 567, i32 2}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @phy_mdm6600_probe.__key.6, !22, !"__key", i1 false, i1 false}
!25 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @phy_mdm6600_probe.__key.8, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 568, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @phy_mdm6600_probe.__key.10, !27, !"__key", i1 false, i1 false}
!30 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 577, i32 3}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @phy_mdm6600_probe._entry, !32, !"_entry", i1 false, i1 false}
!38 = !{ptr @phy_mdm6600_probe._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 606, i32 3}
!41 = !{ptr @phy_mdm6600_probe._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @phy_mdm6600_probe._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 485, i32 3}
!45 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @phy_mdm6600_deferred_power_on._entry, !44, !"_entry", i1 false, i1 false}
!48 = !{ptr @phy_mdm6600_deferred_power_on._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 416, i32 2}
!51 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @phy_mdm6600_device_power_on._entry, !50, !"_entry", i1 false, i1 false}
!54 = !{ptr @phy_mdm6600_device_power_on._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 421, i32 4}
!57 = !{ptr @phy_mdm6600_device_power_on._entry.26, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @phy_mdm6600_device_power_on._entry_ptr.28, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 425, i32 3}
!61 = !{ptr @phy_mdm6600_device_power_on._entry.29, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @phy_mdm6600_device_power_on._entry_ptr.31, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 440, i32 8}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 443, i32 3}
!67 = !{ptr @phy_mdm6600_device_power_on._entry.33, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @phy_mdm6600_device_power_on._entry_ptr.35, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 255, i32 2}
!71 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @phy_mdm6600_wakeirq_thread.__UNIQUE_ID_ddebug289, !70, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 219, i32 2}
!76 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @phy_mdm6600_status._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @phy_mdm6600_status._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 86, i32 2}
!81 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 86, i32 9}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 86, i32 17}
!85 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 86, i32 26}
!87 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 86, i32 36}
!89 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 87, i32 2}
!91 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 87, i32 12}
!93 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 87, i32 24}
!95 = !{ptr @phy_mdm6600_status_name, !96, !"phy_mdm6600_status_name", i1 false, i1 false}
!96 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 85, i32 1}
!97 = !{ptr @init_completion.__key, !98, !"__key", i1 false, i1 false}
!98 = !{!"../include/linux/completion.h", i32 87, i32 2}
!99 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 329, i32 4}
!102 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @phy_mdm6600_init_lines._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @phy_mdm6600_init_lines._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 336, i32 48}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 345, i32 50}
!109 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 354, i32 47}
!111 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 307, i32 4}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 308, i32 4}
!115 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 309, i32 4}
!117 = distinct !{null, !118, !"phy_mdm6600_ctrl_gpio_map", i1 false, i1 false}
!118 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 306, i32 1}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 292, i32 6}
!121 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 295, i32 4}
!123 = !{ptr @.str.60, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @phy_mdm6600_init_irq._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @phy_mdm6600_init_irq._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @gpio_usb_ops, !127, !"gpio_usb_ops", i1 false, i1 false}
!127 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 171, i32 29}
!128 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 132, i32 3}
!130 = !{ptr @.str.62, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @phy_mdm6600_power_on._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @phy_mdm6600_power_on._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.63, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 157, i32 4}
!135 = !{ptr @.str.64, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @phy_mdm6600_power_off._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @phy_mdm6600_power_off._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @phy_mdm6600_power_off._entry.65, !139, !"_entry", i1 false, i1 false}
!139 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 165, i32 3}
!140 = !{ptr @phy_mdm6600_power_off._entry_ptr.66, !139, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.67, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 466, i32 2}
!143 = !{ptr @.str.68, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @phy_mdm6600_device_power_off._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @phy_mdm6600_device_power_off._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 470, i32 4}
!148 = !{ptr @phy_mdm6600_device_power_off._entry.69, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @phy_mdm6600_device_power_off._entry_ptr.71, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.73, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 472, i32 3}
!152 = !{ptr @phy_mdm6600_device_power_off._entry.72, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @phy_mdm6600_device_power_off._entry_ptr.74, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @phy_mdm6600_id_table, !155, !"phy_mdm6600_id_table", i1 false, i1 false}
!155 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 550, i32 34}
!156 = !{ptr @phy_mdm6600_pm_ops, !157, !"phy_mdm6600_pm_ops", i1 false, i1 false}
!157 = !{!"../drivers/phy/motorola/phy-mapphone-mdm6600.c", i32 545, i32 32}
!158 = !{i32 1, !"wchar_size", i32 2}
!159 = !{i32 1, !"min_enum_size", i32 4}
!160 = !{i32 8, !"branch-target-enforcement", i32 0}
!161 = !{i32 8, !"sign-return-address", i32 0}
!162 = !{i32 8, !"sign-return-address-all", i32 0}
!163 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!164 = !{i32 7, !"uwtable", i32 1}
!165 = !{i32 7, !"frame-pointer", i32 2}
!166 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!167 = !{i8 0, i8 2}
!168 = !{!"auto-init"}
!169 = !{i64 2148205100}
!170 = !{i64 689923, i64 689948, i64 689970, i64 689986, i64 689998, i64 690018, i64 690042, i64 690058, i64 690070}
!171 = !{i64 2148205288}
!172 = !{i64 2148773346, i64 2148773351, i64 2148773364, i64 2148773408, i64 2148773442, i64 2148773463}
