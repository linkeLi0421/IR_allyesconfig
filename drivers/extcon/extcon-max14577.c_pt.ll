; ModuleID = '/llk/IR_all_yes/drivers/extcon/extcon-max14577.c_pt.bc'
source_filename = "../drivers/extcon/extcon-max14577.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.max14577_muic_irq = type { i32, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.max14577_muic_info = type { ptr, ptr, ptr, i32, i32, [2 x i8], ptr, i32, i8, i8, %struct.work_struct, %struct.mutex, %struct.delayed_work, i32, i32 }
%struct.max14577 = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32 }

@__initcall__kmod_extcon_max14577__292_798_max14577_muic_driver_init6 = internal global ptr @max14577_muic_driver_init, section ".initcall6.init", align 4
@max14577_muic_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @max14577_muic_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_max14577_muic_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max14577_muic_id, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_max14577_muic_driver_exit = internal global ptr @max14577_muic_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description293 = internal constant [60 x i8] c"extcon_max14577.description=Maxim 14577/77836 Extcon driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [99 x i8] c"extcon_max14577.author=Chanwoo Choi <cw00.choi@samsung.com>, Krzysztof Kozlowski <krzk@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [52 x i8] c"extcon_max14577.file=drivers/extcon/extcon-max14577\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [28 x i8] c"extcon_max14577.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias297 = internal constant [47 x i8] c"extcon_max14577.alias=platform:extcon-max14577\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max14577-muic\00", [18 x i8] zeroinitializer }, align 32
@of_max14577_muic_dt_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max14577-muic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max77836-muic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@max14577_muic_id = internal constant { [3 x %struct.platform_device_id], [56 x i8] } { [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"max14577-muic\00\00\00\00\00\00\00", i32 1 }, %struct.platform_device_id { [20 x i8] c"max77836-muic\00\00\00\00\00\00\00", i32 2 }, %struct.platform_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@max14577_muic_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&info->mutex\00", [19 x i8] zeroinitializer }, align 32
@max77836_muic_irqs = internal global { [10 x %struct.max14577_muic_irq], [40 x i8] } { [10 x %struct.max14577_muic_irq] [%struct.max14577_muic_irq { i32 0, ptr @.str.48, i32 0 }, %struct.max14577_muic_irq { i32 1, ptr @.str.49, i32 0 }, %struct.max14577_muic_irq { i32 2, ptr @.str.50, i32 0 }, %struct.max14577_muic_irq { i32 3, ptr @.str.51, i32 0 }, %struct.max14577_muic_irq { i32 4, ptr @.str.52, i32 0 }, %struct.max14577_muic_irq { i32 5, ptr @.str.53, i32 0 }, %struct.max14577_muic_irq { i32 6, ptr @.str.54, i32 0 }, %struct.max14577_muic_irq { i32 7, ptr @.str.55, i32 0 }, %struct.max14577_muic_irq { i32 8, ptr @.str.56, i32 0 }, %struct.max14577_muic_irq { i32 9, ptr @.str.57, i32 0 }], [40 x i8] zeroinitializer }, align 32
@max14577_muic_irqs = internal global { [8 x %struct.max14577_muic_irq], [32 x i8] } { [8 x %struct.max14577_muic_irq] [%struct.max14577_muic_irq { i32 0, ptr @.str.48, i32 0 }, %struct.max14577_muic_irq { i32 1, ptr @.str.49, i32 0 }, %struct.max14577_muic_irq { i32 2, ptr @.str.50, i32 0 }, %struct.max14577_muic_irq { i32 4, ptr @.str.52, i32 0 }, %struct.max14577_muic_irq { i32 5, ptr @.str.53, i32 0 }, %struct.max14577_muic_irq { i32 6, ptr @.str.54, i32 0 }, %struct.max14577_muic_irq { i32 7, ptr @.str.55, i32 0 }, %struct.max14577_muic_irq { i32 8, ptr @.str.56, i32 0 }], [32 x i8] zeroinitializer }, align 32
@max14577_muic_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 710, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed: irq request (IRQ: %d, error :%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max14577_muic_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/extcon/extcon-max14577.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max14577_muic_probe._entry_ptr = internal global ptr @max14577_muic_probe._entry, section ".printk_index", align 4
@max14577_extcon_cable = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 5, i32 6, i32 9, i32 10, i32 7, i32 61, i32 0], [32 x i8] zeroinitializer }, align 32
@max14577_muic_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 719, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to allocate memory for extcon\0A\00", [58 x i8] zeroinitializer }, align 32
@max14577_muic_probe._entry_ptr.9 = internal global ptr @max14577_muic_probe._entry.7, section ".printk_index", align 4
@max14577_muic_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 725, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to register extcon device\0A\00", [62 x i8] zeroinitializer }, align 32
@max14577_muic_probe._entry_ptr.12 = internal global ptr @max14577_muic_probe._entry.10, section ".printk_index", align 4
@max14577_muic_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 738, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cannot read STATUS registers\0A\00", [34 x i8] zeroinitializer }, align 32
@max14577_muic_probe._entry_ptr.15 = internal global ptr @max14577_muic_probe._entry.13, section ".printk_index", align 4
@max14577_muic_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 750, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to read revision number\0A\00", [32 x i8] zeroinitializer }, align 32
@max14577_muic_probe._entry_ptr.18 = internal global ptr @max14577_muic_probe._entry.16, section ".printk_index", align 4
@max14577_muic_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 753, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"device ID : 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@max14577_muic_probe._entry_ptr.22 = internal global ptr @max14577_muic_probe._entry.19, section ".printk_index", align 4
@max14577_muic_probe.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&info->wq_detcable)->work)\00", [49 x i8] zeroinitializer }, align 32
@max14577_muic_probe.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&info->wq_detcable)->timer\00", [35 x i8] zeroinitializer }, align 32
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@devm_work_autocancel.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(work_completion)(w)\00", [43 x i8] zeroinitializer }, align 32
@max14577_muic_irq_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 495, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to read MUIC register\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"max14577_muic_irq_work\00", [41 x i8] zeroinitializer }, align 32
@max14577_muic_irq_work._entry_ptr = internal global ptr @max14577_muic_irq_work._entry, section ".printk_index", align 4
@max14577_muic_irq_work._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.4, i32 510, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to handle MUIC interrupt\0A\00", [63 x i8] zeroinitializer }, align 32
@max14577_muic_irq_work._entry_ptr.32 = internal global ptr @max14577_muic_irq_work._entry.30, section ".printk_index", align 4
@max14577_muic_adc_handler.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.34, ptr @.str.4, ptr @.str.35, i8 0, i8 92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"extcon_max14577\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"max14577_muic_adc_handler\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"external connector is %s (adc:0x%02x, prev_adc:0x%x)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"attached\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"detached\00", [23 x i8] zeroinitializer }, align 32
@max14577_muic_adc_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.34, ptr @.str.4, i32 415, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"accessory is %s but it isn't used (adc:0x%x)\0A\00", [50 x i8] zeroinitializer }, align 32
@max14577_muic_adc_handler._entry_ptr = internal global ptr @max14577_muic_adc_handler._entry, section ".printk_index", align 4
@max14577_muic_adc_handler._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.34, ptr @.str.4, i32 420, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to detect %s accessory (adc:0x%x)\0A\00", [54 x i8] zeroinitializer }, align 32
@max14577_muic_adc_handler._entry_ptr.41 = internal global ptr @max14577_muic_adc_handler._entry.39, section ".printk_index", align 4
@max14577_muic_jig_handler.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.42, ptr @.str.4, ptr @.str.43, i8 0, i8 82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"max14577_muic_jig_handler\00", [38 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"external connector is %s (adc:0x%02x)\0A\00", [57 x i8] zeroinitializer }, align 32
@max14577_muic_jig_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.4, i32 343, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to detect %s jig cable\0A\00", [33 x i8] zeroinitializer }, align 32
@max14577_muic_jig_handler._entry_ptr = internal global ptr @max14577_muic_jig_handler._entry, section ".printk_index", align 4
@max14577_muic_chg_handler.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.45, ptr @.str.4, ptr @.str.46, i8 0, i8 109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"max14577_muic_chg_handler\00", [38 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"external connector is %s(chg_type:0x%x, prev_chg_type:0x%x)\0A\00", [35 x i8] zeroinitializer }, align 32
@max14577_muic_chg_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.4, i32 474, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to detect %s accessory (chg_type:0x%x)\0A\00", [49 x i8] zeroinitializer }, align 32
@max14577_muic_chg_handler._entry_ptr = internal global ptr @max14577_muic_chg_handler._entry, section ".printk_index", align 4
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"muic-ADC\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"muic-ADCLOW\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"muic-ADCError\00", [18 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"muic-ADC1K\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"muic-CHGTYP\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"muic-CHGDETRUN\00", [17 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"muic-DCDTMR\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"muic-DBCHG\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"muic-VBVOLT\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"muic-VIDRM\00", [21 x i8] zeroinitializer }, align 32
@max14577_muic_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.4, i32 595, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"muic interrupt: irq %d occurred, skipped\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"max14577_muic_irq_handler\00", [38 x i8] zeroinitializer }, align 32
@max14577_muic_irq_handler._entry_ptr = internal global ptr @max14577_muic_irq_handler._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@max14577_muic_get_cable_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.4, i32 313, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unknown cable group (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"max14577_muic_get_cable_type\00", [35 x i8] zeroinitializer }, align 32
@max14577_muic_get_cable_type._entry_ptr = internal global ptr @max14577_muic_get_cable_type._entry, section ".printk_index", align 4
@max14577_muic_set_path._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.4, i32 206, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to update MUIC register\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"max14577_muic_set_path\00", [41 x i8] zeroinitializer }, align 32
@max14577_muic_set_path._entry_ptr = internal global ptr @max14577_muic_set_path._entry, section ".printk_index", align 4
@max14577_muic_set_path._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.4, i32 219, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@max14577_muic_set_path._entry_ptr.65 = internal global ptr @max14577_muic_set_path._entry.64, section ".printk_index", align 4
@max14577_muic_set_path._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.4, i32 232, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@max14577_muic_set_path._entry_ptr.67 = internal global ptr @max14577_muic_set_path._entry.66, section ".printk_index", align 4
@max14577_muic_set_path.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.63, ptr @.str.4, ptr @.str.68, i8 0, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"CONTROL1 : 0x%02x, CONTROL2 : 0x%02x, state : %s\0A\00", [46 x i8] zeroinitializer }, align 32
@max14577_muic_set_debounce_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.4, i32 173, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to set ADC debounce time\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"max14577_muic_set_debounce_time\00", [32 x i8] zeroinitializer }, align 32
@max14577_muic_set_debounce_time._entry_ptr = internal global ptr @max14577_muic_set_debounce_time._entry, section ".printk_index", align 4
@max14577_muic_set_debounce_time._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.4, i32 178, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid ADC debounce time\0A\00", [37 x i8] zeroinitializer }, align 32
@max14577_muic_set_debounce_time._entry_ptr.73 = internal global ptr @max14577_muic_set_debounce_time._entry.71, section ".printk_index", align 4
@max14577_muic_detect_accessory._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.74, ptr @.str.4, i32 616, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"max14577_muic_detect_accessory\00", [33 x i8] zeroinitializer }, align 32
@max14577_muic_detect_accessory._entry_ptr = internal global ptr @max14577_muic_detect_accessory._entry, section ".printk_index", align 4
@max14577_muic_detect_accessory._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.4, i32 626, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Cannot detect accessory\0A\00", [39 x i8] zeroinitializer }, align 32
@max14577_muic_detect_accessory._entry_ptr.77 = internal global ptr @max14577_muic_detect_accessory._entry.75, section ".printk_index", align 4
@max14577_muic_detect_accessory._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.74, ptr @.str.4, i32 637, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Cannot detect charger accessory\0A\00", [63 x i8] zeroinitializer }, align 32
@max14577_muic_detect_accessory._entry_ptr.80 = internal global ptr @max14577_muic_detect_accessory._entry.78, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.81 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.82 = internal global [33 x i64] [i64 31, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30]
@__sancov_gen_cov_switch_values.83 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 7]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 32, i64 24, i64 25, i64 28]
@___asan_gen_.85 = private unnamed_addr constant [21 x i8] c"max14577_muic_driver\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 789, i32 31 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 791, i32 11 }
@___asan_gen_.91 = private unnamed_addr constant [26 x i8] c"of_max14577_muic_dt_match\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 780, i32 34 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"max14577_muic_id\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 773, i32 40 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 675, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [19 x i8] c"max77836_muic_irqs\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 57, i32 33 }
@___asan_gen_.106 = private unnamed_addr constant [19 x i8] c"max14577_muic_irqs\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 46, i32 33 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 708, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant [22 x i8] c"max14577_extcon_cable\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 142, i32 27 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 719, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 725, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 738, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 750, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 753, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 766, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [32 x i8] c"../include/linux/devm-helpers.h\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 75, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 495, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 510, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 366, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 413, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 418, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 327, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 342, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 436, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 472, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 58, i32 27 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 59, i32 30 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 60, i32 30 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 61, i32 29 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 62, i32 30 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 63, i32 33 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 64, i32 30 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 65, i32 29 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 66, i32 30 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 67, i32 29 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 594, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 313, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 206, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 219, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 232, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 236, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 173, i32 4 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 178, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 616, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 626, i32 4 }
@___asan_gen_.340 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.343 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.344 = private constant [36 x i8] c"../drivers/extcon/extcon-max14577.c\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 637, i32 4 }
@llvm.compiler.used = appending global [117 x ptr] [ptr @__UNIQUE_ID_alias297, ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_max14577_muic_driver_exit, ptr @__initcall__kmod_extcon_max14577__292_798_max14577_muic_driver_init6, ptr @max14577_muic_adc_handler._entry, ptr @max14577_muic_adc_handler._entry.39, ptr @max14577_muic_adc_handler._entry_ptr, ptr @max14577_muic_adc_handler._entry_ptr.41, ptr @max14577_muic_chg_handler._entry, ptr @max14577_muic_chg_handler._entry_ptr, ptr @max14577_muic_detect_accessory._entry, ptr @max14577_muic_detect_accessory._entry.75, ptr @max14577_muic_detect_accessory._entry.78, ptr @max14577_muic_detect_accessory._entry_ptr, ptr @max14577_muic_detect_accessory._entry_ptr.77, ptr @max14577_muic_detect_accessory._entry_ptr.80, ptr @max14577_muic_driver_exit, ptr @max14577_muic_get_cable_type._entry, ptr @max14577_muic_get_cable_type._entry_ptr, ptr @max14577_muic_irq_handler._entry, ptr @max14577_muic_irq_handler._entry_ptr, ptr @max14577_muic_irq_work._entry, ptr @max14577_muic_irq_work._entry.30, ptr @max14577_muic_irq_work._entry_ptr, ptr @max14577_muic_irq_work._entry_ptr.32, ptr @max14577_muic_jig_handler._entry, ptr @max14577_muic_jig_handler._entry_ptr, ptr @max14577_muic_probe._entry, ptr @max14577_muic_probe._entry.10, ptr @max14577_muic_probe._entry.13, ptr @max14577_muic_probe._entry.16, ptr @max14577_muic_probe._entry.19, ptr @max14577_muic_probe._entry.7, ptr @max14577_muic_probe._entry_ptr, ptr @max14577_muic_probe._entry_ptr.12, ptr @max14577_muic_probe._entry_ptr.15, ptr @max14577_muic_probe._entry_ptr.18, ptr @max14577_muic_probe._entry_ptr.22, ptr @max14577_muic_probe._entry_ptr.9, ptr @max14577_muic_set_debounce_time._entry, ptr @max14577_muic_set_debounce_time._entry.71, ptr @max14577_muic_set_debounce_time._entry_ptr, ptr @max14577_muic_set_debounce_time._entry_ptr.73, ptr @max14577_muic_set_path._entry, ptr @max14577_muic_set_path._entry.64, ptr @max14577_muic_set_path._entry.66, ptr @max14577_muic_set_path._entry_ptr, ptr @max14577_muic_set_path._entry_ptr.65, ptr @max14577_muic_set_path._entry_ptr.67, ptr @max14577_muic_driver, ptr @.str, ptr @of_max14577_muic_dt_match, ptr @max14577_muic_id, ptr @max14577_muic_probe.__key, ptr @.str.1, ptr @max77836_muic_irqs, ptr @max14577_muic_irqs, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @max14577_extcon_cable, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @max14577_muic_probe.__key.23, ptr @.str.24, ptr @max14577_muic_probe.__key.25, ptr @.str.26, ptr @devm_work_autocancel.__key, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.79], section "llvm.metadata"
@0 = internal global [87 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_muic_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_max14577_muic_dt_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_muic_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_muic_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77836_muic_irqs to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_muic_irqs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_muic_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_extcon_cable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_muic_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_muic_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_muic_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_muic_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_muic_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_muic_probe.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_muic_probe.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devm_work_autocancel.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_muic_irq_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_muic_irq_work._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_muic_adc_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_muic_adc_handler._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_muic_jig_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_muic_chg_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_muic_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_muic_get_cable_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_muic_set_path._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_muic_set_path._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_muic_set_path._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_muic_set_debounce_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_muic_set_debounce_time._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_muic_detect_accessory._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_muic_detect_accessory._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max14577_muic_detect_accessory._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max14577_muic_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @max14577_muic_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max14577_muic_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @max14577_muic_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max14577_muic_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 280, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup109_crit_edge, label %if.end

entry.cleanup109_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup109

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %call.i, align 4
  %max145775 = getelementptr inbounds %struct.max14577_muic_info, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %max145775 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %max145775, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %mutex = getelementptr inbounds %struct.max14577_muic_info, ptr %call.i, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @max14577_muic_probe.__key) #7
  %irq_work = getelementptr inbounds %struct.max14577_muic_info, ptr %call.i, i32 0, i32 10
  tail call void @__init_work(ptr noundef %irq_work, i32 noundef 0) #7
  %7 = ptrtoint ptr %irq_work to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %irq_work, align 4
  %lockdep_map.i = getelementptr inbounds %struct.max14577_muic_info, ptr %call.i, i32 0, i32 10, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @devm_work_autocancel.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry1.i = getelementptr inbounds %struct.max14577_muic_info, ptr %call.i, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %entry1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry1.i, ptr %entry1.i, align 4
  %prev.i.i = getelementptr inbounds %struct.max14577_muic_info, ptr %call.i, i32 0, i32 10, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry1.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.max14577_muic_info, ptr %call.i, i32 0, i32 10, i32 2
  %10 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @max14577_muic_irq_work, ptr %func.i, align 4
  %call.i183 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @devm_work_drop, ptr noundef %irq_work) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i183)
  %tobool8.not = icmp eq i32 %call.i183, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.cleanup109_crit_edge

