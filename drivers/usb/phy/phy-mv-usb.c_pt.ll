; ModuleID = '/llk/IR_all_yes/drivers/usb/phy/phy-mv-usb.c_pt.bc'
source_filename = "../drivers/usb/phy/phy-mv-usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.mv_otg = type { %struct.usb_phy, %struct.mv_otg_ctrl, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.delayed_work, ptr, %struct.spinlock, ptr, i32, i32, ptr }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.mv_otg_ctrl = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x %struct.timer_list] }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.mv_usb_platform_data = type { ptr, ptr, i32, i8, ptr, ptr, ptr }
%struct.mv_otg_regs = type { i32, i32, i32, i32, [1 x i32], i32, i32, i32, i32, i32, [4 x i32], i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, [16 x i32], i32, i32, i32 }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.85, i32 }
%union.anon.85 = type { ptr }
%struct.mv_usb_addon_irq = type { i32, ptr }

@__UNIQUE_ID_description293 = internal constant [58 x i8] c"phy_mv_usb.description=Marvell USB OTG transceiver driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [43 x i8] c"phy_mv_usb.file=drivers/usb/phy/phy-mv-usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [23 x i8] c"phy_mv_usb.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_phy_mv_usb__311_882_mv_otg_driver_init6 = internal global ptr @mv_otg_driver_init, section ".initcall6.init", align 4
@mv_otg_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mv_otg_probe, ptr @mv_otg_remove, ptr null, ptr @mv_otg_suspend, ptr @mv_otg_resume, %struct.device_driver { ptr @driver_name, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mv_otg_groups, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mv_otg_driver_exit = internal global ptr @mv_otg_driver_exit, section ".exitcall.exit", align 4
@driver_name = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mv-otg\00", [25 x i8] zeroinitializer }, align 32
@mv_otg_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @inputs_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@mv_otg_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 670, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get platform data\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mv_otg_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/usb/phy/phy-mv-usb.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mv_otg_probe._entry_ptr = internal global ptr @mv_otg_probe._entry, section ".printk_index", align 4
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mv_otg_queue\00", [19 x i8] zeroinitializer }, align 32
@mv_otg_probe.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 0, i8 -83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phy_mv_usb\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cannot create workqueue for OTG\0A\00", [63 x i8] zeroinitializer }, align 32
@mv_otg_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&(&mvotg->work)->work)\00", [55 x i8] zeroinitializer }, align 32
@mv_otg_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&(&mvotg->work)->timer\00", [41 x i8] zeroinitializer }, align 32
@mv_otg_probe.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(&mvotg->otg_ctrl.timer[i])\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"phyregs\00", [24 x i8] zeroinitializer }, align 32
@mv_otg_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 718, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"no phy I/O memory resource defined\0A\00", [60 x i8] zeroinitializer }, align 32
@mv_otg_probe._entry_ptr.17 = internal global ptr @mv_otg_probe._entry.15, section ".printk_index", align 4
@mv_otg_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 725, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to map phy I/O memory\0A\00", [34 x i8] zeroinitializer }, align 32
@mv_otg_probe._entry_ptr.20 = internal global ptr @mv_otg_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"capregs\00", [24 x i8] zeroinitializer }, align 32
@mv_otg_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.1, ptr @.str.2, i32 733, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"no I/O memory resource defined\0A\00", [32 x i8] zeroinitializer }, align 32
@mv_otg_probe._entry_ptr.24 = internal global ptr @mv_otg_probe._entry.22, section ".printk_index", align 4
@mv_otg_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.1, ptr @.str.2, i32 740, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to map I/O memory\0A\00", [38 x i8] zeroinitializer }, align 32
@mv_otg_probe._entry_ptr.27 = internal global ptr @mv_otg_probe._entry.25, section ".printk_index", align 4
@mv_otg_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.1, ptr @.str.2, i32 748, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mv otg enable error %d\0A\00", [40 x i8] zeroinitializer }, align 32
@mv_otg_probe._entry_ptr.30 = internal global ptr @mv_otg_probe._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"id\00", [29 x i8] zeroinitializer }, align 32
@mv_otg_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.1, ptr @.str.2, i32 762, ptr @.str.34, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to request irq for ID\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mv_otg_probe._entry_ptr.35 = internal global ptr @mv_otg_probe._entry.32, section ".printk_index", align 4
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbus\00", [27 x i8] zeroinitializer }, align 32
@mv_otg_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.1, ptr @.str.2, i32 775, ptr @.str.34, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Failed to request irq for VBUS, disable clock gating\0A\00", [42 x i8] zeroinitializer }, align 32
@mv_otg_probe._entry_ptr.39 = internal global ptr @mv_otg_probe._entry.37, section ".printk_index", align 4
@mv_otg_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.1, ptr @.str.2, i32 789, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no IRQ resource defined\0A\00", [39 x i8] zeroinitializer }, align 32
@mv_otg_probe._entry_ptr.42 = internal global ptr @mv_otg_probe._entry.40, section ".printk_index", align 4
@mv_otg_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.1, ptr @.str.2, i32 798, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Request irq %d for OTG failed\0A\00", [33 x i8] zeroinitializer }, align 32
@mv_otg_probe._entry_ptr.45 = internal global ptr @mv_otg_probe._entry.43, section ".printk_index", align 4
@mv_otg_probe._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.1, ptr @.str.2, i32 807, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"can't register transceiver, %d\0A\00", [32 x i8] zeroinitializer }, align 32
@mv_otg_probe._entry_ptr.48 = internal global ptr @mv_otg_probe._entry.46, section ".printk_index", align 4
@mv_otg_probe.__key.49 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&mvotg->wq_lock\00", [16 x i8] zeroinitializer }, align 32
@mv_otg_probe._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.1, ptr @.str.2, i32 819, ptr @.str.34, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"successful probe OTG device %s clock gating.\0A\00", [50 x i8] zeroinitializer }, align 32
@mv_otg_probe._entry_ptr.53 = internal global ptr @mv_otg_probe._entry.51, section ".printk_index", align 4
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"with\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"without\00", [24 x i8] zeroinitializer }, align 32
@mv_otg_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 421, ptr @.str.34, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"change from state %s to %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mv_otg_work\00", [20 x i8] zeroinitializer }, align 32
@mv_otg_work._entry_ptr = internal global ptr @mv_otg_work._entry, section ".printk_index", align 4
@state_string = internal constant { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78], [40 x i8] zeroinitializer }, align 32
@mv_otg_update_inputs.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.58, ptr @.str.2, ptr @.str.59, i8 0, i8 79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mv_otg_update_inputs\00", [43 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s: \00", [27 x i8] zeroinitializer }, align 32
@mv_otg_update_inputs.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.58, ptr @.str.2, ptr @.str.60, i8 0, i8 80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"id %d\0A\00", [25 x i8] zeroinitializer }, align 32
@mv_otg_update_inputs.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.58, ptr @.str.2, ptr @.str.61, i8 0, i8 80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"b_sess_vld %d\0A\00", [17 x i8] zeroinitializer }, align 32
@mv_otg_update_inputs.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.58, ptr @.str.2, ptr @.str.62, i8 0, i8 80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"b_sess_end %d\0A\00", [17 x i8] zeroinitializer }, align 32
@mv_otg_update_inputs.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.58, ptr @.str.2, ptr @.str.63, i8 0, i8 80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"a_vbus_vld %d\0A\00", [17 x i8] zeroinitializer }, align 32
@mv_otg_update_inputs.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.58, ptr @.str.2, ptr @.str.64, i8 0, i8 81, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"a_sess_vld %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"undefined\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"b_idle\00", [25 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"b_srp_init\00", [21 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"b_peripheral\00", [19 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"b_wait_acon\00", [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"b_host\00", [25 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"a_idle\00", [25 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"a_wait_vrise\00", [19 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"a_wait_bcon\00", [20 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"a_host\00", [25 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"a_suspend\00", [22 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"a_peripheral\00", [19 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"a_wait_vfall\00", [19 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"a_vbus_err\00", [21 x i8] zeroinitializer }, align 32
@mv_otg_start_periphrals._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 220, ptr @.str.34, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gadget %s\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mv_otg_start_periphrals\00", [40 x i8] zeroinitializer }, align 32
@mv_otg_start_periphrals._entry_ptr = internal global ptr @mv_otg_start_periphrals._entry, section ".printk_index", align 4
@.str.81 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@mv_otg_start_host._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.2, i32 200, ptr @.str.34, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s host\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mv_otg_start_host\00", [46 x i8] zeroinitializer }, align 32
@mv_otg_start_host._entry_ptr = internal global ptr @mv_otg_start_host._entry, section ".printk_index", align 4
@.str.85 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"start\00", [26 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"stop\00", [27 x i8] zeroinitializer }, align 32
@mv_otg_set_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.2, i32 127, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Timer%d is already running\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mv_otg_set_timer\00", [47 x i8] zeroinitializer }, align 32
@mv_otg_set_timer._entry_ptr = internal global ptr @mv_otg_set_timer._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mv_otg_timer_await_bcon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.2, i32 94, ptr @.str.34, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"B Device No Response!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mv_otg_timer_await_bcon\00", [40 x i8] zeroinitializer }, align 32
@mv_otg_timer_await_bcon._entry_ptr = internal global ptr @mv_otg_timer_await_bcon._entry, section ".printk_index", align 4
@mv_otg_enable_internal.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.91, ptr @.str.2, ptr @.str.92, i8 0, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mv_otg_enable_internal\00", [41 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"otg enabled\0A\00", [19 x i8] zeroinitializer }, align 32
@mv_otg_enable_internal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.2, i32 252, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"init phy error %d\0A\00", [45 x i8] zeroinitializer }, align 32
@mv_otg_enable_internal._entry_ptr = internal global ptr @mv_otg_enable_internal._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mv_otg_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.2, i32 154, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Wait for RESET completed TIMEOUT\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mv_otg_reset\00", [19 x i8] zeroinitializer }, align 32
@mv_otg_reset._entry_ptr = internal global ptr @mv_otg_reset._entry, section ".printk_index", align 4
@mv_otg_run_state_machine.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.96, ptr @.str.2, ptr @.str.97, i8 0, i8 20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mv_otg_run_state_machine\00", [39 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"transceiver is updated\0A\00", [40 x i8] zeroinitializer }, align 32
@mv_otg_disable_internal.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.98, ptr @.str.2, ptr @.str.99, i8 0, i8 68, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mv_otg_disable_internal\00", [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"otg disabled\0A\00", [18 x i8] zeroinitializer }, align 32
@mv_otg_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.2, i32 839, ptr @.str.34, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"OTG state is not B_IDLE, it is %d!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mv_otg_suspend\00", [17 x i8] zeroinitializer }, align 32
@mv_otg_suspend._entry_ptr = internal global ptr @mv_otg_suspend._entry, section ".printk_index", align 4
@inputs_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.102, ptr null, ptr null, ptr @inputs_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"inputs\00", [25 x i8] zeroinitializer }, align 32
@inputs_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_a_bus_req, ptr @dev_attr_a_clr_err, ptr @dev_attr_a_bus_drop, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_a_bus_req = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.103, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @a_bus_req_show, ptr @a_bus_req_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_a_clr_err = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.107, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @a_clr_err_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_a_bus_drop = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.110, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @a_bus_drop_show, ptr @a_bus_drop_store }, [36 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"a_bus_req\00", [22 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@a_bus_req_store.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.105, ptr @.str.2, ptr @.str.106, i8 0, i8 -120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"a_bus_req_store\00", [16 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"User request: a_bus_req = 1\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"a_clr_err\00", [22 x i8] zeroinitializer }, align 32
@a_clr_err_store.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.108, ptr @.str.2, ptr @.str.109, i8 0, i8 -113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"a_clr_err_store\00", [16 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"User request: a_clr_err = 1\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"a_bus_drop\00", [21 x i8] zeroinitializer }, align 32
@a_bus_drop_store.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.111, ptr @.str.2, ptr @.str.112, i8 0, i8 -104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"a_bus_drop_store\00", [47 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"User request: a_bus_drop = 0\0A\00", [34 x i8] zeroinitializer }, align 32
@a_bus_drop_store.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.111, ptr @.str.2, ptr @.str.113, i8 0, i8 -103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"User request: a_bus_drop = 1\0A\00", [34 x i8] zeroinitializer }, align 32
@a_bus_drop_store.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.111, ptr @.str.2, ptr @.str.114, i8 0, i8 -102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"User request: and a_bus_req = 0\0A\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 3, i64 6, i64 7, i64 8, i64 9, i64 12, i64 13]
@__sancov_gen_cov_switch_values.115 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 3, i64 6, i64 7, i64 8, i64 12]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 6]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 49]
@___asan_gen_.118 = private unnamed_addr constant [14 x i8] c"mv_otg_driver\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 870, i32 31 }
@___asan_gen_.121 = private unnamed_addr constant [12 x i8] c"driver_name\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 33, i32 19 }
@___asan_gen_.124 = private unnamed_addr constant [14 x i8] c"mv_otg_groups\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 642, i32 38 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 670, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 691, i32 17 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 693, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 697, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 712, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 716, i32 23 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 718, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 725, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 731, i32 23 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 733, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 740, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 748, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 759, i32 21 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 761, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 771, i32 21 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 773, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 789, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 797, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 806, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 811, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 817, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 419, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant [13 x i8] c"state_string\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 35, i32 14 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 319, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 320, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 321, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 322, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 323, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 324, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 36, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 37, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 38, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 39, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 40, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 41, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 42, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 43, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 44, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 45, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 46, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 47, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 48, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 49, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 220, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 200, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 127, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 94, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 245, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 251, i32 4 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 153, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 80, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 274, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 837, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant [18 x i8] c"inputs_attr_group\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 637, i32 37 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 638, i32 10 }
@___asan_gen_.439 = private unnamed_addr constant [13 x i8] c"inputs_attrs\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 630, i32 26 }
@___asan_gen_.442 = private unnamed_addr constant [19 x i8] c"dev_attr_a_bus_req\00", align 1
@___asan_gen_.445 = private unnamed_addr constant [19 x i8] c"dev_attr_a_clr_err\00", align 1
@___asan_gen_.448 = private unnamed_addr constant [20 x i8] c"dev_attr_a_bus_drop\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 558, i32 8 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 521, i32 35 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 546, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 585, i32 8 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 573, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 628, i32 8 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 609, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 614, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.485 = private constant [32 x i8] c"../drivers/usb/phy/phy-mv-usb.c\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 616, i32 3 }
@llvm.compiler.used = appending global [149 x ptr] [ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_mv_otg_driver_exit, ptr @__initcall__kmod_phy_mv_usb__311_882_mv_otg_driver_init6, ptr @mv_otg_driver_exit, ptr @mv_otg_enable_internal._entry, ptr @mv_otg_enable_internal._entry_ptr, ptr @mv_otg_probe._entry, ptr @mv_otg_probe._entry.15, ptr @mv_otg_probe._entry.18, ptr @mv_otg_probe._entry.22, ptr @mv_otg_probe._entry.25, ptr @mv_otg_probe._entry.28, ptr @mv_otg_probe._entry.32, ptr @mv_otg_probe._entry.37, ptr @mv_otg_probe._entry.40, ptr @mv_otg_probe._entry.43, ptr @mv_otg_probe._entry.46, ptr @mv_otg_probe._entry.51, ptr @mv_otg_probe._entry_ptr, ptr @mv_otg_probe._entry_ptr.17, ptr @mv_otg_probe._entry_ptr.20, ptr @mv_otg_probe._entry_ptr.24, ptr @mv_otg_probe._entry_ptr.27, ptr @mv_otg_probe._entry_ptr.30, ptr @mv_otg_probe._entry_ptr.35, ptr @mv_otg_probe._entry_ptr.39, ptr @mv_otg_probe._entry_ptr.42, ptr @mv_otg_probe._entry_ptr.45, ptr @mv_otg_probe._entry_ptr.48, ptr @mv_otg_probe._entry_ptr.53, ptr @mv_otg_reset._entry, ptr @mv_otg_reset._entry_ptr, ptr @mv_otg_set_timer._entry, ptr @mv_otg_set_timer._entry_ptr, ptr @mv_otg_start_host._entry, ptr @mv_otg_start_host._entry_ptr, ptr @mv_otg_start_periphrals._entry, ptr @mv_otg_start_periphrals._entry_ptr, ptr @mv_otg_suspend._entry, ptr @mv_otg_suspend._entry_ptr, ptr @mv_otg_timer_await_bcon._entry, ptr @mv_otg_timer_await_bcon._entry_ptr, ptr @mv_otg_work._entry, ptr @mv_otg_work._entry_ptr, ptr @mv_otg_driver, ptr @driver_name, ptr @mv_otg_groups, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @mv_otg_probe.__key, ptr @.str.9, ptr @mv_otg_probe.__key.10, ptr @.str.11, ptr @mv_otg_probe.__key.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @mv_otg_probe.__key.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @state_string, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @inputs_attr_group, ptr @.str.102, ptr @inputs_attrs, ptr @dev_attr_a_bus_req, ptr @dev_attr_a_clr_err, ptr @dev_attr_a_bus_drop, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114], section "llvm.metadata"
@0 = internal global [123 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_otg_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_name to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_otg_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_otg_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_otg_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_otg_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_otg_probe.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_otg_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_otg_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_otg_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_otg_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_otg_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_otg_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_otg_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_otg_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_otg_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_otg_probe._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_otg_probe.__key.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_otg_probe._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_otg_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @state_string to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_otg_start_periphrals._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_otg_start_host._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_otg_set_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_otg_timer_await_bcon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_otg_enable_internal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_otg_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_otg_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inputs_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inputs_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_a_bus_req to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_a_clr_err to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_a_bus_drop to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_otg_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mv_otg_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mv_otg_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @mv_otg_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_otg_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i317 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 528, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i317, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call.i318 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #6
  %tobool9.not = icmp eq ptr %call.i318, null
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i317, ptr %driver_data.i.i, align 4
  %pdev12 = getelementptr inbounds %struct.mv_otg, ptr %call.i317, i32 0, i32 5
  %3 = ptrtoint ptr %pdev12 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pdev, ptr %pdev12, align 4
  %pdata13 = getelementptr inbounds %struct.mv_otg, ptr %call.i317, i32 0, i32 12
  %4 = ptrtoint ptr %pdata13 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %pdata13, align 4
  %call15 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.mv_otg, ptr %call.i317, i32 0, i32 15
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call15, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end11
  %call22 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.5, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.6) #6
  %qwork = getelementptr inbounds %struct.mv_otg, ptr %call.i317, i32 0, i32 10
  %7 = ptrtoint ptr %qwork to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call22, ptr %qwork, align 4
  %tobool24.not = icmp eq ptr %call22, null
  br i1 %tobool24.not, label %do.body26, label %do.body38

do.body26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_otg_probe.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv_otg_probe, %if.then31)) #6
          to label %cleanup [label %if.then31], !srcloc !243

if.then31:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_otg_probe.__UNIQUE_ID_ddebug310, ptr noundef %dev, ptr noundef nonnull @.str.8) #6
  br label %cleanup

do.body38:                                        ; preds = %if.end21
  %work = getelementptr inbounds %struct.mv_otg, ptr %call.i317, i32 0, i32 9
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #6
  %8 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.mv_otg, ptr %call.i317, i32 0, i32 9, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.9, ptr noundef nonnull @mv_otg_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry46 = getelementptr inbounds %struct.mv_otg, ptr %call.i317, i32 0, i32 9, i32 0, i32 1
  %9 = ptrtoint ptr %entry46 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry46, ptr %entry46, align 4
  %prev.i = getelementptr inbounds %struct.mv_otg, ptr %call.i317, i32 0, i32 9, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry46, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mv_otg, ptr %call.i317, i32 0, i32 9, i32 0, i32 2
  %11 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mv_otg_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.mv_otg, ptr %call.i317, i32 0, i32 9, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.11, ptr noundef nonnull @mv_otg_probe.__key.10) #6
  %12 = ptrtoint ptr %pdev12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pdev, ptr %pdev12, align 4
  %13 = ptrtoint ptr %call.i317 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev, ptr %call.i317, align 4
  %otg61 = getelementptr inbounds %struct.usb_phy, ptr %call.i317, i32 0, i32 5
  %14 = ptrtoint ptr %otg61 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i318, ptr %otg61, align 4
  %label = getelementptr inbounds %struct.usb_phy, ptr %call.i317, i32 0, i32 1
  %15 = ptrtoint ptr %label to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @driver_name, ptr %label, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %call.i318, i32 0, i32 5
  %16 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %state, align 4
  %usb_phy = getelementptr inbounds %struct.usb_otg, ptr %call.i318, i32 0, i32 2
  %17 = ptrtoint ptr %usb_phy to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i317, ptr %usb_phy, align 4
  %set_host = getelementptr inbounds %struct.usb_otg, ptr %call.i318, i32 0, i32 6
  %18 = ptrtoint ptr %set_host to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @mv_otg_set_host, ptr %set_host, align 4
  %set_peripheral = getelementptr inbounds %struct.usb_otg, ptr %call.i318, i32 0, i32 7
  %19 = ptrtoint ptr %set_peripheral to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @mv_otg_set_peripheral, ptr %set_peripheral, align 4
  %set_vbus = getelementptr inbounds %struct.usb_otg, ptr %call.i318, i32 0, i32 8
  %20 = ptrtoint ptr %set_vbus to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @mv_otg_set_vbus, ptr %set_vbus, align 4
  %timer66 = getelementptr inbounds %struct.mv_otg, ptr %call.i317, i32 0, i32 1, i32 25
  tail call void @init_timer_key(ptr noundef %timer66, ptr noundef nonnull @mv_otg_timer_await_bcon, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @mv_otg_probe.__key.12) #6
  %21 = ptrtoint ptr %pdev12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev12, align 4
  %call70 = tail call ptr @platform_get_resource_byname(ptr noundef %22, i32 noundef 512, ptr noundef nonnull @.str.14) #6
  %cmp71 = icmp eq ptr %call70, null
  br i1 %cmp71, label %do.end75, label %if.end77

do.end75:                                         ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #9
  br label %err_destroy_workqueue

if.end77:                                         ; preds = %do.body38
  %23 = ptrtoint ptr %call70 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call70, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call70, i32 0, i32 1
  %25 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %24
  %add.i = add i32 %sub.i, %26
  %call80 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %24, i32 noundef %add.i) #6
  %phy_regs = getelementptr inbounds %struct.mv_otg, ptr %call.i317, i32 0, i32 2
  %27 = ptrtoint ptr %phy_regs to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call80, ptr %phy_regs, align 4
  %cmp82 = icmp eq ptr %call80, null
  br i1 %cmp82, label %do.end86, label %if.end88

