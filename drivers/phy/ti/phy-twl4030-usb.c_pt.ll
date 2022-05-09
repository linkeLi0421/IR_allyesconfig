; ModuleID = '/llk/IR_all_yes/drivers/phy/ti/phy-twl4030-usb.c_pt.bc'
source_filename = "../drivers/phy/ti/phy-twl4030-usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.twl4030_usb = type { %struct.usb_phy, ptr, ptr, ptr, ptr, %struct.mutex, i32, i32, i32, %struct.atomic_t, i8, i8, i8, %struct.delayed_work }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_phy_twl4030_usb__308_850_twl4030_usb_init4 = internal global ptr @twl4030_usb_init, section ".initcall4.init", align 4
@twl4030_usb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @twl4030_usb_probe, ptr @twl4030_usb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @twl4030_usb_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twl4030_usb_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_twl4030_usb_exit = internal global ptr @twl4030_usb_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias309 = internal constant [43 x i8] c"phy_twl4030_usb.alias=platform:twl4030_usb\00", section ".modinfo", align 1
@__UNIQUE_ID_author310 = internal constant [65 x i8] c"phy_twl4030_usb.author=Texas Instruments, Inc, Nokia Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description311 = internal constant [59 x i8] c"phy_twl4030_usb.description=TWL4030 USB transceiver driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file312 = internal constant [52 x i8] c"phy_twl4030_usb.file=drivers/phy/ti/phy-twl4030-usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license313 = internal constant [28 x i8] c"phy_twl4030_usb.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"twl4030_usb\00", [20 x i8] zeroinitializer }, align 32
@twl4030_usb_id_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@twl4030_usb_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @twl4030_usb_suspend, ptr @twl4030_usb_resume, ptr @twl4030_usb_suspend, ptr @twl4030_usb_resume, ptr @twl4030_usb_suspend, ptr @twl4030_usb_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twl4030_usb_runtime_suspend, ptr @twl4030_usb_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb_mode\00", [23 x i8] zeroinitializer }, align 32
@twl4030_usb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 702, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"twl4030 initialized without pdata\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"twl4030_usb_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/phy/ti/phy-twl4030-usb.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@twl4030_usb_probe._entry_ptr = internal global ptr @twl4030_usb_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"twl4030\00", [24 x i8] zeroinitializer }, align 32
@ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @twl4030_phy_init, ptr null, ptr @twl4030_phy_power_on, ptr @twl4030_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@twl4030_usb_probe.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.3, ptr @.str.4, ptr @.str.9, i8 0, i8 -75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"phy_twl4030_usb\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to create PHY\0A\00", [42 x i8] zeroinitializer }, align 32
@twl4030_usb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&twl->lock\00", [21 x i8] zeroinitializer }, align 32
@twl4030_usb_probe.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"(work_completion)(&(&twl->id_workaround_work)->work)\00", [43 x i8] zeroinitializer }, align 32
@twl4030_usb_probe.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"&(&twl->id_workaround_work)->timer\00", [61 x i8] zeroinitializer }, align 32
@twl4030_usb_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 745, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ldo init failed\0A\00", [47 x i8] zeroinitializer }, align 32
@twl4030_usb_probe._entry_ptr.17 = internal global ptr @twl4030_usb_probe._entry.15, section ".printk_index", align 4
@dev_attr_vbus = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vbus_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@twl4030_usb_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 752, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"could not create sysfs file\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@twl4030_usb_probe._entry_ptr.21 = internal global ptr @twl4030_usb_probe._entry.18, section ".printk_index", align 4
@twl4030_usb_probe.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&twl->phy.notifier)->lock\00", [36 x i8] zeroinitializer }, align 32
@twl4030_usb_probe.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.3, ptr @.str.4, ptr @.str.24, i8 0, i8 -63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"can't get IRQ %d, err %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"usb\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"musb-hdrc.0\00", [20 x i8] zeroinitializer }, align 32
@twl4030_usb_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.3, ptr @.str.4, i32 786, ptr @.str.29, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Initialized TWL4030 USB module\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@twl4030_usb_probe._entry_ptr.30 = internal global ptr @twl4030_usb_probe._entry.27, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@twl4030_phy_power_on.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.31, ptr @.str.4, ptr @.str.32, i8 0, i8 126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"twl4030_phy_power_on\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@twl4030_phy_power_off.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.33, ptr @.str.4, ptr @.str.32, i8 0, i8 123, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"twl4030_phy_power_off\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usb3v1\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usb1v5\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usb1v8\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbus\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@twl4030_usb_irq.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.40, ptr @.str.4, ptr @.str.41, i8 0, i8 -108, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"twl4030_usb_irq\00", [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: cable connected %i\0A\00", [40 x i8] zeroinitializer }, align 32
@twl4030_usb_irq.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.40, ptr @.str.4, ptr @.str.42, i8 0, i8 -107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: cable disconnected %i\0A\00", [37 x i8] zeroinitializer }, align 32
@twl4030_usb_linkstat._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 291, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"USB link status err %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"twl4030_usb_linkstat\00", [43 x i8] zeroinitializer }, align 32
@twl4030_usb_linkstat._entry_ptr = internal global ptr @twl4030_usb_linkstat._entry, section ".printk_index", align 4
@twl4030_usb_linkstat.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.44, ptr @.str.4, ptr @.str.45, i8 0, i8 78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"HW_CONDITIONS 0x%02x/%d; link %d\0A\00", [62 x i8] zeroinitializer }, align 32
@twl4030_readb.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.46, ptr @.str.4, ptr @.str.47, i8 0, i8 56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"twl4030_readb\00", [18 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"TWL4030:readb[0x%x,0x%x] Error %d\0A\00", [61 x i8] zeroinitializer }, align 32
@twl4030_usb_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.4, i32 342, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unsupported T2 transceiver mode %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"twl4030_usb_set_mode\00", [43 x i8] zeroinitializer }, align 32
@twl4030_usb_set_mode._entry_ptr = internal global ptr @twl4030_usb_set_mode._entry, section ".printk_index", align 4
@twl4030_usb_write.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.50, ptr @.str.4, ptr @.str.51, i8 0, i8 52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"twl4030_usb_write\00", [46 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"TWL4030:USB:Write[0x%x] Error %d\0A\00", [62 x i8] zeroinitializer }, align 32
@twl4030_usb_suspend.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.52, ptr @.str.4, ptr @.str.32, i8 0, i8 100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"twl4030_usb_suspend\00", [44 x i8] zeroinitializer }, align 32
@twl4030_usb_resume.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.53, ptr @.str.4, ptr @.str.32, i8 0, i8 103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"twl4030_usb_resume\00", [45 x i8] zeroinitializer }, align 32
@twl4030_usb_runtime_suspend.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.54, ptr @.str.4, ptr @.str.32, i8 0, i8 107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"twl4030_usb_runtime_suspend\00", [36 x i8] zeroinitializer }, align 32
@twl4030_i2c_write_u8_verify.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.55, ptr @.str.4, ptr @.str.56, i8 0, i8 46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"twl4030_i2c_write_u8_verify\00", [36 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Write%d[%d,0x%x] wrote %02x but read %02x\0A\00", [53 x i8] zeroinitializer }, align 32
@twl4030_i2c_write_u8_verify.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.55, ptr @.str.4, ptr @.str.56, i8 0, i8 48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@twl4030_usb_runtime_resume.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.57, ptr @.str.4, ptr @.str.32, i8 0, i8 112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"twl4030_usb_runtime_resume\00", [37 x i8] zeroinitializer }, align 32
@twl4030_usb_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.57, ptr @.str.4, i32 452, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to enable usb3v1\0A\00", [39 x i8] zeroinitializer }, align 32
@twl4030_usb_runtime_resume._entry_ptr = internal global ptr @twl4030_usb_runtime_resume._entry, section ".printk_index", align 4
@twl4030_usb_runtime_resume._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.57, ptr @.str.4, i32 456, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to enable usb1v8\0A\00", [39 x i8] zeroinitializer }, align 32
@twl4030_usb_runtime_resume._entry_ptr.61 = internal global ptr @twl4030_usb_runtime_resume._entry.59, section ".printk_index", align 4
@twl4030_usb_runtime_resume._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.57, ptr @.str.4, i32 469, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to enable usb1v5\0A\00", [39 x i8] zeroinitializer }, align 32
@twl4030_usb_runtime_resume._entry_ptr.64 = internal global ptr @twl4030_usb_runtime_resume._entry.62, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@twl4030_i2c_access._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.4, i32 367, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Timeout setting T2 HSUSB PHY DPLL clock\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"twl4030_i2c_access\00", [45 x i8] zeroinitializer }, align 32
@twl4030_i2c_access._entry_ptr = internal global ptr @twl4030_i2c_access._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967295]
@___asan_gen_.67 = private unnamed_addr constant [19 x i8] c"twl4030_usb_driver\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 836, i32 31 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 840, i32 11 }
@___asan_gen_.73 = private unnamed_addr constant [21 x i8] c"twl4030_usb_id_table\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 829, i32 34 }
@___asan_gen_.76 = private unnamed_addr constant [19 x i8] c"twl4030_usb_pm_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 676, i32 32 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 697, i32 28 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 702, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 717, i32 20 }
@___asan_gen_.103 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 669, i32 29 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 727, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 739, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 741, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 745, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [14 x i8] c"dev_attr_vbus\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 752, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 754, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 773, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 779, i32 32 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 779, i32 39 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 786, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 504, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 495, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 531, i32 45 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 540, i32 45 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 549, i32 45 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 575, i32 8 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 570, i32 25 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 570, i32 32 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 591, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 598, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 291, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 314, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 224, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 341, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 210, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 401, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 415, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 431, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 185, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 448, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 452, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 456, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 469, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.283 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.284 = private constant [36 x i8] c"../drivers/phy/ti/phy-twl4030-usb.c\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 366, i32 5 }
@llvm.compiler.used = appending global [91 x ptr] [ptr @__UNIQUE_ID_alias309, ptr @__UNIQUE_ID_author310, ptr @__UNIQUE_ID_description311, ptr @__UNIQUE_ID_file312, ptr @__UNIQUE_ID_license313, ptr @__exitcall_twl4030_usb_exit, ptr @__initcall__kmod_phy_twl4030_usb__308_850_twl4030_usb_init4, ptr @twl4030_i2c_access._entry, ptr @twl4030_i2c_access._entry_ptr, ptr @twl4030_usb_exit, ptr @twl4030_usb_linkstat._entry, ptr @twl4030_usb_linkstat._entry_ptr, ptr @twl4030_usb_probe._entry, ptr @twl4030_usb_probe._entry.15, ptr @twl4030_usb_probe._entry.18, ptr @twl4030_usb_probe._entry.27, ptr @twl4030_usb_probe._entry_ptr, ptr @twl4030_usb_probe._entry_ptr.17, ptr @twl4030_usb_probe._entry_ptr.21, ptr @twl4030_usb_probe._entry_ptr.30, ptr @twl4030_usb_runtime_resume._entry, ptr @twl4030_usb_runtime_resume._entry.59, ptr @twl4030_usb_runtime_resume._entry.62, ptr @twl4030_usb_runtime_resume._entry_ptr, ptr @twl4030_usb_runtime_resume._entry_ptr.61, ptr @twl4030_usb_runtime_resume._entry_ptr.64, ptr @twl4030_usb_set_mode._entry, ptr @twl4030_usb_set_mode._entry_ptr, ptr @twl4030_usb_driver, ptr @.str, ptr @twl4030_usb_id_table, ptr @twl4030_usb_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ops, ptr @.str.8, ptr @.str.9, ptr @twl4030_usb_probe.__key, ptr @.str.10, ptr @twl4030_usb_probe.__key.11, ptr @.str.12, ptr @twl4030_usb_probe.__key.13, ptr @.str.14, ptr @.str.16, ptr @dev_attr_vbus, ptr @.str.19, ptr @.str.20, ptr @twl4030_usb_probe.__key.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66], section "llvm.metadata"
@0 = internal global [73 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_usb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_usb_id_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_usb_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_usb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_usb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_usb_probe.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_usb_probe.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_usb_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vbus to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_usb_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_usb_probe.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_usb_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_usb_linkstat._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_usb_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_usb_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_usb_runtime_resume._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_usb_runtime_resume._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_i2c_access._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_usb_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @twl4030_usb_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @twl4030_usb_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @twl4030_usb_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_usb_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.addr.i51.i = alloca i8, align 1
  %val.addr.i49.i = alloca i8, align 1
  %val.addr.i46.i = alloca i8, align 1
  %val.addr.i44.i = alloca i8, align 1
  %val.addr.i41.i = alloca i8, align 1
  %val.addr.i39.i = alloca i8, align 1
  %val.addr.i37.i = alloca i8, align 1
  %val.addr.i35.i = alloca i8, align 1
  %val.addr.i33.i = alloca i8, align 1
  %val.addr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 488, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %usb_mode = getelementptr inbounds %struct.twl4030_usb, ptr %call.i, i32 0, i32 6
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef %usb_mode, i32 noundef 1, i32 noundef 0) #8
  br label %if.end14