if.end.cleanup109_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup109

if.end10:                                         ; preds = %if.end
  %dev_type = getelementptr inbounds %struct.max14577, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dev_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cond117 = icmp eq i32 %12, 2
  %spec.select = select i1 %cond117, ptr @max77836_muic_irqs, ptr @max14577_muic_irqs
  %spec.select204 = select i1 %cond117, i32 10, i32 8
  %13 = getelementptr inbounds %struct.max14577_muic_info, ptr %call.i, i32 0, i32 6
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %spec.select, ptr %13, align 4
  %15 = getelementptr inbounds %struct.max14577_muic_info, ptr %call.i, i32 0, i32 7
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.select204, ptr %15, align 4
  %irq_data = getelementptr inbounds %struct.max14577, ptr %3, i32 0, i32 6
  br label %for.body

for.cond:                                         ; preds = %if.end19
  %inc = add nuw i32 %i.0197, 1
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %15, align 4
  %cmp = icmp ult i32 %inc, %18
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end10
  %i.0197 = phi i32 [ 0, %if.end10 ], [ %inc, %for.cond.for.body_crit_edge ]
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %13, align 4
  %arrayidx = getelementptr %struct.max14577_muic_irq, ptr %20, i32 %i.0197
  %21 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %irq_data, align 4
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  %call16 = tail call i32 @regmap_irq_get_virq(ptr noundef %22, i32 noundef %24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 1
  br i1 %cmp17, label %for.body.cleanup109_crit_edge, label %if.end19

for.body.cleanup109_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup109

if.end19:                                         ; preds = %for.body
  %virq20 = getelementptr %struct.max14577_muic_irq, ptr %20, i32 %i.0197, i32 2
  %25 = ptrtoint ptr %virq20 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call16, ptr %virq20, align 4
  %name = getelementptr %struct.max14577_muic_irq, ptr %20, i32 %i.0197, i32 1
  %26 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name, align 4
  %call22 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call16, ptr noundef null, ptr noundef nonnull @max14577_muic_irq_handler, i32 noundef 16384, ptr noundef %27, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %for.cond, label %do.end27

do.end27:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %29, i32 noundef %call22) #10
  br label %cleanup109