do.end86:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #9
  br label %err_destroy_workqueue

if.end88:                                         ; preds = %if.end77
  %28 = ptrtoint ptr %pdev12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev12, align 4
  %call90 = tail call ptr @platform_get_resource_byname(ptr noundef %29, i32 noundef 512, ptr noundef nonnull @.str.21) #6
  %cmp91 = icmp eq ptr %call90, null
  br i1 %cmp91, label %do.end95, label %if.end97

do.end95:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #9
  br label %err_destroy_workqueue

if.end97:                                         ; preds = %if.end88
  %30 = ptrtoint ptr %call90 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %call90, align 4
  %end.i319 = getelementptr inbounds %struct.resource, ptr %call90, i32 0, i32 1
  %32 = ptrtoint ptr %end.i319 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %end.i319, align 4
  %sub.i320 = sub i32 1, %31
  %add.i321 = add i32 %sub.i320, %33
  %call101 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %31, i32 noundef %add.i321) #6
  %cap_regs = getelementptr inbounds %struct.mv_otg, ptr %call.i317, i32 0, i32 3
  %34 = ptrtoint ptr %cap_regs to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call101, ptr %cap_regs, align 4
  %cmp103 = icmp eq ptr %call101, null
  br i1 %cmp103, label %do.end107, label %if.end109

do.end107:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #9
  br label %err_destroy_workqueue

if.end109:                                        ; preds = %if.end97
  %call110 = tail call fastcc i32 @mv_otg_enable_internal(ptr noundef nonnull %call.i317)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end117, label %do.end115

do.end115:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %call110) #9
  br label %err_destroy_workqueue

if.end117:                                        ; preds = %if.end109
  %35 = ptrtoint ptr %cap_regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cap_regs, align 4
  %37 = ptrtoint ptr %36 to i32
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #6, !srcloc !244
  %39 = lshr i32 %38, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !245
  %add = add i32 %39, %37
  %40 = inttoptr i32 %add to ptr
  %op_regs = getelementptr inbounds %struct.mv_otg, ptr %call.i317, i32 0, i32 4
  %41 = ptrtoint ptr %op_regs to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %op_regs, align 4
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %tobool123.not = icmp eq ptr %43, null
  br i1 %tobool123.not, label %if.end117.if.end136_crit_edge, label %if.then124

if.end117.if.end136_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end136

if.then124:                                       ; preds = %if.end117
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %call127 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %45, ptr noundef null, ptr noundef nonnull @mv_otg_inputs_irq, i32 noundef 8192, ptr noundef nonnull @.str.31, ptr noundef nonnull %call.i317) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.then124.if.end136_crit_edge, label %do.end132

if.then124.if.end136_crit_edge:                   ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end136

do.end132:                                        ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.33) #9
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %1, align 4
  br label %if.end136

if.end136:                                        ; preds = %do.end132, %if.then124.if.end136_crit_edge, %if.end117.if.end136_crit_edge
  %vbus = getelementptr inbounds %struct.mv_usb_platform_data, ptr %1, i32 0, i32 1
  %47 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vbus, align 4
  %tobool137.not = icmp eq ptr %48, null
  br i1 %tobool137.not, label %if.end136.if.end152_crit_edge, label %if.then138

if.end136.if.end152_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end152

if.then138:                                       ; preds = %if.end136
  %clock_gating = getelementptr inbounds %struct.mv_otg, ptr %call.i317, i32 0, i32 14
  %49 = ptrtoint ptr %clock_gating to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %clock_gating, align 4
  %50 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %vbus, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %call142 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %53, ptr noundef null, ptr noundef nonnull @mv_otg_inputs_irq, i32 noundef 8192, ptr noundef nonnull @.str.36, ptr noundef nonnull %call.i317) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %if.then138.if.end152_crit_edge, label %do.end147

if.then138.if.end152_crit_edge:                   ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end152

do.end147:                                        ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.38) #9
  %54 = ptrtoint ptr %clock_gating to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %clock_gating, align 4
  %55 = ptrtoint ptr %vbus to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %vbus, align 4
  br label %if.end152

if.end152:                                        ; preds = %do.end147, %if.then138.if.end152_crit_edge, %if.end136.if.end152_crit_edge
  %disable_otg_clock_gating = getelementptr inbounds %struct.mv_usb_platform_data, ptr %1, i32 0, i32 3
  %56 = ptrtoint ptr %disable_otg_clock_gating to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load = load i8, ptr %disable_otg_clock_gating, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool153.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool153.not, label %if.end152.if.end156_crit_edge, label %if.then154

if.end152.if.end156_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end156

if.then154:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #8
  %clock_gating155 = getelementptr inbounds %struct.mv_otg, ptr %call.i317, i32 0, i32 14
  %57 = ptrtoint ptr %clock_gating155 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %clock_gating155, align 4
  br label %if.end156

if.end156:                                        ; preds = %if.then154, %if.end152.if.end156_crit_edge
  tail call fastcc void @mv_otg_reset(ptr noundef nonnull %call.i317)
  tail call fastcc void @mv_otg_init_irq(ptr noundef nonnull %call.i317)
  %58 = ptrtoint ptr %pdev12 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pdev12, align 4
  %call159 = tail call ptr @platform_get_resource(ptr noundef %59, i32 noundef 1024, i32 noundef 0) #6
  %cmp160 = icmp eq ptr %call159, null
  br i1 %cmp160, label %do.end164, label %if.end166

do.end164:                                        ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41) #9
  br label %err_disable_clk

if.end166:                                        ; preds = %if.end156
  %60 = ptrtoint ptr %call159 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %call159, align 4
  %irq168 = getelementptr inbounds %struct.mv_otg, ptr %call.i317, i32 0, i32 6
  %62 = ptrtoint ptr %irq168 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %irq168, align 4
  %call.i322 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %61, ptr noundef nonnull @mv_otg_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @driver_name, ptr noundef nonnull %call.i317) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i322)
  %tobool172.not = icmp eq i32 %call.i322, 0
  br i1 %tobool172.not, label %if.end180, label %do.end176

do.end176:                                        ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %irq168 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %irq168, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44, i32 noundef %64) #9
  %65 = ptrtoint ptr %irq168 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %irq168, align 4
  br label %err_disable_clk

if.end180:                                        ; preds = %if.end166
  %call182 = tail call i32 @usb_add_phy(ptr noundef nonnull %call.i317, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %cmp183 = icmp slt i32 %call182, 0
  br i1 %cmp183, label %do.end187, label %do.body190

do.end187:                                        ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47, i32 noundef %call182) #9
  br label %err_disable_clk

do.body190:                                       ; preds = %if.end180
  %wq_lock = getelementptr inbounds %struct.mv_otg, ptr %call.i317, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %wq_lock, ptr noundef nonnull @.str.50, ptr noundef nonnull @mv_otg_probe.__key.49, i16 noundef signext 3) #6
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %wq_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool196.not = icmp eq i32 %call.i, 0
  br i1 %tobool196.not, label %do.body190.do.end202_crit_edge, label %if.then197

do.body190.do.end202_crit_edge:                   ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end202

if.then197:                                       ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @mv_otg_run_state_machine(ptr noundef nonnull %call.i317, i32 noundef 200)
  tail call void @_raw_spin_unlock(ptr noundef %wq_lock) #6
  br label %do.end202

do.end202:                                        ; preds = %if.then197, %do.body190.do.end202_crit_edge
  %clock_gating204 = getelementptr inbounds %struct.mv_otg, ptr %call.i317, i32 0, i32 14
  %66 = ptrtoint ptr %clock_gating204 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %clock_gating204, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool205.not = icmp eq i32 %67, 0
  %cond = select i1 %tobool205.not, ptr @.str.55, ptr @.str.54
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.52, ptr noundef nonnull %cond) #9
  br label %cleanup

