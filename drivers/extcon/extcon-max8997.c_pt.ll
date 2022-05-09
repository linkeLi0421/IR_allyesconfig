; ModuleID = '/llk/IR_all_yes/drivers/extcon/extcon-max8997.c_pt.bc'
source_filename = "../drivers/extcon/extcon-max8997.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.max8997_muic_irq = type { i32, ptr, i32 }
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
%struct.max8997_dev = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, ptr, %struct.mutex, [11 x i32], [11 x i32], [187 x i8], [12 x i8] }
%struct.max8997_muic_info = type { ptr, ptr, ptr, i32, i32, [2 x i8], i32, %struct.work_struct, %struct.mutex, ptr, i32, %struct.delayed_work, i32, i32 }
%struct.max8997_platform_data = type { i32, ptr, i32, i8, [3 x i32], i32, [8 x i32], i8, [8 x i32], i8, [8 x i32], i8, i32, i32, ptr, ptr, ptr }
%struct.max8997_muic_platform_data = type { ptr, i32, i32, i32, i32 }
%struct.max8997_muic_reg_data = type { i8, i8 }

@__initcall__kmod_extcon_max8997__289_771_max8997_muic_driver_init6 = internal global ptr @max8997_muic_driver_init, section ".initcall6.init", align 4
@max8997_muic_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @max8997_muic_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_max8997_muic_driver_exit = internal global ptr @max8997_muic_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description290 = internal constant [55 x i8] c"extcon_max8997.description=Maxim MAX8997 Extcon driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [58 x i8] c"extcon_max8997.author=Donggeun Kim <dg77.kim@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [50 x i8] c"extcon_max8997.file=drivers/extcon/extcon-max8997\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [27 x i8] c"extcon_max8997.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias294 = internal constant [43 x i8] c"extcon_max8997.alias=platform:max8997-muic\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max8997-muic\00", [19 x i8] zeroinitializer }, align 32
@max8997_muic_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&info->mutex\00", [19 x i8] zeroinitializer }, align 32
@max8997_muic_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&info->irq_work)\00", [61 x i8] zeroinitializer }, align 32
@muic_irqs = internal global { [11 x %struct.max8997_muic_irq], [60 x i8] } { [11 x %struct.max8997_muic_irq] [%struct.max8997_muic_irq { i32 26, ptr @.str.51, i32 0 }, %struct.max8997_muic_irq { i32 27, ptr @.str.52, i32 0 }, %struct.max8997_muic_irq { i32 28, ptr @.str.53, i32 0 }, %struct.max8997_muic_irq { i32 29, ptr @.str.54, i32 0 }, %struct.max8997_muic_irq { i32 30, ptr @.str.55, i32 0 }, %struct.max8997_muic_irq { i32 31, ptr @.str.56, i32 0 }, %struct.max8997_muic_irq { i32 32, ptr @.str.57, i32 0 }, %struct.max8997_muic_irq { i32 33, ptr @.str.58, i32 0 }, %struct.max8997_muic_irq { i32 34, ptr @.str.59, i32 0 }, %struct.max8997_muic_irq { i32 14, ptr @.str.60, i32 0 }, %struct.max8997_muic_irq { i32 15, ptr @.str.61, i32 0 }], [60 x i8] zeroinitializer }, align 32
@max8997_muic_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 676, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed: irq request (IRQ: %d, error :%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max8997_muic_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/extcon/extcon-max8997.c\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max8997_muic_probe._entry_ptr = internal global ptr @max8997_muic_probe._entry, section ".printk_index", align 4
@max8997_extcon_cable = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 1, i32 2, i32 5, i32 6, i32 9, i32 10, i32 7, i32 41, i32 60, i32 61, i32 0], [52 x i8] zeroinitializer }, align 32
@max8997_muic_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 684, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to allocate memory for extcon\0A\00", [58 x i8] zeroinitializer }, align 32
@max8997_muic_probe._entry_ptr.11 = internal global ptr @max8997_muic_probe._entry.9, section ".printk_index", align 4
@max8997_muic_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 690, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to register extcon device\0A\00", [62 x i8] zeroinitializer }, align 32
@max8997_muic_probe._entry_ptr.14 = internal global ptr @max8997_muic_probe._entry.12, section ".printk_index", align 4
@max8997_muic_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.6, i32 738, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to read MUIC register\0A\00", [34 x i8] zeroinitializer }, align 32
@max8997_muic_probe._entry_ptr.17 = internal global ptr @max8997_muic_probe._entry.15, section ".printk_index", align 4
@max8997_muic_probe.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&info->wq_detcable)->work)\00", [49 x i8] zeroinitializer }, align 32
@max8997_muic_probe.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&info->wq_detcable)->timer\00", [35 x i8] zeroinitializer }, align 32
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@max8997_muic_irq_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.6, i32 527, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to read muic register\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max8997_muic_irq_work\00", [42 x i8] zeroinitializer }, align 32
@max8997_muic_irq_work._entry_ptr = internal global ptr @max8997_muic_irq_work._entry, section ".printk_index", align 4
@max8997_muic_irq_work._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.6, i32 553, ptr @.str.26, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"misc interrupt: irq %d occurred\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@max8997_muic_irq_work._entry_ptr.27 = internal global ptr @max8997_muic_irq_work._entry.24, section ".printk_index", align 4
@max8997_muic_irq_work._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.23, ptr @.str.6, i32 559, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to handle MUIC interrupt\0A\00", [63 x i8] zeroinitializer }, align 32
@max8997_muic_irq_work._entry_ptr.30 = internal global ptr @max8997_muic_irq_work._entry.28, section ".printk_index", align 4
@max8997_muic_adc_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.6, i32 449, ptr @.str.26, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"cable is %s but it isn't used (type:0x%x)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"max8997_muic_adc_handler\00", [39 x i8] zeroinitializer }, align 32
@max8997_muic_adc_handler._entry_ptr = internal global ptr @max8997_muic_adc_handler._entry, section ".printk_index", align 4
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"attached\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"detached\00", [23 x i8] zeroinitializer }, align 32
@max8997_muic_adc_handler._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.32, ptr @.str.6, i32 454, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to detect %s unknown cable (type:0x%x)\0A\00", [49 x i8] zeroinitializer }, align 32
@max8997_muic_adc_handler._entry_ptr.37 = internal global ptr @max8997_muic_adc_handler._entry.35, section ".printk_index", align 4
@max8997_muic_handle_usb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.6, i32 319, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to update muic register\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max8997_muic_handle_usb\00", [40 x i8] zeroinitializer }, align 32
@max8997_muic_handle_usb._entry_ptr = internal global ptr @max8997_muic_handle_usb._entry, section ".printk_index", align 4
@max8997_muic_handle_usb._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.6, i32 334, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to detect %s usb cable\0A\00", [33 x i8] zeroinitializer }, align 32
@max8997_muic_handle_usb._entry_ptr.42 = internal global ptr @max8997_muic_handle_usb._entry.40, section ".printk_index", align 4
@max8997_muic_handle_dock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.43, ptr @.str.6, i32 348, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"max8997_muic_handle_dock\00", [39 x i8] zeroinitializer }, align 32
@max8997_muic_handle_dock._entry_ptr = internal global ptr @max8997_muic_handle_dock._entry, section ".printk_index", align 4
@max8997_muic_handle_dock._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.6, i32 359, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to detect %s dock device\0A\00", [63 x i8] zeroinitializer }, align 32
@max8997_muic_handle_dock._entry_ptr.46 = internal global ptr @max8997_muic_handle_dock._entry.44, section ".printk_index", align 4
@max8997_muic_handle_jig_uart._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.47, ptr @.str.6, i32 374, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"max8997_muic_handle_jig_uart\00", [35 x i8] zeroinitializer }, align 32
@max8997_muic_handle_jig_uart._entry_ptr = internal global ptr @max8997_muic_handle_jig_uart._entry, section ".printk_index", align 4
@max8997_muic_chg_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.6, i32 501, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"failed to detect %s unknown chg cable (type:0x%x)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"max8997_muic_chg_handler\00", [39 x i8] zeroinitializer }, align 32
@max8997_muic_chg_handler._entry_ptr = internal global ptr @max8997_muic_chg_handler._entry, section ".printk_index", align 4
@devm_work_autocancel.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(work_completion)(w)\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"muic-ADCERROR\00", [18 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"muic-ADCLOW\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"muic-ADC\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"muic-VBVOLT\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"muic-DBCHG\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"muic-DCDTMR\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"muic-CHGDETRUN\00", [17 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"muic-CHGTYP\00", [20 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"muic-OVP\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pmic-CHGINS\00", [20 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pmic-CHGRM\00", [21 x i8] zeroinitializer }, align 32
@max8997_muic_irq_handler.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.62, ptr @.str.63, ptr @.str.6, ptr @.str.64, i8 0, i8 -114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"extcon_max8997\00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"max8997_muic_irq_handler\00", [39 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"irq:%d\0A\00", [24 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@max8997_muic_get_cable_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.6, i32 304, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unknown cable group (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"max8997_muic_get_cable_type\00", [36 x i8] zeroinitializer }, align 32
@max8997_muic_get_cable_type._entry_ptr = internal global ptr @max8997_muic_get_cable_type._entry, section ".printk_index", align 4
@max8997_muic_set_path._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.6, i32 211, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to update MUIC register\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max8997_muic_set_path\00", [42 x i8] zeroinitializer }, align 32
@max8997_muic_set_path._entry_ptr = internal global ptr @max8997_muic_set_path._entry, section ".printk_index", align 4
@max8997_muic_set_path._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.6, i32 224, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@max8997_muic_set_path._entry_ptr.70 = internal global ptr @max8997_muic_set_path._entry.69, section ".printk_index", align 4
@max8997_muic_set_path._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.68, ptr @.str.6, i32 230, ptr @.str.26, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"CONTROL1 : 0x%02x, CONTROL2 : 0x%02x, state : %s\0A\00", [46 x i8] zeroinitializer }, align 32
@max8997_muic_set_path._entry_ptr.73 = internal global ptr @max8997_muic_set_path._entry.71, section ".printk_index", align 4
@max8997_muic_set_debounce_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.6, i32 175, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to set ADC debounce time\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"max8997_muic_set_debounce_time\00", [33 x i8] zeroinitializer }, align 32
@max8997_muic_set_debounce_time._entry_ptr = internal global ptr @max8997_muic_set_debounce_time._entry, section ".printk_index", align 4
@max8997_muic_set_debounce_time._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.6, i32 180, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid ADC debounce time\0A\00", [37 x i8] zeroinitializer }, align 32
@max8997_muic_set_debounce_time._entry_ptr.78 = internal global ptr @max8997_muic_set_debounce_time._entry.76, section ".printk_index", align 4
@max8997_muic_detect_cable_wq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.6, i32 629, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to detect cable type\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"max8997_muic_detect_cable_wq\00", [35 x i8] zeroinitializer }, align 32
@max8997_muic_detect_cable_wq._entry_ptr = internal global ptr @max8997_muic_detect_cable_wq._entry, section ".printk_index", align 4
@max8997_muic_detect_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.81, ptr @.str.6, i32 589, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max8997_muic_detect_dev\00", [40 x i8] zeroinitializer }, align 32
@max8997_muic_detect_dev._entry_ptr = internal global ptr @max8997_muic_detect_dev._entry, section ".printk_index", align 4
@max8997_muic_detect_dev._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.6, i32 599, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Cannot detect ADC cable\0A\00", [39 x i8] zeroinitializer }, align 32
@max8997_muic_detect_dev._entry_ptr.84 = internal global ptr @max8997_muic_detect_dev._entry.82, section ".printk_index", align 4
@max8997_muic_detect_dev._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.81, ptr @.str.6, i32 610, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot detect charger cable\0A\00", [35 x i8] zeroinitializer }, align 32
@max8997_muic_detect_dev._entry_ptr.87 = internal global ptr @max8997_muic_detect_dev._entry.85, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 14, i64 15, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34]
@__sancov_gen_cov_switch_values.88 = internal global [33 x i64] [i64 31, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 32, i64 26, i64 29]
@__sancov_gen_cov_switch_values.90 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.91 = private unnamed_addr constant [20 x i8] c"max8997_muic_driver\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 764, i32 31 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 766, i32 11 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 651, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 653, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [10 x i8] c"muic_irqs\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 38, i32 32 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 674, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant [21 x i8] c"max8997_extcon_cable\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 141, i32 27 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 684, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 690, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 738, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 757, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 527, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 552, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 559, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 447, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 452, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 319, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 333, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 348, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 358, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 374, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 499, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.254 = private unnamed_addr constant [32 x i8] c"../include/linux/devm-helpers.h\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 75, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 39, i32 30 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 40, i32 28 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 41, i32 26 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 42, i32 28 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 43, i32 27 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 44, i32 28 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 45, i32 31 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 46, i32 28 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 47, i32 26 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 48, i32 28 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 49, i32 27 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 568, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 304, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 211, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 224, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 228, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 175, i32 4 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 180, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 629, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 589, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 599, i32 4 }
@___asan_gen_.361 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.364 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.365 = private constant [35 x i8] c"../drivers/extcon/extcon-max8997.c\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 610, i32 4 }
@llvm.compiler.used = appending global [125 x ptr] [ptr @__UNIQUE_ID_alias294, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_max8997_muic_driver_exit, ptr @__initcall__kmod_extcon_max8997__289_771_max8997_muic_driver_init6, ptr @max8997_muic_adc_handler._entry, ptr @max8997_muic_adc_handler._entry.35, ptr @max8997_muic_adc_handler._entry_ptr, ptr @max8997_muic_adc_handler._entry_ptr.37, ptr @max8997_muic_chg_handler._entry, ptr @max8997_muic_chg_handler._entry_ptr, ptr @max8997_muic_detect_cable_wq._entry, ptr @max8997_muic_detect_cable_wq._entry_ptr, ptr @max8997_muic_detect_dev._entry, ptr @max8997_muic_detect_dev._entry.82, ptr @max8997_muic_detect_dev._entry.85, ptr @max8997_muic_detect_dev._entry_ptr, ptr @max8997_muic_detect_dev._entry_ptr.84, ptr @max8997_muic_detect_dev._entry_ptr.87, ptr @max8997_muic_driver_exit, ptr @max8997_muic_get_cable_type._entry, ptr @max8997_muic_get_cable_type._entry_ptr, ptr @max8997_muic_handle_dock._entry, ptr @max8997_muic_handle_dock._entry.44, ptr @max8997_muic_handle_dock._entry_ptr, ptr @max8997_muic_handle_dock._entry_ptr.46, ptr @max8997_muic_handle_jig_uart._entry, ptr @max8997_muic_handle_jig_uart._entry_ptr, ptr @max8997_muic_handle_usb._entry, ptr @max8997_muic_handle_usb._entry.40, ptr @max8997_muic_handle_usb._entry_ptr, ptr @max8997_muic_handle_usb._entry_ptr.42, ptr @max8997_muic_irq_work._entry, ptr @max8997_muic_irq_work._entry.24, ptr @max8997_muic_irq_work._entry.28, ptr @max8997_muic_irq_work._entry_ptr, ptr @max8997_muic_irq_work._entry_ptr.27, ptr @max8997_muic_irq_work._entry_ptr.30, ptr @max8997_muic_probe._entry, ptr @max8997_muic_probe._entry.12, ptr @max8997_muic_probe._entry.15, ptr @max8997_muic_probe._entry.9, ptr @max8997_muic_probe._entry_ptr, ptr @max8997_muic_probe._entry_ptr.11, ptr @max8997_muic_probe._entry_ptr.14, ptr @max8997_muic_probe._entry_ptr.17, ptr @max8997_muic_set_debounce_time._entry, ptr @max8997_muic_set_debounce_time._entry.76, ptr @max8997_muic_set_debounce_time._entry_ptr, ptr @max8997_muic_set_debounce_time._entry_ptr.78, ptr @max8997_muic_set_path._entry, ptr @max8997_muic_set_path._entry.69, ptr @max8997_muic_set_path._entry.71, ptr @max8997_muic_set_path._entry_ptr, ptr @max8997_muic_set_path._entry_ptr.70, ptr @max8997_muic_set_path._entry_ptr.73, ptr @max8997_muic_driver, ptr @.str, ptr @max8997_muic_probe.__key, ptr @.str.1, ptr @max8997_muic_probe.__key.2, ptr @.str.3, ptr @muic_irqs, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @max8997_extcon_cable, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @max8997_muic_probe.__key.18, ptr @.str.19, ptr @max8997_muic_probe.__key.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @devm_work_autocancel.__key, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.86], section "llvm.metadata"
@0 = internal global [92 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_muic_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_muic_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_muic_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @muic_irqs to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_muic_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_extcon_cable to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_muic_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_muic_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_muic_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_muic_probe.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_muic_probe.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_muic_irq_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_muic_irq_work._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_muic_irq_work._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_muic_adc_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_muic_adc_handler._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_muic_handle_usb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_muic_handle_usb._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_muic_handle_dock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_muic_handle_dock._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_muic_handle_jig_uart._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_muic_chg_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devm_work_autocancel.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_muic_get_cable_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_muic_set_path._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_muic_set_path._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_muic_set_path._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_muic_set_debounce_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_muic_set_debounce_time._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_muic_detect_cable_wq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_muic_detect_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_muic_detect_dev._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_muic_detect_dev._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_muic_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @max8997_muic_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max8997_muic_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @max8997_muic_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_muic_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data.i, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 280, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup146_crit_edge, label %if.end

entry.cleanup146_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup146

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %call.i, align 4
  %muic = getelementptr inbounds %struct.max8997_dev, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %muic to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %muic, align 4
  %muic7 = getelementptr inbounds %struct.max8997_muic_info, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %muic7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %muic7, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %mutex = getelementptr inbounds %struct.max8997_muic_info, ptr %call.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @max8997_muic_probe.__key) #5
  %irq_work = getelementptr inbounds %struct.max8997_muic_info, ptr %call.i, i32 0, i32 7
  tail call void @__init_work(ptr noundef %irq_work, i32 noundef 0) #5
  %13 = ptrtoint ptr %irq_work to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -64, ptr %irq_work, align 4
  %lockdep_map = getelementptr inbounds %struct.max8997_muic_info, ptr %call.i, i32 0, i32 7, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @max8997_muic_probe.__key.2, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry12 = getelementptr inbounds %struct.max8997_muic_info, ptr %call.i, i32 0, i32 7, i32 1
  %14 = ptrtoint ptr %entry12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %entry12, ptr %entry12, align 4
  %prev.i = getelementptr inbounds %struct.max8997_muic_info, ptr %call.i, i32 0, i32 7, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %entry12, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.max8997_muic_info, ptr %call.i, i32 0, i32 7, i32 2
  %16 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @max8997_muic_irq_work, ptr %func, align 4
  tail call void @__init_work(ptr noundef %irq_work, i32 noundef 0) #5
  %17 = ptrtoint ptr %irq_work to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -64, ptr %irq_work, align 4
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.50, ptr noundef nonnull @devm_work_autocancel.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %18 = ptrtoint ptr %entry12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %entry12, ptr %entry12, align 4
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %entry12, ptr %prev.i, align 4
  %20 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @max8997_muic_irq_work, ptr %func, align 4
  %call.i240 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @devm_work_drop, ptr noundef %irq_work) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i240)
  %tobool19.not = icmp eq i32 %call.i240, 0
  br i1 %tobool19.not, label %for.cond.preheader, label %if.end.cleanup146_crit_edge