for.end:                                          ; preds = %for.cond
  %call33 = tail call ptr @devm_extcon_dev_allocate(ptr noundef %dev, ptr noundef nonnull @max14577_extcon_cable) #7
  %edev = getelementptr inbounds %struct.max14577_muic_info, ptr %call.i, i32 0, i32 2
  %30 = ptrtoint ptr %edev to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call33, ptr %edev, align 4
  %cmp.i = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end39, label %if.end43

do.end39:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #10
  %31 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %edev, align 4
  %33 = ptrtoint ptr %32 to i32
  br label %cleanup109

if.end43:                                         ; preds = %for.end
  %call46 = tail call i32 @devm_extcon_dev_register(ptr noundef %dev, ptr noundef %call33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end53, label %do.end51

do.end51:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #10
  br label %cleanup109

if.end53:                                         ; preds = %if.end43
  %path_usb = getelementptr inbounds %struct.max14577_muic_info, ptr %call.i, i32 0, i32 13
  %34 = ptrtoint ptr %path_usb to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 9, ptr %path_usb, align 4
  %path_uart = getelementptr inbounds %struct.max14577_muic_info, ptr %call.i, i32 0, i32 14
  %35 = ptrtoint ptr %path_uart to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 27, ptr %path_uart, align 4
  %36 = ptrtoint ptr %max145775 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %max145775, align 4
  %regmap = getelementptr inbounds %struct.max14577, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 4
  %status = getelementptr inbounds %struct.max14577_muic_info, ptr %call.i, i32 0, i32 5
  %call.i184 = tail call i32 @regmap_bulk_read(ptr noundef %39, i32 noundef 4, ptr noundef %status, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i184)
  %tobool57.not = icmp eq i32 %call.i184, 0
  br i1 %tobool57.not, label %if.end63, label %do.end61

do.end61:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.14) #10
  br label %cleanup109

if.end63:                                         ; preds = %if.end53
  %42 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %status, align 4
  %44 = and i8 %43, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %44)
  %cmp.i185 = icmp eq i8 %44, 31
  br i1 %cmp.i185, label %max14577_muic_get_cable_type.exit.thread, label %max14577_muic_get_cable_type.exit

max14577_muic_get_cable_type.exit.thread:         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  %prev_cable_type.i = getelementptr inbounds %struct.max14577_muic_info, ptr %call.i, i32 0, i32 3
  %45 = ptrtoint ptr %prev_cable_type.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 31, ptr %prev_cable_type.i, align 4
  br label %if.end70

max14577_muic_get_cable_type.exit:                ; preds = %if.end63
  %and.i = zext i8 %44 to i32
  %prev_cable_type3.i = getelementptr inbounds %struct.max14577_muic_info, ptr %call.i, i32 0, i32 3
  %46 = ptrtoint ptr %prev_cable_type3.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and.i, ptr %prev_cable_type3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %44)
  %cmp66 = icmp eq i8 %44, 28
  br i1 %cmp66, label %if.then67, label %max14577_muic_get_cable_type.exit.if.end70_crit_edge

max14577_muic_get_cable_type.exit.if.end70_crit_edge: ; preds = %max14577_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.then67:                                        ; preds = %max14577_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %path_uart to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %path_uart, align 4
  %conv = trunc i32 %48 to i8
  %call69 = tail call fastcc i32 @max14577_muic_set_path(ptr noundef nonnull %call.i, i8 noundef zeroext %conv, i1 noundef zeroext true)
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %max14577_muic_get_cable_type.exit.if.end70_crit_edge, %max14577_muic_get_cable_type.exit.thread
  %49 = ptrtoint ptr %max145775 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %max145775, align 4
  %regmap72 = getelementptr inbounds %struct.max14577, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %regmap72 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap72, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %53 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %val.i, align 4, !annotation !180
  %call.i186 = call i32 @regmap_read(ptr noundef %52, i32 noundef 0, ptr noundef nonnull %val.i) #7
  %54 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i186)
  %cmp74 = icmp slt i32 %call.i186, 0
  br i1 %cmp74, label %do.end79, label %do.end84

do.end79:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #10
  br label %cleanup109