err_disable_clk:                                  ; preds = %do.end187, %do.end176, %do.end164
  %retval1.0 = phi i32 [ -19, %do.end164 ], [ -19, %do.end176 ], [ %call182, %do.end187 ]
  tail call fastcc void @mv_otg_disable_internal(ptr noundef nonnull %call.i317)
  br label %err_destroy_workqueue

err_destroy_workqueue:                            ; preds = %err_disable_clk, %do.end115, %do.end107, %do.end95, %do.end86, %do.end75
  %retval1.1 = phi i32 [ -19, %do.end75 ], [ -14, %do.end86 ], [ -19, %do.end95 ], [ -14, %do.end107 ], [ %call110, %do.end115 ], [ %retval1.0, %err_disable_clk ]
  %68 = ptrtoint ptr %qwork to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %qwork, align 4
  tail call void @destroy_workqueue(ptr noundef %69) #6
  br label %cleanup

cleanup:                                          ; preds = %err_destroy_workqueue, %do.end202, %if.then31, %do.body26, %if.then18, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %6, %if.then18 ], [ %retval1.1, %err_destroy_workqueue ], [ 0, %do.end202 ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ -12, %if.then31 ], [ -12, %do.body26 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_otg_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %qwork = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %qwork to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qwork, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @destroy_workqueue(ptr noundef nonnull %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %clock_gating.i = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %clock_gating.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clock_gating.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.mv_otg_disable.exit_crit_edge, label %if.then.i

if.end.mv_otg_disable.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv_otg_disable.exit

if.then.i:                                        ; preds = %if.end
  %active.i.i = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %active.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %active.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %if.then.i.mv_otg_disable.exit_crit_edge, label %do.body.i.i

if.then.i.mv_otg_disable.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv_otg_disable.exit

do.body.i.i:                                      ; preds = %if.then.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_otg_disable_internal.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv_otg_remove, %if.then4.i.i)) #6
          to label %do.end.i.i [label %if.then4.i.i], !srcloc !243

if.then4.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pdev.i.i = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_otg_disable_internal.__UNIQUE_ID_ddebug298, ptr noundef %dev.i.i, ptr noundef nonnull @.str.99) #6
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then4.i.i, %do.body.i.i
  %pdata.i.i = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdata.i.i, align 4
  %phy_deinit.i.i = getelementptr inbounds %struct.mv_usb_platform_data, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %phy_deinit.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_deinit.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %13, null
  br i1 %tobool5.not.i.i, label %do.end.i.i.if.end9.i.i_crit_edge, label %if.then6.i.i

do.end.i.i.if.end9.i.i_crit_edge:                 ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i.i

if.then6.i.i:                                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %phy_regs.i.i = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %phy_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy_regs.i.i, align 4
  tail call void %13(ptr noundef %15) #6
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then6.i.i, %do.end.i.i.if.end9.i.i_crit_edge
  %clk.i.i.i = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 15
  %16 = ptrtoint ptr %clk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk.i.i.i, align 4
  tail call void @clk_disable(ptr noundef %17) #6
  tail call void @clk_unprepare(ptr noundef %17) #6
  %18 = ptrtoint ptr %active.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %active.i.i, align 4
  br label %mv_otg_disable.exit

mv_otg_disable.exit:                              ; preds = %if.end9.i.i, %if.then.i.mv_otg_disable.exit_crit_edge, %if.end.mv_otg_disable.exit_crit_edge
  tail call void @usb_remove_phy(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_otg_suspend(ptr noundef %pdev, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %otg = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %otg, align 4
  %state1 = getelementptr inbounds %struct.usb_otg, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.100, i32 noundef %5) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %clock_gating = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %clock_gating to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clock_gating, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %active.i = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.then5.cleanup_crit_edge, label %do.body.i

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.i:                                        ; preds = %if.then5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_otg_disable_internal.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv_otg_suspend, %if.then4.i)) #6
          to label %do.end.i [label %if.then4.i], !srcloc !243

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %pdev.i = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_otg_disable_internal.__UNIQUE_ID_ddebug298, ptr noundef %dev.i, ptr noundef nonnull @.str.99) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then4.i, %do.body.i
  %pdata.i = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdata.i, align 4
  %phy_deinit.i = getelementptr inbounds %struct.mv_usb_platform_data, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %phy_deinit.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy_deinit.i, align 4
  %tobool5.not.i = icmp eq ptr %15, null
  br i1 %tobool5.not.i, label %do.end.i.if.end9.i_crit_edge, label %if.then6.i

do.end.i.if.end9.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

if.then6.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %phy_regs.i = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %phy_regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy_regs.i, align 4
  tail call void %15(ptr noundef %17) #6
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %do.end.i.if.end9.i_crit_edge
  %clk.i.i = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 15
  %18 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk.i.i, align 4
  tail call void @clk_disable(ptr noundef %19) #6
  tail call void @clk_unprepare(ptr noundef %19) #6
  %20 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %active.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9.i, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -11, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then5.cleanup_crit_edge ], [ 0, %if.end9.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_otg_resume(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clock_gating = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %clock_gating to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clock_gating, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @mv_otg_enable_internal(ptr noundef %1)
  %op_regs = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %op_regs, align 4
  %otgsc2 = getelementptr inbounds %struct.mv_otg_regs, ptr %5, i32 0, i32 15
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %otgsc2) #6, !srcloc !244
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !246
  %irq_en = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %irq_en to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq_en, align 4
  %or = or i32 %9, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !247
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %or)
  %11 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %op_regs, align 4
  %otgsc6 = getelementptr inbounds %struct.mv_otg_regs, ptr %12, i32 0, i32 15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %otgsc6, i32 %10) #6, !srcloc !248
  %wq_lock = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 11
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %wq_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.then.if.end11_crit_edge, label %if.then9

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then9:                                         ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_otg_run_state_machine.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv_otg_resume, %if.then.i)) #6
          to label %do.end.i [label %if.then.i], !srcloc !243

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  %pdev.i = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_otg_run_state_machine.__UNIQUE_ID_ddebug296, ptr noundef %dev.i, ptr noundef nonnull @.str.97) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then9
  %qwork.i = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %qwork.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %qwork.i, align 4
  %tobool3.not.i = icmp eq ptr %16, null
  br i1 %tobool3.not.i, label %do.end.i.mv_otg_run_state_machine.exit_crit_edge, label %if.end5.i

do.end.i.mv_otg_run_state_machine.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv_otg_run_state_machine.exit

if.end5.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %work.i = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef nonnull %16, ptr noundef %work.i, i32 noundef 0) #6
  br label %mv_otg_run_state_machine.exit

mv_otg_run_state_machine.exit:                    ; preds = %if.end5.i, %do.end.i.mv_otg_run_state_machine.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %wq_lock) #6
  br label %if.end11

if.end11:                                         ; preds = %mv_otg_run_state_machine.exit, %if.then.if.end11_crit_edge, %entry.if.end11_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv_otg_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -364
  %otg1 = getelementptr i8, ptr %work, i32 -344
  %active = getelementptr i8, ptr %work, i32 152
  %0 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not115 = icmp eq i32 %1, 0
  br i1 %tobool.not115, label %entry.cleanup_crit_edge, label %if.end.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.lr.ph:                                     ; preds = %entry
  %id138.i = getelementptr i8, ptr %work, i32 -85
  %a_clr_err.i = getelementptr i8, ptr %work, i32 -99
  %a_bus_drop145.i = getelementptr i8, ptr %work, i32 -101
  %b_conn123.i = getelementptr i8, ptr %work, i32 -89
  %a_sess_vld.i = getelementptr i8, ptr %work, i32 -95
  %a_bus_req129.i = getelementptr i8, ptr %work, i32 -100
  %a_vbus_vld110.i = getelementptr i8, ptr %work, i32 -93
  %a_wait_bcon_timeout.i = getelementptr i8, ptr %work, i32 -80
  %pprev.i.i.i.i = getelementptr i8, ptr %work, i32 -72
  %timer1.i.i = getelementptr i8, ptr %work, i32 -76
  %a_srp_det.i = getelementptr i8, ptr %work, i32 -94
  %b_sess_vld16.i = getelementptr i8, ptr %work, i32 -86
  %pdev = getelementptr i8, ptr %work, i32 -16
  %expires.i = getelementptr i8, ptr %work, i32 -68
  %clock_gating.i85 = getelementptr i8, ptr %work, i32 156
  %pdata.i.i = getelementptr i8, ptr %work, i32 148
  %phy_regs.i.i = getelementptr i8, ptr %work, i32 -28
  %clk.i.i.i = getelementptr i8, ptr %work, i32 160
  br label %if.end

if.end:                                           ; preds = %sw.epilog.if.end_crit_edge, %if.end.lr.ph
  %2 = ptrtoint ptr %otg1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %otg1, align 4
  %.in = getelementptr inbounds %struct.usb_otg, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %.in, align 4
  tail call fastcc void @mv_otg_update_inputs(ptr noundef %add.ptr)
  %6 = ptrtoint ptr %otg1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %otg1, align 4
  %state.i = getelementptr inbounds %struct.usb_otg, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.end.mv_otg_update_state.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %if.end.sw.bb5.i_crit_edge
    i32 3, label %sw.bb15.i
    i32 6, label %sw.bb27.i
    i32 7, label %sw.bb47.i
    i32 8, label %sw.bb54.i
    i32 9, label %sw.bb94.i
    i32 12, label %sw.bb118.i
    i32 13, label %sw.bb137.i
  ]

if.end.sw.bb5.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5.i

if.end.mv_otg_update_state.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv_otg_update_state.exit

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %state.i, align 4
  br label %sw.bb5.i

sw.bb5.i:                                         ; preds = %sw.bb.i, %if.end.sw.bb5.i_crit_edge
  %12 = ptrtoint ptr %id138.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %id138.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp.i = icmp eq i8 %13, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %otg1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %otg1, align 4
  %state9.i = getelementptr inbounds %struct.usb_otg, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %state9.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 6, ptr %state9.i, align 4
  br label %mv_otg_update_state.exit

if.else.i:                                        ; preds = %sw.bb5.i
  %17 = ptrtoint ptr %b_sess_vld16.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %b_sess_vld16.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %if.else.i.mv_otg_update_state.exit_crit_edge, label %if.then10.i

if.else.i.mv_otg_update_state.exit_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv_otg_update_state.exit

if.then10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %otg1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %otg1, align 4
  %state13.i = getelementptr inbounds %struct.usb_otg, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %state13.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %state13.i, align 4
  br label %mv_otg_update_state.exit

sw.bb15.i:                                        ; preds = %if.end
  %22 = ptrtoint ptr %b_sess_vld16.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b_sess_vld16.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool17.not.i = icmp eq i8 %23, 0
  br i1 %tobool17.not.i, label %sw.bb15.i.if.then22.i_crit_edge, label %lor.lhs.false.i

sw.bb15.i.if.then22.i_crit_edge:                  ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22.i

lor.lhs.false.i:                                  ; preds = %sw.bb15.i
  %24 = ptrtoint ptr %id138.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %id138.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp20.i = icmp eq i8 %25, 0
  br i1 %cmp20.i, label %lor.lhs.false.i.if.then22.i_crit_edge, label %lor.lhs.false.i.mv_otg_update_state.exit_crit_edge

lor.lhs.false.i.mv_otg_update_state.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv_otg_update_state.exit

lor.lhs.false.i.if.then22.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22.i

if.then22.i:                                      ; preds = %lor.lhs.false.i.if.then22.i_crit_edge, %sw.bb15.i.if.then22.i_crit_edge
  %26 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %state.i, align 4
  br label %mv_otg_update_state.exit

sw.bb27.i:                                        ; preds = %if.end
  %27 = ptrtoint ptr %id138.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %id138.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool29.not.i = icmp eq i8 %28, 0
  br i1 %tobool29.not.i, label %if.else34.i, label %if.then30.i

if.then30.i:                                      ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %state.i, align 4
  br label %mv_otg_update_state.exit

if.else34.i:                                      ; preds = %sw.bb27.i
  %30 = ptrtoint ptr %a_bus_drop145.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %a_bus_drop145.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool35.not.i = icmp eq i8 %31, 0
  br i1 %tobool35.not.i, label %land.lhs.true.i, label %if.else34.i.mv_otg_update_state.exit_crit_edge

if.else34.i.mv_otg_update_state.exit_crit_edge:   ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv_otg_update_state.exit

land.lhs.true.i:                                  ; preds = %if.else34.i
  %32 = ptrtoint ptr %a_bus_req129.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %a_bus_req129.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool37.not.i = icmp eq i8 %33, 0
  br i1 %tobool37.not.i, label %lor.lhs.false38.i, label %land.lhs.true.i.if.then41.i_crit_edge

land.lhs.true.i.if.then41.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then41.i

lor.lhs.false38.i:                                ; preds = %land.lhs.true.i
  %34 = ptrtoint ptr %a_srp_det.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %a_srp_det.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool40.not.i = icmp eq i8 %35, 0
  br i1 %tobool40.not.i, label %lor.lhs.false38.i.mv_otg_update_state.exit_crit_edge, label %lor.lhs.false38.i.if.then41.i_crit_edge

lor.lhs.false38.i.if.then41.i_crit_edge:          ; preds = %lor.lhs.false38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then41.i

lor.lhs.false38.i.mv_otg_update_state.exit_crit_edge: ; preds = %lor.lhs.false38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv_otg_update_state.exit

if.then41.i:                                      ; preds = %lor.lhs.false38.i.if.then41.i_crit_edge, %land.lhs.true.i.if.then41.i_crit_edge
  %36 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 7, ptr %state.i, align 4
  br label %mv_otg_update_state.exit

sw.bb47.i:                                        ; preds = %if.end
  %37 = ptrtoint ptr %a_vbus_vld110.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %a_vbus_vld110.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool48.not.i = icmp eq i8 %38, 0
  br i1 %tobool48.not.i, label %sw.bb47.i.mv_otg_update_state.exit_crit_edge, label %if.then49.i

sw.bb47.i.mv_otg_update_state.exit_crit_edge:     ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv_otg_update_state.exit

if.then49.i:                                      ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 8, ptr %state.i, align 4
  br label %mv_otg_update_state.exit

sw.bb54.i:                                        ; preds = %if.end
  %40 = ptrtoint ptr %id138.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %id138.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool57.not.i = icmp eq i8 %41, 0
  br i1 %tobool57.not.i, label %lor.lhs.false58.i, label %sw.bb54.i.if.then65.i_crit_edge

sw.bb54.i.if.then65.i_crit_edge:                  ; preds = %sw.bb54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then65.i

lor.lhs.false58.i:                                ; preds = %sw.bb54.i
  %42 = ptrtoint ptr %a_bus_drop145.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %a_bus_drop145.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool61.not.i = icmp eq i8 %43, 0
  br i1 %tobool61.not.i, label %lor.lhs.false62.i, label %lor.lhs.false58.i.if.then65.i_crit_edge

lor.lhs.false58.i.if.then65.i_crit_edge:          ; preds = %lor.lhs.false58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then65.i

lor.lhs.false62.i:                                ; preds = %lor.lhs.false58.i
  %44 = ptrtoint ptr %a_wait_bcon_timeout.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %a_wait_bcon_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool64.not.i = icmp eq i8 %45, 0
  br i1 %tobool64.not.i, label %if.else72.i, label %lor.lhs.false62.i.if.then65.i_crit_edge