if.end.cleanup146_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup146

for.cond.preheader:                               ; preds = %if.end
  %irq_domain = getelementptr inbounds %struct.max8997_dev, ptr %3, i32 0, i32 11
  br label %for.body

for.cond:                                         ; preds = %if.end25
  %inc = add nuw nsw i32 %i.0257, 1
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader
  %i.0257 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr [11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 %i.0257
  %21 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %irq_domain, align 4
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  %call.i241 = tail call i32 @irq_create_mapping_affinity(ptr noundef %22, i32 noundef %24, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241)
  %tobool23.not = icmp eq i32 %call.i241, 0
  br i1 %tobool23.not, label %for.body.cleanup146_crit_edge, label %if.end25

for.body.cleanup146_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup146

if.end25:                                         ; preds = %for.body
  %virq26 = getelementptr [11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 %i.0257, i32 2
  %25 = ptrtoint ptr %virq26 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call.i241, ptr %virq26, align 4
  %name = getelementptr [11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 %i.0257, i32 1
  %26 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name, align 4
  %call28 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call.i241, ptr noundef null, ptr noundef nonnull @max8997_muic_irq_handler, i32 noundef 16384, ptr noundef %27, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %for.cond, label %do.end33

do.end33:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %29, i32 noundef %call28) #8
  br label %cleanup146

for.end:                                          ; preds = %for.cond
  %call39 = tail call ptr @devm_extcon_dev_allocate(ptr noundef %dev, ptr noundef nonnull @max8997_extcon_cable) #5
  %edev = getelementptr inbounds %struct.max8997_muic_info, ptr %call.i, i32 0, i32 2
  %30 = ptrtoint ptr %edev to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call39, ptr %edev, align 4
  %cmp.i242 = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i242, label %do.end45, label %if.end49

do.end45:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #8
  %31 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %edev, align 4
  %33 = ptrtoint ptr %32 to i32
  br label %cleanup146

if.end49:                                         ; preds = %for.end
  %call52 = tail call i32 @devm_extcon_dev_register(ptr noundef %dev, ptr noundef %call39) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end59, label %do.end57

do.end57:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #8
  br label %cleanup146

if.end59:                                         ; preds = %if.end49
  %tobool60.not = icmp eq ptr %7, null
  br i1 %tobool60.not, label %if.end59.if.else97_crit_edge, label %land.lhs.true

if.end59.if.else97_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else97

land.lhs.true:                                    ; preds = %if.end59
  %muic_pdata = getelementptr inbounds %struct.max8997_platform_data, ptr %7, i32 0, i32 14
  %34 = ptrtoint ptr %muic_pdata to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %muic_pdata, align 4
  %tobool61.not = icmp eq ptr %35, null
  br i1 %tobool61.not, label %land.lhs.true.if.else97_crit_edge, label %for.cond65.preheader

land.lhs.true.if.else97_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else97

for.cond65.preheader:                             ; preds = %land.lhs.true
  %num_init_data = getelementptr inbounds %struct.max8997_muic_platform_data, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %num_init_data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_init_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp66258 = icmp sgt i32 %37, 0
  br i1 %cmp66258, label %for.cond65.preheader.for.body67_crit_edge, label %for.cond65.preheader.for.end76_crit_edge

for.cond65.preheader.for.end76_crit_edge:         ; preds = %for.cond65.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end76

for.cond65.preheader.for.body67_crit_edge:        ; preds = %for.cond65.preheader
  br label %for.body67

for.body67:                                       ; preds = %for.body67.for.body67_crit_edge, %for.cond65.preheader.for.body67_crit_edge
  %i.1259 = phi i32 [ %inc75, %for.body67.for.body67_crit_edge ], [ 0, %for.cond65.preheader.for.body67_crit_edge ]
  %38 = ptrtoint ptr %muic7 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %muic7, align 4
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %35, align 4
  %arrayidx69 = getelementptr %struct.max8997_muic_reg_data, ptr %41, i32 %i.1259
  %42 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx69, align 1
  %data72 = getelementptr %struct.max8997_muic_reg_data, ptr %41, i32 %i.1259, i32 1
  %44 = ptrtoint ptr %data72 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %data72, align 1
  %call73 = tail call i32 @max8997_write_reg(ptr noundef %39, i8 noundef zeroext %43, i8 noundef zeroext %45) #5
  %inc75 = add nuw nsw i32 %i.1259, 1
  %46 = ptrtoint ptr %num_init_data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_init_data, align 4
  %cmp66 = icmp slt i32 %inc75, %47
  br i1 %cmp66, label %for.body67.for.body67_crit_edge, label %for.body67.for.end76_crit_edge

for.body67.for.end76_crit_edge:                   ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end76

for.body67.for.body67_crit_edge:                  ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body67

for.end76:                                        ; preds = %for.body67.for.end76_crit_edge, %for.cond65.preheader.for.end76_crit_edge
  %path_uart = getelementptr inbounds %struct.max8997_muic_platform_data, ptr %35, i32 0, i32 4
  %48 = ptrtoint ptr %path_uart to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %path_uart, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool77.not = icmp eq i32 %49, 0
  %spec.select = select i1 %tobool77.not, i32 27, i32 %49
  %50 = getelementptr inbounds %struct.max8997_muic_info, ptr %call.i, i32 0, i32 13
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %spec.select, ptr %50, align 4
  %path_usb = getelementptr inbounds %struct.max8997_muic_platform_data, ptr %35, i32 0, i32 3
  %52 = ptrtoint ptr %path_usb to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %path_usb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool83.not = icmp eq i32 %53, 0
  %.sink263 = select i1 %tobool83.not, i32 9, i32 %53
  %54 = getelementptr inbounds %struct.max8997_muic_info, ptr %call.i, i32 0, i32 12
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %.sink263, ptr %54, align 4
  %detcable_delay_ms = getelementptr inbounds %struct.max8997_muic_platform_data, ptr %35, i32 0, i32 2
  %56 = ptrtoint ptr %detcable_delay_ms to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %detcable_delay_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool90.not = icmp eq i32 %57, 0
  br i1 %tobool90.not, label %for.end76.if.end101_crit_edge, label %if.else.i

for.end76.if.end101_crit_edge:                    ; preds = %for.end76
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end101

if.else.i:                                        ; preds = %for.end76
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %57) #5
  br label %if.end101

if.else97:                                        ; preds = %land.lhs.true.if.else97_crit_edge, %if.end59.if.else97_crit_edge
  %path_uart98 = getelementptr inbounds %struct.max8997_muic_info, ptr %call.i, i32 0, i32 13
  %58 = ptrtoint ptr %path_uart98 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 27, ptr %path_uart98, align 4
  %path_usb99 = getelementptr inbounds %struct.max8997_muic_info, ptr %call.i, i32 0, i32 12
  %59 = ptrtoint ptr %path_usb99 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 9, ptr %path_usb99, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.else97, %if.else.i, %for.end76.if.end101_crit_edge
  %delay_jiffies.1 = phi i32 [ 2000, %if.else97 ], [ %call2.i, %if.else.i ], [ 2000, %for.end76.if.end101_crit_edge ]
  %60 = ptrtoint ptr %muic7 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %muic7, align 4
  %status = getelementptr inbounds %struct.max8997_muic_info, ptr %call.i, i32 0, i32 5
  %call103 = tail call i32 @max8997_bulk_read(ptr noundef %61, i8 noundef zeroext 4, i32 noundef 2, ptr noundef %status) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end110, label %do.end108

do.end108:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.16) #8
  br label %cleanup146