if.else:                                          ; preds = %if.end
  %tobool7.not = icmp eq ptr %1, null
  br i1 %tobool7.not, label %do.end, label %if.then8

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %usb_mode10 = getelementptr inbounds %struct.twl4030_usb, ptr %call.i, i32 0, i32 6
  %6 = ptrtoint ptr %usb_mode10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %usb_mode10, align 4
  br label %if.end14

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end14:                                         ; preds = %if.then8, %if.then5
  %call.i224 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #8
  %tobool17.not = icmp eq ptr %call.i224, null
  br i1 %tobool17.not, label %if.end14.cleanup_crit_edge, label %if.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %dev21 = getelementptr inbounds %struct.twl4030_usb, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %dev21 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %dev21, align 4
  %call22 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.twl4030_usb, ptr %call.i, i32 0, i32 7
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call22, ptr %irq, align 4
  %vbus_supplied = getelementptr inbounds %struct.twl4030_usb, ptr %call.i, i32 0, i32 10
  %9 = ptrtoint ptr %vbus_supplied to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %vbus_supplied, align 4
  %linkstat = getelementptr inbounds %struct.twl4030_usb, ptr %call.i, i32 0, i32 8
  %10 = ptrtoint ptr %linkstat to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %linkstat, align 4
  %musb_mailbox_pending = getelementptr inbounds %struct.twl4030_usb, ptr %call.i, i32 0, i32 11
  %11 = ptrtoint ptr %musb_mailbox_pending to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %musb_mailbox_pending, align 1
  %12 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev21, align 4
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %call.i, align 4
  %label = getelementptr inbounds %struct.usb_phy, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %label to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.7, ptr %label, align 4
  %otg28 = getelementptr inbounds %struct.usb_phy, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %otg28 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i224, ptr %otg28, align 4
  %type = getelementptr inbounds %struct.usb_phy, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %type, align 4
  %usb_phy = getelementptr inbounds %struct.usb_otg, ptr %call.i224, i32 0, i32 2
  %18 = ptrtoint ptr %usb_phy to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %usb_phy, align 4
  %set_host = getelementptr inbounds %struct.usb_otg, ptr %call.i224, i32 0, i32 6
  %19 = ptrtoint ptr %set_host to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @twl4030_set_host, ptr %set_host, align 4
  %set_peripheral = getelementptr inbounds %struct.usb_otg, ptr %call.i224, i32 0, i32 7
  %20 = ptrtoint ptr %set_peripheral to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @twl4030_set_peripheral, ptr %set_peripheral, align 4
  %call32 = tail call ptr @devm_phy_create(ptr noundef %13, ptr noundef null, ptr noundef nonnull @ops) #8
  %cmp.i = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body35, label %if.end46

do.body35:                                        ; preds = %if.end19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl4030_usb_probe.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl4030_usb_probe, %if.then40)) #8
          to label %do.end44 [label %if.then40], !srcloc !163

if.then40:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl4030_usb_probe.__UNIQUE_ID_ddebug306, ptr noundef %dev, ptr noundef nonnull @.str.9) #8
  br label %do.end44

do.end44:                                         ; preds = %if.then40, %do.body35
  %21 = ptrtoint ptr %call32 to i32
  br label %cleanup

if.end46:                                         ; preds = %if.end19
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call32, i32 0, i32 8
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %23 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev21, align 4
  %call48 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %24, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #8
  %cmp.i225 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i225, label %if.then50, label %do.body53

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %call48 to i32
  br label %cleanup

do.body53:                                        ; preds = %if.end46
  %lock = getelementptr inbounds %struct.twl4030_usb, ptr %call.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @twl4030_usb_probe.__key) #8
  %id_workaround_work = getelementptr inbounds %struct.twl4030_usb, ptr %call.i, i32 0, i32 13
  tail call void @__init_work(ptr noundef %id_workaround_work, i32 noundef 0) #8
  %26 = ptrtoint ptr %id_workaround_work to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -64, ptr %id_workaround_work, align 4
  %lockdep_map = getelementptr inbounds %struct.twl4030_usb, ptr %call.i, i32 0, i32 13, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.12, ptr noundef nonnull @twl4030_usb_probe.__key.11, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry64 = getelementptr inbounds %struct.twl4030_usb, ptr %call.i, i32 0, i32 13, i32 0, i32 1
  %27 = ptrtoint ptr %entry64 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %entry64, ptr %entry64, align 4
  %prev.i = getelementptr inbounds %struct.twl4030_usb, ptr %call.i, i32 0, i32 13, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %entry64, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.twl4030_usb, ptr %call.i, i32 0, i32 13, i32 0, i32 2
  %29 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @twl4030_id_workaround_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.twl4030_usb, ptr %call.i, i32 0, i32 13, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.14, ptr noundef nonnull @twl4030_usb_probe.__key.13) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #8
  %30 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -64, ptr %val.addr.i.i, align 1
  %call.i.i226 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext 14, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i33.i) #8
  %31 = ptrtoint ptr %val.addr.i33.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 12, ptr %val.addr.i33.i, align 1
  %call.i34.i = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i33.i, i8 noundef zeroext 14, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i33.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i35.i) #8
  %32 = ptrtoint ptr %val.addr.i35.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 20, ptr %val.addr.i35.i, align 1
  %call.i36.i = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %val.addr.i35.i, i8 noundef zeroext 125, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i35.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i37.i) #8
  %33 = ptrtoint ptr %val.addr.i37.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %val.addr.i37.i, align 1
  %call.i38.i = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %val.addr.i37.i, i8 noundef zeroext 119, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i37.i) #8
  %34 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev21, align 4
  %call4.i = call ptr @devm_regulator_get(ptr noundef %35, ptr noundef nonnull @.str.34) #8
  %usb3v1.i = getelementptr inbounds %struct.twl4030_usb, ptr %call.i, i32 0, i32 4
  %36 = ptrtoint ptr %usb3v1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call4.i, ptr %usb3v1.i, align 4
  %cmp.i.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.body53.do.end80_crit_edge, label %if.end.i

do.body53.do.end80_crit_edge:                     ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end80

if.end.i:                                         ; preds = %do.body53
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i39.i) #8
  %37 = ptrtoint ptr %val.addr.i39.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %val.addr.i39.i, align 1
  %call.i40.i = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %val.addr.i39.i, i8 noundef zeroext 120, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i39.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i41.i) #8
  %38 = ptrtoint ptr %val.addr.i41.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %val.addr.i41.i, align 1
  %call.i42.i = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %val.addr.i41.i, i8 noundef zeroext 113, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i41.i) #8
  %39 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev21, align 4
  %call10.i = call ptr @devm_regulator_get(ptr noundef %40, ptr noundef nonnull @.str.35) #8
  %usb1v5.i = getelementptr inbounds %struct.twl4030_usb, ptr %call.i, i32 0, i32 2
  %41 = ptrtoint ptr %usb1v5.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call10.i, ptr %usb1v5.i, align 4
  %cmp.i43.i = icmp ugt ptr %call10.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i43.i, label %if.end.i.do.end80_crit_edge, label %if.end14.i