do.end84:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call.i, align 4
  %conv86 = and i32 %55, 255
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %57, ptr noundef nonnull @.str.20, i32 noundef %conv86) #10
  call fastcc void @max14577_muic_set_debounce_time(ptr noundef nonnull %call.i)
  %wq_detcable = getelementptr inbounds %struct.max14577_muic_info, ptr %call.i, i32 0, i32 12
  call void @__init_work(ptr noundef %wq_detcable, i32 noundef 0) #7
  %58 = ptrtoint ptr %wq_detcable to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -64, ptr %wq_detcable, align 4
  %lockdep_map = getelementptr inbounds %struct.max14577_muic_info, ptr %call.i, i32 0, i32 12, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.24, ptr noundef nonnull @max14577_muic_probe.__key.23, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry96 = getelementptr inbounds %struct.max14577_muic_info, ptr %call.i, i32 0, i32 12, i32 0, i32 1
  %59 = ptrtoint ptr %entry96 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %entry96, ptr %entry96, align 4
  %prev.i = getelementptr inbounds %struct.max14577_muic_info, ptr %call.i, i32 0, i32 12, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %entry96, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.max14577_muic_info, ptr %call.i, i32 0, i32 12, i32 0, i32 2
  %61 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @max14577_muic_detect_cable_wq, ptr %func, align 4
  %timer = getelementptr inbounds %struct.max14577_muic_info, ptr %call.i, i32 0, i32 12, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.26, ptr noundef nonnull @max14577_muic_probe.__key.25) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %62 = load ptr, ptr @system_power_efficient_wq, align 4
  %call.i187 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %62, ptr noundef %wq_detcable, i32 noundef 1700) #7
  br label %cleanup109

cleanup109:                                       ; preds = %do.end84, %do.end79, %do.end61, %do.end51, %do.end39, %do.end27, %for.body.cleanup109_crit_edge, %if.end.cleanup109_crit_edge, %entry.cleanup109_crit_edge
  %retval.2 = phi i32 [ %33, %do.end39 ], [ %call46, %do.end51 ], [ %call.i184, %do.end61 ], [ %call.i186, %do.end79 ], [ %call.i186, %do.end84 ], [ -12, %entry.cleanup109_crit_edge ], [ %call.i183, %if.end.cleanup109_crit_edge ], [ %call22, %do.end27 ], [ -22, %for.body.cleanup109_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max14577_muic_irq_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -36
  %edev = getelementptr i8, ptr %work, i32 -28
  %0 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr i8, ptr %work, i32 44
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %max14577 = getelementptr i8, ptr %work, i32 -32
  %2 = ptrtoint ptr %max14577 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %max14577, align 4
  %regmap = getelementptr inbounds %struct.max14577, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %status = getelementptr i8, ptr %work, i32 -16
  %call.i = tail call i32 @regmap_bulk_read(ptr noundef %5, i32 noundef 4, ptr noundef %status, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %if.end4, label %if.end.cleanup.sink.split.sink.split_crit_edge

if.end.cleanup.sink.split.sink.split_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.sink.split

if.end4:                                          ; preds = %if.end
  %irq_adc = getelementptr i8, ptr %work, i32 -4
  %6 = ptrtoint ptr %irq_adc to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %irq_adc, align 4, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %if.end4.if.end9_crit_edge, label %if.then6

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call fastcc i32 @max14577_muic_adc_handler(ptr noundef %add.ptr)
  %8 = ptrtoint ptr %irq_adc to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %irq_adc, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end4.if.end9_crit_edge
  %ret.0 = phi i32 [ %call7, %if.then6 ], [ 0, %if.end4.if.end9_crit_edge ]
  %irq_chg = getelementptr i8, ptr %work, i32 -3
  %9 = ptrtoint ptr %irq_chg to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %irq_chg, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool10.not = icmp eq i8 %10, 0
  br i1 %tobool10.not, label %if.end9.if.end14_crit_edge, label %if.then11

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call fastcc i32 @max14577_muic_chg_handler(ptr noundef %add.ptr)
  %11 = ptrtoint ptr %irq_chg to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %irq_chg, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9.if.end14_crit_edge
  %ret.1 = phi i32 [ %call12, %if.then11 ], [ %ret.0, %if.end9.if.end14_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp = icmp slt i32 %ret.1, 0
  br i1 %cmp, label %if.end14.cleanup.sink.split.sink.split_crit_edge, label %if.end14.cleanup.sink.split_crit_edge

if.end14.cleanup.sink.split_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end14.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.end14.cleanup.sink.split.sink.split_crit_edge, %if.end.cleanup.sink.split.sink.split_crit_edge
  %.str.31.sink = phi ptr [ @.str.28, %if.end.cleanup.sink.split.sink.split_crit_edge ], [ @.str.31, %if.end14.cleanup.sink.split.sink.split_crit_edge ]
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull %.str.31.sink) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end14.cleanup.sink.split_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_irq_get_virq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max14577_muic_irq_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %muic_irqs_num = getelementptr inbounds %struct.max14577_muic_info, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %muic_irqs_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %muic_irqs_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp35.not = icmp eq i32 %1, 0
  br i1 %cmp35.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %muic_irqs = getelementptr inbounds %struct.max14577_muic_info, ptr %data, i32 0, i32 6
  %2 = ptrtoint ptr %muic_irqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %muic_irqs, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %irq_type.038 = phi i32 [ -1, %for.body.lr.ph ], [ %irq_type.1, %for.inc.for.body_crit_edge ]
  %i.036 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %virq = getelementptr %struct.max14577_muic_irq, ptr %3, i32 %i.036, i32 2
  %4 = ptrtoint ptr %virq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %virq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %irq)
  %cmp1 = icmp eq i32 %5, %irq
  br i1 %cmp1, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.max14577_muic_irq, ptr %3, i32 %i.036
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %irq_type.1 = phi i32 [ %7, %if.then ], [ %irq_type.038, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %irq_type.0.lcssa = phi i32 [ -1, %entry.for.end_crit_edge ], [ %irq_type.1, %for.inc.for.end_crit_edge ]
  %max14577 = getelementptr inbounds %struct.max14577_muic_info, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %max14577 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %max14577, align 4
  %dev_type = getelementptr inbounds %struct.max14577, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dev_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cond = icmp eq i32 %11, 2
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %for.end
  %12 = zext i32 %irq_type.0.lcssa to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %irq_type.0.lcssa, label %sw.bb.do.end_crit_edge [
    i32 0, label %sw.bb.sw.bb.i.i_crit_edge
    i32 1, label %sw.bb.sw.bb.i.i_crit_edge39
    i32 2, label %sw.bb.sw.bb.i.i_crit_edge40
    i32 4, label %sw.bb.sw.bb1.i.i_crit_edge
    i32 5, label %sw.bb.sw.bb1.i.i_crit_edge41
    i32 6, label %sw.bb.sw.bb1.i.i_crit_edge42
    i32 7, label %sw.bb.sw.bb1.i.i_crit_edge43
    i32 8, label %sw.bb.sw.bb1.i.i_crit_edge44
    i32 3, label %sw.bb.i
    i32 9, label %sw.bb1.i
  ]

sw.bb.sw.bb1.i.i_crit_edge44:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i.i

sw.bb.sw.bb1.i.i_crit_edge43:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i.i

sw.bb.sw.bb1.i.i_crit_edge42:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i.i

sw.bb.sw.bb1.i.i_crit_edge41:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i.i

sw.bb.sw.bb1.i.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i.i

sw.bb.sw.bb.i.i_crit_edge40:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i.i

sw.bb.sw.bb.i.i_crit_edge39:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i.i

sw.bb.sw.bb.i.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i.i

sw.bb.do.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

sw.bb.i.i:                                        ; preds = %sw.bb.sw.bb.i.i_crit_edge, %sw.bb.sw.bb.i.i_crit_edge39, %sw.bb.sw.bb.i.i_crit_edge40
  %irq_adc.i.i = getelementptr inbounds %struct.max14577_muic_info, ptr %data, i32 0, i32 8
  %13 = ptrtoint ptr %irq_adc.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %irq_adc.i.i, align 4
  br label %if.end11

sw.bb1.i.i:                                       ; preds = %sw.bb.sw.bb1.i.i_crit_edge, %sw.bb.sw.bb1.i.i_crit_edge41, %sw.bb.sw.bb1.i.i_crit_edge42, %sw.bb.sw.bb1.i.i_crit_edge43, %sw.bb.sw.bb1.i.i_crit_edge44
  %irq_chg.i.i = getelementptr inbounds %struct.max14577_muic_info, ptr %data, i32 0, i32 9
  %14 = ptrtoint ptr %irq_chg.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %irq_chg.i.i, align 1
  br label %if.end11

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %irq_adc.i = getelementptr inbounds %struct.max14577_muic_info, ptr %data, i32 0, i32 8
  %15 = ptrtoint ptr %irq_adc.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %irq_adc.i, align 4
  br label %if.end11

sw.bb1.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %irq_chg.i = getelementptr inbounds %struct.max14577_muic_info, ptr %data, i32 0, i32 9
  %16 = ptrtoint ptr %irq_chg.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %irq_chg.i, align 1
  br label %if.end11

sw.default:                                       ; preds = %for.end
  %17 = zext i32 %irq_type.0.lcssa to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %irq_type.0.lcssa, label %sw.default.do.end_crit_edge [
    i32 0, label %sw.default.sw.bb.i29_crit_edge
    i32 1, label %sw.default.sw.bb.i29_crit_edge45
    i32 2, label %sw.default.sw.bb.i29_crit_edge46
    i32 4, label %sw.default.sw.bb1.i31_crit_edge
    i32 5, label %sw.default.sw.bb1.i31_crit_edge47
    i32 6, label %sw.default.sw.bb1.i31_crit_edge48
    i32 7, label %sw.default.sw.bb1.i31_crit_edge49
    i32 8, label %sw.default.sw.bb1.i31_crit_edge50
  ]

sw.default.sw.bb1.i31_crit_edge50:                ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i31

sw.default.sw.bb1.i31_crit_edge49:                ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i31

sw.default.sw.bb1.i31_crit_edge48:                ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i31

sw.default.sw.bb1.i31_crit_edge47:                ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i31

sw.default.sw.bb1.i31_crit_edge:                  ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i31

sw.default.sw.bb.i29_crit_edge46:                 ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i29

sw.default.sw.bb.i29_crit_edge45:                 ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i29

sw.default.sw.bb.i29_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i29

sw.default.do.end_crit_edge:                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

sw.bb.i29:                                        ; preds = %sw.default.sw.bb.i29_crit_edge, %sw.default.sw.bb.i29_crit_edge45, %sw.default.sw.bb.i29_crit_edge46
  %irq_adc.i28 = getelementptr inbounds %struct.max14577_muic_info, ptr %data, i32 0, i32 8
  %18 = ptrtoint ptr %irq_adc.i28 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %irq_adc.i28, align 4
  br label %if.end11

sw.bb1.i31:                                       ; preds = %sw.default.sw.bb1.i31_crit_edge, %sw.default.sw.bb1.i31_crit_edge47, %sw.default.sw.bb1.i31_crit_edge48, %sw.default.sw.bb1.i31_crit_edge49, %sw.default.sw.bb1.i31_crit_edge50
  %irq_chg.i30 = getelementptr inbounds %struct.max14577_muic_info, ptr %data, i32 0, i32 9
  %19 = ptrtoint ptr %irq_chg.i30 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %irq_chg.i30, align 1
  br label %if.end11

do.end:                                           ; preds = %sw.default.do.end_crit_edge, %sw.bb.do.end_crit_edge
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.58, i32 noundef %irq_type.0.lcssa) #10
  br label %cleanup

if.end11:                                         ; preds = %sw.bb1.i31, %sw.bb.i29, %sw.bb1.i, %sw.bb.i, %sw.bb1.i.i, %sw.bb.i.i
  %irq_work = getelementptr inbounds %struct.max14577_muic_info, ptr %data, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %22 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %irq_work) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_extcon_dev_allocate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_extcon_dev_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max14577_muic_set_path(ptr nocapture noundef readonly %info, i8 noundef zeroext %val, i1 noundef zeroext %attached) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %max14577 = getelementptr inbounds %struct.max14577_muic_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %max14577 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %max14577, align 4
  %regmap = getelementptr inbounds %struct.max14577, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 12, i32 noundef 63, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.62) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %max14577 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %max14577, align 4
  %regmap4 = getelementptr inbounds %struct.max14577, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %regmap4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap4, align 4
  %10 = zext i8 %val to i32
  %conv2.i = select i1 %attached, i32 %10, i32 0
  %call.i.i66 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 12, i32 noundef 63, i32 noundef %conv2.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i66)
  %cmp6 = icmp slt i32 %call.i.i66, 0
  br i1 %cmp6, label %do.end10, label %if.end12

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.62) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %13 = ptrtoint ptr %max14577 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %max14577, align 4
  %regmap22 = getelementptr inbounds %struct.max14577, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %regmap22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap22, align 4
  %conv2.i67 = select i1 %attached, i32 4, i32 1
  %call.i.i68 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 13, i32 noundef 5, i32 noundef %conv2.i67, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i68)
  %cmp24 = icmp slt i32 %call.i.i68, 0
  br i1 %cmp24, label %do.end29, label %do.body32