lor.lhs.false62.i.if.then65.i_crit_edge:          ; preds = %lor.lhs.false62.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then65.i

if.then65.i:                                      ; preds = %lor.lhs.false62.i.if.then65.i_crit_edge, %lor.lhs.false58.i.if.then65.i_crit_edge, %sw.bb54.i.if.then65.i_crit_edge
  %46 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.i.not.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i.i.not.i.i, label %if.then65.i.mv_otg_cancel_timer.exit.i_crit_edge, label %if.then2.i.i

if.then65.i.mv_otg_cancel_timer.exit.i_crit_edge: ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv_otg_cancel_timer.exit.i

if.then2.i.i:                                     ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i.i = tail call i32 @del_timer(ptr noundef %timer1.i.i) #6
  br label %mv_otg_cancel_timer.exit.i

mv_otg_cancel_timer.exit.i:                       ; preds = %if.then2.i.i, %if.then65.i.mv_otg_cancel_timer.exit.i_crit_edge
  %48 = ptrtoint ptr %a_wait_bcon_timeout.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %a_wait_bcon_timeout.i, align 4
  %49 = ptrtoint ptr %otg1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %otg1, align 4
  %state70.i = getelementptr inbounds %struct.usb_otg, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %state70.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 12, ptr %state70.i, align 4
  %52 = ptrtoint ptr %a_bus_req129.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %a_bus_req129.i, align 4
  br label %mv_otg_update_state.exit

if.else72.i:                                      ; preds = %lor.lhs.false62.i
  %53 = ptrtoint ptr %a_vbus_vld110.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %a_vbus_vld110.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool74.not.i = icmp eq i8 %54, 0
  br i1 %tobool74.not.i, label %if.then75.i, label %if.else82.i

if.then75.i:                                      ; preds = %if.else72.i
  %55 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.i.not.i202.i = icmp eq ptr %56, null
  br i1 %tobool.not.i.i.not.i202.i, label %if.then75.i.mv_otg_cancel_timer.exit206.i_crit_edge, label %if.then2.i205.i

if.then75.i.mv_otg_cancel_timer.exit206.i_crit_edge: ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv_otg_cancel_timer.exit206.i

if.then2.i205.i:                                  ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i204.i = tail call i32 @del_timer(ptr noundef %timer1.i.i) #6
  br label %mv_otg_cancel_timer.exit206.i

mv_otg_cancel_timer.exit206.i:                    ; preds = %if.then2.i205.i, %if.then75.i.mv_otg_cancel_timer.exit206.i_crit_edge
  %57 = ptrtoint ptr %a_wait_bcon_timeout.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %a_wait_bcon_timeout.i, align 4
  %58 = ptrtoint ptr %otg1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %otg1, align 4
  %state81.i = getelementptr inbounds %struct.usb_otg, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %state81.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 13, ptr %state81.i, align 4
  br label %mv_otg_update_state.exit

if.else82.i:                                      ; preds = %if.else72.i
  %61 = ptrtoint ptr %b_conn123.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %b_conn123.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool83.not.i = icmp eq i8 %62, 0
  br i1 %tobool83.not.i, label %if.else82.i.mv_otg_update_state.exit_crit_edge, label %if.then84.i

if.else82.i.mv_otg_update_state.exit_crit_edge:   ; preds = %if.else82.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv_otg_update_state.exit

if.then84.i:                                      ; preds = %if.else82.i
  %63 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.i.not.i208.i = icmp eq ptr %64, null
  br i1 %tobool.not.i.i.not.i208.i, label %if.then84.i.mv_otg_cancel_timer.exit212.i_crit_edge, label %if.then2.i211.i

if.then84.i.mv_otg_cancel_timer.exit212.i_crit_edge: ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv_otg_cancel_timer.exit212.i

if.then2.i211.i:                                  ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i210.i = tail call i32 @del_timer(ptr noundef %timer1.i.i) #6
  br label %mv_otg_cancel_timer.exit212.i

mv_otg_cancel_timer.exit212.i:                    ; preds = %if.then2.i211.i, %if.then84.i.mv_otg_cancel_timer.exit212.i_crit_edge
  %65 = ptrtoint ptr %a_wait_bcon_timeout.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %a_wait_bcon_timeout.i, align 4
  %66 = ptrtoint ptr %otg1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %otg1, align 4
  %state90.i = getelementptr inbounds %struct.usb_otg, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %state90.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 9, ptr %state90.i, align 4
  br label %mv_otg_update_state.exit

sw.bb94.i:                                        ; preds = %if.end
  %69 = ptrtoint ptr %id138.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %id138.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool97.not.i = icmp eq i8 %70, 0
  br i1 %tobool97.not.i, label %lor.lhs.false98.i, label %sw.bb94.i.if.then105.i_crit_edge

sw.bb94.i.if.then105.i_crit_edge:                 ; preds = %sw.bb94.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then105.i

lor.lhs.false98.i:                                ; preds = %sw.bb94.i
  %71 = ptrtoint ptr %b_conn123.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %b_conn123.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool100.not.i = icmp eq i8 %72, 0
  br i1 %tobool100.not.i, label %lor.lhs.false98.i.if.then105.i_crit_edge, label %lor.lhs.false101.i

lor.lhs.false98.i.if.then105.i_crit_edge:         ; preds = %lor.lhs.false98.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then105.i

lor.lhs.false101.i:                               ; preds = %lor.lhs.false98.i
  %73 = ptrtoint ptr %a_bus_drop145.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %a_bus_drop145.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool104.not.i = icmp eq i8 %74, 0
  br i1 %tobool104.not.i, label %if.else109.i, label %lor.lhs.false101.i.if.then105.i_crit_edge

lor.lhs.false101.i.if.then105.i_crit_edge:        ; preds = %lor.lhs.false101.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then105.i

if.then105.i:                                     ; preds = %lor.lhs.false101.i.if.then105.i_crit_edge, %lor.lhs.false98.i.if.then105.i_crit_edge, %sw.bb94.i.if.then105.i_crit_edge
  %75 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 8, ptr %state.i, align 4
  br label %mv_otg_update_state.exit

if.else109.i:                                     ; preds = %lor.lhs.false101.i
  %76 = ptrtoint ptr %a_vbus_vld110.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %a_vbus_vld110.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool111.not.i = icmp eq i8 %77, 0
  br i1 %tobool111.not.i, label %if.then112.i, label %if.else109.i.mv_otg_update_state.exit_crit_edge

if.else109.i.mv_otg_update_state.exit_crit_edge:  ; preds = %if.else109.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv_otg_update_state.exit

if.then112.i:                                     ; preds = %if.else109.i
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 13, ptr %state.i, align 4
  br label %mv_otg_update_state.exit

sw.bb118.i:                                       ; preds = %if.end
  %79 = ptrtoint ptr %id138.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %id138.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool121.not.i = icmp eq i8 %80, 0
  br i1 %tobool121.not.i, label %lor.lhs.false122.i, label %sw.bb118.i.if.then132.i_crit_edge

sw.bb118.i.if.then132.i_crit_edge:                ; preds = %sw.bb118.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then132.i

lor.lhs.false122.i:                               ; preds = %sw.bb118.i
  %81 = ptrtoint ptr %b_conn123.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %b_conn123.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool124.not.i = icmp eq i8 %82, 0
  br i1 %tobool124.not.i, label %land.lhs.true125.i, label %lor.lhs.false122.i.lor.lhs.false128.i_crit_edge

lor.lhs.false122.i.lor.lhs.false128.i_crit_edge:  ; preds = %lor.lhs.false122.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false128.i

land.lhs.true125.i:                               ; preds = %lor.lhs.false122.i
  %83 = ptrtoint ptr %a_sess_vld.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %a_sess_vld.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool127.not.i = icmp eq i8 %84, 0
  br i1 %tobool127.not.i, label %land.lhs.true125.i.lor.lhs.false128.i_crit_edge, label %land.lhs.true125.i.if.then132.i_crit_edge

land.lhs.true125.i.if.then132.i_crit_edge:        ; preds = %land.lhs.true125.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then132.i

land.lhs.true125.i.lor.lhs.false128.i_crit_edge:  ; preds = %land.lhs.true125.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false128.i

lor.lhs.false128.i:                               ; preds = %land.lhs.true125.i.lor.lhs.false128.i_crit_edge, %lor.lhs.false122.i.lor.lhs.false128.i_crit_edge
  %85 = ptrtoint ptr %a_bus_req129.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %a_bus_req129.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool131.not.i = icmp eq i8 %86, 0
  br i1 %tobool131.not.i, label %lor.lhs.false128.i.mv_otg_update_state.exit_crit_edge, label %lor.lhs.false128.i.if.then132.i_crit_edge

lor.lhs.false128.i.if.then132.i_crit_edge:        ; preds = %lor.lhs.false128.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then132.i

lor.lhs.false128.i.mv_otg_update_state.exit_crit_edge: ; preds = %lor.lhs.false128.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv_otg_update_state.exit

if.then132.i:                                     ; preds = %lor.lhs.false128.i.if.then132.i_crit_edge, %land.lhs.true125.i.if.then132.i_crit_edge, %sw.bb118.i.if.then132.i_crit_edge
  %87 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 6, ptr %state.i, align 4
  br label %mv_otg_update_state.exit

sw.bb137.i:                                       ; preds = %if.end
  %88 = ptrtoint ptr %id138.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %id138.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool140.not.i = icmp eq i8 %89, 0
  br i1 %tobool140.not.i, label %lor.lhs.false141.i, label %sw.bb137.i.if.then148.i_crit_edge

sw.bb137.i.if.then148.i_crit_edge:                ; preds = %sw.bb137.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then148.i

lor.lhs.false141.i:                               ; preds = %sw.bb137.i
  %90 = ptrtoint ptr %a_clr_err.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %a_clr_err.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool143.not.i = icmp eq i8 %91, 0
  br i1 %tobool143.not.i, label %lor.lhs.false144.i, label %lor.lhs.false141.i.if.then148.i_crit_edge

lor.lhs.false141.i.if.then148.i_crit_edge:        ; preds = %lor.lhs.false141.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then148.i

lor.lhs.false144.i:                               ; preds = %lor.lhs.false141.i
  %92 = ptrtoint ptr %a_bus_drop145.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %a_bus_drop145.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool147.not.i = icmp eq i8 %93, 0
  br i1 %tobool147.not.i, label %lor.lhs.false144.i.mv_otg_update_state.exit_crit_edge, label %lor.lhs.false144.i.if.then148.i_crit_edge

lor.lhs.false144.i.if.then148.i_crit_edge:        ; preds = %lor.lhs.false144.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then148.i

lor.lhs.false144.i.mv_otg_update_state.exit_crit_edge: ; preds = %lor.lhs.false144.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv_otg_update_state.exit

if.then148.i:                                     ; preds = %lor.lhs.false144.i.if.then148.i_crit_edge, %lor.lhs.false141.i.if.then148.i_crit_edge, %sw.bb137.i.if.then148.i_crit_edge
  %94 = ptrtoint ptr %a_clr_err.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %a_clr_err.i, align 1
  %95 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 12, ptr %state.i, align 4
  br label %mv_otg_update_state.exit

mv_otg_update_state.exit:                         ; preds = %if.then148.i, %lor.lhs.false144.i.mv_otg_update_state.exit_crit_edge, %if.then132.i, %lor.lhs.false128.i.mv_otg_update_state.exit_crit_edge, %if.then112.i, %if.else109.i.mv_otg_update_state.exit_crit_edge, %if.then105.i, %mv_otg_cancel_timer.exit212.i, %if.else82.i.mv_otg_update_state.exit_crit_edge, %mv_otg_cancel_timer.exit206.i, %mv_otg_cancel_timer.exit.i, %if.then49.i, %sw.bb47.i.mv_otg_update_state.exit_crit_edge, %if.then41.i, %lor.lhs.false38.i.mv_otg_update_state.exit_crit_edge, %if.else34.i.mv_otg_update_state.exit_crit_edge, %if.then30.i, %if.then22.i, %lor.lhs.false.i.mv_otg_update_state.exit_crit_edge, %if.then10.i, %if.else.i.mv_otg_update_state.exit_crit_edge, %if.then.i, %if.end.mv_otg_update_state.exit_crit_edge
  %96 = ptrtoint ptr %otg1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %otg1, align 4
  %state4 = getelementptr inbounds %struct.usb_otg, ptr %97, i32 0, i32 5
  %98 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %state4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %99)
  %cmp.not = icmp eq i32 %5, %99
  br i1 %cmp.not, label %mv_otg_update_state.exit.cleanup_crit_edge, label %do.end

mv_otg_update_state.exit.cleanup_crit_edge:       ; preds = %mv_otg_update_state.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %mv_otg_update_state.exit
  %100 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %101, i32 0, i32 3
  %arrayidx = getelementptr [14 x ptr], ptr @state_string, i32 0, i32 %5
  %102 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx, align 4
  %arrayidx9 = getelementptr [14 x ptr], ptr @state_string, i32 0, i32 %99
  %104 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx9, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.56, ptr noundef %103, ptr noundef %105) #9
  %106 = ptrtoint ptr %otg1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %otg1, align 4
  %state12 = getelementptr inbounds %struct.usb_otg, ptr %107, i32 0, i32 5
  %108 = ptrtoint ptr %state12 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %state12, align 4
  %110 = zext i32 %109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %109, label %do.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb18
    i32 6, label %sw.bb21
    i32 7, label %sw.bb28
    i32 8, label %sw.bb30
    i32 12, label %sw.bb35
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  %111 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp13 = icmp eq i32 %5, 3
  br i1 %cmp13, label %if.then14, label %sw.bb.if.end15_crit_edge

sw.bb.if.end15_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then14:                                        ; preds = %sw.bb
  %112 = ptrtoint ptr %otg1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %otg1, align 4
  %gadget.i = getelementptr inbounds %struct.usb_otg, ptr %113, i32 0, i32 4
  %114 = ptrtoint ptr %gadget.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %gadget.i, align 4
  %tobool.not.i72 = icmp eq ptr %115, null
  br i1 %tobool.not.i72, label %if.then14.if.end15_crit_edge, label %do.end.i

if.then14.if.end15_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

do.end.i:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  %116 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %117, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.82) #9
  %118 = ptrtoint ptr %gadget.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %gadget.i, align 4
  %call8.i = tail call i32 @usb_gadget_vbus_disconnect(ptr noundef %119) #6
  br label %if.end15

if.end15:                                         ; preds = %do.end.i, %if.then14.if.end15_crit_edge, %sw.bb.if.end15_crit_edge
  tail call fastcc void @mv_otg_reset(ptr noundef %add.ptr)
  %120 = ptrtoint ptr %clock_gating.i85 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %clock_gating.i85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool.not.i74 = icmp eq i32 %121, 0
  br i1 %tobool.not.i74, label %if.end15.mv_otg_disable.exit_crit_edge, label %if.then.i75

if.end15.mv_otg_disable.exit_crit_edge:           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv_otg_disable.exit