if.end.i.do.end80_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end80

if.end14.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i44.i) #8
  %42 = ptrtoint ptr %val.addr.i44.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %val.addr.i44.i, align 1
  %call.i45.i = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %val.addr.i44.i, i8 noundef zeroext 114, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i44.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i46.i) #8
  %43 = ptrtoint ptr %val.addr.i46.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %val.addr.i46.i, align 1
  %call.i47.i = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %val.addr.i46.i, i8 noundef zeroext 116, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i46.i) #8
  %44 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev21, align 4
  %call18.i = call ptr @devm_regulator_get(ptr noundef %45, ptr noundef nonnull @.str.36) #8
  %usb1v8.i = getelementptr inbounds %struct.twl4030_usb, ptr %call.i, i32 0, i32 3
  %46 = ptrtoint ptr %usb1v8.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call18.i, ptr %usb1v8.i, align 4
  %cmp.i48.i = icmp ugt ptr %call18.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i48.i, label %if.end14.i.do.end80_crit_edge, label %if.end82

if.end14.i.do.end80_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end80

do.end80:                                         ; preds = %if.end14.i.do.end80_crit_edge, %if.end.i.do.end80_crit_edge, %do.body53.do.end80_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #11
  br label %cleanup

if.end82:                                         ; preds = %if.end14.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i49.i) #8
  %47 = ptrtoint ptr %val.addr.i49.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %val.addr.i49.i, align 1
  %call.i50.i = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %val.addr.i49.i, i8 noundef zeroext 117, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i49.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i51.i) #8
  %48 = ptrtoint ptr %val.addr.i51.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %val.addr.i51.i, align 1
  %call.i52.i = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i51.i, i8 noundef zeroext 14, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i51.i) #8
  %call84 = call i32 @usb_add_phy_dev(ptr noundef nonnull %call.i) #8
  %driver_data.i.i228 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %49 = ptrtoint ptr %driver_data.i.i228 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i, ptr %driver_data.i.i228, align 4
  %call86 = call i32 @device_create_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_vbus) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end82.do.body95_crit_edge, label %do.end91

if.end82.do.body95_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body95

do.end91:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.19) #11
  br label %do.body95

do.body95:                                        ; preds = %do.end91, %if.end82.do.body95_crit_edge
  %notifier = getelementptr inbounds %struct.usb_phy, ptr %call.i, i32 0, i32 18
  call void @__raw_spin_lock_init(ptr noundef %notifier, ptr noundef nonnull @.str.23, ptr noundef nonnull @twl4030_usb_probe.__key.22, i16 noundef signext 3) #8
  %head = getelementptr inbounds %struct.usb_phy, ptr %call.i, i32 0, i32 18, i32 1
  %50 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %head, align 4
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #8
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 2000) #8
  call void @pm_runtime_enable(ptr noundef %dev) #8
  %call.i229 = call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  %51 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev21, align 4
  %53 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %irq, align 4
  %call112 = call i32 @devm_request_threaded_irq(ptr noundef %52, i32 noundef %54, ptr noundef null, ptr noundef nonnull @twl4030_usb_irq, i32 noundef 8195, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %cmp = icmp slt i32 %call112, 0
  br i1 %cmp, label %do.body114, label %if.end132

do.body114:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl4030_usb_probe.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl4030_usb_probe, %if.then126)) #8
          to label %cleanup [label %if.then126], !srcloc !163

if.then126:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl4030_usb_probe.__UNIQUE_ID_ddebug307, ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %56, i32 noundef %call112) #8
  br label %cleanup

if.end132:                                        ; preds = %do.body95
  %tobool133.not = icmp eq ptr %1, null
  br i1 %tobool133.not, label %if.end132.if.end139_crit_edge, label %if.end136

if.end132.if.end139_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end139

if.end136:                                        ; preds = %if.end132
  %call135 = call i32 @phy_create_lookup(ptr noundef %call32, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool137.not = icmp eq i32 %call135, 0
  br i1 %tobool137.not, label %if.end136.if.end139_crit_edge, label %if.end136.cleanup_crit_edge

if.end136.cleanup_crit_edge:                      ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end136.if.end139_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end139

if.end139:                                        ; preds = %if.end136.if.end139_crit_edge, %if.end132.if.end139_crit_edge
  %call.i230 = call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 22
  %57 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store volatile i64 %call.i230, ptr %last_busy.i, align 8
  %58 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev21, align 4
  %call.i231 = call i32 @__pm_runtime_suspend(ptr noundef %59, i32 noundef 13) #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.28) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end139, %if.end136.cleanup_crit_edge, %if.then126, %do.body114, %do.end80, %if.then50, %do.end44, %if.end14.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %21, %do.end44 ], [ %25, %if.then50 ], [ -19, %do.end80 ], [ 0, %if.end139 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end14.cleanup_crit_edge ], [ %call112, %if.then126 ], [ %call135, %if.end136.cleanup_crit_edge ], [ %call112, %do.body114 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_usb_remove(ptr noundef %pdev) #2 align 64 {
entry:
  %val.addr.i.i.i = alloca i8, align 1
  %val.addr.i.i = alloca i8, align 1
  %data.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @usb_remove_phy(ptr noundef %1) #8
  %dev = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #8
  %id_workaround_work = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 13
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %id_workaround_work) #8
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void @device_remove_file(ptr noundef %5, ptr noundef nonnull @dev_attr_vbus) #8
  %usb_mode.i = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %usb_mode.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %usb_mode.i, align 4
  %linkstat = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %linkstat to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %linkstat, align 4
  %9 = and i32 %8, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !164
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !165
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.if.end_crit_edge, label %do.end11.i.i.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !166
  br label %if.end

if.end:                                           ; preds = %do.end11.i.i.i.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %call.i32 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 12, i32 22
  %16 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store volatile i64 %call.i32, ptr %last_busy.i, align 8
  %dev7 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev7, i1 noundef zeroext false) #8
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %call.i33 = tail call i32 @__pm_runtime_idle(ptr noundef %18, i32 noundef 4) #8
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  tail call void @__pm_runtime_disable(ptr noundef %20, i1 noundef zeroext true) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i) #8
  %21 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %data.i.i, align 1, !annotation !167
  %call.i.i.i34 = call i32 @twl_i2c_read(i8 noundef zeroext 0, ptr noundef nonnull %data.i.i, i8 noundef zeroext -2, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i34)
  %cmp.i.i = icmp sgt i32 %call.i.i.i34, -1
  br i1 %cmp.i.i, label %if.then12, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl4030_readb.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl4030_usb_remove, %if.then4.i.i)) #8
          to label %twl4030_usb_read.exit [label %if.then4.i.i], !srcloc !163

if.then4.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl4030_readb.__UNIQUE_ID_ddebug296, ptr noundef %23, ptr noundef nonnull @.str.47, i32 noundef 0, i32 noundef 254, i32 noundef %call.i.i.i34) #8
  br label %twl4030_usb_read.exit

twl4030_usb_read.exit:                            ; preds = %if.then4.i.i, %do.body.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #8
  br label %if.end14

if.then12:                                        ; preds = %if.end
  %24 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %data.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #8
  %26 = and i8 %25, -8
  %conv = or i8 %26, 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #8
  %27 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv, ptr %val.addr.i.i, align 1
  %call.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 0, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext -2, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.then12.if.end14_crit_edge

if.then12.if.end14_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

do.body.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl4030_usb_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl4030_usb_remove, %if.then4.i)) #8
          to label %if.end14 [label %if.then4.i], !srcloc !163

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl4030_usb_write.__UNIQUE_ID_ddebug295, ptr noundef %29, ptr noundef nonnull @.str.51, i32 noundef 254, i32 noundef %call.i.i) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then4.i, %do.body.i, %if.then12.if.end14_crit_edge, %twl4030_usb_read.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i.i) #8
  %30 = ptrtoint ptr %val.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 32, ptr %val.addr.i.i.i, align 1
  %call.i.i.i35 = call i32 @twl_i2c_write(i8 noundef zeroext 0, ptr noundef nonnull %val.addr.i.i.i, i8 noundef zeroext -82, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i35)
  %cmp.i.i36 = icmp slt i32 %call.i.i.i35, 0
  br i1 %cmp.i.i36, label %do.body.i.i37, label %if.end14.twl4030_usb_clear_bits.exit_crit_edge

if.end14.twl4030_usb_clear_bits.exit_crit_edge:   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %twl4030_usb_clear_bits.exit

do.body.i.i37:                                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl4030_usb_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl4030_usb_remove, %if.then4.i.i39)) #8
          to label %twl4030_usb_clear_bits.exit [label %if.then4.i.i39], !srcloc !163

if.then4.i.i39:                                   ; preds = %do.body.i.i37
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl4030_usb_write.__UNIQUE_ID_ddebug295, ptr noundef %32, ptr noundef nonnull @.str.51, i32 noundef 174, i32 noundef %call.i.i.i35) #8
  br label %twl4030_usb_clear_bits.exit

twl4030_usb_clear_bits.exit:                      ; preds = %if.then4.i.i39, %do.body.i.i37, %if.end14.twl4030_usb_clear_bits.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @twl4030_set_host(ptr noundef writeonly %otg, ptr noundef %host) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %otg, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %host1 = getelementptr inbounds %struct.usb_otg, ptr %otg, i32 0, i32 3
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %host, ptr %host1, align 4
  %tobool2.not = icmp eq ptr %host, null
  br i1 %tobool2.not, label %if.then3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr inbounds %struct.usb_otg, ptr %otg, i32 0, i32 5
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %state, align 4
  br label %return