do.end29:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.62) #10
  br label %cleanup

do.body32:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max14577_muic_set_path.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max14577_muic_set_path, %if.then38)) #7
          to label %cleanup [label %if.then38], !srcloc !182

if.then38:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %info, align 4
  %cond = select i1 %attached, ptr @.str.36, ptr @.str.37
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max14577_muic_set_path.__UNIQUE_ID_ddebug288, ptr noundef %20, ptr noundef nonnull @.str.68, i32 noundef %conv2.i, i32 noundef %conv2.i67, ptr noundef nonnull %cond) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %do.body32, %do.end29, %do.end10, %do.end
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ %call.i.i66, %do.end10 ], [ %call.i.i68, %do.end29 ], [ 0, %if.then38 ], [ 0, %do.body32 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @max14577_muic_set_debounce_time(ptr nocapture noundef readonly %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %max14577 = getelementptr inbounds %struct.max14577_muic_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %max14577 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %max14577, align 4
  %regmap = getelementptr inbounds %struct.max14577, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 14, i32 noundef 48, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %conv1 = trunc i32 %call.i.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv1)
  %tobool.not = icmp eq i8 %conv1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.69) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max14577_muic_detect_cable_wq(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -172
  %mutex.i = getelementptr i8, ptr %work, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #7
  %max14577.i = getelementptr i8, ptr %work, i32 -168
  %0 = ptrtoint ptr %max14577.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %max14577.i, align 4
  %regmap.i = getelementptr inbounds %struct.max14577, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %status.i = getelementptr i8, ptr %work, i32 -152
  %call.i.i = tail call i32 @regmap_bulk_read(ptr noundef %3, i32 noundef 4, ptr noundef %status.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.28) #10
  br label %max14577_muic_detect_accessory.exit

if.end.i:                                         ; preds = %entry
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %status.i, align 4
  %8 = and i8 %7, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %8)
  %cmp.i.i = icmp eq i8 %8, 31
  br i1 %cmp.i.i, label %max14577_muic_get_cable_type.exit.thread.i, label %max14577_muic_get_cable_type.exit.i

max14577_muic_get_cable_type.exit.thread.i:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev_cable_type.i.i = getelementptr i8, ptr %work, i32 -160
  %9 = ptrtoint ptr %prev_cable_type.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 31, ptr %prev_cable_type.i.i, align 4
  br label %if.end14.i

max14577_muic_get_cable_type.exit.i:              ; preds = %if.end.i
  %and.i.i = zext i8 %8 to i32
  %prev_cable_type3.i.i = getelementptr i8, ptr %work, i32 -160
  %10 = ptrtoint ptr %prev_cable_type3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and.i.i, ptr %prev_cable_type3.i.i, align 4
  %call5.i = tail call fastcc i32 @max14577_muic_adc_handler(ptr noundef %add.ptr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %do.end10.i, label %max14577_muic_get_cable_type.exit.i.if.end14.i_crit_edge

max14577_muic_get_cable_type.exit.i.if.end14.i_crit_edge: ; preds = %max14577_muic_get_cable_type.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

do.end10.i:                                       ; preds = %max14577_muic_get_cable_type.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.76) #10
  br label %max14577_muic_detect_accessory.exit

if.end14.i:                                       ; preds = %max14577_muic_get_cable_type.exit.i.if.end14.i_crit_edge, %max14577_muic_get_cable_type.exit.thread.i
  %arrayidx6.i.i = getelementptr i8, ptr %work, i32 -151
  %13 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx6.i.i, align 1
  %15 = and i8 %14, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp10.i.i = icmp eq i8 %15, 0
  br i1 %cmp10.i.i, label %max14577_muic_get_cable_type.exit3.thread.i, label %max14577_muic_get_cable_type.exit3.i