if.then.i75:                                      ; preds = %if.end15
  %122 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool.not.i.i = icmp eq i32 %123, 0
  br i1 %tobool.not.i.i, label %if.then.i75.mv_otg_disable.exit_crit_edge, label %do.body.i.i

if.then.i75.mv_otg_disable.exit_crit_edge:        ; preds = %if.then.i75
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv_otg_disable.exit

do.body.i.i:                                      ; preds = %if.then.i75
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_otg_disable_internal.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv_otg_work, %if.then4.i.i)) #6
          to label %do.end.i.i [label %if.then4.i.i], !srcloc !243

if.then4.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %124 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %pdev, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %125, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_otg_disable_internal.__UNIQUE_ID_ddebug298, ptr noundef %dev.i.i, ptr noundef nonnull @.str.99) #6
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then4.i.i, %do.body.i.i
  %126 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %pdata.i.i, align 4
  %phy_deinit.i.i = getelementptr inbounds %struct.mv_usb_platform_data, ptr %127, i32 0, i32 5
  %128 = ptrtoint ptr %phy_deinit.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %phy_deinit.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %129, null
  br i1 %tobool5.not.i.i, label %do.end.i.i.if.end9.i.i_crit_edge, label %if.then6.i.i

do.end.i.i.if.end9.i.i_crit_edge:                 ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i.i

if.then6.i.i:                                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %130 = ptrtoint ptr %phy_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %phy_regs.i.i, align 4
  tail call void %129(ptr noundef %131) #6
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then6.i.i, %do.end.i.i.if.end9.i.i_crit_edge
  %132 = ptrtoint ptr %clk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %clk.i.i.i, align 4
  tail call void @clk_disable(ptr noundef %133) #6
  tail call void @clk_unprepare(ptr noundef %133) #6
  %134 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %active, align 4
  br label %mv_otg_disable.exit

mv_otg_disable.exit:                              ; preds = %if.end9.i.i, %if.then.i75.mv_otg_disable.exit_crit_edge, %if.end15.mv_otg_disable.exit_crit_edge
  tail call void @usb_phy_set_event(ptr noundef %add.ptr, i32 noundef 0) #6
  br label %sw.epilog

sw.bb18:                                          ; preds = %do.end
  %135 = ptrtoint ptr %clock_gating.i85 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %clock_gating.i85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool.not.i77 = icmp eq i32 %136, 0
  br i1 %tobool.not.i77, label %sw.bb18.mv_otg_enable.exit_crit_edge, label %if.then.i78

sw.bb18.mv_otg_enable.exit_crit_edge:             ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv_otg_enable.exit

if.then.i78:                                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call fastcc i32 @mv_otg_enable_internal(ptr noundef %add.ptr) #6
  br label %mv_otg_enable.exit

mv_otg_enable.exit:                               ; preds = %if.then.i78, %sw.bb18.mv_otg_enable.exit_crit_edge
  %137 = ptrtoint ptr %otg1 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %otg1, align 4
  %gadget.i80 = getelementptr inbounds %struct.usb_otg, ptr %138, i32 0, i32 4
  %139 = ptrtoint ptr %gadget.i80 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %gadget.i80, align 4
  %tobool.not.i81 = icmp eq ptr %140, null
  br i1 %tobool.not.i81, label %mv_otg_enable.exit.mv_otg_start_periphrals.exit84_crit_edge, label %do.end.i82

mv_otg_enable.exit.mv_otg_start_periphrals.exit84_crit_edge: ; preds = %mv_otg_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv_otg_start_periphrals.exit84

do.end.i82:                                       ; preds = %mv_otg_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  %141 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %142, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.81) #9
  %143 = ptrtoint ptr %gadget.i80 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %gadget.i80, align 4
  %call.i83 = tail call i32 @usb_gadget_vbus_connect(ptr noundef %144) #6
  br label %mv_otg_start_periphrals.exit84

mv_otg_start_periphrals.exit84:                   ; preds = %do.end.i82, %mv_otg_enable.exit.mv_otg_start_periphrals.exit84_crit_edge
  tail call void @usb_phy_set_event(ptr noundef %add.ptr, i32 noundef 4) #6
  br label %sw.epilog

sw.bb21:                                          ; preds = %do.end
  %145 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 1, ptr %3, align 4
  %146 = ptrtoint ptr %clock_gating.i85 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %clock_gating.i85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool.not.i86 = icmp eq i32 %147, 0
  br i1 %tobool.not.i86, label %sw.bb21.mv_otg_enable.exit89_crit_edge, label %if.then.i88

sw.bb21.mv_otg_enable.exit89_crit_edge:           ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv_otg_enable.exit89

if.then.i88:                                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #8
  %call.i87 = tail call fastcc i32 @mv_otg_enable_internal(ptr noundef %add.ptr) #6
  br label %mv_otg_enable.exit89

mv_otg_enable.exit89:                             ; preds = %if.then.i88, %sw.bb21.mv_otg_enable.exit89_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %5)
  %cmp24 = icmp eq i32 %5, 12
  br i1 %cmp24, label %if.then25, label %mv_otg_enable.exit89.if.end26_crit_edge

mv_otg_enable.exit89.if.end26_crit_edge:          ; preds = %mv_otg_enable.exit89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then25:                                        ; preds = %mv_otg_enable.exit89
  %148 = ptrtoint ptr %otg1 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %otg1, align 4
  %host.i = getelementptr inbounds %struct.usb_otg, ptr %149, i32 0, i32 3
  %150 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %host.i, align 4
  %tobool.not.i91 = icmp eq ptr %151, null
  br i1 %tobool.not.i91, label %if.then25.if.end26_crit_edge, label %do.end.i92

if.then25.if.end26_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

do.end.i92:                                       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  %152 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %pdev, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %153, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.86) #9
  %154 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %host.i, align 4
  tail call void @usb_remove_hcd(ptr noundef %155) #6
  br label %if.end26

if.end26:                                         ; preds = %do.end.i92, %if.then25.if.end26_crit_edge, %mv_otg_enable.exit89.if.end26_crit_edge
  tail call fastcc void @mv_otg_reset(ptr noundef %add.ptr)
  br label %sw.epilog

sw.bb28:                                          ; preds = %do.end
  %usb_phy.i = getelementptr inbounds %struct.usb_otg, ptr %3, i32 0, i32 2
  %156 = ptrtoint ptr %usb_phy.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %usb_phy.i, align 4
  %pdata.i = getelementptr inbounds %struct.mv_otg, ptr %157, i32 0, i32 12
  %158 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %pdata.i, align 4
  %set_vbus.i = getelementptr inbounds %struct.mv_usb_platform_data, ptr %159, i32 0, i32 6
  %160 = ptrtoint ptr %set_vbus.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %set_vbus.i, align 4
  %cmp.i94 = icmp eq ptr %161, null
  br i1 %cmp.i94, label %sw.bb28.sw.epilog_crit_edge, label %if.end.i

sw.bb28.sw.epilog_crit_edge:                      ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #8
  %call.i95 = tail call i32 %161(i32 noundef 1) #6
  br label %sw.epilog

sw.bb30:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %5)
  %cmp31.not = icmp eq i32 %5, 9
  br i1 %cmp31.not, label %sw.bb30.if.end33_crit_edge, label %if.then32

sw.bb30.if.end33_crit_edge:                       ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then32:                                        ; preds = %sw.bb30
  %162 = ptrtoint ptr %otg1 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %otg1, align 4
  %host.i97 = getelementptr inbounds %struct.usb_otg, ptr %163, i32 0, i32 3
  %164 = ptrtoint ptr %host.i97 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %host.i97, align 4
  %tobool.not.i98 = icmp eq ptr %165, null
  br i1 %tobool.not.i98, label %if.then32.if.end33_crit_edge, label %do.end.i101

if.then32.if.end33_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

do.end.i101:                                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  %166 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %pdev, align 4
  %dev.i100 = getelementptr inbounds %struct.platform_device, ptr %167, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i100, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.85) #9
  %168 = ptrtoint ptr %host.i97 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %host.i97, align 4
  %irq.i = getelementptr inbounds %struct.usb_hcd, ptr %169, i32 0, i32 15
  %170 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %irq.i, align 8
  %call6.i = tail call i32 @usb_add_hcd(ptr noundef %169, i32 noundef %171, i32 noundef 128) #6
  %172 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %169, align 8
  %call7.i = tail call i32 @device_wakeup_enable(ptr noundef %173) #6
  br label %if.end33

if.end33:                                         ; preds = %do.end.i101, %if.then32.if.end33_crit_edge, %sw.bb30.if.end33_crit_edge
  %174 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load volatile ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %175, null
  br i1 %tobool.not.i.i.not.i, label %if.end3.i, label %do.end.i105

do.end.i105:                                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %176 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %pdev, align 4
  %dev.i104 = getelementptr inbounds %struct.platform_device, ptr %177, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i104, ptr noundef nonnull @.str.87, i32 noundef 0) #9
  br label %mv_otg_set_timer.exit

if.end3.i:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %178 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %178, 2000
  %179 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %add.i, ptr %expires.i, align 4
  tail call void @add_timer(ptr noundef %timer1.i.i) #6
  br label %mv_otg_set_timer.exit

mv_otg_set_timer.exit:                            ; preds = %if.end3.i, %do.end.i105
  %180 = ptrtoint ptr %b_conn123.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 1, ptr %b_conn123.i, align 1
  br label %sw.epilog

sw.bb35:                                          ; preds = %do.end
  %181 = ptrtoint ptr %b_conn123.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 0, ptr %b_conn123.i, align 1
  %usb_phy.i106 = getelementptr inbounds %struct.usb_otg, ptr %3, i32 0, i32 2
  %182 = ptrtoint ptr %usb_phy.i106 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %usb_phy.i106, align 4
  %pdata.i107 = getelementptr inbounds %struct.mv_otg, ptr %183, i32 0, i32 12
  %184 = ptrtoint ptr %pdata.i107 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %pdata.i107, align 4
  %set_vbus.i108 = getelementptr inbounds %struct.mv_usb_platform_data, ptr %185, i32 0, i32 6
  %186 = ptrtoint ptr %set_vbus.i108 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %set_vbus.i108, align 4
  %cmp.i109 = icmp eq ptr %187, null
  br i1 %cmp.i109, label %sw.bb35.sw.epilog_crit_edge, label %if.end.i111

sw.bb35.sw.epilog_crit_edge:                      ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i111:                                      ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #8
  %call.i110 = tail call i32 %187(i32 noundef 0) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.i111, %sw.bb35.sw.epilog_crit_edge, %mv_otg_set_timer.exit, %if.end.i, %sw.bb28.sw.epilog_crit_edge, %if.end26, %mv_otg_start_periphrals.exit84, %mv_otg_disable.exit, %do.end.sw.epilog_crit_edge
  %188 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %active, align 4
  %tobool.not = icmp eq i32 %189, 0
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.if.end_crit_edge

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.cleanup_crit_edge, %mv_otg_update_state.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mv_otg_set_host(ptr nocapture noundef writeonly %otg, ptr noundef %host) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host1 = getelementptr inbounds %struct.usb_otg, ptr %otg, i32 0, i32 3
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %host, ptr %host1, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mv_otg_set_peripheral(ptr nocapture noundef writeonly %otg, ptr noundef %gadget) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gadget1 = getelementptr inbounds %struct.usb_otg, ptr %otg, i32 0, i32 4
  %0 = ptrtoint ptr %gadget1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %gadget, ptr %gadget1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_otg_set_vbus(ptr nocapture noundef readonly %otg, i1 noundef zeroext %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_phy = getelementptr inbounds %struct.usb_otg, ptr %otg, i32 0, i32 2
  %0 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_phy, align 4
  %pdata = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 4
  %set_vbus = getelementptr inbounds %struct.mv_usb_platform_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %set_vbus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_vbus, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i1 %on to i32
  %call = tail call i32 %5(i32 noundef %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv_otg_timer_await_bcon(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %a_wait_bcon_timeout = getelementptr i8, ptr %t, i32 -4
  %0 = ptrtoint ptr %a_wait_bcon_timeout to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %a_wait_bcon_timeout, align 4
  %pdev = getelementptr i8, ptr %t, i32 60
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.89) #9
  %wq_lock = getelementptr i8, ptr %t, i32 180
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %wq_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_otg_run_state_machine.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv_otg_timer_await_bcon, %if.then.i)) #6
          to label %do.end.i [label %if.then.i], !srcloc !243

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_otg_run_state_machine.__UNIQUE_ID_ddebug296, ptr noundef %dev.i, ptr noundef nonnull @.str.97) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then
  %qwork.i = getelementptr i8, ptr %t, i32 176
  %5 = ptrtoint ptr %qwork.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qwork.i, align 4
  %tobool3.not.i = icmp eq ptr %6, null
  br i1 %tobool3.not.i, label %do.end.i.mv_otg_run_state_machine.exit_crit_edge, label %if.end5.i

do.end.i.mv_otg_run_state_machine.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv_otg_run_state_machine.exit

if.end5.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %work.i = getelementptr i8, ptr %t, i32 76
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef nonnull %6, ptr noundef %work.i, i32 noundef 0) #6
  br label %mv_otg_run_state_machine.exit

mv_otg_run_state_machine.exit:                    ; preds = %if.end5.i, %do.end.i.mv_otg_run_state_machine.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %wq_lock) #6
  br label %if.end

if.end:                                           ; preds = %mv_otg_run_state_machine.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mv_otg_enable_internal(ptr nocapture noundef %mvotg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %active = getelementptr inbounds %struct.mv_otg, ptr %mvotg, i32 0, i32 13
  %0 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_otg_enable_internal.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv_otg_enable_internal, %if.then5)) #6
          to label %do.end [label %if.then5], !srcloc !243

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.mv_otg, ptr %mvotg, i32 0, i32 5
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_otg_enable_internal.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.92) #6
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %clk.i = getelementptr inbounds %struct.mv_otg, ptr %mvotg, i32 0, i32 15
  %4 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.otg_clock_enable.exit_crit_edge

do.end.otg_clock_enable.exit_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %otg_clock_enable.exit

if.end.i.i:                                       ; preds = %do.end
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.otg_clock_enable.exit_crit_edge, label %if.then3.i.i

if.end.i.i.otg_clock_enable.exit_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %otg_clock_enable.exit

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %otg_clock_enable.exit

otg_clock_enable.exit:                            ; preds = %if.then3.i.i, %if.end.i.i.otg_clock_enable.exit_crit_edge, %do.end.otg_clock_enable.exit_crit_edge
  %pdata = getelementptr inbounds %struct.mv_otg, ptr %mvotg, i32 0, i32 12
  %6 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata, align 4
  %phy_init = getelementptr inbounds %struct.mv_usb_platform_data, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %phy_init to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_init, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %otg_clock_enable.exit.if.end20_crit_edge, label %if.then8

otg_clock_enable.exit.if.end20_crit_edge:         ; preds = %otg_clock_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then8:                                         ; preds = %otg_clock_enable.exit
  %phy_regs = getelementptr inbounds %struct.mv_otg, ptr %mvotg, i32 0, i32 2
  %10 = ptrtoint ptr %phy_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy_regs, align 4
  %call11 = tail call i32 %9(ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then8.if.end20_crit_edge, label %do.end16

if.then8.if.end20_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

do.end16:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %pdev17 = getelementptr inbounds %struct.mv_otg, ptr %mvotg, i32 0, i32 5
  %12 = ptrtoint ptr %pdev17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev17, align 4
  %dev18 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.93, i32 noundef %call11) #9
  %14 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %15) #6
  tail call void @clk_unprepare(ptr noundef %15) #6
  br label %cleanup