return:                                           ; preds = %if.then3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -19, %entry.return_crit_edge ], [ 0, %if.then3 ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @twl4030_set_peripheral(ptr noundef writeonly %otg, ptr noundef %gadget) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %otg, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %gadget1 = getelementptr inbounds %struct.usb_otg, ptr %otg, i32 0, i32 4
  %0 = ptrtoint ptr %gadget1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %gadget, ptr %gadget1, align 4
  %tobool2.not = icmp eq ptr %gadget, null
  br i1 %tobool2.not, label %if.then3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr inbounds %struct.usb_otg, ptr %otg, i32 0, i32 5
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %state, align 4
  br label %return

return:                                           ; preds = %if.then3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -19, %entry.return_crit_edge ], [ 0, %if.then3 ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @twl4030_id_workaround_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -388
  %call = tail call i32 @twl4030_usb_irq(i32 noundef 0, ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_phy_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_usb_irq(i32 noundef %irq, ptr noundef %_twl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @twl4030_usb_linkstat(ptr noundef %_twl)
  %lock = getelementptr inbounds %struct.twl4030_usb, ptr %_twl, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %linkstat = getelementptr inbounds %struct.twl4030_usb, ptr %_twl, i32 0, i32 8
  %0 = ptrtoint ptr %linkstat to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %linkstat, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #8
  %1 = and i32 %call, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %2 = icmp eq i32 %1, 1
  %connected = getelementptr inbounds %struct.twl4030_usb, ptr %_twl, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %connected, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8
  tail call void @llvm.prefetch.p0(ptr %connected, i32 1, i32 3, i32 1) #8
  br i1 %2, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %connected, ptr %connected, i32 1, i32 1, ptr elementtype(i32) %connected) #8, !srcloc !165
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 1
  br i1 %cmp.not.i.i.i, label %if.then.if.end37_crit_edge, label %do.body

if.then.if.end37_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

do.body:                                          ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !166
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl4030_usb_irq.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl4030_usb_irq, %if.then8)) #8
          to label %do.end [label %if.then8], !srcloc !163

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.twl4030_usb, ptr %_twl, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl4030_usb_irq.__UNIQUE_ID_ddebug304, ptr noundef %5, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef %call) #8
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %dev9 = getelementptr inbounds %struct.twl4030_usb, ptr %_twl, i32 0, i32 1
  %6 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev9, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #8
  br label %if.end37.sink.split

if.else:                                          ; preds = %entry
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %connected, ptr %connected, i32 0, i32 -1, ptr elementtype(i32) %connected) #8, !srcloc !165
  %asmresult.i.i.i82 = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i82)
  %cmp.not.i.i.i83 = icmp eq i32 %asmresult.i.i.i82, 0
  br i1 %cmp.not.i.i.i83, label %if.else.if.end37_crit_edge, label %do.body15

if.else.if.end37_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

do.body15:                                        ; preds = %if.else
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !166
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl4030_usb_irq.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl4030_usb_irq, %if.then27)) #8
          to label %do.end31 [label %if.then27], !srcloc !163

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  %dev28 = getelementptr inbounds %struct.twl4030_usb, ptr %_twl, i32 0, i32 1
  %9 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev28, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl4030_usb_irq.__UNIQUE_ID_ddebug305, ptr noundef %10, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.40, i32 noundef %call) #8
  br label %do.end31

do.end31:                                         ; preds = %if.then27, %do.body15
  %dev32 = getelementptr inbounds %struct.twl4030_usb, ptr %_twl, i32 0, i32 1
  %11 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev32, align 4
  %call.i90 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 12, i32 22
  %13 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store volatile i64 %call.i90, ptr %last_busy.i, align 8
  %14 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev32, align 4
  %call.i91 = tail call i32 @__pm_runtime_suspend(ptr noundef %15, i32 noundef 13) #8
  br label %if.end37.sink.split

if.end37.sink.split:                              ; preds = %do.end31, %do.end
  %musb_mailbox_pending35 = getelementptr inbounds %struct.twl4030_usb, ptr %_twl, i32 0, i32 11
  %16 = ptrtoint ptr %musb_mailbox_pending35 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %musb_mailbox_pending35, align 1
  br label %if.end37

if.end37:                                         ; preds = %if.end37.sink.split, %if.else.if.end37_crit_edge, %if.then.if.end37_crit_edge
  %musb_mailbox_pending38 = getelementptr inbounds %struct.twl4030_usb, ptr %_twl, i32 0, i32 11
  %17 = ptrtoint ptr %musb_mailbox_pending38 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %musb_mailbox_pending38, align 1, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool39.not = icmp eq i8 %18, 0
  br i1 %tobool39.not, label %if.end37.if.end46_crit_edge, label %if.then40

if.end37.if.end46_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then40:                                        ; preds = %if.end37
  %call41 = tail call i32 @musb_mailbox(i32 noundef %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then43, label %if.then40.if.end46_crit_edge

if.then40.if.end46_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then43:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %musb_mailbox_pending38 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %musb_mailbox_pending38, align 1
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.then40.if.end46_crit_edge, %if.end37.if.end46_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %land.lhs.true, label %if.end46.if.end53_crit_edge

if.end46.if.end53_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

land.lhs.true:                                    ; preds = %if.end46
  %dev47 = getelementptr inbounds %struct.twl4030_usb, ptr %_twl, i32 0, i32 1
  %20 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev47, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 12, i32 18
  %22 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i = icmp eq i32 %23, 0
  br i1 %cmp.i, label %land.lhs.true.if.then49_crit_edge, label %pm_runtime_active.exit

land.lhs.true.if.then49_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then49

pm_runtime_active.exit:                           ; preds = %land.lhs.true
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 12, i32 15
  %24 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i)
  %tobool.i = icmp ugt i16 %bf.load.i, 8191
  br i1 %tobool.i, label %pm_runtime_active.exit.if.then49_crit_edge, label %pm_runtime_active.exit.if.end53_crit_edge

pm_runtime_active.exit.if.end53_crit_edge:        ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

pm_runtime_active.exit.if.then49_crit_edge:       ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then49

if.then49:                                        ; preds = %pm_runtime_active.exit.if.then49_crit_edge, %land.lhs.true.if.then49_crit_edge
  %id_workaround_work = getelementptr inbounds %struct.twl4030_usb, ptr %_twl, i32 0, i32 13
  %call50 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %id_workaround_work) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %25 = load ptr, ptr @system_wq, align 4
  %call.i.i92 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %id_workaround_work, i32 noundef 100) #8
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %pm_runtime_active.exit.if.end53_crit_edge, %if.end46.if.end53_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq)
  %tobool54.not = icmp eq i32 %irq, 0
  br i1 %tobool54.not, label %if.end53.if.end57_crit_edge, label %if.then55

if.end53.if.end57_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %dev56 = getelementptr inbounds %struct.twl4030_usb, ptr %_twl, i32 0, i32 1
  %26 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev56, align 4
  tail call void @sysfs_notify(ptr noundef %27, ptr noundef null, ptr noundef nonnull @.str.37) #8
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end53.if.end57_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_create_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_phy_init(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #8
  %linkstat = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %linkstat to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %linkstat, align 4
  %id_workaround_work = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %id_workaround_work, i32 noundef 100) #8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call.i10 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 22
  %8 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store volatile i64 %call.i10, ptr %last_busy.i, align 8
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %call.i11 = tail call i32 @__pm_runtime_suspend(ptr noundef %10, i32 noundef 13) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_phy_power_on(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl4030_phy_power_on.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl4030_phy_power_on, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !163

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl4030_phy_power_on.__UNIQUE_ID_ddebug303, ptr noundef %3, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev4 = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev4, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #8
  %id_workaround_work = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %id_workaround_work, i32 noundef 100) #8
  %7 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev4, align 4
  %call.i14 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 12, i32 22
  %9 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store volatile i64 %call.i14, ptr %last_busy.i, align 8
  %10 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev4, align 4
  %call.i15 = tail call i32 @__pm_runtime_suspend(ptr noundef %11, i32 noundef 13) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_phy_power_off(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl4030_phy_power_off.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl4030_phy_power_off, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !163

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl4030_phy_power_off.__UNIQUE_ID_ddebug302, ptr noundef %3, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_write(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vbus_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %vbus_supplied = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %vbus_supplied to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vbus_supplied, align 4, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %cond = select i1 %tobool.not, ptr @.str.39, ptr @.str.38
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.32, ptr noundef nonnull %cond)
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @twl4030_usb_linkstat(ptr nocapture noundef %twl) unnamed_addr #2 align 64 {
entry:
  %data.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vbus_supplied = getelementptr inbounds %struct.twl4030_usb, ptr %twl, i32 0, i32 10
  %0 = ptrtoint ptr %vbus_supplied to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %vbus_supplied, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #8
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %data.i, align 1, !annotation !167
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 3, ptr noundef nonnull %data.i, i8 noundef zeroext 15, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.i = icmp sgt i32 %call.i.i, -1
  br i1 %cmp.i, label %if.else, label %do.body.i

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl4030_readb.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl4030_usb_linkstat, %twl4030_readb.exit.thread)) #8
          to label %twl4030_readb.exit [label %twl4030_readb.exit.thread], !srcloc !163

twl4030_readb.exit.thread:                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.twl4030_usb, ptr %twl, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl4030_readb.__UNIQUE_ID_ddebug296, ptr noundef %3, ptr noundef nonnull @.str.47, i32 noundef 3, i32 noundef 15, i32 noundef %call.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #8
  br label %do.end

twl4030_readb.exit:                               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #8
  br label %do.end

do.end:                                           ; preds = %twl4030_readb.exit, %twl4030_readb.exit.thread
  %dev = getelementptr inbounds %struct.twl4030_usb, ptr %twl, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.43, i32 noundef %call.i.i) #11
  br label %if.end27

if.else:                                          ; preds = %entry
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %data.i, align 1
  %conv.i = zext i8 %7 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #8
  %and = and i32 %conv.i, 132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else21, label %if.then1

if.then1:                                         ; preds = %if.else
  %and2 = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then1.if.end10_crit_edge, label %if.then4

if.then1.if.end10_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then4:                                         ; preds = %if.then1
  %call5 = call fastcc zeroext i1 @twl4030_is_driving_vbus(ptr noundef %twl)
  br i1 %call5, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %and7 = and i32 %conv.i, 127
  br label %if.end10

if.else8:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %vbus_supplied to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %vbus_supplied, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else8, %if.then6, %if.then1.if.end10_crit_edge
  %status.0 = phi i32 [ %and7, %if.then6 ], [ %conv.i, %if.else8 ], [ %conv.i, %if.then1.if.end10_crit_edge ]
  %and11 = and i32 %status.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else14, label %if.end10.if.end27_crit_edge