max14577_muic_get_cable_type.exit3.thread.i:      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev_chg_type.i.i = getelementptr i8, ptr %work, i32 -156
  %16 = ptrtoint ptr %prev_chg_type.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %prev_chg_type.i.i, align 4
  br label %max14577_muic_detect_accessory.exit

max14577_muic_get_cable_type.exit3.i:             ; preds = %if.end14.i
  %and8.i.i = zext i8 %15 to i32
  %prev_chg_type15.i.i = getelementptr i8, ptr %work, i32 -156
  %17 = ptrtoint ptr %prev_chg_type15.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and8.i.i, ptr %prev_chg_type15.i.i, align 4
  %call20.i = tail call fastcc i32 @max14577_muic_chg_handler(ptr noundef %add.ptr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp21.i = icmp slt i32 %call20.i, 0
  br i1 %cmp21.i, label %do.end25.i, label %max14577_muic_get_cable_type.exit3.i.max14577_muic_detect_accessory.exit_crit_edge

max14577_muic_get_cable_type.exit3.i.max14577_muic_detect_accessory.exit_crit_edge: ; preds = %max14577_muic_get_cable_type.exit3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %max14577_muic_detect_accessory.exit

do.end25.i:                                       ; preds = %max14577_muic_get_cable_type.exit3.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.79) #10
  br label %max14577_muic_detect_accessory.exit

max14577_muic_detect_accessory.exit:              ; preds = %do.end25.i, %max14577_muic_get_cable_type.exit3.i.max14577_muic_detect_accessory.exit_crit_edge, %max14577_muic_get_cable_type.exit3.thread.i, %do.end10.i, %do.end.i
  tail call void @mutex_unlock(ptr noundef %mutex.i) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_work_drop(ptr noundef %res) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %res) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max14577_muic_adc_handler(ptr nocapture noundef %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %status.i = getelementptr inbounds %struct.max14577_muic_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %status.i, align 4
  %2 = and i8 %1, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %2)
  %cmp.i = icmp eq i8 %2, 31
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev_cable_type.i = getelementptr inbounds %struct.max14577_muic_info, ptr %info, i32 0, i32 3
  %3 = ptrtoint ptr %prev_cable_type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %prev_cable_type.i, align 4
  store i32 31, ptr %prev_cable_type.i, align 4
  br label %max14577_muic_get_cable_type.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = zext i8 %2 to i32
  %prev_cable_type3.i = getelementptr inbounds %struct.max14577_muic_info, ptr %info, i32 0, i32 3
  %5 = ptrtoint ptr %prev_cable_type3.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and.i, ptr %prev_cable_type3.i, align 4
  br label %max14577_muic_get_cable_type.exit

max14577_muic_get_cable_type.exit:                ; preds = %if.else.i, %if.then.i
  %cable_type.0.i = phi i32 [ %4, %if.then.i ], [ %and.i, %if.else.i ]
  %6 = xor i1 %cmp.i, true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max14577_muic_adc_handler.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max14577_muic_adc_handler, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !182

if.then:                                          ; preds = %max14577_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %info, align 4
  %cond = select i1 %cmp.i, ptr @.str.37, ptr @.str.36
  %prev_cable_type = getelementptr inbounds %struct.max14577_muic_info, ptr %info, i32 0, i32 3
  %9 = ptrtoint ptr %prev_cable_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %prev_cable_type, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max14577_muic_adc_handler.__UNIQUE_ID_ddebug290, ptr noundef %8, ptr noundef nonnull @.str.35, ptr noundef nonnull %cond, i32 noundef %cable_type.0.i, i32 noundef %10) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %max14577_muic_get_cable_type.exit
  %11 = zext i32 %cable_type.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %cable_type.0.i, label %do.end18 [
    i32 24, label %do.end.sw.bb_crit_edge
    i32 25, label %do.end.sw.bb_crit_edge38
    i32 28, label %do.end.sw.bb_crit_edge39
    i32 0, label %do.end.do.end12_crit_edge
    i32 1, label %do.end.do.end12_crit_edge40
    i32 2, label %do.end.do.end12_crit_edge41
    i32 3, label %do.end.do.end12_crit_edge42
    i32 4, label %do.end.do.end12_crit_edge43
    i32 5, label %do.end.do.end12_crit_edge44
    i32 6, label %do.end.do.end12_crit_edge45
    i32 7, label %do.end.do.end12_crit_edge46
    i32 8, label %do.end.do.end12_crit_edge47
    i32 9, label %do.end.do.end12_crit_edge48
    i32 10, label %do.end.do.end12_crit_edge49
    i32 11, label %do.end.do.end12_crit_edge50
    i32 12, label %do.end.do.end12_crit_edge51
    i32 13, label %do.end.do.end12_crit_edge52
    i32 14, label %do.end.do.end12_crit_edge53
    i32 15, label %do.end.do.end12_crit_edge54
    i32 16, label %do.end.do.end12_crit_edge55
    i32 17, label %do.end.do.end12_crit_edge56
    i32 18, label %do.end.do.end12_crit_edge57
    i32 19, label %do.end.do.end12_crit_edge58
    i32 20, label %do.end.do.end12_crit_edge59
    i32 21, label %do.end.do.end12_crit_edge60
    i32 22, label %do.end.do.end12_crit_edge61
    i32 23, label %do.end.do.end12_crit_edge62
    i32 26, label %do.end.do.end12_crit_edge63
    i32 27, label %do.end.do.end12_crit_edge64
    i32 29, label %do.end.do.end12_crit_edge65
    i32 30, label %do.end.do.end12_crit_edge66
  ]

do.end.do.end12_crit_edge66:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end.do.end12_crit_edge65:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end.do.end12_crit_edge64:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end.do.end12_crit_edge63:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end.do.end12_crit_edge62:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end.do.end12_crit_edge61:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end.do.end12_crit_edge60:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end.do.end12_crit_edge59:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end.do.end12_crit_edge58:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end.do.end12_crit_edge57:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end.do.end12_crit_edge56:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end.do.end12_crit_edge55:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end.do.end12_crit_edge54:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end.do.end12_crit_edge53:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end.do.end12_crit_edge52:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end.do.end12_crit_edge51:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end.do.end12_crit_edge50:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end.do.end12_crit_edge49:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end.do.end12_crit_edge48:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end.do.end12_crit_edge47:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end.do.end12_crit_edge46:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end.do.end12_crit_edge45:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end.do.end12_crit_edge44:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end.do.end12_crit_edge43:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end.do.end12_crit_edge42:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end.do.end12_crit_edge41:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end.do.end12_crit_edge40:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end.do.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end.sw.bb_crit_edge39:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

do.end.sw.bb_crit_edge38:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

do.end.sw.bb_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %do.end.sw.bb_crit_edge, %do.end.sw.bb_crit_edge38, %do.end.sw.bb_crit_edge39
  %call6 = tail call fastcc i32 @max14577_muic_jig_handler(ptr noundef %info, i32 noundef %cable_type.0.i, i1 noundef zeroext %6)
  %12 = tail call i32 @llvm.smin.i32(i32 %call6, i32 0)
  br label %cleanup

do.end12:                                         ; preds = %do.end.do.end12_crit_edge, %do.end.do.end12_crit_edge40, %do.end.do.end12_crit_edge41, %do.end.do.end12_crit_edge42, %do.end.do.end12_crit_edge43, %do.end.do.end12_crit_edge44, %do.end.do.end12_crit_edge45, %do.end.do.end12_crit_edge46, %do.end.do.end12_crit_edge47, %do.end.do.end12_crit_edge48, %do.end.do.end12_crit_edge49, %do.end.do.end12_crit_edge50, %do.end.do.end12_crit_edge51, %do.end.do.end12_crit_edge52, %do.end.do.end12_crit_edge53, %do.end.do.end12_crit_edge54, %do.end.do.end12_crit_edge55, %do.end.do.end12_crit_edge56, %do.end.do.end12_crit_edge57, %do.end.do.end12_crit_edge58, %do.end.do.end12_crit_edge59, %do.end.do.end12_crit_edge60, %do.end.do.end12_crit_edge61, %do.end.do.end12_crit_edge62, %do.end.do.end12_crit_edge63, %do.end.do.end12_crit_edge64, %do.end.do.end12_crit_edge65, %do.end.do.end12_crit_edge66
  %13 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %info, align 4
  %cond15 = select i1 %cmp.i, ptr @.str.37, ptr @.str.36
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.38, ptr noundef nonnull %cond15, i32 noundef %cable_type.0.i) #10
  br label %cleanup