if.end20:                                         ; preds = %if.then8.if.end20_crit_edge, %otg_clock_enable.exit.if.end20_crit_edge
  %16 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %active, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %do.end16 ], [ 0, %if.end20 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_otg_inputs_irq(i32 noundef %irq, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %active = getelementptr inbounds %struct.mv_otg, ptr %dev, i32 0, i32 13
  %0 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %clock_gating.i = getelementptr inbounds %struct.mv_otg, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %clock_gating.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clock_gating.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.then.mv_otg_enable.exit_crit_edge, label %if.then.i

if.then.mv_otg_enable.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv_otg_enable.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call fastcc i32 @mv_otg_enable_internal(ptr noundef %dev) #6
  br label %mv_otg_enable.exit

mv_otg_enable.exit:                               ; preds = %if.then.i, %if.then.mv_otg_enable.exit_crit_edge
  %irq_en.i = getelementptr inbounds %struct.mv_otg, ptr %dev, i32 0, i32 8
  %4 = ptrtoint ptr %irq_en.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 100663296, ptr %irq_en.i, align 4
  %irq_status.i = getelementptr inbounds %struct.mv_otg, ptr %dev, i32 0, i32 7
  %5 = ptrtoint ptr %irq_status.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 393216, ptr %irq_status.i, align 4
  %pdata.i = getelementptr inbounds %struct.mv_otg, ptr %dev, i32 0, i32 12
  %6 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata.i, align 4
  %vbus.i = getelementptr inbounds %struct.mv_usb_platform_data, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %vbus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vbus.i, align 4
  %cmp.i = icmp eq ptr %9, null
  br i1 %cmp.i, label %if.then.i4, label %mv_otg_enable.exit.if.end.i_crit_edge

mv_otg_enable.exit.if.end.i_crit_edge:            ; preds = %mv_otg_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i4:                                       ; preds = %mv_otg_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %irq_en.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 503316480, ptr %irq_en.i, align 4
  %11 = ptrtoint ptr %irq_status.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1966080, ptr %irq_status.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i4, %mv_otg_enable.exit.if.end.i_crit_edge
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 4
  %cmp5.i = icmp eq ptr %13, null
  br i1 %cmp5.i, label %if.then6.i, label %if.end.i.mv_otg_init_irq.exit_crit_edge

if.end.i.mv_otg_init_irq.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv_otg_init_irq.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %irq_en.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq_en.i, align 4
  %or8.i = or i32 %15, 16777216
  store i32 %or8.i, ptr %irq_en.i, align 4
  %16 = ptrtoint ptr %irq_status.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq_status.i, align 4
  %or10.i = or i32 %17, 65536
  store i32 %or10.i, ptr %irq_status.i, align 4
  br label %mv_otg_init_irq.exit

mv_otg_init_irq.exit:                             ; preds = %if.then6.i, %if.end.i.mv_otg_init_irq.exit_crit_edge
  %op_regs.i = getelementptr inbounds %struct.mv_otg, ptr %dev, i32 0, i32 4
  %18 = ptrtoint ptr %op_regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %op_regs.i, align 4
  %otgsc12.i = getelementptr inbounds %struct.mv_otg_regs, ptr %19, i32 0, i32 15
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %otgsc12.i) #6, !srcloc !244
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !249
  %22 = ptrtoint ptr %irq_en.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq_en.i, align 4
  %or15.i = or i32 %23, %21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !250
  tail call void @arm_heavy_mb() #6
  %24 = tail call i32 @llvm.bswap.i32(i32 %or15.i) #6
  %25 = ptrtoint ptr %op_regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %op_regs.i, align 4
  %otgsc17.i = getelementptr inbounds %struct.mv_otg_regs, ptr %26, i32 0, i32 15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %otgsc17.i, i32 %24) #6, !srcloc !248
  br label %if.end

if.end:                                           ; preds = %mv_otg_init_irq.exit, %entry.if.end_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_otg_run_state_machine.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv_otg_inputs_irq, %if.then.i5)) #6
          to label %do.end.i [label %if.then.i5], !srcloc !243

if.then.i5:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %pdev.i = getelementptr inbounds %struct.mv_otg, ptr %dev, i32 0, i32 5
  %27 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_otg_run_state_machine.__UNIQUE_ID_ddebug296, ptr noundef %dev.i, ptr noundef nonnull @.str.97) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i5, %if.end
  %qwork.i = getelementptr inbounds %struct.mv_otg, ptr %dev, i32 0, i32 10
  %29 = ptrtoint ptr %qwork.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %qwork.i, align 4
  %tobool3.not.i = icmp eq ptr %30, null
  br i1 %tobool3.not.i, label %do.end.i.mv_otg_run_state_machine.exit_crit_edge, label %if.end5.i

do.end.i.mv_otg_run_state_machine.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv_otg_run_state_machine.exit

if.end5.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %work.i = getelementptr inbounds %struct.mv_otg, ptr %dev, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef nonnull %30, ptr noundef %work.i, i32 noundef 0) #6
  br label %mv_otg_run_state_machine.exit

mv_otg_run_state_machine.exit:                    ; preds = %if.end5.i, %do.end.i.mv_otg_run_state_machine.exit_crit_edge
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv_otg_reset(ptr nocapture noundef readonly %mvotg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %op_regs = getelementptr inbounds %struct.mv_otg, ptr %mvotg, i32 0, i32 4
  %0 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op_regs, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !251
  %3 = and i32 %2, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !252
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %op_regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #6, !srcloc !248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !253
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %op_regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 33554432) #6, !srcloc !248
  %call10 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call10, 10000000
  %8 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %op_regs, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !244
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !254
  %and192 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and192)
  %tobool.not3 = icmp eq i32 %and192, 0
  br i1 %tobool.not3, label %entry.land.lhs.true_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call21 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call21, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call21, %add.i
  br i1 %cmp3.i, label %if.then23, label %cond.false

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %op_regs, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !244
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !255
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 2147480) #6
  %17 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %op_regs, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #6, !srcloc !244
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !254
  %and19 = and i32 %20, 2
  %tobool.not = icmp eq i32 %and19, 0
  br i1 %tobool.not, label %cond.false.land.lhs.true_crit_edge, label %cond.false.for.end_crit_edge

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then23, %entry.for.end_crit_edge
  %tmp.0 = phi i32 [ %15, %if.then23 ], [ %11, %entry.for.end_crit_edge ], [ %20, %cond.false.for.end_crit_edge ]
  %and40 = and i32 %tmp.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %do.end46, label %do.body48

do.end46:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.mv_otg, ptr %mvotg, i32 0, i32 5
  %21 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.94) #9
  br label %cleanup

do.body48:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !256
  tail call void @arm_heavy_mb() #6
  %23 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %op_regs, align 4
  %usbintr = getelementptr inbounds %struct.mv_otg_regs, ptr %24, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usbintr, i32 0) #6, !srcloc !248
  %25 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %op_regs, align 4
  %usbsts = getelementptr inbounds %struct.mv_otg_regs, ptr %26, i32 0, i32 1
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usbsts) #6, !srcloc !244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !258
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %op_regs, align 4
  %usbsts62 = getelementptr inbounds %struct.mv_otg_regs, ptr %29, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usbsts62, i32 %27) #6, !srcloc !248
  br label %cleanup

cleanup:                                          ; preds = %do.body48, %do.end46
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv_otg_init_irq(ptr nocapture noundef %mvotg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_en = getelementptr inbounds %struct.mv_otg, ptr %mvotg, i32 0, i32 8
  %0 = ptrtoint ptr %irq_en to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 100663296, ptr %irq_en, align 4
  %irq_status = getelementptr inbounds %struct.mv_otg, ptr %mvotg, i32 0, i32 7
  %1 = ptrtoint ptr %irq_status to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 393216, ptr %irq_status, align 4
  %pdata = getelementptr inbounds %struct.mv_otg, ptr %mvotg, i32 0, i32 12
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 4
  %vbus = getelementptr inbounds %struct.mv_usb_platform_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vbus, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %irq_en to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 503316480, ptr %irq_en, align 4
  %7 = ptrtoint ptr %irq_status to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1966080, ptr %irq_status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %cmp5 = icmp eq ptr %9, null
  br i1 %cmp5, label %if.then6, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %irq_en to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq_en, align 4
  %or8 = or i32 %11, 16777216
  store i32 %or8, ptr %irq_en, align 4
  %12 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq_status, align 4
  %or10 = or i32 %13, 65536
  store i32 %or10, ptr %irq_status, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %if.end.if.end11_crit_edge
  %op_regs = getelementptr inbounds %struct.mv_otg, ptr %mvotg, i32 0, i32 4
  %14 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %op_regs, align 4
  %otgsc12 = getelementptr inbounds %struct.mv_otg_regs, ptr %15, i32 0, i32 15
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %otgsc12) #6, !srcloc !244
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !249
  %18 = ptrtoint ptr %irq_en to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq_en, align 4
  %or15 = or i32 %19, %17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !250
  tail call void @arm_heavy_mb() #6
  %20 = tail call i32 @llvm.bswap.i32(i32 %or15)
  %21 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %op_regs, align 4
  %otgsc17 = getelementptr inbounds %struct.mv_otg_regs, ptr %22, i32 0, i32 15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %otgsc17, i32 %20) #6, !srcloc !248
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_otg_irq(i32 noundef %irq, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %op_regs = getelementptr inbounds %struct.mv_otg, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op_regs, align 4
  %otgsc1 = getelementptr inbounds %struct.mv_otg_regs, ptr %1, i32 0, i32 15
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %otgsc1) #6, !srcloc !244
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !260
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %op_regs, align 4
  %otgsc4 = getelementptr inbounds %struct.mv_otg_regs, ptr %5, i32 0, i32 15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %otgsc4, i32 %2) #6, !srcloc !248
  %pdata = getelementptr inbounds %struct.mv_otg, ptr %dev, i32 0, i32 12
  %6 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata, align 4
  %vbus = getelementptr inbounds %struct.mv_usb_platform_data, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vbus, align 4
  %tobool.not = icmp ne ptr %9, null
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp ne i32 %and, 0
  %or.cond = select i1 %tobool.not, i1 %tobool5.not, i1 false
  %and6 = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %or.cond21 = select i1 %or.cond, i1 %tobool7.not, i1 false
  br i1 %or.cond21, label %entry.cleanup_crit_edge, label %if.end9

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %entry
  %irq_status = getelementptr inbounds %struct.mv_otg, ptr %dev, i32 0, i32 7
  %10 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq_status, align 4
  %and10 = and i32 %11, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp = icmp eq i32 %and10, 0
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_otg_run_state_machine.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv_otg_irq, %if.then.i)) #6
          to label %do.end.i [label %if.then.i], !srcloc !243

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %pdev.i = getelementptr inbounds %struct.mv_otg, ptr %dev, i32 0, i32 5
  %12 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_otg_run_state_machine.__UNIQUE_ID_ddebug296, ptr noundef %dev.i, ptr noundef nonnull @.str.97) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end12
  %qwork.i = getelementptr inbounds %struct.mv_otg, ptr %dev, i32 0, i32 10
  %14 = ptrtoint ptr %qwork.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %qwork.i, align 4
  %tobool3.not.i = icmp eq ptr %15, null
  br i1 %tobool3.not.i, label %do.end.i.cleanup_crit_edge, label %if.end5.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %work.i = getelementptr inbounds %struct.mv_otg, ptr %dev, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef nonnull %15, ptr noundef %work.i, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5.i, %do.end.i.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ 1, %do.end.i.cleanup_crit_edge ], [ 1, %if.end5.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_phy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv_otg_run_state_machine(ptr noundef %mvotg, i32 noundef %delay) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_otg_run_state_machine.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv_otg_run_state_machine, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !243

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.mv_otg, ptr %mvotg, i32 0, i32 5
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_otg_run_state_machine.__UNIQUE_ID_ddebug296, ptr noundef %dev, ptr noundef nonnull @.str.97) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %qwork = getelementptr inbounds %struct.mv_otg, ptr %mvotg, i32 0, i32 10
  %2 = ptrtoint ptr %qwork to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qwork, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %do.end.return_crit_edge, label %if.end5

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end5:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %work = getelementptr inbounds %struct.mv_otg, ptr %mvotg, i32 0, i32 9
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef nonnull %3, ptr noundef %work, i32 noundef %delay) #6
  br label %return

return:                                           ; preds = %if.end5, %do.end.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv_otg_disable_internal(ptr nocapture noundef %mvotg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %active = getelementptr inbounds %struct.mv_otg, ptr %mvotg, i32 0, i32 13
  %0 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %do.body

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_otg_disable_internal.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv_otg_disable_internal, %if.then4)) #6
          to label %do.end [label %if.then4], !srcloc !243

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.mv_otg, ptr %mvotg, i32 0, i32 5
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_otg_disable_internal.__UNIQUE_ID_ddebug298, ptr noundef %dev, ptr noundef nonnull @.str.99) #6
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %pdata = getelementptr inbounds %struct.mv_otg, ptr %mvotg, i32 0, i32 12
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 4
  %phy_deinit = getelementptr inbounds %struct.mv_usb_platform_data, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %phy_deinit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_deinit, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %do.end.if.end9_crit_edge, label %if.then6

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %phy_regs = getelementptr inbounds %struct.mv_otg, ptr %mvotg, i32 0, i32 2
  %8 = ptrtoint ptr %phy_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_regs, align 4
  tail call void %7(ptr noundef %9) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %do.end.if.end9_crit_edge
  %clk.i = getelementptr inbounds %struct.mv_otg, ptr %mvotg, i32 0, i32 15
  %10 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %11) #6
  tail call void @clk_unprepare(ptr noundef %11) #6
  %12 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %active, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end9, %entry.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv_otg_update_inputs(ptr noundef %mvotg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %op_regs = getelementptr inbounds %struct.mv_otg, ptr %mvotg, i32 0, i32 4
  %0 = ptrtoint ptr %op_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op_regs, align 4
  %otgsc2 = getelementptr inbounds %struct.mv_otg_regs, ptr %1, i32 0, i32 15
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %otgsc2) #6, !srcloc !244
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !261
  %pdata = getelementptr inbounds %struct.mv_otg, ptr %mvotg, i32 0, i32 12
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 4
  %vbus = getelementptr inbounds %struct.mv_usb_platform_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vbus, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.else10, label %if.then

if.then:                                          ; preds = %entry
  %poll = getelementptr inbounds %struct.mv_usb_addon_irq, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %poll to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %poll, align 4
  %call6 = tail call i32 %9() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6)
  %cmp = icmp eq i32 %call6, 1
  %b_sess_vld = getelementptr inbounds %struct.mv_otg, ptr %mvotg, i32 0, i32 1, i32 18
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %b_sess_vld to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %b_sess_vld, align 2
  br label %if.end22

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %b_sess_vld to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %b_sess_vld, align 2
  br label %if.end22