if.end110:                                        ; preds = %if.end101
  %64 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %status, align 4
  %66 = and i8 %65, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %66)
  %cmp.i243 = icmp eq i8 %66, 31
  br i1 %cmp.i243, label %max8997_muic_get_cable_type.exit.thread, label %max8997_muic_get_cable_type.exit

max8997_muic_get_cable_type.exit.thread:          ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #7
  %prev_cable_type.i = getelementptr inbounds %struct.max8997_muic_info, ptr %call.i, i32 0, i32 3
  %67 = ptrtoint ptr %prev_cable_type.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 31, ptr %prev_cable_type.i, align 4
  br label %if.end118

max8997_muic_get_cable_type.exit:                 ; preds = %if.end110
  %and.i = zext i8 %66 to i32
  %prev_cable_type3.i = getelementptr inbounds %struct.max8997_muic_info, ptr %call.i, i32 0, i32 3
  %68 = ptrtoint ptr %prev_cable_type3.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %and.i, ptr %prev_cable_type3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %66)
  %cmp114 = icmp eq i8 %66, 28
  br i1 %cmp114, label %if.then115, label %max8997_muic_get_cable_type.exit.if.end118_crit_edge

max8997_muic_get_cable_type.exit.if.end118_crit_edge: ; preds = %max8997_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end118

if.then115:                                       ; preds = %max8997_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  %path_uart116 = getelementptr inbounds %struct.max8997_muic_info, ptr %call.i, i32 0, i32 13
  %69 = ptrtoint ptr %path_uart116 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %path_uart116, align 4
  %conv = trunc i32 %70 to i8
  %call117 = tail call fastcc i32 @max8997_muic_set_path(ptr noundef nonnull %call.i, i8 noundef zeroext %conv, i1 noundef zeroext true)
  br label %if.end118

if.end118:                                        ; preds = %if.then115, %max8997_muic_get_cable_type.exit.if.end118_crit_edge, %max8997_muic_get_cable_type.exit.thread
  %71 = ptrtoint ptr %muic7 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %muic7, align 4
  %call.i246 = tail call i32 @max8997_update_reg(ptr noundef %72, i8 noundef zeroext 14, i8 noundef zeroext 32, i8 noundef zeroext 48) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i246)
  %tobool.not.i = icmp eq i32 %call.i246, 0
  br i1 %tobool.not.i, label %if.end118.max8997_muic_set_debounce_time.exit_crit_edge, label %do.end.i

if.end118.max8997_muic_set_debounce_time.exit_crit_edge: ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #7
  br label %max8997_muic_set_debounce_time.exit

do.end.i:                                         ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #7
  %73 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.74) #8
  br label %max8997_muic_set_debounce_time.exit