do.end18:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %info, align 4
  %cond21 = select i1 %cmp.i, ptr @.str.37, ptr @.str.36
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.40, ptr noundef nonnull %cond21, i32 noundef %cable_type.0.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %do.end12, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end18 ], [ -11, %do.end12 ], [ %12, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max14577_muic_chg_handler(ptr nocapture noundef %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx6.i = getelementptr %struct.max14577_muic_info, ptr %info, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx6.i, align 1
  %2 = and i8 %1, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp10.i = icmp eq i8 %2, 0
  br i1 %cmp10.i, label %if.then12.i, label %if.else14.i

if.then12.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev_chg_type.i = getelementptr inbounds %struct.max14577_muic_info, ptr %info, i32 0, i32 4
  %3 = ptrtoint ptr %prev_chg_type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %prev_chg_type.i, align 4
  store i32 0, ptr %prev_chg_type.i, align 4
  br label %max14577_muic_get_cable_type.exit

if.else14.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and8.i = zext i8 %2 to i32
  %prev_chg_type15.i = getelementptr inbounds %struct.max14577_muic_info, ptr %info, i32 0, i32 4
  %5 = ptrtoint ptr %prev_chg_type15.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and8.i, ptr %prev_chg_type15.i, align 4
  br label %max14577_muic_get_cable_type.exit

max14577_muic_get_cable_type.exit:                ; preds = %if.else14.i, %if.then12.i
  %cable_type.0.i = phi i32 [ %4, %if.then12.i ], [ %and8.i, %if.else14.i ]
  %6 = xor i1 %cmp10.i, true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max14577_muic_chg_handler.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max14577_muic_chg_handler, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !182

if.then:                                          ; preds = %max14577_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %info, align 4
  %cond = select i1 %cmp10.i, ptr @.str.37, ptr @.str.36
  %prev_chg_type = getelementptr inbounds %struct.max14577_muic_info, ptr %info, i32 0, i32 4
  %9 = ptrtoint ptr %prev_chg_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %prev_chg_type, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max14577_muic_chg_handler.__UNIQUE_ID_ddebug291, ptr noundef %8, ptr noundef nonnull @.str.46, ptr noundef nonnull %cond, i32 noundef %cable_type.0.i, i32 noundef %10) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %max14577_muic_get_cable_type.exit
  %11 = zext i32 %cable_type.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %cable_type.0.i, label %do.end34 [
    i32 1, label %sw.bb
    i32 3, label %sw.bb15
    i32 2, label %sw.bb19
    i32 4, label %sw.bb23
    i32 5, label %sw.bb27
    i32 0, label %do.end.cleanup_crit_edge
    i32 7, label %do.end.cleanup_crit_edge64
  ]

do.end.cleanup_crit_edge64:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  %path_usb = getelementptr inbounds %struct.max14577_muic_info, ptr %info, i32 0, i32 13
  %12 = ptrtoint ptr %path_usb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %path_usb, align 4
  %conv = trunc i32 %13 to i8
  %call6 = tail call fastcc i32 @max14577_muic_set_path(ptr noundef %info, i8 noundef zeroext %conv, i1 noundef zeroext %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end9

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %edev = getelementptr inbounds %struct.max14577_muic_info, ptr %info, i32 0, i32 2
  %14 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %edev, align 4
  %call11 = tail call i32 @extcon_set_state_sync(ptr noundef %15, i32 noundef 1, i1 noundef zeroext %6) #7
  %16 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %edev, align 4
  %call14 = tail call i32 @extcon_set_state_sync(ptr noundef %17, i32 noundef 5, i1 noundef zeroext %6) #7
  br label %cleanup

sw.bb15:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %edev16 = getelementptr inbounds %struct.max14577_muic_info, ptr %info, i32 0, i32 2
  %18 = ptrtoint ptr %edev16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %edev16, align 4
  %call18 = tail call i32 @extcon_set_state_sync(ptr noundef %19, i32 noundef 6, i1 noundef zeroext %6) #7
  br label %cleanup

sw.bb19:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %edev20 = getelementptr inbounds %struct.max14577_muic_info, ptr %info, i32 0, i32 2
  %20 = ptrtoint ptr %edev20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %edev20, align 4
  %call22 = tail call i32 @extcon_set_state_sync(ptr noundef %21, i32 noundef 7, i1 noundef zeroext %6) #7
  br label %cleanup

sw.bb23:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %edev24 = getelementptr inbounds %struct.max14577_muic_info, ptr %info, i32 0, i32 2
  %22 = ptrtoint ptr %edev24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %edev24, align 4
  %call26 = tail call i32 @extcon_set_state_sync(ptr noundef %23, i32 noundef 10, i1 noundef zeroext %6) #7
  br label %cleanup

sw.bb27:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %edev28 = getelementptr inbounds %struct.max14577_muic_info, ptr %info, i32 0, i32 2
  %24 = ptrtoint ptr %edev28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %edev28, align 4
  %call30 = tail call i32 @extcon_set_state_sync(ptr noundef %25, i32 noundef 9, i1 noundef zeroext %6) #7
  br label %cleanup

do.end34:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %info, align 4
  %cond38 = select i1 %cmp10.i, ptr @.str.37, ptr @.str.36
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.47, ptr noundef nonnull %cond38, i32 noundef %cable_type.0.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %sw.bb27, %sw.bb23, %sw.bb19, %sw.bb15, %if.end9, %sw.bb.cleanup_crit_edge, %do.end.cleanup_crit_edge, %do.end.cleanup_crit_edge64
  %retval.0 = phi i32 [ -22, %do.end34 ], [ %call6, %sw.bb.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge64 ], [ 0, %sw.bb27 ], [ 0, %sw.bb23 ], [ 0, %sw.bb19 ], [ 0, %sw.bb15 ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max14577_muic_jig_handler(ptr nocapture noundef readonly %info, i32 noundef %cable_type, i1 noundef zeroext %attached) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max14577_muic_jig_handler.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max14577_muic_jig_handler, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !182

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %cond = select i1 %attached, ptr @.str.36, ptr @.str.37
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max14577_muic_jig_handler.__UNIQUE_ID_ddebug289, ptr noundef %1, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond, i32 noundef %cable_type) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = zext i32 %cable_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %cable_type, label %do.end8 [
    i32 24, label %do.end.sw.epilog_crit_edge
    i32 25, label %do.end.sw.epilog_crit_edge28
    i32 28, label %sw.bb5
  ]

do.end.sw.epilog_crit_edge28:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %info, align 4
  %cond11 = select i1 %attached, ptr @.str.36, ptr @.str.37
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.44, ptr noundef nonnull %cond11) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb5, %do.end.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge28
  %path.0 = phi i8 [ 27, %sw.bb5 ], [ 9, %do.end.sw.epilog_crit_edge ], [ 9, %do.end.sw.epilog_crit_edge28 ]
  %call13 = tail call fastcc i32 @max14577_muic_set_path(ptr noundef %info, i8 noundef zeroext %path.0, i1 noundef zeroext %attached)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %sw.epilog.cleanup_crit_edge, label %if.end15

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %edev = getelementptr inbounds %struct.max14577_muic_info, ptr %info, i32 0, i32 2
  %5 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %edev, align 4
  %call17 = tail call i32 @extcon_set_state_sync(ptr noundef %6, i32 noundef 61, i1 noundef zeroext %attached) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %sw.epilog.cleanup_crit_edge, %do.end8
  %retval.0 = phi i32 [ -22, %do.end8 ], [ 0, %if.end15 ], [ %call13, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_set_state_sync(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !123, !124, !125, !127, !129, !130, !131, !132, !134, !135, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169}
!llvm.module.flags = !{!171, !172, !173, !174, !175, !176, !177, !178}
!llvm.ident = !{!179}

!0 = !{ptr @__initcall__kmod_extcon_max14577__292_798_max14577_muic_driver_init6, !1, !"__initcall__kmod_extcon_max14577__292_798_max14577_muic_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/extcon/extcon-max14577.c", i32 798, i32 1}
!2 = !{ptr @__exitcall_max14577_muic_driver_exit, !1, !"__exitcall_max14577_muic_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description293, !4, !"__UNIQUE_ID_description293", i1 false, i1 false}
!4 = !{!"../drivers/extcon/extcon-max14577.c", i32 800, i32 1}
!5 = !{ptr @__UNIQUE_ID_author294, !6, !"__UNIQUE_ID_author294", i1 false, i1 false}
!6 = !{!"../drivers/extcon/extcon-max14577.c", i32 801, i32 1}
!7 = !{ptr @__UNIQUE_ID_file295, !8, !"__UNIQUE_ID_file295", i1 false, i1 false}
!8 = !{!"../drivers/extcon/extcon-max14577.c", i32 802, i32 1}
!9 = !{ptr @__UNIQUE_ID_license296, !8, !"__UNIQUE_ID_license296", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias297, !11, !"__UNIQUE_ID_alias297", i1 false, i1 false}
!11 = !{!"../drivers/extcon/extcon-max14577.c", i32 803, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/extcon/extcon-max14577.c", i32 791, i32 11}
!14 = !{ptr @max14577_muic_driver, !15, !"max14577_muic_driver", i1 false, i1 false}
!15 = !{!"../drivers/extcon/extcon-max14577.c", i32 789, i32 31}
!16 = !{ptr @max14577_muic_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/extcon/extcon-max14577.c", i32 675, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/extcon/extcon-max14577.c", i32 708, i32 4}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @max14577_muic_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @max14577_muic_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/extcon/extcon-max14577.c", i32 719, i32 3}
!29 = !{ptr @max14577_muic_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @max14577_muic_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/extcon/extcon-max14577.c", i32 725, i32 3}
!33 = !{ptr @max14577_muic_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @max14577_muic_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/extcon/extcon-max14577.c", i32 738, i32 3}
!37 = !{ptr @max14577_muic_probe._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @max14577_muic_probe._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/extcon/extcon-max14577.c", i32 750, i32 3}
!41 = !{ptr @max14577_muic_probe._entry.16, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @max14577_muic_probe._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/extcon/extcon-max14577.c", i32 753, i32 2}
!45 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @max14577_muic_probe._entry.19, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @max14577_muic_probe._entry_ptr.22, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @max14577_muic_probe.__key.23, !49, !"__key", i1 false, i1 false}
!49 = !{!"../drivers/extcon/extcon-max14577.c", i32 766, i32 2}
!50 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @max14577_muic_probe.__key.25, !49, !"__key", i1 false, i1 false}
!52 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @devm_work_autocancel.__key, !54, !"__key", i1 false, i1 false}
!54 = !{!"../include/linux/devm-helpers.h", i32 75, i32 2}
!55 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/extcon/extcon-max14577.c", i32 495, i32 3}
!58 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @max14577_muic_irq_work._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @max14577_muic_irq_work._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/extcon/extcon-max14577.c", i32 510, i32 3}
!63 = !{ptr @max14577_muic_irq_work._entry.30, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @max14577_muic_irq_work._entry_ptr.32, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/extcon/extcon-max14577.c", i32 366, i32 2}
!67 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @max14577_muic_adc_handler.__UNIQUE_ID_ddebug290, !66, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!70 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.37, !66, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/extcon/extcon-max14577.c", i32 413, i32 3}
!74 = !{ptr @max14577_muic_adc_handler._entry, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @max14577_muic_adc_handler._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/extcon/extcon-max14577.c", i32 418, i32 3}
!78 = !{ptr @max14577_muic_adc_handler._entry.39, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @max14577_muic_adc_handler._entry_ptr.41, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/extcon/extcon-max14577.c", i32 327, i32 2}
!82 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @max14577_muic_jig_handler.__UNIQUE_ID_ddebug289, !81, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!84 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/extcon/extcon-max14577.c", i32 342, i32 3}
!86 = !{ptr @max14577_muic_jig_handler._entry, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @max14577_muic_jig_handler._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/extcon/extcon-max14577.c", i32 436, i32 2}
!90 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @max14577_muic_chg_handler.__UNIQUE_ID_ddebug291, !89, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/extcon/extcon-max14577.c", i32 472, i32 3}
!94 = !{ptr @max14577_muic_chg_handler._entry, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @max14577_muic_chg_handler._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/extcon/extcon-max14577.c", i32 58, i32 27}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/extcon/extcon-max14577.c", i32 59, i32 30}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/extcon/extcon-max14577.c", i32 60, i32 30}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/extcon/extcon-max14577.c", i32 61, i32 29}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/extcon/extcon-max14577.c", i32 62, i32 30}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/extcon/extcon-max14577.c", i32 63, i32 33}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/extcon/extcon-max14577.c", i32 64, i32 30}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/extcon/extcon-max14577.c", i32 65, i32 29}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/extcon/extcon-max14577.c", i32 66, i32 30}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/extcon/extcon-max14577.c", i32 67, i32 29}
!116 = !{ptr @max77836_muic_irqs, !117, !"max77836_muic_irqs", i1 false, i1 false}
!117 = !{!"../drivers/extcon/extcon-max14577.c", i32 57, i32 33}
!118 = !{ptr @max14577_muic_irqs, !119, !"max14577_muic_irqs", i1 false, i1 false}
!119 = !{!"../drivers/extcon/extcon-max14577.c", i32 46, i32 33}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/extcon/extcon-max14577.c", i32 594, i32 3}
!122 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @max14577_muic_irq_handler._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @max14577_muic_irq_handler._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @max14577_extcon_cable, !126, !"max14577_extcon_cable", i1 false, i1 false}
!126 = !{!"../drivers/extcon/extcon-max14577.c", i32 142, i32 27}
!127 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/extcon/extcon-max14577.c", i32 313, i32 3}
!129 = !{ptr @.str.61, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @max14577_muic_get_cable_type._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @max14577_muic_get_cable_type._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/extcon/extcon-max14577.c", i32 206, i32 3}
!134 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @max14577_muic_set_path._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @max14577_muic_set_path._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @max14577_muic_set_path._entry.64, !138, !"_entry", i1 false, i1 false}
!138 = !{!"../drivers/extcon/extcon-max14577.c", i32 219, i32 3}
!139 = !{ptr @max14577_muic_set_path._entry_ptr.65, !138, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @max14577_muic_set_path._entry.66, !141, !"_entry", i1 false, i1 false}
!141 = !{!"../drivers/extcon/extcon-max14577.c", i32 232, i32 3}
!142 = !{ptr @max14577_muic_set_path._entry_ptr.67, !141, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.68, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/extcon/extcon-max14577.c", i32 236, i32 2}
!145 = !{ptr @max14577_muic_set_path.__UNIQUE_ID_ddebug288, !144, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!146 = !{ptr @.str.69, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/extcon/extcon-max14577.c", i32 173, i32 4}
!148 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @max14577_muic_set_debounce_time._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @max14577_muic_set_debounce_time._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.72, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/extcon/extcon-max14577.c", i32 178, i32 3}
!153 = !{ptr @max14577_muic_set_debounce_time._entry.71, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @max14577_muic_set_debounce_time._entry_ptr.73, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.74, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/extcon/extcon-max14577.c", i32 616, i32 3}
!157 = !{ptr @max14577_muic_detect_accessory._entry, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @max14577_muic_detect_accessory._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.76, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/extcon/extcon-max14577.c", i32 626, i32 4}
!161 = !{ptr @max14577_muic_detect_accessory._entry.75, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @max14577_muic_detect_accessory._entry_ptr.77, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.79, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/extcon/extcon-max14577.c", i32 637, i32 4}
!165 = !{ptr @max14577_muic_detect_accessory._entry.78, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @max14577_muic_detect_accessory._entry_ptr.80, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @of_max14577_muic_dt_match, !168, !"of_max14577_muic_dt_match", i1 false, i1 false}
!168 = !{!"../drivers/extcon/extcon-max14577.c", i32 780, i32 34}
!169 = !{ptr @max14577_muic_id, !170, !"max14577_muic_id", i1 false, i1 false}
!170 = !{!"../drivers/extcon/extcon-max14577.c", i32 773, i32 40}
!171 = !{i32 1, !"wchar_size", i32 2}
!172 = !{i32 1, !"min_enum_size", i32 4}
!173 = !{i32 8, !"branch-target-enforcement", i32 0}
!174 = !{i32 8, !"sign-return-address", i32 0}
!175 = !{i32 8, !"sign-return-address-all", i32 0}
!176 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!177 = !{i32 7, !"uwtable", i32 1}
!178 = !{i32 7, !"frame-pointer", i32 2}
!179 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!180 = !{!"auto-init"}
!181 = !{i8 0, i8 2}
!182 = !{i64 2148300376, i64 2148300381, i64 2148300394, i64 2148300438, i64 2148300472, i64 2148300493}