if.else10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and = lshr i32 %3, 11
  %12 = trunc i32 %and to i8
  %13 = and i8 %12, 1
  %b_sess_vld13 = getelementptr inbounds %struct.mv_otg, ptr %mvotg, i32 0, i32 1, i32 18
  %14 = ptrtoint ptr %b_sess_vld13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %b_sess_vld13, align 2
  %and14 = lshr i32 %3, 12
  %15 = trunc i32 %and14 to i8
  %16 = and i8 %15, 1
  br label %if.end22

if.end22:                                         ; preds = %if.else10, %if.else, %if.then7
  %.sink = phi i8 [ 0, %if.then7 ], [ 1, %if.else ], [ %16, %if.else10 ]
  %b_sess_end = getelementptr inbounds %struct.mv_otg, ptr %mvotg, i32 0, i32 1, i32 17
  %17 = ptrtoint ptr %b_sess_end to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %.sink, ptr %b_sess_end, align 1
  %18 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdata, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %tobool24.not = icmp eq ptr %21, null
  br i1 %tobool24.not, label %if.else37, label %if.then25

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %poll28 = getelementptr inbounds %struct.mv_usb_addon_irq, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %poll28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %poll28, align 4
  %call29 = tail call i32 %23() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30 = icmp ne i32 %call29, 0
  %conv35 = zext i1 %tobool30 to i8
  br label %if.end46

if.else37:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %and38 = lshr i32 %3, 8
  %24 = trunc i32 %and38 to i8
  %25 = and i8 %24, 1
  br label %if.end46

if.end46:                                         ; preds = %if.else37, %if.then25
  %conv35.sink = phi i8 [ %25, %if.else37 ], [ %conv35, %if.then25 ]
  %26 = getelementptr inbounds %struct.mv_otg, ptr %mvotg, i32 0, i32 1, i32 19
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv35.sink, ptr %26, align 1
  %28 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdata, align 4
  %otg_force_a_bus_req = getelementptr inbounds %struct.mv_usb_platform_data, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %otg_force_a_bus_req to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load = load i8, ptr %otg_force_a_bus_req, align 4
  %31 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool48.not = icmp eq i8 %31, 0
  br i1 %tobool48.not, label %if.end46.if.end52_crit_edge, label %land.lhs.true

if.end46.if.end52_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

land.lhs.true:                                    ; preds = %if.end46
  %32 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool50.not = icmp eq i8 %33, 0
  br i1 %tobool50.not, label %if.then51, label %land.lhs.true.if.end52_crit_edge

land.lhs.true.if.end52_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then51:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %a_bus_req = getelementptr inbounds %struct.mv_otg, ptr %mvotg, i32 0, i32 1, i32 4
  %34 = ptrtoint ptr %a_bus_req to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %a_bus_req, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %land.lhs.true.if.end52_crit_edge, %if.end46.if.end52_crit_edge
  %and53 = lshr i32 %3, 10
  %35 = trunc i32 %and53 to i8
  %36 = and i8 %35, 1
  %a_sess_vld = getelementptr inbounds %struct.mv_otg, ptr %mvotg, i32 0, i32 1, i32 9
  %37 = ptrtoint ptr %a_sess_vld to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %a_sess_vld, align 1
  %and60 = lshr i32 %3, 9
  %38 = trunc i32 %and60 to i8
  %39 = and i8 %38, 1
  %a_vbus_vld = getelementptr inbounds %struct.mv_otg, ptr %mvotg, i32 0, i32 1, i32 11
  %40 = ptrtoint ptr %a_vbus_vld to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %a_vbus_vld, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_otg_update_inputs.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv_otg_update_inputs, %if.then75)) #6
          to label %do.body77 [label %if.then75], !srcloc !243

if.then75:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.mv_otg, ptr %mvotg, i32 0, i32 5
  %41 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %42, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_otg_update_inputs.__UNIQUE_ID_ddebug299, ptr noundef %dev, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.58) #6
  br label %do.body77

do.body77:                                        ; preds = %if.then75, %if.end52
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_otg_update_inputs.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv_otg_update_inputs, %if.then89)) #6
          to label %do.body97 [label %if.then89], !srcloc !243

if.then89:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #8
  %pdev90 = getelementptr inbounds %struct.mv_otg, ptr %mvotg, i32 0, i32 5
  %43 = ptrtoint ptr %pdev90 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev90, align 4
  %dev91 = getelementptr inbounds %struct.platform_device, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %26, align 1
  %conv93 = zext i8 %46 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_otg_update_inputs.__UNIQUE_ID_ddebug300, ptr noundef %dev91, ptr noundef nonnull @.str.60, i32 noundef %conv93) #6
  br label %do.body97

do.body97:                                        ; preds = %if.then89, %do.body77
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_otg_update_inputs.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv_otg_update_inputs, %if.then109)) #6
          to label %do.body117 [label %if.then109], !srcloc !243

if.then109:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #8
  %pdev110 = getelementptr inbounds %struct.mv_otg, ptr %mvotg, i32 0, i32 5
  %47 = ptrtoint ptr %pdev110 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdev110, align 4
  %dev111 = getelementptr inbounds %struct.platform_device, ptr %48, i32 0, i32 3
  %b_sess_vld112 = getelementptr inbounds %struct.mv_otg, ptr %mvotg, i32 0, i32 1, i32 18
  %49 = ptrtoint ptr %b_sess_vld112 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %b_sess_vld112, align 2
  %conv113 = zext i8 %50 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_otg_update_inputs.__UNIQUE_ID_ddebug301, ptr noundef %dev111, ptr noundef nonnull @.str.61, i32 noundef %conv113) #6
  br label %do.body117

do.body117:                                       ; preds = %if.then109, %do.body97
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_otg_update_inputs.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv_otg_update_inputs, %if.then129)) #6
          to label %do.body137 [label %if.then129], !srcloc !243

if.then129:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #8
  %pdev130 = getelementptr inbounds %struct.mv_otg, ptr %mvotg, i32 0, i32 5
  %51 = ptrtoint ptr %pdev130 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pdev130, align 4
  %dev131 = getelementptr inbounds %struct.platform_device, ptr %52, i32 0, i32 3
  %b_sess_end132 = getelementptr inbounds %struct.mv_otg, ptr %mvotg, i32 0, i32 1, i32 17
  %53 = ptrtoint ptr %b_sess_end132 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %b_sess_end132, align 1
  %conv133 = zext i8 %54 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_otg_update_inputs.__UNIQUE_ID_ddebug302, ptr noundef %dev131, ptr noundef nonnull @.str.62, i32 noundef %conv133) #6
  br label %do.body137

do.body137:                                       ; preds = %if.then129, %do.body117
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_otg_update_inputs.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv_otg_update_inputs, %if.then149)) #6
          to label %do.body157 [label %if.then149], !srcloc !243

if.then149:                                       ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #8
  %pdev150 = getelementptr inbounds %struct.mv_otg, ptr %mvotg, i32 0, i32 5
  %55 = ptrtoint ptr %pdev150 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdev150, align 4
  %dev151 = getelementptr inbounds %struct.platform_device, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %a_vbus_vld to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %a_vbus_vld, align 1
  %conv153 = zext i8 %58 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_otg_update_inputs.__UNIQUE_ID_ddebug303, ptr noundef %dev151, ptr noundef nonnull @.str.63, i32 noundef %conv153) #6
  br label %do.body157

do.body157:                                       ; preds = %if.then149, %do.body137
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_otg_update_inputs.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv_otg_update_inputs, %if.then169)) #6
          to label %do.end176 [label %if.then169], !srcloc !243

if.then169:                                       ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #8
  %pdev170 = getelementptr inbounds %struct.mv_otg, ptr %mvotg, i32 0, i32 5
  %59 = ptrtoint ptr %pdev170 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pdev170, align 4
  %dev171 = getelementptr inbounds %struct.platform_device, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %a_sess_vld to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %a_sess_vld, align 1
  %conv173 = zext i8 %62 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_otg_update_inputs.__UNIQUE_ID_ddebug304, ptr noundef %dev171, ptr noundef nonnull @.str.64, i32 noundef %conv173) #6
  br label %do.end176

do.end176:                                        ; preds = %if.then169, %do.body157
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_phy_set_event(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_vbus_connect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_vbus_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_phy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a_bus_req_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %a_bus_req = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %a_bus_req to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %a_bus_req, align 4
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.104, i32 noundef %conv) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a_bus_req_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count)
  %cmp = icmp ugt i32 %count, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %otg = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.if.end7_crit_edge
    i32 6, label %if.end.if.end7_crit_edge39
  ]

if.end.if.end7_crit_edge39:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end.if.end7_crit_edge, %if.end.if.end7_crit_edge39
  %clock_gating.i = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %clock_gating.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %clock_gating.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end7.mv_otg_enable.exit_crit_edge, label %if.then.i

if.end7.mv_otg_enable.exit_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv_otg_enable.exit

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %call.i35 = tail call fastcc i32 @mv_otg_enable_internal(ptr noundef %1) #6
  br label %mv_otg_enable.exit

mv_otg_enable.exit:                               ; preds = %if.then.i, %if.end7.mv_otg_enable.exit_crit_edge
  %irq_en.i = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %irq_en.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 100663296, ptr %irq_en.i, align 4
  %irq_status.i = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %irq_status.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 393216, ptr %irq_status.i, align 4
  %pdata.i = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdata.i, align 4
  %vbus.i = getelementptr inbounds %struct.mv_usb_platform_data, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %vbus.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vbus.i, align 4
  %cmp.i = icmp eq ptr %14, null
  br i1 %cmp.i, label %if.then.i36, label %mv_otg_enable.exit.if.end.i_crit_edge

mv_otg_enable.exit.if.end.i_crit_edge:            ; preds = %mv_otg_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i36:                                      ; preds = %mv_otg_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %irq_en.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 503316480, ptr %irq_en.i, align 4
  %16 = ptrtoint ptr %irq_status.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1966080, ptr %irq_status.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i36, %mv_otg_enable.exit.if.end.i_crit_edge
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %12, align 4
  %cmp5.i = icmp eq ptr %18, null
  br i1 %cmp5.i, label %if.then6.i, label %if.end.i.mv_otg_init_irq.exit_crit_edge

if.end.i.mv_otg_init_irq.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv_otg_init_irq.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %irq_en.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq_en.i, align 4
  %or8.i = or i32 %20, 16777216
  store i32 %or8.i, ptr %irq_en.i, align 4
  %21 = ptrtoint ptr %irq_status.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq_status.i, align 4
  %or10.i = or i32 %22, 65536
  store i32 %or10.i, ptr %irq_status.i, align 4
  br label %mv_otg_init_irq.exit

mv_otg_init_irq.exit:                             ; preds = %if.then6.i, %if.end.i.mv_otg_init_irq.exit_crit_edge
  %op_regs.i = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %op_regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %op_regs.i, align 4
  %otgsc12.i = getelementptr inbounds %struct.mv_otg_regs, ptr %24, i32 0, i32 15
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %otgsc12.i) #6, !srcloc !244
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !249
  %27 = ptrtoint ptr %irq_en.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq_en.i, align 4
  %or15.i = or i32 %28, %26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !250
  tail call void @arm_heavy_mb() #6
  %29 = tail call i32 @llvm.bswap.i32(i32 %or15.i) #6
  %30 = ptrtoint ptr %op_regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %op_regs.i, align 4
  %otgsc17.i = getelementptr inbounds %struct.mv_otg_regs, ptr %31, i32 0, i32 15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %otgsc17.i, i32 %29) #6, !srcloc !248
  %32 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %33)
  %cmp9 = icmp eq i8 %33, 49
  br i1 %cmp9, label %if.then11, label %mv_otg_init_irq.exit.cleanup_crit_edge

mv_otg_init_irq.exit.cleanup_crit_edge:           ; preds = %mv_otg_init_irq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then11:                                        ; preds = %mv_otg_init_irq.exit
  %a_bus_req = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 1, i32 4
  %34 = ptrtoint ptr %a_bus_req to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %a_bus_req, align 4
  %a_bus_drop = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 1, i32 3
  %35 = ptrtoint ptr %a_bus_drop to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %a_bus_drop, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @a_bus_req_store.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@a_bus_req_store, %if.then16)) #6
          to label %do.end [label %if.then16], !srcloc !243

if.then16:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 5
  %36 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev, align 4
  %dev17 = getelementptr inbounds %struct.platform_device, ptr %37, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @a_bus_req_store.__UNIQUE_ID_ddebug305, ptr noundef %dev17, ptr noundef nonnull @.str.106) #6
  br label %do.end

do.end:                                           ; preds = %if.then16, %if.then11
  %wq_lock = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 11
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %wq_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool20.not = icmp eq i32 %call.i, 0
  br i1 %tobool20.not, label %do.end.cleanup_crit_edge, label %if.then21

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then21:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_otg_run_state_machine.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@a_bus_req_store, %if.then.i37)) #6
          to label %do.end.i [label %if.then.i37], !srcloc !243

if.then.i37:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %pdev.i = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 5
  %38 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %39, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_otg_run_state_machine.__UNIQUE_ID_ddebug296, ptr noundef %dev.i, ptr noundef nonnull @.str.97) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i37, %if.then21
  %qwork.i = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 10
  %40 = ptrtoint ptr %qwork.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %qwork.i, align 4
  %tobool3.not.i = icmp eq ptr %41, null
  br i1 %tobool3.not.i, label %do.end.i.mv_otg_run_state_machine.exit_crit_edge, label %if.end5.i

do.end.i.mv_otg_run_state_machine.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv_otg_run_state_machine.exit

if.end5.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %work.i = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef nonnull %41, ptr noundef %work.i, i32 noundef 0) #6
  br label %mv_otg_run_state_machine.exit

mv_otg_run_state_machine.exit:                    ; preds = %if.end5.i, %do.end.i.mv_otg_run_state_machine.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %wq_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %mv_otg_run_state_machine.exit, %do.end.cleanup_crit_edge, %mv_otg_init_irq.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ %count, %do.end.cleanup_crit_edge ], [ %count, %mv_otg_run_state_machine.exit ], [ %count, %mv_otg_init_irq.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a_clr_err_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %otg = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %otg, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count)
  %cmp = icmp ugt i32 %count, 2
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %entry
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %7)
  %cmp3 = icmp eq i8 %7, 49
  br i1 %cmp3, label %if.then5, label %if.end2.if.end13_crit_edge

if.end2.if.end13_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  %a_clr_err = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 1, i32 5
  %8 = ptrtoint ptr %a_clr_err to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %a_clr_err, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @a_clr_err_store.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@a_clr_err_store, %if.then10)) #6
          to label %if.end13 [label %if.then10], !srcloc !243

if.then10:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 4
  %dev11 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @a_clr_err_store.__UNIQUE_ID_ddebug306, ptr noundef %dev11, ptr noundef nonnull @.str.109) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.then5, %if.end2.if.end13_crit_edge
  %wq_lock = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 11
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %wq_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not = icmp eq i32 %call.i, 0
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.then16

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then16:                                        ; preds = %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_otg_run_state_machine.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@a_clr_err_store, %if.then.i)) #6
          to label %do.end.i [label %if.then.i], !srcloc !243