max8997_muic_set_debounce_time.exit:              ; preds = %do.end.i, %if.end118.max8997_muic_set_debounce_time.exit_crit_edge
  %wq_detcable = getelementptr inbounds %struct.max8997_muic_info, ptr %call.i, i32 0, i32 11
  tail call void @__init_work(ptr noundef %wq_detcable, i32 noundef 0) #5
  %75 = ptrtoint ptr %wq_detcable to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -64, ptr %wq_detcable, align 4
  %lockdep_map129 = getelementptr inbounds %struct.max8997_muic_info, ptr %call.i, i32 0, i32 11, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map129, ptr noundef nonnull @.str.19, ptr noundef nonnull @max8997_muic_probe.__key.18, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry132 = getelementptr inbounds %struct.max8997_muic_info, ptr %call.i, i32 0, i32 11, i32 0, i32 1
  %76 = ptrtoint ptr %entry132 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %entry132, ptr %entry132, align 4
  %prev.i247 = getelementptr inbounds %struct.max8997_muic_info, ptr %call.i, i32 0, i32 11, i32 0, i32 1, i32 1
  %77 = ptrtoint ptr %prev.i247 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %entry132, ptr %prev.i247, align 4
  %func135 = getelementptr inbounds %struct.max8997_muic_info, ptr %call.i, i32 0, i32 11, i32 0, i32 2
  %78 = ptrtoint ptr %func135 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @max8997_muic_detect_cable_wq, ptr %func135, align 4
  %timer = getelementptr inbounds %struct.max8997_muic_info, ptr %call.i, i32 0, i32 11, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.21, ptr noundef nonnull @max8997_muic_probe.__key.20) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %79 = load ptr, ptr @system_power_efficient_wq, align 4
  %call.i248 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %79, ptr noundef %wq_detcable, i32 noundef %delay_jiffies.1) #5
  br label %cleanup146