if.end10.if.end27_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.else14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %and15 = and i32 %status.0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %. = select i1 %tobool16.not, i32 5, i32 4
  %.58 = select i1 %tobool16.not, i32 4, i32 3
  br label %if.end27

if.else21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %linkstat22 = getelementptr inbounds %struct.twl4030_usb, ptr %twl, i32 0, i32 8
  %9 = ptrtoint ptr %linkstat22 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %linkstat22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp23.not = icmp eq i32 %10, 0
  %spec.select = select i1 %cmp23.not, i32 0, i32 4
  br label %if.end27

if.end27:                                         ; preds = %if.else21, %if.else14, %if.end10.if.end27_crit_edge, %do.end
  %cmp29 = phi i32 [ 5, %do.end ], [ 5, %if.end10.if.end27_crit_edge ], [ %., %if.else14 ], [ 5, %if.else21 ]
  %linkstat.0 = phi i32 [ 0, %do.end ], [ 1, %if.end10.if.end27_crit_edge ], [ %.58, %if.else14 ], [ %spec.select, %if.else21 ]
  %status.1 = phi i32 [ %call.i.i, %do.end ], [ %status.0, %if.end10.if.end27_crit_edge ], [ %status.0, %if.else14 ], [ %conv.i, %if.else21 ]
  %dev28 = getelementptr inbounds %struct.twl4030_usb, ptr %twl, i32 0, i32 1
  %11 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev28, align 4
  %call30 = call i32 @kobject_uevent(ptr noundef %12, i32 noundef %cmp29) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl4030_usb_linkstat.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl4030_usb_linkstat, %if.then36)) #8
          to label %do.end40 [label %if.then36], !srcloc !163

if.then36:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev28, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl4030_usb_linkstat.__UNIQUE_ID_ddebug297, ptr noundef %14, ptr noundef nonnull @.str.45, i32 noundef %status.1, i32 noundef %status.1, i32 noundef %linkstat.0) #8
  br label %do.end40

do.end40:                                         ; preds = %if.then36, %if.end27
  ret i32 %linkstat.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_mailbox(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @twl4030_is_driving_vbus(ptr nocapture noundef readonly %twl) unnamed_addr #2 align 64 {
entry:
  %data.i.i12 = alloca i8, align 1
  %data.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i) #8
  %0 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %data.i.i, align 1, !annotation !167
  %call.i.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 0, ptr noundef nonnull %data.i.i, i8 noundef zeroext -1, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %cmp.i.i, label %if.then.i.i, label %do.body.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %data.i.i, align 1
  %conv.i.i = zext i8 %2 to i32
  br label %twl4030_usb_read.exit

do.body.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl4030_readb.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl4030_is_driving_vbus, %twl4030_usb_read.exit.thread)) #8
          to label %twl4030_usb_read.exit [label %twl4030_usb_read.exit.thread], !srcloc !163

twl4030_usb_read.exit.thread:                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.twl4030_usb, ptr %twl, i32 0, i32 1
  %3 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl4030_readb.__UNIQUE_ID_ddebug296, ptr noundef %4, ptr noundef nonnull @.str.47, i32 noundef 0, i32 noundef 255, i32 noundef %call.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #8
  br label %cleanup

twl4030_usb_read.exit:                            ; preds = %do.body.i.i, %if.then.i.i
  %ret.0.i.i = phi i32 [ %conv.i.i, %if.then.i.i ], [ %call.i.i.i, %do.body.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #8
  %5 = and i32 %ret.0.i.i, -2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %.not = icmp eq i32 %5, 1
  br i1 %.not, label %if.end, label %twl4030_usb_read.exit.cleanup_crit_edge

twl4030_usb_read.exit.cleanup_crit_edge:          ; preds = %twl4030_usb_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %twl4030_usb_read.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i12) #8
  %6 = ptrtoint ptr %data.i.i12 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %data.i.i12, align 1, !annotation !167
  %call.i.i.i13 = call i32 @twl_i2c_read(i8 noundef zeroext 0, ptr noundef nonnull %data.i.i12, i8 noundef zeroext 10, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i13)
  %cmp.i.i14 = icmp sgt i32 %call.i.i.i13, -1
  br i1 %cmp.i.i14, label %if.end4, label %do.body.i.i17

do.body.i.i17:                                    ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl4030_readb.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl4030_is_driving_vbus, %twl4030_usb_read.exit21.thread)) #8
          to label %twl4030_usb_read.exit21 [label %twl4030_usb_read.exit21.thread], !srcloc !163

twl4030_usb_read.exit21.thread:                   ; preds = %do.body.i.i17
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i18 = getelementptr inbounds %struct.twl4030_usb, ptr %twl, i32 0, i32 1
  %7 = ptrtoint ptr %dev.i.i18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i.i18, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl4030_readb.__UNIQUE_ID_ddebug296, ptr noundef %8, ptr noundef nonnull @.str.47, i32 noundef 0, i32 noundef 10, i32 noundef %call.i.i.i13) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i12) #8
  br label %cleanup

twl4030_usb_read.exit21:                          ; preds = %do.body.i.i17
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i12) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %data.i.i12 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data.i.i12, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i12) #8
  %11 = and i8 %10, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6 = icmp ne i8 %11, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %twl4030_usb_read.exit21, %twl4030_usb_read.exit21.thread, %twl4030_usb_read.exit.cleanup_crit_edge, %twl4030_usb_read.exit.thread
  %retval.0 = phi i1 [ %tobool6, %if.end4 ], [ false, %twl4030_usb_read.exit.cleanup_crit_edge ], [ false, %twl4030_usb_read.exit21 ], [ false, %twl4030_usb_read.exit.thread ], [ false, %twl4030_usb_read.exit21.thread ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_read(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_phy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @twl4030_usb_set_mode(ptr nocapture noundef %twl, i32 noundef %mode) unnamed_addr #2 align 64 {
entry:
  %val.addr.i.i.i15 = alloca i8, align 1
  %val.addr.i.i.i9 = alloca i8, align 1
  %val.addr.i.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_mode = getelementptr inbounds %struct.twl4030_usb, ptr %twl, i32 0, i32 6
  %0 = ptrtoint ptr %usb_mode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %mode, ptr %usb_mode, align 4
  %1 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %do.end [
    i32 1, label %sw.bb
    i32 -1, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i.i) #8
  %2 = ptrtoint ptr %val.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 4, ptr %val.addr.i.i.i, align 1
  %call.i.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 0, ptr noundef nonnull %val.addr.i.i.i, i8 noundef zeroext 9, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %do.body.i.i, label %sw.bb.twl4030_usb_clear_bits.exit_crit_edge

sw.bb.twl4030_usb_clear_bits.exit_crit_edge:      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %twl4030_usb_clear_bits.exit

do.body.i.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl4030_usb_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl4030_usb_set_mode, %if.then4.i.i)) #8
          to label %twl4030_usb_clear_bits.exit [label %if.then4.i.i], !srcloc !163

if.then4.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.twl4030_usb, ptr %twl, i32 0, i32 1
  %3 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl4030_usb_write.__UNIQUE_ID_ddebug295, ptr noundef %4, ptr noundef nonnull @.str.51, i32 noundef 9, i32 noundef %call.i.i.i) #8
  br label %twl4030_usb_clear_bits.exit

twl4030_usb_clear_bits.exit:                      ; preds = %if.then4.i.i, %do.body.i.i, %sw.bb.twl4030_usb_clear_bits.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i.i9) #8
  %5 = ptrtoint ptr %val.addr.i.i.i9 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 32, ptr %val.addr.i.i.i9, align 1
  %call.i.i.i10 = call i32 @twl_i2c_write(i8 noundef zeroext 0, ptr noundef nonnull %val.addr.i.i.i9, i8 noundef zeroext -83, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i.i9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i10)
  %cmp.i.i11 = icmp slt i32 %call.i.i.i10, 0
  br i1 %cmp.i.i11, label %do.body.i.i12, label %twl4030_usb_clear_bits.exit.twl4030_usb_set_bits.exit_crit_edge

twl4030_usb_clear_bits.exit.twl4030_usb_set_bits.exit_crit_edge: ; preds = %twl4030_usb_clear_bits.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %twl4030_usb_set_bits.exit

do.body.i.i12:                                    ; preds = %twl4030_usb_clear_bits.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl4030_usb_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl4030_usb_set_mode, %if.then4.i.i14)) #8
          to label %twl4030_usb_set_bits.exit [label %if.then4.i.i14], !srcloc !163

if.then4.i.i14:                                   ; preds = %do.body.i.i12
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i13 = getelementptr inbounds %struct.twl4030_usb, ptr %twl, i32 0, i32 1
  %6 = ptrtoint ptr %dev.i.i13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i13, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl4030_usb_write.__UNIQUE_ID_ddebug295, ptr noundef %7, ptr noundef nonnull @.str.51, i32 noundef 173, i32 noundef %call.i.i.i10) #8
  br label %twl4030_usb_set_bits.exit

twl4030_usb_set_bits.exit:                        ; preds = %if.then4.i.i14, %do.body.i.i12, %twl4030_usb_clear_bits.exit.twl4030_usb_set_bits.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i.i15) #8
  %8 = ptrtoint ptr %val.addr.i.i.i15 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 27, ptr %val.addr.i.i.i15, align 1
  %call.i.i.i16 = call i32 @twl_i2c_write(i8 noundef zeroext 0, ptr noundef nonnull %val.addr.i.i.i15, i8 noundef zeroext 6, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i.i15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i16)
  %cmp.i.i17 = icmp slt i32 %call.i.i.i16, 0
  br i1 %cmp.i.i17, label %do.body.i.i18, label %twl4030_usb_set_bits.exit.sw.epilog_crit_edge

twl4030_usb_set_bits.exit.sw.epilog_crit_edge:    ; preds = %twl4030_usb_set_bits.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body.i.i18:                                    ; preds = %twl4030_usb_set_bits.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl4030_usb_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl4030_usb_set_mode, %if.then4.i.i20)) #8
          to label %sw.epilog [label %if.then4.i.i20], !srcloc !163