if.then.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %pdev.i = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_otg_run_state_machine.__UNIQUE_ID_ddebug296, ptr noundef %dev.i, ptr noundef nonnull @.str.97) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then16
  %qwork.i = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %qwork.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %qwork.i, align 4
  %tobool3.not.i = icmp eq ptr %14, null
  br i1 %tobool3.not.i, label %do.end.i.mv_otg_run_state_machine.exit_crit_edge, label %if.end5.i

do.end.i.mv_otg_run_state_machine.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv_otg_run_state_machine.exit

if.end5.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %work.i = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef nonnull %14, ptr noundef %work.i, i32 noundef 0) #6
  br label %mv_otg_run_state_machine.exit

mv_otg_run_state_machine.exit:                    ; preds = %if.end5.i, %do.end.i.mv_otg_run_state_machine.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %wq_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %mv_otg_run_state_machine.exit, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %count, %mv_otg_run_state_machine.exit ], [ %count, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a_bus_drop_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %a_bus_drop = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %a_bus_drop to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %a_bus_drop, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.104, i32 noundef %conv) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a_bus_drop_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %otg = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %otg, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count)
  %cmp = icmp ugt i32 %count, 2
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %entry
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buf, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.117)
  switch i8 %7, label %if.end2.if.end58_crit_edge [
    i8 48, label %if.then5
    i8 49, label %if.then17
  ]

if.end2.if.end58_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  %a_bus_drop = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %a_bus_drop to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %a_bus_drop, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @a_bus_drop_store.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@a_bus_drop_store, %if.then10)) #6
          to label %if.end58 [label %if.then10], !srcloc !243

if.then10:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 4
  %dev11 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @a_bus_drop_store.__UNIQUE_ID_ddebug307, ptr noundef %dev11, ptr noundef nonnull @.str.112) #6
  br label %if.end58

if.then17:                                        ; preds = %if.end2
  %a_bus_drop19 = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %a_bus_drop19 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %a_bus_drop19, align 1
  %a_bus_req = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 1, i32 4
  %13 = ptrtoint ptr %a_bus_req to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %a_bus_req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @a_bus_drop_store.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@a_bus_drop_store, %if.then33)) #6
          to label %do.body39 [label %if.then33], !srcloc !243

if.then33:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  %pdev34 = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %pdev34 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev34, align 4
  %dev35 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @a_bus_drop_store.__UNIQUE_ID_ddebug308, ptr noundef %dev35, ptr noundef nonnull @.str.113) #6
  br label %do.body39

do.body39:                                        ; preds = %if.then33, %if.then17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @a_bus_drop_store.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@a_bus_drop_store, %if.then51)) #6
          to label %if.end58 [label %if.then51], !srcloc !243

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #8
  %pdev52 = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %pdev52 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev52, align 4
  %dev53 = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @a_bus_drop_store.__UNIQUE_ID_ddebug309, ptr noundef %dev53, ptr noundef nonnull @.str.114) #6
  br label %if.end58

if.end58:                                         ; preds = %if.then51, %do.body39, %if.then10, %if.then5, %if.end2.if.end58_crit_edge
  %wq_lock = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 11
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %wq_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool60.not = icmp eq i32 %call.i, 0
  br i1 %tobool60.not, label %if.end58.cleanup_crit_edge, label %if.then61

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then61:                                        ; preds = %if.end58
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_otg_run_state_machine.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@a_bus_drop_store, %if.then.i)) #6
          to label %do.end.i [label %if.then.i], !srcloc !243

if.then.i:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #8
  %pdev.i = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_otg_run_state_machine.__UNIQUE_ID_ddebug296, ptr noundef %dev.i, ptr noundef nonnull @.str.97) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then61
  %qwork.i = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 10
  %20 = ptrtoint ptr %qwork.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %qwork.i, align 4
  %tobool3.not.i = icmp eq ptr %21, null
  br i1 %tobool3.not.i, label %do.end.i.mv_otg_run_state_machine.exit_crit_edge, label %if.end5.i

do.end.i.mv_otg_run_state_machine.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv_otg_run_state_machine.exit

if.end5.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %work.i = getelementptr inbounds %struct.mv_otg, ptr %1, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef nonnull %21, ptr noundef %work.i, i32 noundef 0) #6
  br label %mv_otg_run_state_machine.exit

mv_otg_run_state_machine.exit:                    ; preds = %if.end5.i, %do.end.i.mv_otg_run_state_machine.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %wq_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %mv_otg_run_state_machine.exit, %if.end58.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %count, %mv_otg_run_state_machine.exit ], [ %count, %if.end58.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 123)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 123)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !35, !37, !38, !39, !41, !42, !43, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !61, !62, !63, !64, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !87, !88, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !102, !103, !105, !106, !108, !109, !111, !112, !114, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !148, !149, !150, !151, !152, !154, !155, !156, !157, !158, !159, !161, !162, !163, !164, !166, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !195, !197, !199, !201, !203, !205, !207, !208, !210, !212, !213, !214, !216, !217, !219, !220, !221, !223, !224, !226, !227, !228, !230, !231, !233}
!llvm.module.flags = !{!234, !235, !236, !237, !238, !239, !240, !241}
!llvm.ident = !{!242}

!0 = !{ptr @__UNIQUE_ID_description293, !1, !"__UNIQUE_ID_description293", i1 false, i1 false}
!1 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 30, i32 1}
!2 = !{ptr @__UNIQUE_ID_file294, !3, !"__UNIQUE_ID_file294", i1 false, i1 false}
!3 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 31, i32 1}
!4 = !{ptr @__UNIQUE_ID_license295, !3, !"__UNIQUE_ID_license295", i1 false, i1 false}
!5 = !{ptr @__initcall__kmod_phy_mv_usb__311_882_mv_otg_driver_init6, !6, !"__initcall__kmod_phy_mv_usb__311_882_mv_otg_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 882, i32 1}
!7 = !{ptr @__exitcall_mv_otg_driver_exit, !6, !"__exitcall_mv_otg_driver_exit", i1 false, i1 false}
!8 = !{ptr @mv_otg_driver, !9, !"mv_otg_driver", i1 false, i1 false}
!9 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 870, i32 31}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 670, i32 3}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @mv_otg_probe._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @mv_otg_probe._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 691, i32 17}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 693, i32 3}
!23 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mv_otg_probe.__UNIQUE_ID_ddebug310, !22, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!25 = !{ptr @mv_otg_probe.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 697, i32 2}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mv_otg_probe.__key.10, !26, !"__key", i1 false, i1 false}
!29 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mv_otg_probe.__key.12, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 712, i32 3}
!32 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 716, i32 23}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 718, i32 3}
!37 = !{ptr @mv_otg_probe._entry.15, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @mv_otg_probe._entry_ptr.17, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 725, i32 3}
!41 = !{ptr @mv_otg_probe._entry.18, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @mv_otg_probe._entry_ptr.20, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 731, i32 23}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 733, i32 3}
!47 = !{ptr @mv_otg_probe._entry.22, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @mv_otg_probe._entry_ptr.24, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 740, i32 3}
!51 = !{ptr @mv_otg_probe._entry.25, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @mv_otg_probe._entry_ptr.27, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 748, i32 3}
!55 = !{ptr @mv_otg_probe._entry.28, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @mv_otg_probe._entry_ptr.30, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 759, i32 21}
!59 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 761, i32 4}
!61 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @mv_otg_probe._entry.32, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @mv_otg_probe._entry_ptr.35, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 771, i32 21}
!66 = !{ptr @.str.38, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 773, i32 4}
!68 = !{ptr @mv_otg_probe._entry.37, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @mv_otg_probe._entry_ptr.39, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.41, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 789, i32 3}
!72 = !{ptr @mv_otg_probe._entry.40, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @mv_otg_probe._entry_ptr.42, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.44, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 797, i32 3}
!76 = !{ptr @mv_otg_probe._entry.43, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @mv_otg_probe._entry_ptr.45, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.47, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 806, i32 3}
!80 = !{ptr @mv_otg_probe._entry.46, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @mv_otg_probe._entry_ptr.48, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @mv_otg_probe.__key.49, !83, !"__key", i1 false, i1 false}
!83 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 811, i32 2}
!84 = !{ptr @.str.50, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.52, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 817, i32 2}
!87 = !{ptr @mv_otg_probe._entry.51, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @mv_otg_probe._entry_ptr.53, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.54, !86, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.55, !86, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.56, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 419, i32 3}
!93 = !{ptr @.str.57, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @mv_otg_work._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @mv_otg_work._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.58, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 319, i32 2}
!98 = !{ptr @.str.59, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @mv_otg_update_inputs.__UNIQUE_ID_ddebug299, !97, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!100 = !{ptr @.str.60, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 320, i32 2}
!102 = !{ptr @mv_otg_update_inputs.__UNIQUE_ID_ddebug300, !101, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!103 = !{ptr @.str.61, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 321, i32 2}
!105 = !{ptr @mv_otg_update_inputs.__UNIQUE_ID_ddebug301, !104, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!106 = !{ptr @.str.62, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 322, i32 2}
!108 = !{ptr @mv_otg_update_inputs.__UNIQUE_ID_ddebug302, !107, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!109 = !{ptr @.str.63, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 323, i32 2}
!111 = !{ptr @mv_otg_update_inputs.__UNIQUE_ID_ddebug303, !110, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!112 = !{ptr @.str.64, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 324, i32 2}
!114 = !{ptr @mv_otg_update_inputs.__UNIQUE_ID_ddebug304, !113, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!115 = !{ptr @.str.65, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 36, i32 2}
!117 = !{ptr @.str.66, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 37, i32 2}
!119 = !{ptr @.str.67, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 38, i32 2}
!121 = !{ptr @.str.68, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 39, i32 2}
!123 = !{ptr @.str.69, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 40, i32 2}
!125 = !{ptr @.str.70, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 41, i32 2}
!127 = !{ptr @.str.71, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 42, i32 2}
!129 = !{ptr @.str.72, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 43, i32 2}
!131 = !{ptr @.str.73, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 44, i32 2}
!133 = !{ptr @.str.74, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 45, i32 2}
!135 = !{ptr @.str.75, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 46, i32 2}
!137 = !{ptr @.str.76, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 47, i32 2}
!139 = !{ptr @.str.77, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 48, i32 2}
!141 = !{ptr @.str.78, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 49, i32 2}
!143 = !{ptr @state_string, !144, !"state_string", i1 false, i1 false}
!144 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 35, i32 14}
!145 = !{ptr @.str.79, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 220, i32 2}
!147 = !{ptr @.str.80, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @mv_otg_start_periphrals._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @mv_otg_start_periphrals._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.81, !146, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.82, !146, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.83, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 200, i32 2}
!154 = !{ptr @.str.84, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @mv_otg_start_host._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @mv_otg_start_host._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.85, !153, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.86, !153, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.87, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 127, i32 3}
!161 = !{ptr @.str.88, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @mv_otg_set_timer._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @mv_otg_set_timer._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.89, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 94, i32 2}
!166 = !{ptr @.str.90, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @mv_otg_timer_await_bcon._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @mv_otg_timer_await_bcon._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.91, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 245, i32 2}
!171 = !{ptr @.str.92, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @mv_otg_enable_internal.__UNIQUE_ID_ddebug297, !170, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!173 = !{ptr @.str.93, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 251, i32 4}
!175 = !{ptr @mv_otg_enable_internal._entry, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @mv_otg_enable_internal._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.94, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 153, i32 3}
!179 = !{ptr @.str.95, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @mv_otg_reset._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @mv_otg_reset._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.96, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 80, i32 2}
!184 = !{ptr @.str.97, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @mv_otg_run_state_machine.__UNIQUE_ID_ddebug296, !183, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!186 = !{ptr @.str.98, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 274, i32 3}
!188 = !{ptr @.str.99, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @mv_otg_disable_internal.__UNIQUE_ID_ddebug298, !187, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!190 = !{ptr @.str.100, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 837, i32 3}
!192 = !{ptr @.str.101, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @mv_otg_suspend._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @mv_otg_suspend._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @driver_name, !196, !"driver_name", i1 false, i1 false}
!196 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 33, i32 19}
!197 = !{ptr @mv_otg_groups, !198, !"mv_otg_groups", i1 false, i1 false}
!198 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 642, i32 38}
!199 = !{ptr @.str.102, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 638, i32 10}
!201 = !{ptr @inputs_attr_group, !202, !"inputs_attr_group", i1 false, i1 false}
!202 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 637, i32 37}
!203 = !{ptr @inputs_attrs, !204, !"inputs_attrs", i1 false, i1 false}
!204 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 630, i32 26}
!205 = !{ptr @.str.103, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 558, i32 8}
!207 = !{ptr @dev_attr_a_bus_req, !206, !"dev_attr_a_bus_req", i1 false, i1 false}
!208 = !{ptr @.str.104, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 521, i32 35}
!210 = !{ptr @.str.105, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 546, i32 3}
!212 = !{ptr @.str.106, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @a_bus_req_store.__UNIQUE_ID_ddebug305, !211, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!214 = !{ptr @.str.107, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 585, i32 8}
!216 = !{ptr @dev_attr_a_clr_err, !215, !"dev_attr_a_clr_err", i1 false, i1 false}
!217 = !{ptr @.str.108, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 573, i32 3}
!219 = !{ptr @.str.109, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @a_clr_err_store.__UNIQUE_ID_ddebug306, !218, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!221 = !{ptr @.str.110, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 628, i32 8}
!223 = !{ptr @dev_attr_a_bus_drop, !222, !"dev_attr_a_bus_drop", i1 false, i1 false}
!224 = !{ptr @.str.111, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 609, i32 3}
!226 = !{ptr @.str.112, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @a_bus_drop_store.__UNIQUE_ID_ddebug307, !225, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!228 = !{ptr @.str.113, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 614, i32 3}
!230 = !{ptr @a_bus_drop_store.__UNIQUE_ID_ddebug308, !229, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!231 = !{ptr @.str.114, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/usb/phy/phy-mv-usb.c", i32 616, i32 3}
!233 = !{ptr @a_bus_drop_store.__UNIQUE_ID_ddebug309, !232, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!234 = !{i32 1, !"wchar_size", i32 2}
!235 = !{i32 1, !"min_enum_size", i32 4}
!236 = !{i32 8, !"branch-target-enforcement", i32 0}
!237 = !{i32 8, !"sign-return-address", i32 0}
!238 = !{i32 8, !"sign-return-address-all", i32 0}
!239 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!240 = !{i32 7, !"uwtable", i32 1}
!241 = !{i32 7, !"frame-pointer", i32 2}
!242 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!243 = !{i64 2148972115, i64 2148972120, i64 2148972133, i64 2148972177, i64 2148972211, i64 2148972232}
!244 = !{i64 4054766}
!245 = !{i64 2155453729}
!246 = !{i64 2155466763}
!247 = !{i64 2155466984}
!248 = !{i64 4054348}
!249 = !{i64 2155392133}
!250 = !{i64 2155392354}
!251 = !{i64 2155384526}
!252 = !{i64 2155384759}
!253 = !{i64 2155385182}
!254 = !{i64 2155387375}
!255 = !{i64 2155387885}
!256 = !{i64 2155390400}
!257 = !{i64 2155391092}
!258 = !{i64 2155391312}
!259 = !{i64 2155419260}
!260 = !{i64 2155419481}
!261 = !{i64 2155402067}