cleanup146:                                       ; preds = %max8997_muic_set_debounce_time.exit, %do.end108, %do.end57, %do.end45, %do.end33, %for.body.cleanup146_crit_edge, %if.end.cleanup146_crit_edge, %entry.cleanup146_crit_edge
  %retval.2 = phi i32 [ %33, %do.end45 ], [ %call52, %do.end57 ], [ %call103, %do.end108 ], [ 0, %max8997_muic_set_debounce_time.exit ], [ -12, %entry.cleanup146_crit_edge ], [ %call.i240, %if.end.cleanup146_crit_edge ], [ %call28, %do.end33 ], [ -22, %for.body.cleanup146_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max8997_muic_irq_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -28
  %edev = getelementptr i8, ptr %work, i32 -20
  %0 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr i8, ptr %work, i32 44
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %irq = getelementptr i8, ptr %work, i32 -4
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %4 = load i32, ptr getelementptr inbounds ([11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %4)
  %cmp1 = icmp eq i32 %3, %4
  br i1 %cmp1, label %if.then2, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = load i32, ptr @muic_irqs, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then2, %if.end.for.inc_crit_edge
  %irq_type.1 = phi i32 [ %5, %if.then2 ], [ 0, %if.end.for.inc_crit_edge ]
  %6 = load i32, ptr getelementptr inbounds ([11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 1, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %6)
  %cmp1.1 = icmp eq i32 %3, %6
  br i1 %cmp1.1, label %if.then2.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then2.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %7 = load i32, ptr getelementptr inbounds ([11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 1), align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then2.1, %for.inc.for.inc.1_crit_edge
  %irq_type.1.1 = phi i32 [ %7, %if.then2.1 ], [ %irq_type.1, %for.inc.for.inc.1_crit_edge ]
  %8 = load i32, ptr getelementptr inbounds ([11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 2, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %8)
  %cmp1.2 = icmp eq i32 %3, %8
  br i1 %cmp1.2, label %if.then2.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then2.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  %9 = load i32, ptr getelementptr inbounds ([11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 2), align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then2.2, %for.inc.1.for.inc.2_crit_edge
  %irq_type.1.2 = phi i32 [ %9, %if.then2.2 ], [ %irq_type.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %10 = load i32, ptr getelementptr inbounds ([11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 3, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %10)
  %cmp1.3 = icmp eq i32 %3, %10
  br i1 %cmp1.3, label %if.then2.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

if.then2.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  %11 = load i32, ptr getelementptr inbounds ([11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 3), align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then2.3, %for.inc.2.for.inc.3_crit_edge
  %irq_type.1.3 = phi i32 [ %11, %if.then2.3 ], [ %irq_type.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %12 = load i32, ptr getelementptr inbounds ([11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 4, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %12)
  %cmp1.4 = icmp eq i32 %3, %12
  br i1 %cmp1.4, label %if.then2.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

if.then2.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  %13 = load i32, ptr getelementptr inbounds ([11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 4), align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then2.4, %for.inc.3.for.inc.4_crit_edge
  %irq_type.1.4 = phi i32 [ %13, %if.then2.4 ], [ %irq_type.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %14 = load i32, ptr getelementptr inbounds ([11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 5, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %14)
  %cmp1.5 = icmp eq i32 %3, %14
  br i1 %cmp1.5, label %if.then2.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5

if.then2.5:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  %15 = load i32, ptr getelementptr inbounds ([11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 5), align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then2.5, %for.inc.4.for.inc.5_crit_edge
  %irq_type.1.5 = phi i32 [ %15, %if.then2.5 ], [ %irq_type.1.4, %for.inc.4.for.inc.5_crit_edge ]
  %16 = load i32, ptr getelementptr inbounds ([11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 6, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %16)
  %cmp1.6 = icmp eq i32 %3, %16
  br i1 %cmp1.6, label %if.then2.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.6

if.then2.6:                                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  %17 = load i32, ptr getelementptr inbounds ([11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 6), align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then2.6, %for.inc.5.for.inc.6_crit_edge
  %irq_type.1.6 = phi i32 [ %17, %if.then2.6 ], [ %irq_type.1.5, %for.inc.5.for.inc.6_crit_edge ]
  %18 = load i32, ptr getelementptr inbounds ([11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 7, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %18)
  %cmp1.7 = icmp eq i32 %3, %18
  br i1 %cmp1.7, label %if.then2.7, label %for.inc.6.for.inc.7_crit_edge

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.7

if.then2.7:                                       ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  %19 = load i32, ptr getelementptr inbounds ([11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 7), align 4
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then2.7, %for.inc.6.for.inc.7_crit_edge
  %irq_type.1.7 = phi i32 [ %19, %if.then2.7 ], [ %irq_type.1.6, %for.inc.6.for.inc.7_crit_edge ]
  %20 = load i32, ptr getelementptr inbounds ([11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 8, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %20)
  %cmp1.8 = icmp eq i32 %3, %20
  br i1 %cmp1.8, label %if.then2.8, label %for.inc.7.for.inc.8_crit_edge

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.8

if.then2.8:                                       ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #7
  %21 = load i32, ptr getelementptr inbounds ([11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 8), align 4
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then2.8, %for.inc.7.for.inc.8_crit_edge
  %irq_type.1.8 = phi i32 [ %21, %if.then2.8 ], [ %irq_type.1.7, %for.inc.7.for.inc.8_crit_edge ]
  %22 = load i32, ptr getelementptr inbounds ([11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 9, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %22)
  %cmp1.9 = icmp eq i32 %3, %22
  br i1 %cmp1.9, label %if.then2.9, label %for.inc.8.for.inc.9_crit_edge

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.9

if.then2.9:                                       ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #7
  %23 = load i32, ptr getelementptr inbounds ([11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 9), align 4
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.then2.9, %for.inc.8.for.inc.9_crit_edge
  %irq_type.1.9 = phi i32 [ %23, %if.then2.9 ], [ %irq_type.1.8, %for.inc.8.for.inc.9_crit_edge ]
  %24 = load i32, ptr getelementptr inbounds ([11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 10, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %24)
  %cmp1.10 = icmp eq i32 %3, %24
  br i1 %cmp1.10, label %if.then2.10, label %for.inc.9.for.inc.10_crit_edge

for.inc.9.for.inc.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.10

if.then2.10:                                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #7
  %25 = load i32, ptr getelementptr inbounds ([11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 10), align 4
  br label %for.inc.10

for.inc.10:                                       ; preds = %if.then2.10, %for.inc.9.for.inc.10_crit_edge
  %irq_type.1.10 = phi i32 [ %25, %if.then2.10 ], [ %irq_type.1.9, %for.inc.9.for.inc.10_crit_edge ]
  %muic = getelementptr i8, ptr %work, i32 -24
  %26 = ptrtoint ptr %muic to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %muic, align 4
  %status = getelementptr i8, ptr %work, i32 -8
  %call = tail call i32 @max8997_bulk_read(ptr noundef %27, i8 noundef zeroext 4, i32 noundef 2, ptr noundef %status) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end9, label %do.end

do.end:                                           ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.22) #8
  br label %cleanup.sink.split

if.end9:                                          ; preds = %for.inc.10
  %30 = zext i32 %irq_type.1.10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i32 %irq_type.1.10, label %do.end15 [
    i32 26, label %if.end9.sw.bb_crit_edge
    i32 27, label %if.end9.sw.bb_crit_edge51
    i32 28, label %if.end9.sw.bb_crit_edge52
    i32 29, label %if.end9.sw.bb11_crit_edge
    i32 30, label %if.end9.sw.bb11_crit_edge53
    i32 31, label %if.end9.sw.bb11_crit_edge54
    i32 32, label %if.end9.sw.bb11_crit_edge55
    i32 33, label %if.end9.sw.bb11_crit_edge56
    i32 14, label %if.end9.sw.bb11_crit_edge57
    i32 15, label %if.end9.sw.bb11_crit_edge58
    i32 34, label %if.end9.cleanup.sink.split_crit_edge
  ]

if.end9.cleanup.sink.split_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end9.sw.bb11_crit_edge58:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb11

if.end9.sw.bb11_crit_edge57:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb11

if.end9.sw.bb11_crit_edge56:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb11

if.end9.sw.bb11_crit_edge55:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb11

if.end9.sw.bb11_crit_edge54:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb11

if.end9.sw.bb11_crit_edge53:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb11

if.end9.sw.bb11_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb11

if.end9.sw.bb_crit_edge52:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end9.sw.bb_crit_edge51:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end9.sw.bb_crit_edge:                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %if.end9.sw.bb_crit_edge, %if.end9.sw.bb_crit_edge51, %if.end9.sw.bb_crit_edge52
  %call10 = tail call fastcc i32 @max8997_muic_adc_handler(ptr noundef %add.ptr)
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end9.sw.bb11_crit_edge, %if.end9.sw.bb11_crit_edge53, %if.end9.sw.bb11_crit_edge54, %if.end9.sw.bb11_crit_edge55, %if.end9.sw.bb11_crit_edge56, %if.end9.sw.bb11_crit_edge57, %if.end9.sw.bb11_crit_edge58
  %call12 = tail call fastcc i32 @max8997_muic_chg_handler(ptr noundef %add.ptr)
  br label %sw.epilog

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.25, i32 noundef %irq_type.1.10) #8
  br label %cleanup.sink.split

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb
  %ret.0 = phi i32 [ %call12, %sw.bb11 ], [ %call10, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp18 = icmp slt i32 %ret.0, 0
  br i1 %cmp18, label %do.end22, label %sw.epilog.cleanup.sink.split_crit_edge

sw.epilog.cleanup.sink.split_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

do.end22:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.29) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end22, %sw.epilog.cleanup.sink.split_crit_edge, %do.end15, %if.end9.cleanup.sink.split_crit_edge, %do.end
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_muic_irq_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max8997_muic_irq_handler.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max8997_muic_irq_handler, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !184

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max8997_muic_irq_handler.__UNIQUE_ID_ddebug288, ptr noundef %1, ptr noundef nonnull @.str.64, i32 noundef %irq) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %irq3 = getelementptr inbounds %struct.max8997_muic_info, ptr %data, i32 0, i32 6
  %2 = ptrtoint ptr %irq3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %irq, ptr %irq3, align 4
  %irq_work = getelementptr inbounds %struct.max8997_muic_info, ptr %data, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %3 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %irq_work) #5
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_extcon_dev_allocate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_extcon_dev_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8997_write_reg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8997_bulk_read(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max8997_muic_set_path(ptr nocapture noundef readonly %info, i8 noundef zeroext %val, i1 noundef zeroext %attached) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %val. = select i1 %attached, i8 %val, i8 0
  %muic = getelementptr inbounds %struct.max8997_muic_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %muic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %muic, align 4
  %call = tail call i32 @max8997_update_reg(ptr noundef %1, i8 noundef zeroext 12, i8 noundef zeroext %val., i8 noundef zeroext 63) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.67) #8
  br label %cleanup

if.end2:                                          ; preds = %entry
  %. = select i1 %attached, i8 4, i8 1
  %4 = ptrtoint ptr %muic to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %muic, align 4
  %call12 = tail call i32 @max8997_update_reg(ptr noundef %5, i8 noundef zeroext 13, i8 noundef zeroext %., i8 noundef zeroext 5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info, align 4
  br i1 %cmp13, label %do.end18, label %do.end23

do.end18:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.67) #8
  br label %cleanup

do.end23:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  %conv25 = zext i8 %val. to i32
  %conv26 = zext i8 %. to i32
  %cond = select i1 %attached, ptr @.str.33, ptr @.str.34
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.72, i32 noundef %conv25, i32 noundef %conv26, ptr noundef nonnull %cond) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %do.end18, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call12, %do.end18 ], [ 0, %do.end23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max8997_muic_detect_cable_wq(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -172
  %mutex.i = getelementptr i8, ptr %work, i32 -100
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %muic.i = getelementptr i8, ptr %work, i32 -168
  %0 = ptrtoint ptr %muic.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %muic.i, align 4
  %status.i = getelementptr i8, ptr %work, i32 -152
  %call.i = tail call i32 @max8997_bulk_read(ptr noundef %1, i8 noundef zeroext 4, i32 noundef 2, ptr noundef %status.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %max8997_muic_detect_dev.exit

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %status.i, align 4
  %4 = and i8 %3, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %4)
  %cmp.i.i = icmp eq i8 %4, 31
  br i1 %cmp.i.i, label %max8997_muic_get_cable_type.exit.thread.i, label %max8997_muic_get_cable_type.exit.i

max8997_muic_get_cable_type.exit.thread.i:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev_cable_type.i.i = getelementptr i8, ptr %work, i32 -160
  %5 = ptrtoint ptr %prev_cable_type.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 31, ptr %prev_cable_type.i.i, align 4
  br label %if.end14.i

max8997_muic_get_cable_type.exit.i:               ; preds = %if.end.i
  %and.i.i = zext i8 %4 to i32
  %prev_cable_type3.i.i = getelementptr i8, ptr %work, i32 -160
  %6 = ptrtoint ptr %prev_cable_type3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and.i.i, ptr %prev_cable_type3.i.i, align 4
  %call5.i = tail call fastcc i32 @max8997_muic_adc_handler(ptr noundef %add.ptr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %max8997_muic_get_cable_type.exit.i.max8997_muic_detect_dev.exit.thread_crit_edge, label %max8997_muic_get_cable_type.exit.i.if.end14.i_crit_edge

max8997_muic_get_cable_type.exit.i.if.end14.i_crit_edge: ; preds = %max8997_muic_get_cable_type.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

max8997_muic_get_cable_type.exit.i.max8997_muic_detect_dev.exit.thread_crit_edge: ; preds = %max8997_muic_get_cable_type.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max8997_muic_detect_dev.exit.thread

if.end14.i:                                       ; preds = %max8997_muic_get_cable_type.exit.i.if.end14.i_crit_edge, %max8997_muic_get_cable_type.exit.thread.i
  %arrayidx6.i.i = getelementptr i8, ptr %work, i32 -151
  %7 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx6.i.i, align 1
  %9 = and i8 %8, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp10.i.i = icmp eq i8 %9, 0
  br i1 %cmp10.i.i, label %max8997_muic_get_cable_type.exit54.thread.i, label %max8997_muic_get_cable_type.exit54.i

max8997_muic_get_cable_type.exit54.thread.i:      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev_chg_type.i.i = getelementptr i8, ptr %work, i32 -156
  %10 = ptrtoint ptr %prev_chg_type.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %prev_chg_type.i.i, align 4
  br label %max8997_muic_detect_dev.exit.thread6

max8997_muic_get_cable_type.exit54.i:             ; preds = %if.end14.i
  %and8.i.i = zext i8 %9 to i32
  %prev_chg_type15.i.i = getelementptr i8, ptr %work, i32 -156
  %11 = ptrtoint ptr %prev_chg_type15.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and8.i.i, ptr %prev_chg_type15.i.i, align 4
  %call20.i = tail call fastcc i32 @max8997_muic_chg_handler(ptr noundef %add.ptr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp21.i = icmp slt i32 %call20.i, 0
  br i1 %cmp21.i, label %max8997_muic_get_cable_type.exit54.i.max8997_muic_detect_dev.exit.thread_crit_edge, label %max8997_muic_get_cable_type.exit54.i.max8997_muic_detect_dev.exit.thread6_crit_edge

max8997_muic_get_cable_type.exit54.i.max8997_muic_detect_dev.exit.thread6_crit_edge: ; preds = %max8997_muic_get_cable_type.exit54.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max8997_muic_detect_dev.exit.thread6

max8997_muic_get_cable_type.exit54.i.max8997_muic_detect_dev.exit.thread_crit_edge: ; preds = %max8997_muic_get_cable_type.exit54.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max8997_muic_detect_dev.exit.thread

max8997_muic_detect_dev.exit.thread:              ; preds = %max8997_muic_get_cable_type.exit54.i.max8997_muic_detect_dev.exit.thread_crit_edge, %max8997_muic_get_cable_type.exit.i.max8997_muic_detect_dev.exit.thread_crit_edge
  %.str.83.sink = phi ptr [ @.str.83, %max8997_muic_get_cable_type.exit.i.max8997_muic_detect_dev.exit.thread_crit_edge ], [ @.str.86, %max8997_muic_get_cable_type.exit54.i.max8997_muic_detect_dev.exit.thread_crit_edge ]
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull %.str.83.sink) #8
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  br label %do.end

max8997_muic_detect_dev.exit.thread6:             ; preds = %max8997_muic_get_cable_type.exit54.i.max8997_muic_detect_dev.exit.thread6_crit_edge, %max8997_muic_get_cable_type.exit54.thread.i
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  br label %if.end

max8997_muic_detect_dev.exit:                     ; preds = %entry
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.16) #8
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %max8997_muic_detect_dev.exit.do.end_crit_edge, label %max8997_muic_detect_dev.exit.if.end_crit_edge

max8997_muic_detect_dev.exit.if.end_crit_edge:    ; preds = %max8997_muic_detect_dev.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

max8997_muic_detect_dev.exit.do.end_crit_edge:    ; preds = %max8997_muic_detect_dev.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %max8997_muic_detect_dev.exit.do.end_crit_edge, %max8997_muic_detect_dev.exit.thread
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.79) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %max8997_muic_detect_dev.exit.if.end_crit_edge, %max8997_muic_detect_dev.exit.thread6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max8997_muic_adc_handler(ptr noundef %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %status.i = getelementptr inbounds %struct.max8997_muic_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %status.i, align 4
  %2 = and i8 %1, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %2)
  %cmp.i = icmp eq i8 %2, 31
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev_cable_type.i = getelementptr inbounds %struct.max8997_muic_info, ptr %info, i32 0, i32 3
  %3 = ptrtoint ptr %prev_cable_type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %prev_cable_type.i, align 4
  store i32 31, ptr %prev_cable_type.i, align 4
  br label %max8997_muic_get_cable_type.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and.i = zext i8 %2 to i32
  %prev_cable_type3.i = getelementptr inbounds %struct.max8997_muic_info, ptr %info, i32 0, i32 3
  %5 = ptrtoint ptr %prev_cable_type3.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and.i, ptr %prev_cable_type3.i, align 4
  br label %max8997_muic_get_cable_type.exit

max8997_muic_get_cable_type.exit:                 ; preds = %if.else.i, %if.then.i
  %cable_type.0.i = phi i32 [ %4, %if.then.i ], [ %and.i, %if.else.i ]
  %6 = xor i1 %cmp.i, true
  %7 = zext i32 %cable_type.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %cable_type.0.i, label %do.end24 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 24, label %max8997_muic_get_cable_type.exit.sw.bb5_crit_edge
    i32 25, label %max8997_muic_get_cable_type.exit.sw.bb5_crit_edge82
    i32 26, label %max8997_muic_get_cable_type.exit.sw.bb11_crit_edge
    i32 29, label %max8997_muic_get_cable_type.exit.sw.bb11_crit_edge83
    i32 28, label %sw.bb17
    i32 2, label %max8997_muic_get_cable_type.exit.do.end_crit_edge
    i32 3, label %max8997_muic_get_cable_type.exit.do.end_crit_edge84
    i32 4, label %max8997_muic_get_cable_type.exit.do.end_crit_edge85
    i32 5, label %max8997_muic_get_cable_type.exit.do.end_crit_edge86
    i32 6, label %max8997_muic_get_cable_type.exit.do.end_crit_edge87
    i32 7, label %max8997_muic_get_cable_type.exit.do.end_crit_edge88
    i32 8, label %max8997_muic_get_cable_type.exit.do.end_crit_edge89
    i32 9, label %max8997_muic_get_cable_type.exit.do.end_crit_edge90
    i32 10, label %max8997_muic_get_cable_type.exit.do.end_crit_edge91
    i32 11, label %max8997_muic_get_cable_type.exit.do.end_crit_edge92
    i32 12, label %max8997_muic_get_cable_type.exit.do.end_crit_edge93
    i32 13, label %max8997_muic_get_cable_type.exit.do.end_crit_edge94
    i32 14, label %max8997_muic_get_cable_type.exit.do.end_crit_edge95
    i32 15, label %max8997_muic_get_cable_type.exit.do.end_crit_edge96
    i32 16, label %max8997_muic_get_cable_type.exit.do.end_crit_edge97
    i32 17, label %max8997_muic_get_cable_type.exit.do.end_crit_edge98
    i32 18, label %max8997_muic_get_cable_type.exit.do.end_crit_edge99
    i32 19, label %max8997_muic_get_cable_type.exit.do.end_crit_edge100
    i32 20, label %max8997_muic_get_cable_type.exit.do.end_crit_edge101
    i32 21, label %max8997_muic_get_cable_type.exit.do.end_crit_edge102
    i32 22, label %max8997_muic_get_cable_type.exit.do.end_crit_edge103
    i32 23, label %max8997_muic_get_cable_type.exit.do.end_crit_edge104
    i32 27, label %max8997_muic_get_cable_type.exit.do.end_crit_edge105
    i32 30, label %max8997_muic_get_cable_type.exit.do.end_crit_edge106
  ]

max8997_muic_get_cable_type.exit.do.end_crit_edge106: ; preds = %max8997_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

max8997_muic_get_cable_type.exit.do.end_crit_edge105: ; preds = %max8997_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

max8997_muic_get_cable_type.exit.do.end_crit_edge104: ; preds = %max8997_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

max8997_muic_get_cable_type.exit.do.end_crit_edge103: ; preds = %max8997_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

max8997_muic_get_cable_type.exit.do.end_crit_edge102: ; preds = %max8997_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

max8997_muic_get_cable_type.exit.do.end_crit_edge101: ; preds = %max8997_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

max8997_muic_get_cable_type.exit.do.end_crit_edge100: ; preds = %max8997_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

max8997_muic_get_cable_type.exit.do.end_crit_edge99: ; preds = %max8997_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

max8997_muic_get_cable_type.exit.do.end_crit_edge98: ; preds = %max8997_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

max8997_muic_get_cable_type.exit.do.end_crit_edge97: ; preds = %max8997_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

max8997_muic_get_cable_type.exit.do.end_crit_edge96: ; preds = %max8997_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

max8997_muic_get_cable_type.exit.do.end_crit_edge95: ; preds = %max8997_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

max8997_muic_get_cable_type.exit.do.end_crit_edge94: ; preds = %max8997_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

max8997_muic_get_cable_type.exit.do.end_crit_edge93: ; preds = %max8997_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

max8997_muic_get_cable_type.exit.do.end_crit_edge92: ; preds = %max8997_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

max8997_muic_get_cable_type.exit.do.end_crit_edge91: ; preds = %max8997_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

max8997_muic_get_cable_type.exit.do.end_crit_edge90: ; preds = %max8997_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

max8997_muic_get_cable_type.exit.do.end_crit_edge89: ; preds = %max8997_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

max8997_muic_get_cable_type.exit.do.end_crit_edge88: ; preds = %max8997_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

max8997_muic_get_cable_type.exit.do.end_crit_edge87: ; preds = %max8997_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

max8997_muic_get_cable_type.exit.do.end_crit_edge86: ; preds = %max8997_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

max8997_muic_get_cable_type.exit.do.end_crit_edge85: ; preds = %max8997_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

max8997_muic_get_cable_type.exit.do.end_crit_edge84: ; preds = %max8997_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

max8997_muic_get_cable_type.exit.do.end_crit_edge: ; preds = %max8997_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

max8997_muic_get_cable_type.exit.sw.bb11_crit_edge83: ; preds = %max8997_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb11

max8997_muic_get_cable_type.exit.sw.bb11_crit_edge: ; preds = %max8997_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb11

max8997_muic_get_cable_type.exit.sw.bb5_crit_edge82: ; preds = %max8997_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

max8997_muic_get_cable_type.exit.sw.bb5_crit_edge: ; preds = %max8997_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

sw.bb:                                            ; preds = %max8997_muic_get_cable_type.exit
  %path_usb.i = getelementptr inbounds %struct.max8997_muic_info, ptr %info, i32 0, i32 12
  %8 = ptrtoint ptr %path_usb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %path_usb.i, align 4
  %conv.i = trunc i32 %9 to i8
  %call.i = tail call fastcc i32 @max8997_muic_set_path(ptr noundef %info, i8 noundef zeroext %conv.i, i1 noundef zeroext %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i45 = icmp slt i32 %call.i, 0
  br i1 %cmp.i45, label %max8997_muic_handle_usb.exit.thread, label %max8997_muic_handle_usb.exit

max8997_muic_handle_usb.exit.thread:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.38) #8
  br label %cleanup

max8997_muic_handle_usb.exit:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %edev.i = getelementptr inbounds %struct.max8997_muic_info, ptr %info, i32 0, i32 2
  %12 = ptrtoint ptr %edev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %edev.i, align 4
  %call3.i = tail call i32 @extcon_set_state_sync(ptr noundef %13, i32 noundef 2, i1 noundef zeroext %6) #5
  br label %sw.epilog

sw.bb2:                                           ; preds = %max8997_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  %edev = getelementptr inbounds %struct.max8997_muic_info, ptr %info, i32 0, i32 2
  %14 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %edev, align 4
  %call4 = tail call i32 @extcon_set_state_sync(ptr noundef %15, i32 noundef 41, i1 noundef zeroext %6) #5
  br label %sw.epilog

sw.bb5:                                           ; preds = %max8997_muic_get_cable_type.exit.sw.bb5_crit_edge, %max8997_muic_get_cable_type.exit.sw.bb5_crit_edge82
  %path_usb.i46 = getelementptr inbounds %struct.max8997_muic_info, ptr %info, i32 0, i32 12
  %16 = ptrtoint ptr %path_usb.i46 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %path_usb.i46, align 4
  %conv.i47 = trunc i32 %17 to i8
  %call.i48 = tail call fastcc i32 @max8997_muic_set_path(ptr noundef %info, i8 noundef zeroext %conv.i47, i1 noundef zeroext %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %cmp.i49 = icmp slt i32 %call.i48, 0
  br i1 %cmp.i49, label %max8997_muic_handle_usb.exit53.thread, label %max8997_muic_handle_usb.exit53

max8997_muic_handle_usb.exit53.thread:            ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.38) #8
  br label %cleanup

max8997_muic_handle_usb.exit53:                   ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  %edev5.i = getelementptr inbounds %struct.max8997_muic_info, ptr %info, i32 0, i32 2
  %20 = ptrtoint ptr %edev5.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %edev5.i, align 4
  %call7.i = tail call i32 @extcon_set_state_sync(ptr noundef %21, i32 noundef 1, i1 noundef zeroext %6) #5
  %22 = ptrtoint ptr %edev5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %edev5.i, align 4
  %call10.i = tail call i32 @extcon_set_state_sync(ptr noundef %23, i32 noundef 5, i1 noundef zeroext %6) #5
  br label %sw.epilog

sw.bb11:                                          ; preds = %max8997_muic_get_cable_type.exit.sw.bb11_crit_edge, %max8997_muic_get_cable_type.exit.sw.bb11_crit_edge83
  %call.i54 = tail call fastcc i32 @max8997_muic_set_path(ptr noundef %info, i8 noundef zeroext 18, i1 noundef zeroext %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %tobool1.not.i = icmp eq i32 %call.i54, 0
  br i1 %tobool1.not.i, label %if.end.i56, label %max8997_muic_handle_dock.exit

if.end.i56:                                       ; preds = %sw.bb11
  %24 = zext i32 %cable_type.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %cable_type.0.i, label %max8997_muic_handle_dock.exit.thread [
    i32 26, label %if.end.i56.max8997_muic_handle_dock.exit.thread79_crit_edge
    i32 29, label %if.end.i56.max8997_muic_handle_dock.exit.thread79_crit_edge107
  ]

if.end.i56.max8997_muic_handle_dock.exit.thread79_crit_edge107: ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #7
  br label %max8997_muic_handle_dock.exit.thread79

if.end.i56.max8997_muic_handle_dock.exit.thread79_crit_edge: ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #7
  br label %max8997_muic_handle_dock.exit.thread79

max8997_muic_handle_dock.exit.thread79:           ; preds = %if.end.i56.max8997_muic_handle_dock.exit.thread79_crit_edge, %if.end.i56.max8997_muic_handle_dock.exit.thread79_crit_edge107
  %edev.i57 = getelementptr inbounds %struct.max8997_muic_info, ptr %info, i32 0, i32 2
  %25 = ptrtoint ptr %edev.i57 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %edev.i57, align 4
  %call3.i58 = tail call i32 @extcon_set_state_sync(ptr noundef %26, i32 noundef 60, i1 noundef zeroext %6) #5
  br label %sw.epilog

max8997_muic_handle_dock.exit.thread:             ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %info, align 4
  %cond.i = select i1 %cmp.i, ptr @.str.34, ptr @.str.33
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.45, ptr noundef nonnull %cond.i) #8
  br label %cleanup

max8997_muic_handle_dock.exit:                    ; preds = %sw.bb11
  %29 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.38) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %cmp14 = icmp slt i32 %call.i54, 0
  br i1 %cmp14, label %max8997_muic_handle_dock.exit.cleanup_crit_edge, label %max8997_muic_handle_dock.exit.sw.epilog_crit_edge

max8997_muic_handle_dock.exit.sw.epilog_crit_edge: ; preds = %max8997_muic_handle_dock.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

max8997_muic_handle_dock.exit.cleanup_crit_edge:  ; preds = %max8997_muic_handle_dock.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb17:                                          ; preds = %max8997_muic_get_cable_type.exit
  %path_uart.i = getelementptr inbounds %struct.max8997_muic_info, ptr %info, i32 0, i32 13
  %31 = ptrtoint ptr %path_uart.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %path_uart.i, align 4
  %conv.i60 = trunc i32 %32 to i8
  %call.i61 = tail call fastcc i32 @max8997_muic_set_path(ptr noundef %info, i8 noundef zeroext %conv.i60, i1 noundef zeroext %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %tobool1.not.i62 = icmp eq i32 %call.i61, 0
  br i1 %tobool1.not.i62, label %if.end.i66, label %do.end.i63

do.end.i63:                                       ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.38) #8
  br label %sw.epilog

if.end.i66:                                       ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #7
  %edev.i64 = getelementptr inbounds %struct.max8997_muic_info, ptr %info, i32 0, i32 2
  %35 = ptrtoint ptr %edev.i64 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %edev.i64, align 4
  %call3.i65 = tail call i32 @extcon_set_state_sync(ptr noundef %36, i32 noundef 61, i1 noundef zeroext %6) #5
  br label %sw.epilog

do.end:                                           ; preds = %max8997_muic_get_cable_type.exit.do.end_crit_edge, %max8997_muic_get_cable_type.exit.do.end_crit_edge84, %max8997_muic_get_cable_type.exit.do.end_crit_edge85, %max8997_muic_get_cable_type.exit.do.end_crit_edge86, %max8997_muic_get_cable_type.exit.do.end_crit_edge87, %max8997_muic_get_cable_type.exit.do.end_crit_edge88, %max8997_muic_get_cable_type.exit.do.end_crit_edge89, %max8997_muic_get_cable_type.exit.do.end_crit_edge90, %max8997_muic_get_cable_type.exit.do.end_crit_edge91, %max8997_muic_get_cable_type.exit.do.end_crit_edge92, %max8997_muic_get_cable_type.exit.do.end_crit_edge93, %max8997_muic_get_cable_type.exit.do.end_crit_edge94, %max8997_muic_get_cable_type.exit.do.end_crit_edge95, %max8997_muic_get_cable_type.exit.do.end_crit_edge96, %max8997_muic_get_cable_type.exit.do.end_crit_edge97, %max8997_muic_get_cable_type.exit.do.end_crit_edge98, %max8997_muic_get_cable_type.exit.do.end_crit_edge99, %max8997_muic_get_cable_type.exit.do.end_crit_edge100, %max8997_muic_get_cable_type.exit.do.end_crit_edge101, %max8997_muic_get_cable_type.exit.do.end_crit_edge102, %max8997_muic_get_cable_type.exit.do.end_crit_edge103, %max8997_muic_get_cable_type.exit.do.end_crit_edge104, %max8997_muic_get_cable_type.exit.do.end_crit_edge105, %max8997_muic_get_cable_type.exit.do.end_crit_edge106
  %37 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %info, align 4
  %cond = select i1 %cmp.i, ptr @.str.34, ptr @.str.33
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.31, ptr noundef nonnull %cond, i32 noundef %cable_type.0.i) #8
  br label %cleanup

do.end24:                                         ; preds = %max8997_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %info, align 4
  %cond27 = select i1 %cmp.i, ptr @.str.34, ptr @.str.33
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.36, ptr noundef nonnull %cond27, i32 noundef %cable_type.0.i) #8
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.i66, %do.end.i63, %max8997_muic_handle_dock.exit.sw.epilog_crit_edge, %max8997_muic_handle_dock.exit.thread79, %max8997_muic_handle_usb.exit53, %sw.bb2, %max8997_muic_handle_usb.exit
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end24, %do.end, %max8997_muic_handle_dock.exit.cleanup_crit_edge, %max8997_muic_handle_dock.exit.thread, %max8997_muic_handle_usb.exit53.thread, %max8997_muic_handle_usb.exit.thread
  %retval.0 = phi i32 [ -22, %do.end24 ], [ -11, %do.end ], [ 0, %sw.epilog ], [ %call.i54, %max8997_muic_handle_dock.exit.cleanup_crit_edge ], [ %call.i, %max8997_muic_handle_usb.exit.thread ], [ %call.i48, %max8997_muic_handle_usb.exit53.thread ], [ -22, %max8997_muic_handle_dock.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max8997_muic_chg_handler(ptr nocapture noundef %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx6.i = getelementptr %struct.max8997_muic_info, ptr %info, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx6.i, align 1
  %2 = and i8 %1, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp10.i = icmp eq i8 %2, 0
  br i1 %cmp10.i, label %if.then12.i, label %if.else14.i

if.then12.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev_chg_type.i = getelementptr inbounds %struct.max8997_muic_info, ptr %info, i32 0, i32 4
  %3 = ptrtoint ptr %prev_chg_type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %prev_chg_type.i, align 4
  store i32 0, ptr %prev_chg_type.i, align 4
  br label %max8997_muic_get_cable_type.exit

if.else14.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and8.i = zext i8 %2 to i32
  %prev_chg_type15.i = getelementptr inbounds %struct.max8997_muic_info, ptr %info, i32 0, i32 4
  %5 = ptrtoint ptr %prev_chg_type15.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and8.i, ptr %prev_chg_type15.i, align 4
  br label %max8997_muic_get_cable_type.exit

max8997_muic_get_cable_type.exit:                 ; preds = %if.else14.i, %if.then12.i
  %cable_type.0.i = phi i32 [ %4, %if.then12.i ], [ %and8.i, %if.else14.i ]
  %6 = xor i1 %cmp10.i, true
  %7 = zext i32 %cable_type.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %cable_type.0.i, label %do.end [
    i32 0, label %max8997_muic_get_cable_type.exit.cleanup_crit_edge
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
    i32 3, label %sw.bb7
    i32 4, label %sw.bb11
    i32 5, label %sw.bb15
  ]

max8997_muic_get_cable_type.exit.cleanup_crit_edge: ; preds = %max8997_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %max8997_muic_get_cable_type.exit
  %status = getelementptr inbounds %struct.max8997_muic_info, ptr %info, i32 0, i32 5
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %status, align 4
  %10 = and i8 %9, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %10)
  %cmp = icmp eq i8 %10, 31
  br i1 %cmp, label %if.then, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %sw.bb
  %path_usb.i = getelementptr inbounds %struct.max8997_muic_info, ptr %info, i32 0, i32 12
  %11 = ptrtoint ptr %path_usb.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %path_usb.i, align 4
  %conv.i = trunc i32 %12 to i8
  %call.i = tail call fastcc i32 @max8997_muic_set_path(ptr noundef %info, i8 noundef zeroext %conv.i, i1 noundef zeroext %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.38) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %edev5.i = getelementptr inbounds %struct.max8997_muic_info, ptr %info, i32 0, i32 2
  %15 = ptrtoint ptr %edev5.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %edev5.i, align 4
  %call7.i = tail call i32 @extcon_set_state_sync(ptr noundef %16, i32 noundef 1, i1 noundef zeroext %6) #5
  %17 = ptrtoint ptr %edev5.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %edev5.i, align 4
  %call10.i = tail call i32 @extcon_set_state_sync(ptr noundef %18, i32 noundef 5, i1 noundef zeroext %6) #5
  br label %cleanup

sw.bb4:                                           ; preds = %max8997_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  %edev = getelementptr inbounds %struct.max8997_muic_info, ptr %info, i32 0, i32 2
  %19 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %edev, align 4
  %call6 = tail call i32 @extcon_set_state_sync(ptr noundef %20, i32 noundef 7, i1 noundef zeroext %6) #5
  br label %cleanup

sw.bb7:                                           ; preds = %max8997_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  %edev8 = getelementptr inbounds %struct.max8997_muic_info, ptr %info, i32 0, i32 2
  %21 = ptrtoint ptr %edev8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %edev8, align 4
  %call10 = tail call i32 @extcon_set_state_sync(ptr noundef %22, i32 noundef 6, i1 noundef zeroext %6) #5
  br label %cleanup

sw.bb11:                                          ; preds = %max8997_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  %edev12 = getelementptr inbounds %struct.max8997_muic_info, ptr %info, i32 0, i32 2
  %23 = ptrtoint ptr %edev12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %edev12, align 4
  %call14 = tail call i32 @extcon_set_state_sync(ptr noundef %24, i32 noundef 10, i1 noundef zeroext %6) #5
  br label %cleanup

sw.bb15:                                          ; preds = %max8997_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  %edev16 = getelementptr inbounds %struct.max8997_muic_info, ptr %info, i32 0, i32 2
  %25 = ptrtoint ptr %edev16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %edev16, align 4
  %call18 = tail call i32 @extcon_set_state_sync(ptr noundef %26, i32 noundef 9, i1 noundef zeroext %6) #5
  br label %cleanup

do.end:                                           ; preds = %max8997_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %info, align 4
  %cond = select i1 %cmp10.i, ptr @.str.34, ptr @.str.33
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.48, ptr noundef nonnull %cond, i32 noundef %cable_type.0.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb15, %sw.bb11, %sw.bb7, %sw.bb4, %if.end.i, %do.end.i, %sw.bb.cleanup_crit_edge, %max8997_muic_get_cable_type.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %sw.bb15 ], [ 0, %sw.bb11 ], [ 0, %sw.bb7 ], [ 0, %sw.bb4 ], [ %cable_type.0.i, %max8997_muic_get_cable_type.exit.cleanup_crit_edge ], [ 0, %do.end.i ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_set_state_sync(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_work_drop(ptr noundef %res) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %res) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8997_update_reg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !98, !100, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !128, !129, !130, !132, !134, !135, !136, !137, !139, !140, !141, !142, !144, !145, !147, !148, !149, !151, !152, !153, !154, !156, !157, !158, !160, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174}
!llvm.module.flags = !{!175, !176, !177, !178, !179, !180, !181, !182}
!llvm.ident = !{!183}

!0 = !{ptr @__initcall__kmod_extcon_max8997__289_771_max8997_muic_driver_init6, !1, !"__initcall__kmod_extcon_max8997__289_771_max8997_muic_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/extcon/extcon-max8997.c", i32 771, i32 1}
!2 = !{ptr @__exitcall_max8997_muic_driver_exit, !1, !"__exitcall_max8997_muic_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description290, !4, !"__UNIQUE_ID_description290", i1 false, i1 false}
!4 = !{!"../drivers/extcon/extcon-max8997.c", i32 773, i32 1}
!5 = !{ptr @__UNIQUE_ID_author291, !6, !"__UNIQUE_ID_author291", i1 false, i1 false}
!6 = !{!"../drivers/extcon/extcon-max8997.c", i32 774, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/extcon/extcon-max8997.c", i32 775, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias294, !11, !"__UNIQUE_ID_alias294", i1 false, i1 false}
!11 = !{!"../drivers/extcon/extcon-max8997.c", i32 776, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/extcon/extcon-max8997.c", i32 766, i32 11}
!14 = !{ptr @max8997_muic_driver, !15, !"max8997_muic_driver", i1 false, i1 false}
!15 = !{!"../drivers/extcon/extcon-max8997.c", i32 764, i32 31}
!16 = !{ptr @max8997_muic_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/extcon/extcon-max8997.c", i32 651, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @max8997_muic_probe.__key.2, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/extcon/extcon-max8997.c", i32 653, i32 2}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/extcon/extcon-max8997.c", i32 674, i32 4}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @max8997_muic_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @max8997_muic_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/extcon/extcon-max8997.c", i32 684, i32 3}
!32 = !{ptr @max8997_muic_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @max8997_muic_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/extcon/extcon-max8997.c", i32 690, i32 3}
!36 = !{ptr @max8997_muic_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @max8997_muic_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/extcon/extcon-max8997.c", i32 738, i32 3}
!40 = !{ptr @max8997_muic_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @max8997_muic_probe._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @max8997_muic_probe.__key.18, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/extcon/extcon-max8997.c", i32 757, i32 2}
!44 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @max8997_muic_probe.__key.20, !43, !"__key", i1 false, i1 false}
!46 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/extcon/extcon-max8997.c", i32 527, i32 3}
!49 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @max8997_muic_irq_work._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @max8997_muic_irq_work._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/extcon/extcon-max8997.c", i32 552, i32 3}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @max8997_muic_irq_work._entry.24, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @max8997_muic_irq_work._entry_ptr.27, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/extcon/extcon-max8997.c", i32 559, i32 3}
!59 = !{ptr @max8997_muic_irq_work._entry.28, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @max8997_muic_irq_work._entry_ptr.30, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/extcon/extcon-max8997.c", i32 447, i32 3}
!63 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @max8997_muic_adc_handler._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @max8997_muic_adc_handler._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/extcon/extcon-max8997.c", i32 452, i32 3}
!70 = !{ptr @max8997_muic_adc_handler._entry.35, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @max8997_muic_adc_handler._entry_ptr.37, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/extcon/extcon-max8997.c", i32 319, i32 3}
!74 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @max8997_muic_handle_usb._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @max8997_muic_handle_usb._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/extcon/extcon-max8997.c", i32 333, i32 3}
!79 = !{ptr @max8997_muic_handle_usb._entry.40, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @max8997_muic_handle_usb._entry_ptr.42, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/extcon/extcon-max8997.c", i32 348, i32 3}
!83 = !{ptr @max8997_muic_handle_dock._entry, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @max8997_muic_handle_dock._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/extcon/extcon-max8997.c", i32 358, i32 3}
!87 = !{ptr @max8997_muic_handle_dock._entry.44, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @max8997_muic_handle_dock._entry_ptr.46, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.47, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/extcon/extcon-max8997.c", i32 374, i32 3}
!91 = !{ptr @max8997_muic_handle_jig_uart._entry, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @max8997_muic_handle_jig_uart._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/extcon/extcon-max8997.c", i32 499, i32 3}
!95 = !{ptr @.str.49, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @max8997_muic_chg_handler._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @max8997_muic_chg_handler._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @devm_work_autocancel.__key, !99, !"__key", i1 false, i1 false}
!99 = !{!"../include/linux/devm-helpers.h", i32 75, i32 2}
!100 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/extcon/extcon-max8997.c", i32 39, i32 30}
!103 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/extcon/extcon-max8997.c", i32 40, i32 28}
!105 = !{ptr @.str.53, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/extcon/extcon-max8997.c", i32 41, i32 26}
!107 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/extcon/extcon-max8997.c", i32 42, i32 28}
!109 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/extcon/extcon-max8997.c", i32 43, i32 27}
!111 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/extcon/extcon-max8997.c", i32 44, i32 28}
!113 = !{ptr @.str.57, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/extcon/extcon-max8997.c", i32 45, i32 31}
!115 = !{ptr @.str.58, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/extcon/extcon-max8997.c", i32 46, i32 28}
!117 = !{ptr @.str.59, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/extcon/extcon-max8997.c", i32 47, i32 26}
!119 = !{ptr @.str.60, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/extcon/extcon-max8997.c", i32 48, i32 28}
!121 = !{ptr @.str.61, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/extcon/extcon-max8997.c", i32 49, i32 27}
!123 = !{ptr @muic_irqs, !124, !"muic_irqs", i1 false, i1 false}
!124 = !{!"../drivers/extcon/extcon-max8997.c", i32 38, i32 32}
!125 = !{ptr @.str.62, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/extcon/extcon-max8997.c", i32 568, i32 2}
!127 = !{ptr @.str.63, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.64, !126, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @max8997_muic_irq_handler.__UNIQUE_ID_ddebug288, !126, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!130 = !{ptr @max8997_extcon_cable, !131, !"max8997_extcon_cable", i1 false, i1 false}
!131 = !{!"../drivers/extcon/extcon-max8997.c", i32 141, i32 27}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/extcon/extcon-max8997.c", i32 304, i32 3}
!134 = !{ptr @.str.66, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @max8997_muic_get_cable_type._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @max8997_muic_get_cable_type._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.67, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/extcon/extcon-max8997.c", i32 211, i32 3}
!139 = !{ptr @.str.68, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @max8997_muic_set_path._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @max8997_muic_set_path._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @max8997_muic_set_path._entry.69, !143, !"_entry", i1 false, i1 false}
!143 = !{!"../drivers/extcon/extcon-max8997.c", i32 224, i32 3}
!144 = !{ptr @max8997_muic_set_path._entry_ptr.70, !143, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.72, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/extcon/extcon-max8997.c", i32 228, i32 2}
!147 = !{ptr @max8997_muic_set_path._entry.71, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @max8997_muic_set_path._entry_ptr.73, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.74, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/extcon/extcon-max8997.c", i32 175, i32 4}
!151 = !{ptr @.str.75, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @max8997_muic_set_debounce_time._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @max8997_muic_set_debounce_time._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.77, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/extcon/extcon-max8997.c", i32 180, i32 3}
!156 = !{ptr @max8997_muic_set_debounce_time._entry.76, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @max8997_muic_set_debounce_time._entry_ptr.78, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.79, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/extcon/extcon-max8997.c", i32 629, i32 3}
!160 = !{ptr @.str.80, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @max8997_muic_detect_cable_wq._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @max8997_muic_detect_cable_wq._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.81, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/extcon/extcon-max8997.c", i32 589, i32 3}
!165 = !{ptr @max8997_muic_detect_dev._entry, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @max8997_muic_detect_dev._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.83, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/extcon/extcon-max8997.c", i32 599, i32 4}
!169 = !{ptr @max8997_muic_detect_dev._entry.82, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @max8997_muic_detect_dev._entry_ptr.84, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.86, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/extcon/extcon-max8997.c", i32 610, i32 4}
!173 = !{ptr @max8997_muic_detect_dev._entry.85, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @max8997_muic_detect_dev._entry_ptr.87, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{i32 1, !"wchar_size", i32 2}
!176 = !{i32 1, !"min_enum_size", i32 4}
!177 = !{i32 8, !"branch-target-enforcement", i32 0}
!178 = !{i32 8, !"sign-return-address", i32 0}
!179 = !{i32 8, !"sign-return-address-all", i32 0}
!180 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!181 = !{i32 7, !"uwtable", i32 1}
!182 = !{i32 7, !"frame-pointer", i32 2}
!183 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!184 = !{i64 2148298944, i64 2148298949, i64 2148298962, i64 2148299006, i64 2148299040, i64 2148299061}