if.then4.i.i20:                                   ; preds = %do.body.i.i18
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i19 = getelementptr inbounds %struct.twl4030_usb, ptr %twl, i32 0, i32 1
  %9 = ptrtoint ptr %dev.i.i19 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i.i19, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl4030_usb_write.__UNIQUE_ID_ddebug295, ptr noundef %10, ptr noundef nonnull @.str.51, i32 noundef 6, i32 noundef %call.i.i.i16) #8
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.twl4030_usb, ptr %twl, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.48, i32 noundef %mode) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.then4.i.i20, %do.body.i.i18, %twl4030_usb_set_bits.exit.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_usb_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl4030_usb_suspend.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl4030_usb_suspend, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !163

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev4 = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl4030_usb_suspend.__UNIQUE_ID_ddebug298, ptr noundef %3, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.52) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %irq = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %5) #8
  %runtime_suspended = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %runtime_suspended to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %runtime_suspended, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool5.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool5.not, label %land.lhs.true, label %do.end.if.end11_crit_edge

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

land.lhs.true:                                    ; preds = %do.end
  %connected = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %connected, i32 noundef 4) #8
  %7 = ptrtoint ptr %connected to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %connected, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not = icmp eq i32 %8, 0
  br i1 %tobool7.not, label %if.then8, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then8:                                         ; preds = %land.lhs.true
  %9 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl4030_usb_runtime_suspend.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl4030_usb_suspend, %if.then.i)) #8
          to label %twl4030_usb_runtime_suspend.exit [label %if.then.i], !srcloc !163

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %dev4.i = getelementptr inbounds %struct.twl4030_usb, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev4.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl4030_usb_runtime_suspend.__UNIQUE_ID_ddebug300, ptr noundef %12, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.54) #8
  br label %twl4030_usb_runtime_suspend.exit

twl4030_usb_runtime_suspend.exit:                 ; preds = %if.then.i, %if.then8
  tail call fastcc void @__twl4030_phy_power(ptr noundef %10, i32 noundef 0) #8
  %usb1v5.i = getelementptr inbounds %struct.twl4030_usb, ptr %10, i32 0, i32 2
  %13 = ptrtoint ptr %usb1v5.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usb1v5.i, align 4
  %call5.i = tail call i32 @regulator_disable(ptr noundef %14) #8
  %usb1v8.i = getelementptr inbounds %struct.twl4030_usb, ptr %10, i32 0, i32 3
  %15 = ptrtoint ptr %usb1v8.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %usb1v8.i, align 4
  %call6.i = tail call i32 @regulator_disable(ptr noundef %16) #8
  %usb3v1.i = getelementptr inbounds %struct.twl4030_usb, ptr %10, i32 0, i32 4
  %17 = ptrtoint ptr %usb3v1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %usb3v1.i, align 4
  %call7.i = tail call i32 @regulator_disable(ptr noundef %18) #8
  %runtime_suspended.i = getelementptr inbounds %struct.twl4030_usb, ptr %10, i32 0, i32 12
  %19 = ptrtoint ptr %runtime_suspended.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i = load i8, ptr %runtime_suspended.i, align 2
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %runtime_suspended.i, align 2
  %20 = ptrtoint ptr %runtime_suspended to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load10 = load i8, ptr %runtime_suspended, align 2
  %bf.set = or i8 %bf.load10, 64
  store i8 %bf.set, ptr %runtime_suspended, align 2
  br label %if.end11

if.end11:                                         ; preds = %twl4030_usb_runtime_suspend.exit, %land.lhs.true.if.end11_crit_edge, %do.end.if.end11_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_usb_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl4030_usb_resume.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl4030_usb_resume, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !163

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev4 = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl4030_usb_resume.__UNIQUE_ID_ddebug299, ptr noundef %3, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.53) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %irq = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %5) #8
  %needs_resume = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %needs_resume to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %needs_resume, align 2
  %7 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %do.end.if.end8_crit_edge, label %if.then6

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 @twl4030_usb_runtime_resume(ptr noundef %dev)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %do.end.if.end8_crit_edge
  %call9 = tail call i32 @twl4030_usb_irq(i32 noundef 0, ptr noundef %1)
  %8 = ptrtoint ptr %needs_resume to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load10 = load i8, ptr %needs_resume, align 2
  %bf.clear11 = and i8 %bf.load10, 127
  store i8 %bf.clear11, ptr %needs_resume, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_usb_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl4030_usb_runtime_suspend.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl4030_usb_runtime_suspend, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !163

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev4 = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl4030_usb_runtime_suspend.__UNIQUE_ID_ddebug300, ptr noundef %3, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.54) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @__twl4030_phy_power(ptr noundef %1, i32 noundef 0)
  %usb1v5 = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %usb1v5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb1v5, align 4
  %call5 = tail call i32 @regulator_disable(ptr noundef %5) #8
  %usb1v8 = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %usb1v8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb1v8, align 4
  %call6 = tail call i32 @regulator_disable(ptr noundef %7) #8
  %usb3v1 = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %usb3v1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb3v1, align 4
  %call7 = tail call i32 @regulator_disable(ptr noundef %9) #8
  %runtime_suspended = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %runtime_suspended to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %runtime_suspended, align 2
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %runtime_suspended, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_usb_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %val.addr.i.i = alloca i8, align 1
  %data.i.i = alloca i8, align 1
  %val.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl4030_usb_runtime_resume.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl4030_usb_runtime_resume, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !163

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev4 = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl4030_usb_runtime_resume.__UNIQUE_ID_ddebug301, ptr noundef %3, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.57) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %usb3v1 = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %usb3v1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb3v1, align 4
  %call5 = tail call i32 @regulator_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.end.if.end12_crit_edge, label %do.end10

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev11 = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.58) #11
  br label %if.end12

if.end12:                                         ; preds = %do.end10, %do.end.if.end12_crit_edge
  %usb1v8 = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %usb1v8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb1v8, align 4
  %call13 = tail call i32 @regulator_enable(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.if.end20_crit_edge, label %do.end18

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %dev19 = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.60) #11
  br label %if.end20

if.end20:                                         ; preds = %do.end18, %if.end12.if.end20_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %12 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %val.addr.i, align 1
  %call.i = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %val.addr.i, i8 noundef zeroext 126, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  %usb1v5 = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %usb1v5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usb1v5, align 4
  %call22 = call i32 @regulator_enable(ptr noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end20.if.end29_crit_edge, label %do.end27

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

do.end27:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %dev28 = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev28, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.63) #11
  br label %if.end29

if.end29:                                         ; preds = %do.end27, %if.end20.if.end29_crit_edge
  call fastcc void @__twl4030_phy_power(ptr noundef %1, i32 noundef 1)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i) #8
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %data.i.i, align 1, !annotation !167
  %call.i.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 0, ptr noundef nonnull %data.i.i, i8 noundef zeroext -2, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %cmp.i.i, label %if.then.i.i, label %do.body.i.i

if.then.i.i:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data.i.i, align 1
  %conv.i.i = zext i8 %19 to i32
  br label %twl4030_usb_read.exit

do.body.i.i:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl4030_readb.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl4030_usb_runtime_resume, %if.then4.i.i)) #8
          to label %twl4030_usb_read.exit [label %if.then4.i.i], !srcloc !163

if.then4.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl4030_readb.__UNIQUE_ID_ddebug296, ptr noundef %21, ptr noundef nonnull @.str.47, i32 noundef 0, i32 noundef 254, i32 noundef %call.i.i.i) #8
  br label %twl4030_usb_read.exit

twl4030_usb_read.exit:                            ; preds = %if.then4.i.i, %do.body.i.i, %if.then.i.i
  %ret.0.i.i = phi i32 [ %conv.i.i, %if.then.i.i ], [ %call.i.i.i, %if.then4.i.i ], [ %call.i.i.i, %do.body.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #8
  %22 = trunc i32 %ret.0.i.i to i8
  %conv = or i8 %22, 6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #8
  %23 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv, ptr %val.addr.i.i, align 1
  %call.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 0, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext -2, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %twl4030_usb_read.exit.twl4030_usb_write.exit_crit_edge

twl4030_usb_read.exit.twl4030_usb_write.exit_crit_edge: ; preds = %twl4030_usb_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %twl4030_usb_write.exit

do.body.i:                                        ; preds = %twl4030_usb_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl4030_usb_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl4030_usb_runtime_resume, %if.then4.i)) #8
          to label %twl4030_usb_write.exit [label %if.then4.i], !srcloc !163

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl4030_usb_write.__UNIQUE_ID_ddebug295, ptr noundef %25, ptr noundef nonnull @.str.51, i32 noundef 254, i32 noundef %call.i.i) #8
  br label %twl4030_usb_write.exit

twl4030_usb_write.exit:                           ; preds = %if.then4.i, %do.body.i, %twl4030_usb_read.exit.twl4030_usb_write.exit_crit_edge
  call fastcc void @twl4030_i2c_access(ptr noundef %1, i32 noundef 1)
  %usb_mode = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 6
  %26 = ptrtoint ptr %usb_mode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %usb_mode, align 4
  call fastcc void @twl4030_usb_set_mode(ptr noundef %1, i32 noundef %27)
  %28 = ptrtoint ptr %usb_mode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %usb_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp = icmp eq i32 %29, 1
  br i1 %cmp, label %if.then34, label %twl4030_usb_write.exit.if.end35_crit_edge

twl4030_usb_write.exit.if.end35_crit_edge:        ; preds = %twl4030_usb_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then34:                                        ; preds = %twl4030_usb_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @twl4030_i2c_access(ptr noundef %1, i32 noundef 0)
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %twl4030_usb_write.exit.if.end35_crit_edge
  call void @msleep(i32 noundef 50) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__twl4030_phy_power(ptr nocapture noundef readonly %twl, i32 noundef %on) unnamed_addr #2 align 64 {
entry:
  %data.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i) #8
  %0 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %data.i.i, align 1, !annotation !167
  %call.i.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 0, ptr noundef nonnull %data.i.i, i8 noundef zeroext -3, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %cmp.i.i, label %if.then.i.i, label %do.body.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %data.i.i, align 1
  %conv.i.i = zext i8 %2 to i32
  br label %twl4030_usb_read.exit

do.body.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl4030_readb.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__twl4030_phy_power, %if.then4.i.i)) #8
          to label %twl4030_usb_read.exit [label %if.then4.i.i], !srcloc !163

if.then4.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.twl4030_usb, ptr %twl, i32 0, i32 1
  %3 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl4030_readb.__UNIQUE_ID_ddebug296, ptr noundef %4, ptr noundef nonnull @.str.47, i32 noundef 0, i32 noundef 253, i32 noundef %call.i.i.i) #8
  br label %twl4030_usb_read.exit

twl4030_usb_read.exit:                            ; preds = %if.then4.i.i, %do.body.i.i, %if.then.i.i
  %ret.0.i.i = phi i32 [ %conv.i.i, %if.then.i.i ], [ %call.i.i.i, %if.then4.i.i ], [ %call.i.i.i, %do.body.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %5 = trunc i32 %ret.0.i.i to i8
  %conv2 = and i8 %5, -2
  %masksel = zext i1 %tobool.not to i8
  %pwr.0 = or i8 %conv2, %masksel
  %call5 = call fastcc i32 @twl4030_i2c_write_u8_verify(ptr noundef %twl, i8 noundef zeroext %pwr.0, i8 noundef zeroext -3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end, label %twl4030_usb_read.exit.if.end21_crit_edge, !prof !169

twl4030_usb_read.exit.if.end21_crit_edge:         ; preds = %twl4030_usb_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

do.end:                                           ; preds = %twl4030_usb_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 386, i32 noundef 9, ptr noundef null) #8
  br label %if.end21

if.end21:                                         ; preds = %do.end, %twl4030_usb_read.exit.if.end21_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @twl4030_i2c_write_u8_verify(ptr nocapture noundef readonly %twl, i8 noundef zeroext %data, i8 noundef zeroext %address) unnamed_addr #2 align 64 {
entry:
  %val.addr.i5 = alloca i8, align 1
  %val.addr.i = alloca i8, align 1
  %check = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %check) #8
  %0 = ptrtoint ptr %check to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %check, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %1 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %data, ptr %val.addr.i, align 1
  %call.i = call i32 @twl_i2c_write(i8 noundef zeroext 0, ptr noundef nonnull %val.addr.i, i8 noundef zeroext %address, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, -1
  br i1 %cmp, label %land.lhs.true, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  %call.i4 = call i32 @twl_i2c_read(i8 noundef zeroext 0, ptr noundef nonnull %check, i8 noundef zeroext %address, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i4)
  %cmp2 = icmp sgt i32 %call.i4, -1
  br i1 %cmp2, label %land.lhs.true3, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

land.lhs.true3:                                   ; preds = %land.lhs.true
  %2 = ptrtoint ptr %check to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %check, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %data)
  %cmp5 = icmp eq i8 %3, %data
  br i1 %cmp5, label %land.lhs.true3.cleanup_crit_edge, label %land.lhs.true3.do.body_crit_edge

land.lhs.true3.do.body_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

land.lhs.true3.cleanup_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true3.do.body_crit_edge, %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl4030_i2c_write_u8_verify.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl4030_i2c_write_u8_verify, %if.then10)) #8
          to label %do.end [label %if.then10], !srcloc !163

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.twl4030_usb, ptr %twl, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %conv12 = zext i8 %address to i32
  %6 = ptrtoint ptr %check to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %check, align 1
  %conv13 = zext i8 %7 to i32
  %conv14 = zext i8 %data to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl4030_i2c_write_u8_verify.__UNIQUE_ID_ddebug293, ptr noundef %5, ptr noundef nonnull @.str.56, i32 noundef 1, i32 noundef 0, i32 noundef %conv12, i32 noundef %conv13, i32 noundef %conv14) #8
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i5)
  %8 = ptrtoint ptr %val.addr.i5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %data, ptr %val.addr.i5, align 1
  %call.i6 = call i32 @twl_i2c_write(i8 noundef zeroext 0, ptr noundef nonnull %val.addr.i5, i8 noundef zeroext %address, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i6)
  %cmp17 = icmp sgt i32 %call.i6, -1
  br i1 %cmp17, label %land.lhs.true19, label %do.end.do.body30_crit_edge

do.end.do.body30_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body30

land.lhs.true19:                                  ; preds = %do.end
  %call.i7 = call i32 @twl_i2c_read(i8 noundef zeroext 0, ptr noundef nonnull %check, i8 noundef zeroext %address, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i7)
  %cmp21 = icmp sgt i32 %call.i7, -1
  br i1 %cmp21, label %land.lhs.true23, label %land.lhs.true19.do.body30_crit_edge

land.lhs.true19.do.body30_crit_edge:              ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body30

land.lhs.true23:                                  ; preds = %land.lhs.true19
  %9 = ptrtoint ptr %check to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %check, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %data)
  %cmp26 = icmp eq i8 %10, %data
  br i1 %cmp26, label %land.lhs.true23.cleanup_crit_edge, label %land.lhs.true23.do.body30_crit_edge

land.lhs.true23.do.body30_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body30

land.lhs.true23.cleanup_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body30:                                        ; preds = %land.lhs.true23.do.body30_crit_edge, %land.lhs.true19.do.body30_crit_edge, %do.end.do.body30_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl4030_i2c_write_u8_verify.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl4030_i2c_write_u8_verify, %if.then42)) #8
          to label %cleanup [label %if.then42], !srcloc !163

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  %dev43 = getelementptr inbounds %struct.twl4030_usb, ptr %twl, i32 0, i32 1
  %11 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev43, align 4
  %conv45 = zext i8 %address to i32
  %13 = ptrtoint ptr %check to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %check, align 1
  %conv46 = zext i8 %14 to i32
  %conv47 = zext i8 %data to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl4030_i2c_write_u8_verify.__UNIQUE_ID_ddebug294, ptr noundef %12, ptr noundef nonnull @.str.56, i32 noundef 2, i32 noundef 0, i32 noundef %conv45, i32 noundef %conv46, i32 noundef %conv47) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %do.body30, %land.lhs.true23.cleanup_crit_edge, %land.lhs.true3.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true3.cleanup_crit_edge ], [ 0, %land.lhs.true23.cleanup_crit_edge ], [ -16, %if.then42 ], [ -16, %do.body30 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %check) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @twl4030_i2c_access(ptr nocapture noundef readonly %twl, i32 noundef %on) unnamed_addr #2 align 64 {
entry:
  %data.i.i95 = alloca i8, align 1
  %data.i.i85 = alloca i8, align 1
  %data.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i) #8
  %0 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %data.i.i, align 1, !annotation !167
  %call.i.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 0, ptr noundef nonnull %data.i.i, i8 noundef zeroext -2, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %cmp.i.i, label %if.then, label %do.body.i.i

do.body.i.i:                                      ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl4030_readb.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl4030_i2c_access, %if.then4.i.i)) #8
          to label %twl4030_usb_read.exit [label %if.then4.i.i], !srcloc !163

if.then4.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.twl4030_usb, ptr %twl, i32 0, i32 1
  %1 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl4030_readb.__UNIQUE_ID_ddebug296, ptr noundef %2, ptr noundef nonnull @.str.47, i32 noundef 0, i32 noundef 254, i32 noundef %call.i.i.i) #8
  br label %twl4030_usb_read.exit

twl4030_usb_read.exit:                            ; preds = %if.then4.i.i, %do.body.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #8
  br label %if.end73

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.then
  %conv = or i8 %4, 1
  %call2 = call fastcc i32 @twl4030_i2c_write_u8_verify(ptr noundef %twl, i8 noundef zeroext %conv, i8 noundef zeroext -2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end, label %if.then1.if.end_crit_edge, !prof !169

if.then1.if.end_crit_edge:                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 357, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then1.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %dev.i.i91 = getelementptr inbounds %struct.twl4030_usb, ptr %twl, i32 0, i32 1
  %add.neg = sub i32 -100, %5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i85) #8
  %6 = ptrtoint ptr %data.i.i85 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %data.i.i85, align 1, !annotation !167
  %call.i.i.i86 = call i32 @twl_i2c_read(i8 noundef zeroext 0, ptr noundef nonnull %data.i.i85, i8 noundef zeroext -1, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i86)
  %cmp.i.i87 = icmp sgt i32 %call.i.i.i86, -1
  br i1 %cmp.i.i87, label %if.then.i.i89, label %do.body.i.i90

if.then.i.i89:                                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %data.i.i85 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %data.i.i85, align 1
  %conv.i.i88 = zext i8 %8 to i32
  br label %twl4030_usb_read.exit94

do.body.i.i90:                                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl4030_readb.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl4030_i2c_access, %if.then4.i.i92)) #8
          to label %twl4030_usb_read.exit94 [label %if.then4.i.i92], !srcloc !163

if.then4.i.i92:                                   ; preds = %do.body.i.i90
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %dev.i.i91 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i.i91, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl4030_readb.__UNIQUE_ID_ddebug296, ptr noundef %10, ptr noundef nonnull @.str.47, i32 noundef 0, i32 noundef 255, i32 noundef %call.i.i.i86) #8
  br label %twl4030_usb_read.exit94

twl4030_usb_read.exit94:                          ; preds = %if.then4.i.i92, %do.body.i.i90, %if.then.i.i89
  %ret.0.i.i93 = phi i32 [ %conv.i.i88, %if.then.i.i89 ], [ %call.i.i.i86, %if.then4.i.i92 ], [ %call.i.i.i86, %do.body.i.i90 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i85) #8
  %and = and i32 %ret.0.i.i93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %land.rhs, label %twl4030_usb_read.exit94.while.end_crit_edge

twl4030_usb_read.exit94.while.end_crit_edge:      ; preds = %twl4030_usb_read.exit94
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.rhs:                                         ; preds = %twl4030_usb_read.exit94
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %11
  %cmp27 = icmp slt i32 %sub, 0
  br i1 %cmp27, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %12(i32 noundef 2147480) #8
  br label %while.cond

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %twl4030_usb_read.exit94.while.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i95) #8
  %13 = ptrtoint ptr %data.i.i95 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %data.i.i95, align 1, !annotation !167
  %call.i.i.i96 = call i32 @twl_i2c_read(i8 noundef zeroext 0, ptr noundef nonnull %data.i.i95, i8 noundef zeroext -1, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i96)
  %cmp.i.i97 = icmp sgt i32 %call.i.i.i96, -1
  br i1 %cmp.i.i97, label %if.then.i.i99, label %do.body.i.i100

if.then.i.i99:                                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %data.i.i95 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %data.i.i95, align 1
  %conv.i.i98 = zext i8 %15 to i32
  br label %twl4030_usb_read.exit104

do.body.i.i100:                                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl4030_readb.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl4030_i2c_access, %if.then4.i.i102)) #8
          to label %twl4030_usb_read.exit104 [label %if.then4.i.i102], !srcloc !163

if.then4.i.i102:                                  ; preds = %do.body.i.i100
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %dev.i.i91 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i.i91, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl4030_readb.__UNIQUE_ID_ddebug296, ptr noundef %17, ptr noundef nonnull @.str.47, i32 noundef 0, i32 noundef 255, i32 noundef %call.i.i.i96) #8
  br label %twl4030_usb_read.exit104

twl4030_usb_read.exit104:                         ; preds = %if.then4.i.i102, %do.body.i.i100, %if.then.i.i99
  %ret.0.i.i103 = phi i32 [ %conv.i.i98, %if.then.i.i99 ], [ %call.i.i.i96, %if.then4.i.i102 ], [ %call.i.i.i96, %do.body.i.i100 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i95) #8
  %and30 = and i32 %ret.0.i.i103, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %do.end35, label %twl4030_usb_read.exit104.if.end73_crit_edge

twl4030_usb_read.exit104.if.end73_crit_edge:      ; preds = %twl4030_usb_read.exit104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

do.end35:                                         ; preds = %twl4030_usb_read.exit104
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %dev.i.i91 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i.i91, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.65) #11
  br label %if.end73

if.else:                                          ; preds = %if.then
  %conv39 = and i8 %4, -2
  %call40 = call fastcc i32 @twl4030_i2c_write_u8_verify(ptr noundef %twl, i8 noundef zeroext %conv39, i8 noundef zeroext -2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %do.end58, label %if.else.if.end73_crit_edge, !prof !169

if.else.if.end73_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

do.end58:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 372, i32 noundef 9, ptr noundef null) #8
  br label %if.end73

if.end73:                                         ; preds = %do.end58, %if.else.if.end73_crit_edge, %do.end35, %twl4030_usb_read.exit104.if.end73_crit_edge, %twl4030_usb_read.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !32, !33, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !55, !56, !58, !60, !62, !63, !64, !65, !67, !69, !70, !71, !73, !74, !76, !78, !80, !82, !83, !85, !87, !89, !90, !91, !93, !94, !96, !97, !98, !99, !101, !102, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !119, !121, !122, !124, !125, !127, !128, !130, !131, !132, !134, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153}
!llvm.module.flags = !{!154, !155, !156, !157, !158, !159, !160, !161}
!llvm.ident = !{!162}

!0 = !{ptr @__initcall__kmod_phy_twl4030_usb__308_850_twl4030_usb_init4, !1, !"__initcall__kmod_phy_twl4030_usb__308_850_twl4030_usb_init4", i1 false, i1 false}
!1 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 850, i32 1}
!2 = !{ptr @__exitcall_twl4030_usb_exit, !3, !"__exitcall_twl4030_usb_exit", i1 false, i1 false}
!3 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 856, i32 1}
!4 = !{ptr @__UNIQUE_ID_alias309, !5, !"__UNIQUE_ID_alias309", i1 false, i1 false}
!5 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 858, i32 1}
!6 = !{ptr @__UNIQUE_ID_author310, !7, !"__UNIQUE_ID_author310", i1 false, i1 false}
!7 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 859, i32 1}
!8 = !{ptr @__UNIQUE_ID_description311, !9, !"__UNIQUE_ID_description311", i1 false, i1 false}
!9 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 860, i32 1}
!10 = !{ptr @__UNIQUE_ID_file312, !11, !"__UNIQUE_ID_file312", i1 false, i1 false}
!11 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 861, i32 1}
!12 = !{ptr @__UNIQUE_ID_license313, !11, !"__UNIQUE_ID_license313", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 840, i32 11}
!15 = !{ptr @twl4030_usb_driver, !16, !"twl4030_usb_driver", i1 false, i1 false}
!16 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 836, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 697, i32 28}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 702, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @twl4030_usb_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @twl4030_usb_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 717, i32 20}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 727, i32 3}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @twl4030_usb_probe.__UNIQUE_ID_ddebug306, !30, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!33 = !{ptr @twl4030_usb_probe.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 739, i32 2}
!35 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @twl4030_usb_probe.__key.11, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 741, i32 2}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @twl4030_usb_probe.__key.13, !37, !"__key", i1 false, i1 false}
!40 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 745, i32 3}
!43 = !{ptr @twl4030_usb_probe._entry.15, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @twl4030_usb_probe._entry_ptr.17, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 752, i32 3}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @twl4030_usb_probe._entry.18, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @twl4030_usb_probe._entry_ptr.21, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @twl4030_usb_probe.__key.22, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 754, i32 2}
!52 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 773, i32 3}
!55 = !{ptr @twl4030_usb_probe.__UNIQUE_ID_ddebug307, !54, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 779, i32 32}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 779, i32 39}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 786, i32 2}
!62 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @twl4030_usb_probe._entry.27, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @twl4030_usb_probe._entry_ptr.30, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @ops, !66, !"ops", i1 false, i1 false}
!66 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 669, i32 29}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 504, i32 2}
!69 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @twl4030_phy_power_on.__UNIQUE_ID_ddebug303, !68, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 495, i32 2}
!73 = !{ptr @twl4030_phy_power_off.__UNIQUE_ID_ddebug302, !72, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 531, i32 45}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 540, i32 45}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 549, i32 45}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 575, i32 8}
!82 = !{ptr @dev_attr_vbus, !81, !"dev_attr_vbus", i1 false, i1 false}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 570, i32 25}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 570, i32 32}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 591, i32 4}
!89 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @twl4030_usb_irq.__UNIQUE_ID_ddebug304, !88, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 598, i32 4}
!93 = !{ptr @twl4030_usb_irq.__UNIQUE_ID_ddebug305, !92, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 291, i32 3}
!96 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @twl4030_usb_linkstat._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @twl4030_usb_linkstat._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 314, i32 2}
!101 = !{ptr @twl4030_usb_linkstat.__UNIQUE_ID_ddebug297, !100, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 224, i32 3}
!104 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @twl4030_readb.__UNIQUE_ID_ddebug296, !103, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 341, i32 3}
!108 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @twl4030_usb_set_mode._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @twl4030_usb_set_mode._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 210, i32 3}
!113 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @twl4030_usb_write.__UNIQUE_ID_ddebug295, !112, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!115 = !{ptr @twl4030_usb_id_table, !116, !"twl4030_usb_id_table", i1 false, i1 false}
!116 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 829, i32 34}
!117 = !{ptr @twl4030_usb_pm_ops, !118, !"twl4030_usb_pm_ops", i1 false, i1 false}
!118 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 676, i32 32}
!119 = !{ptr @.str.52, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 401, i32 2}
!121 = !{ptr @twl4030_usb_suspend.__UNIQUE_ID_ddebug298, !120, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!122 = !{ptr @.str.53, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 415, i32 2}
!124 = !{ptr @twl4030_usb_resume.__UNIQUE_ID_ddebug299, !123, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!125 = !{ptr @.str.54, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 431, i32 2}
!127 = !{ptr @twl4030_usb_runtime_suspend.__UNIQUE_ID_ddebug300, !126, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!128 = !{ptr @.str.55, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 185, i32 2}
!130 = !{ptr @.str.56, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @twl4030_i2c_write_u8_verify.__UNIQUE_ID_ddebug293, !129, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!132 = !{ptr @twl4030_i2c_write_u8_verify.__UNIQUE_ID_ddebug294, !133, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!133 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 193, i32 2}
!134 = !{ptr @.str.57, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 448, i32 2}
!136 = !{ptr @twl4030_usb_runtime_resume.__UNIQUE_ID_ddebug301, !135, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!137 = !{ptr @.str.58, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 452, i32 3}
!139 = !{ptr @twl4030_usb_runtime_resume._entry, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @twl4030_usb_runtime_resume._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.60, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 456, i32 3}
!143 = !{ptr @twl4030_usb_runtime_resume._entry.59, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @twl4030_usb_runtime_resume._entry_ptr.61, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.63, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 469, i32 3}
!147 = !{ptr @twl4030_usb_runtime_resume._entry.62, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @twl4030_usb_runtime_resume._entry_ptr.64, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.65, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/phy/ti/phy-twl4030-usb.c", i32 366, i32 5}
!151 = !{ptr @.str.66, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @twl4030_i2c_access._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @twl4030_i2c_access._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{i32 1, !"wchar_size", i32 2}
!155 = !{i32 1, !"min_enum_size", i32 4}
!156 = !{i32 8, !"branch-target-enforcement", i32 0}
!157 = !{i32 8, !"sign-return-address", i32 0}
!158 = !{i32 8, !"sign-return-address-all", i32 0}
!159 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!160 = !{i32 7, !"uwtable", i32 1}
!161 = !{i32 7, !"frame-pointer", i32 2}
!162 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!163 = !{i64 2148974380, i64 2148974385, i64 2148974398, i64 2148974442, i64 2148974476, i64 2148974497}
!164 = !{i64 2148360422}
!165 = !{i64 846042, i64 846067, i64 846089, i64 846105, i64 846117, i64 846137, i64 846161, i64 846177, i64 846189}
!166 = !{i64 2148360610}
!167 = !{!"auto-init"}
!168 = !{i8 0, i8 2}
!169 = !{!"branch_weights", i32 1, i32 2000}
