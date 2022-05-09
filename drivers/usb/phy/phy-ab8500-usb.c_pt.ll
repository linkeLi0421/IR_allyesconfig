; ModuleID = '/llk/IR_all_yes/drivers/usb/phy/phy-ab8500-usb.c_pt.bc'
source_filename = "../drivers/usb/phy/phy-ab8500-usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.ab8500 = type { ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, i32, ptr, i32, i8, ptr, ptr, ptr, [4 x i32], [4 x i32], ptr, ptr, i32, ptr, i32 }
%struct.ab8500_usb = type { %struct.usb_phy, ptr, ptr, i32, %struct.work_struct, i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i8, i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_phy_ab8500_usb__296_1003_ab8500_usb_init4 = internal global ptr @ab8500_usb_init, section ".initcall4.init", align 4
@ab8500_usb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ab8500_usb_probe, ptr @ab8500_usb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ab8500_usb_devtype, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ab8500_usb_exit = internal global ptr @ab8500_usb_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author297 = internal constant [37 x i8] c"phy_ab8500_usb.author=ST-Ericsson AB\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [64 x i8] c"phy_ab8500_usb.description=AB8500 family usb transceiver driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [51 x i8] c"phy_ab8500_usb.file=drivers/usb/phy/phy-ab8500-usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [27 x i8] c"phy_ab8500_usb.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"abx5x0-usb\00", [21 x i8] zeroinitializer }, align 32
@ab8500_usb_devtype = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"ab8500-usb\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ab8500_usb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 880, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unsupported AB8500 chip rev=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ab8500_usb_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/usb/phy/phy-ab8500-usb.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ab8500_usb_probe._entry_ptr = internal global ptr @ab8500_usb_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ab8500\00", [25 x i8] zeroinitializer }, align 32
@ab8500_usb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&ab->phy_dis_work)\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sysclk\00", [25 x i8] zeroinitializer }, align 32
@ab8500_usb_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 931, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Could not get sysclk.\0A\00", [41 x i8] zeroinitializer }, align 32
@ab8500_usb_probe._entry_ptr.11 = internal global ptr @ab8500_usb_probe._entry.9, section ".printk_index", align 4
@ab8500_usb_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 941, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Can't register transceiver\0A\00", [36 x i8] zeroinitializer }, align 32
@ab8500_usb_probe._entry_ptr.14 = internal global ptr @ab8500_usb_probe._entry.12, section ".printk_index", align 4
@ab8500_usb_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 963, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"revision 0x%2x driver initialized\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ab8500_usb_probe._entry_ptr.18 = internal global ptr @ab8500_usb_probe._entry.15, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sleep\00", [26 x i8] zeroinitializer }, align 32
@ab8500_usb_phy_disable.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.21, ptr @.str.3, ptr @.str.22, i8 0, i8 74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"phy_ab8500_usb\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ab8500_usb_phy_disable\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not get sleep pinstate\0A\00", [34 x i8] zeroinitializer }, align 32
@ab8500_usb_phy_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.3, i32 299, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"could not set pins to sleep state\0A\00", [61 x i8] zeroinitializer }, align 32
@ab8500_usb_phy_disable._entry_ptr = internal global ptr @ab8500_usb_phy_disable._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ab8500_usb_regulator_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 228, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to set the Vintcore to %duV, ret=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ab8500_usb_regulator_disable\00", [35 x i8] zeroinitializer }, align 32
@ab8500_usb_regulator_disable._entry_ptr = internal global ptr @ab8500_usb_regulator_disable._entry, section ".printk_index", align 4
@ab8500_usb_regulator_disable._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.3, i32 234, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to set optimum mode (ret=%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@ab8500_usb_regulator_disable._entry_ptr.28 = internal global ptr @ab8500_usb_regulator_disable._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"v-ape\00", [26 x i8] zeroinitializer }, align 32
@ab8500_usb_regulator_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 715, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Could not get v-ape supply\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ab8500_usb_regulator_get\00", [39 x i8] zeroinitializer }, align 32
@ab8500_usb_regulator_get._entry_ptr = internal global ptr @ab8500_usb_regulator_get._entry, section ".printk_index", align 4
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vddulpivio18\00", [19 x i8] zeroinitializer }, align 32
@ab8500_usb_regulator_get._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.31, ptr @.str.3, i32 722, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Could not get vddulpivio18 supply\0A\00", [61 x i8] zeroinitializer }, align 32
@ab8500_usb_regulator_get._entry_ptr.35 = internal global ptr @ab8500_usb_regulator_get._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"musb_1v8\00", [23 x i8] zeroinitializer }, align 32
@ab8500_usb_regulator_get._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.31, ptr @.str.3, i32 729, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not get musb_1v8 supply\0A\00", [33 x i8] zeroinitializer }, align 32
@ab8500_usb_regulator_get._entry_ptr.39 = internal global ptr @ab8500_usb_regulator_get._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"USB_LINK_STATUS\00", [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usb-link-status\00", [16 x i8] zeroinitializer }, align 32
@ab8500_usb_irq_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 752, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"request_irq failed for link status irq\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ab8500_usb_irq_setup\00", [43 x i8] zeroinitializer }, align 32
@ab8500_usb_irq_setup._entry_ptr = internal global ptr @ab8500_usb_irq_setup._entry, section ".printk_index", align 4
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ID_WAKEUP_F\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb-id-fall\00", [20 x i8] zeroinitializer }, align 32
@ab8500_usb_irq_setup._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.43, ptr @.str.3, i32 766, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"request_irq failed for ID fall irq\0A\00", [60 x i8] zeroinitializer }, align 32
@ab8500_usb_irq_setup._entry_ptr.48 = internal global ptr @ab8500_usb_irq_setup._entry.46, section ".printk_index", align 4
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"VBUS_DET_F\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usb-vbus-fall\00", [18 x i8] zeroinitializer }, align 32
@ab8500_usb_irq_setup._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.43, ptr @.str.3, i32 780, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"request_irq failed for Vbus fall irq\0A\00", [58 x i8] zeroinitializer }, align 32
@ab8500_usb_irq_setup._entry_ptr.53 = internal global ptr @ab8500_usb_irq_setup._entry.51, section ".printk_index", align 4
@ab8500_usb_set_ab8500_tuning_values._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 797, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to enable bank12 access err=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ab8500_usb_set_ab8500_tuning_values\00", [60 x i8] zeroinitializer }, align 32
@ab8500_usb_set_ab8500_tuning_values._entry_ptr = internal global ptr @ab8500_usb_set_ab8500_tuning_values._entry, section ".printk_index", align 4
@ab8500_usb_set_ab8500_tuning_values._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.3, i32 803, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to set PHY_TUNE1 register err=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@ab8500_usb_set_ab8500_tuning_values._entry_ptr.58 = internal global ptr @ab8500_usb_set_ab8500_tuning_values._entry.56, section ".printk_index", align 4
@ab8500_usb_set_ab8500_tuning_values._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.55, ptr @.str.3, i32 809, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to set PHY_TUNE2 register err=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@ab8500_usb_set_ab8500_tuning_values._entry_ptr.61 = internal global ptr @ab8500_usb_set_ab8500_tuning_values._entry.59, section ".printk_index", align 4
@ab8500_usb_set_ab8500_tuning_values._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.55, ptr @.str.3, i32 815, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to set PHY_TUNE3 register err=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@ab8500_usb_set_ab8500_tuning_values._entry_ptr.64 = internal global ptr @ab8500_usb_set_ab8500_tuning_values._entry.62, section ".printk_index", align 4
@ab8500_usb_set_ab8500_tuning_values._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.55, ptr @.str.3, i32 822, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to switch bank12 access err=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@ab8500_usb_set_ab8500_tuning_values._entry_ptr.67 = internal global ptr @ab8500_usb_set_ab8500_tuning_values._entry.65, section ".printk_index", align 4
@ab8500_usb_set_ab8505_tuning_values._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.68, ptr @.str.3, i32 835, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ab8500_usb_set_ab8505_tuning_values\00", [60 x i8] zeroinitializer }, align 32
@ab8500_usb_set_ab8505_tuning_values._entry_ptr = internal global ptr @ab8500_usb_set_ab8505_tuning_values._entry, section ".printk_index", align 4
@ab8500_usb_set_ab8505_tuning_values._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.68, ptr @.str.3, i32 842, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@ab8500_usb_set_ab8505_tuning_values._entry_ptr.70 = internal global ptr @ab8500_usb_set_ab8505_tuning_values._entry.69, section ".printk_index", align 4
@ab8500_usb_set_ab8505_tuning_values._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.68, ptr @.str.3, i32 849, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@ab8500_usb_set_ab8505_tuning_values._entry_ptr.72 = internal global ptr @ab8500_usb_set_ab8505_tuning_values._entry.71, section ".printk_index", align 4
@ab8500_usb_set_ab8505_tuning_values._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.68, ptr @.str.3, i32 857, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@ab8500_usb_set_ab8505_tuning_values._entry_ptr.74 = internal global ptr @ab8500_usb_set_ab8505_tuning_values._entry.73, section ".printk_index", align 4
@ab8500_usb_set_ab8505_tuning_values._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.68, ptr @.str.3, i32 865, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@ab8500_usb_set_ab8505_tuning_values._entry_ptr.76 = internal global ptr @ab8500_usb_set_ab8505_tuning_values._entry.75, section ".printk_index", align 4
@ab8500_usb_link_status_update.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.77, ptr @.str.3, ptr @.str.78, i8 0, i8 106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ab8500_usb_link_status_update\00", [34 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ab8500_usb_link_status_update %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@ab8500_usb_phy_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.3, i32 260, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"could not get/set default pinstate\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ab8500_usb_phy_enable\00", [42 x i8] zeroinitializer }, align 32
@ab8500_usb_phy_enable._entry_ptr = internal global ptr @ab8500_usb_phy_enable._entry, section ".printk_index", align 4
@ab8500_usb_phy_enable._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.3, i32 263, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"can't prepare/enable clock\0A\00", [36 x i8] zeroinitializer }, align 32
@ab8500_usb_phy_enable._entry_ptr.84 = internal global ptr @ab8500_usb_phy_enable._entry.82, section ".printk_index", align 4
@ab8500_usb_regulator_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.3, i32 179, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to enable v-ape\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ab8500_usb_regulator_enable\00", [36 x i8] zeroinitializer }, align 32
@ab8500_usb_regulator_enable._entry_ptr = internal global ptr @ab8500_usb_regulator_enable._entry, section ".printk_index", align 4
@ab8500_usb_regulator_enable._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.3, i32 184, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get v_ulpi voltage\0A\00", [34 x i8] zeroinitializer }, align 32
@ab8500_usb_regulator_enable._entry_ptr.89 = internal global ptr @ab8500_usb_regulator_enable._entry.87, section ".printk_index", align 4
@ab8500_usb_regulator_enable._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.86, ptr @.str.3, i32 189, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to set the Vintcore to 1.3V, ret=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@ab8500_usb_regulator_enable._entry_ptr.92 = internal global ptr @ab8500_usb_regulator_enable._entry.90, section ".printk_index", align 4
@ab8500_usb_regulator_enable._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.86, ptr @.str.3, i32 194, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@ab8500_usb_regulator_enable._entry_ptr.94 = internal global ptr @ab8500_usb_regulator_enable._entry.93, section ".printk_index", align 4
@ab8500_usb_regulator_enable._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.86, ptr @.str.3, i32 199, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable vddulpivio18\0A\00", [33 x i8] zeroinitializer }, align 32
@ab8500_usb_regulator_enable._entry_ptr.97 = internal global ptr @ab8500_usb_regulator_enable._entry.95, section ".printk_index", align 4
@ab8500_usb_regulator_enable._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.86, ptr @.str.3, i32 205, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Vintcore is not set to 1.3V volt=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@ab8500_usb_regulator_enable._entry_ptr.100 = internal global ptr @ab8500_usb_regulator_enable._entry.98, section ".printk_index", align 4
@ab8500_usb_regulator_enable._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.86, ptr @.str.3, i32 210, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to enable musb_1v8\0A\00", [37 x i8] zeroinitializer }, align 32
@ab8500_usb_regulator_enable._entry_ptr.103 = internal global ptr @ab8500_usb_regulator_enable._entry.101, section ".printk_index", align 4
@ab8505_usb_link_status_update.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.104, ptr @.str.3, ptr @.str.105, i8 0, i8 79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ab8505_usb_link_status_update\00", [34 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ab8505_usb_link_status_update %d\0A\00", [62 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.109 = internal global [17 x i64] [i64 15, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 15]
@__sancov_gen_cov_switch_values.110 = internal global [19 x i64] [i64 17, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 22, i64 25, i64 26]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 32, i64 1300000, i64 1350000]
@___asan_gen_.112 = private unnamed_addr constant [18 x i8] c"ab8500_usb_driver\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 990, i32 31 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 995, i32 11 }
@___asan_gen_.118 = private unnamed_addr constant [19 x i8] c"ab8500_usb_devtype\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 984, i32 40 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 880, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 896, i32 19 }
@___asan_gen_.142 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 923, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 929, i32 37 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 931, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 941, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 963, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 294, i32 5 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 297, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 299, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 227, i32 5 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 233, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 713, i32 42 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 715, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 720, i32 43 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 722, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 727, i32 43 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 729, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 744, i32 39 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 750, i32 5 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 752, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 758, i32 39 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 764, i32 5 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 766, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 772, i32 39 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 778, i32 5 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 780, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 796, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 802, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 808, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 814, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 821, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 834, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 841, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 848, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 856, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 864, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 427, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 258, i32 44 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 260, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 263, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 179, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 184, i32 4 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 188, i32 4 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 193, i32 4 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 199, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 204, i32 4 }
@___asan_gen_.385 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 210, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.395 = private constant [36 x i8] c"../drivers/usb/phy/phy-ab8500-usb.c\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 319, i32 2 }
@llvm.compiler.used = appending global [134 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_ab8500_usb_exit, ptr @__initcall__kmod_phy_ab8500_usb__296_1003_ab8500_usb_init4, ptr @ab8500_usb_exit, ptr @ab8500_usb_irq_setup._entry, ptr @ab8500_usb_irq_setup._entry.46, ptr @ab8500_usb_irq_setup._entry.51, ptr @ab8500_usb_irq_setup._entry_ptr, ptr @ab8500_usb_irq_setup._entry_ptr.48, ptr @ab8500_usb_irq_setup._entry_ptr.53, ptr @ab8500_usb_phy_disable._entry, ptr @ab8500_usb_phy_disable._entry_ptr, ptr @ab8500_usb_phy_enable._entry, ptr @ab8500_usb_phy_enable._entry.82, ptr @ab8500_usb_phy_enable._entry_ptr, ptr @ab8500_usb_phy_enable._entry_ptr.84, ptr @ab8500_usb_probe._entry, ptr @ab8500_usb_probe._entry.12, ptr @ab8500_usb_probe._entry.15, ptr @ab8500_usb_probe._entry.9, ptr @ab8500_usb_probe._entry_ptr, ptr @ab8500_usb_probe._entry_ptr.11, ptr @ab8500_usb_probe._entry_ptr.14, ptr @ab8500_usb_probe._entry_ptr.18, ptr @ab8500_usb_regulator_disable._entry, ptr @ab8500_usb_regulator_disable._entry.26, ptr @ab8500_usb_regulator_disable._entry_ptr, ptr @ab8500_usb_regulator_disable._entry_ptr.28, ptr @ab8500_usb_regulator_enable._entry, ptr @ab8500_usb_regulator_enable._entry.101, ptr @ab8500_usb_regulator_enable._entry.87, ptr @ab8500_usb_regulator_enable._entry.90, ptr @ab8500_usb_regulator_enable._entry.93, ptr @ab8500_usb_regulator_enable._entry.95, ptr @ab8500_usb_regulator_enable._entry.98, ptr @ab8500_usb_regulator_enable._entry_ptr, ptr @ab8500_usb_regulator_enable._entry_ptr.100, ptr @ab8500_usb_regulator_enable._entry_ptr.103, ptr @ab8500_usb_regulator_enable._entry_ptr.89, ptr @ab8500_usb_regulator_enable._entry_ptr.92, ptr @ab8500_usb_regulator_enable._entry_ptr.94, ptr @ab8500_usb_regulator_enable._entry_ptr.97, ptr @ab8500_usb_regulator_get._entry, ptr @ab8500_usb_regulator_get._entry.33, ptr @ab8500_usb_regulator_get._entry.37, ptr @ab8500_usb_regulator_get._entry_ptr, ptr @ab8500_usb_regulator_get._entry_ptr.35, ptr @ab8500_usb_regulator_get._entry_ptr.39, ptr @ab8500_usb_set_ab8500_tuning_values._entry, ptr @ab8500_usb_set_ab8500_tuning_values._entry.56, ptr @ab8500_usb_set_ab8500_tuning_values._entry.59, ptr @ab8500_usb_set_ab8500_tuning_values._entry.62, ptr @ab8500_usb_set_ab8500_tuning_values._entry.65, ptr @ab8500_usb_set_ab8500_tuning_values._entry_ptr, ptr @ab8500_usb_set_ab8500_tuning_values._entry_ptr.58, ptr @ab8500_usb_set_ab8500_tuning_values._entry_ptr.61, ptr @ab8500_usb_set_ab8500_tuning_values._entry_ptr.64, ptr @ab8500_usb_set_ab8500_tuning_values._entry_ptr.67, ptr @ab8500_usb_set_ab8505_tuning_values._entry, ptr @ab8500_usb_set_ab8505_tuning_values._entry.69, ptr @ab8500_usb_set_ab8505_tuning_values._entry.71, ptr @ab8500_usb_set_ab8505_tuning_values._entry.73, ptr @ab8500_usb_set_ab8505_tuning_values._entry.75, ptr @ab8500_usb_set_ab8505_tuning_values._entry_ptr, ptr @ab8500_usb_set_ab8505_tuning_values._entry_ptr.70, ptr @ab8500_usb_set_ab8505_tuning_values._entry_ptr.72, ptr @ab8500_usb_set_ab8505_tuning_values._entry_ptr.74, ptr @ab8500_usb_set_ab8505_tuning_values._entry_ptr.76, ptr @ab8500_usb_driver, ptr @.str, ptr @ab8500_usb_devtype, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ab8500_usb_probe.__key, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.68, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.91, ptr @.str.96, ptr @.str.99, ptr @.str.102, ptr @.str.104, ptr @.str.105], section "llvm.metadata"
@0 = internal global [95 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_usb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_usb_devtype to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_usb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_usb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_usb_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_usb_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_usb_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_usb_phy_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_usb_regulator_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_usb_regulator_disable._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_usb_regulator_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_usb_regulator_get._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_usb_regulator_get._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_usb_irq_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_usb_irq_setup._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_usb_irq_setup._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_usb_set_ab8500_tuning_values._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_usb_set_ab8500_tuning_values._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_usb_set_ab8500_tuning_values._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_usb_set_ab8500_tuning_values._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_usb_set_ab8500_tuning_values._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_usb_set_ab8505_tuning_values._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_usb_set_ab8505_tuning_values._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_usb_set_ab8505_tuning_values._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_usb_set_ab8505_tuning_values._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_usb_set_ab8505_tuning_values._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_usb_phy_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_usb_phy_enable._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_usb_regulator_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_usb_regulator_enable._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_usb_regulator_enable._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_usb_regulator_enable._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_usb_regulator_enable._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_usb_regulator_enable._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_usb_regulator_enable._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_usb_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ab8500_usb_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ab8500_usb_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @ab8500_usb_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_usb_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %call2 = tail call i32 @abx500_get_chip_id(ptr noundef %dev) #6
  %version.i.i = getelementptr inbounds %struct.ab8500, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.not.i = icmp eq i32 %5, 0
  br i1 %cmp.i.not.i, label %is_ab8500_1p1_or_earlier.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

is_ab8500_1p1_or_earlier.exit:                    ; preds = %entry
  %chip_id.i = getelementptr inbounds %struct.ab8500, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %7)
  %cmp.i = icmp ugt i8 %7, 17
  br i1 %cmp.i, label %is_ab8500_1p1_or_earlier.exit.if.end_crit_edge, label %do.end

is_ab8500_1p1_or_earlier.exit.if.end_crit_edge:   ; preds = %is_ab8500_1p1_or_earlier.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %is_ab8500_1p1_or_earlier.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call2) #9
  br label %cleanup

if.end:                                           ; preds = %is_ab8500_1p1_or_earlier.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 360, i32 noundef 3520) #6
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call.i161 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #6
  %tobool12.not = icmp eq ptr %call.i161, null
  br i1 %tobool12.not, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %dev16 = getelementptr inbounds %struct.ab8500_usb, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %dev16 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %dev16, align 4
  %ab850017 = getelementptr inbounds %struct.ab8500_usb, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %ab850017 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %3, ptr %ab850017, align 4
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %call.i, align 4
  %otg21 = getelementptr inbounds %struct.usb_phy, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %otg21 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i161, ptr %otg21, align 4
  %label = getelementptr inbounds %struct.usb_phy, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %label to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.6, ptr %label, align 4
  %set_suspend = getelementptr inbounds %struct.usb_phy, ptr %call.i, i32 0, i32 26
  %13 = ptrtoint ptr %set_suspend to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @ab8500_usb_set_suspend, ptr %set_suspend, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %call.i161, i32 0, i32 5
  %14 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %state, align 4
  %usb_phy = getelementptr inbounds %struct.usb_otg, ptr %call.i161, i32 0, i32 2
  %15 = ptrtoint ptr %usb_phy to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %usb_phy, align 4
  %set_host = getelementptr inbounds %struct.usb_otg, ptr %call.i161, i32 0, i32 6
  %16 = ptrtoint ptr %set_host to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ab8500_usb_set_host, ptr %set_host, align 4
  %set_peripheral = getelementptr inbounds %struct.usb_otg, ptr %call.i161, i32 0, i32 7
  %17 = ptrtoint ptr %set_peripheral to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ab8500_usb_set_peripheral, ptr %set_peripheral, align 4
  %18 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %switch = icmp ult i32 %19, 2
  br i1 %switch, label %if.end38.sink.split, label %if.end14.if.end38_crit_edge

if.end14.if.end38_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.end38.sink.split:                              ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.ab8500_usb, ptr %call.i, i32 0, i32 15
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %or36 = or i32 %21, 23
  store i32 %or36, ptr %flags, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.end38.sink.split, %if.end14.if.end38_crit_edge
  %22 = ptrtoint ptr %ab850017 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ab850017, align 4
  %version.i.i166 = getelementptr inbounds %struct.ab8500, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %version.i.i166 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %version.i.i166, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i.not.i167 = icmp eq i32 %25, 0
  br i1 %cmp.i.not.i167, label %is_ab8500_2p0_or_earlier.exit, label %if.end38.if.end44_crit_edge

if.end38.if.end44_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

is_ab8500_2p0_or_earlier.exit:                    ; preds = %if.end38
  %chip_id.i168 = getelementptr inbounds %struct.ab8500, ptr %23, i32 0, i32 7
  %26 = ptrtoint ptr %chip_id.i168 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %chip_id.i168, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %27)
  %cmp.i169 = icmp ugt i8 %27, 32
  br i1 %cmp.i169, label %is_ab8500_2p0_or_earlier.exit.if.end44_crit_edge, label %if.then42

is_ab8500_2p0_or_earlier.exit.if.end44_crit_edge: ; preds = %is_ab8500_2p0_or_earlier.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then42:                                        ; preds = %is_ab8500_2p0_or_earlier.exit
  call void @__sanitizer_cov_trace_pc() #8
  %flags43 = getelementptr inbounds %struct.ab8500_usb, ptr %call.i, i32 0, i32 15
  %28 = ptrtoint ptr %flags43 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags43, align 4
  %and = and i32 %29, -17
  store i32 %and, ptr %flags43, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %is_ab8500_2p0_or_earlier.exit.if.end44_crit_edge, %if.end38.if.end44_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %30 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %phy_dis_work = getelementptr inbounds %struct.ab8500_usb, ptr %call.i, i32 0, i32 4
  tail call void @__init_work(ptr noundef %phy_dis_work, i32 noundef 0) #6
  %31 = ptrtoint ptr %phy_dis_work to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -64, ptr %phy_dis_work, align 4
  %lockdep_map = getelementptr inbounds %struct.ab8500_usb, ptr %call.i, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.7, ptr noundef nonnull @ab8500_usb_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry49 = getelementptr inbounds %struct.ab8500_usb, ptr %call.i, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %entry49 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %entry49, ptr %entry49, align 4
  %prev.i = getelementptr inbounds %struct.ab8500_usb, ptr %call.i, i32 0, i32 4, i32 1, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %entry49, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ab8500_usb, ptr %call.i, i32 0, i32 4, i32 2
  %34 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @ab8500_usb_phy_disable_work, ptr %func, align 4
  %35 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev16, align 4
  %call.i172 = tail call ptr @devm_regulator_get(ptr noundef %36, ptr noundef nonnull @.str.29) #6
  %v_ape.i = getelementptr inbounds %struct.ab8500_usb, ptr %call.i, i32 0, i32 7
  %37 = ptrtoint ptr %v_ape.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i172, ptr %v_ape.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i172, inttoptr (i32 -4096 to ptr)
  %38 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev16, align 4
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.30) #9
  br label %ab8500_usb_regulator_get.exit

if.end.i:                                         ; preds = %if.end44
  %call7.i = tail call ptr @devm_regulator_get(ptr noundef %39, ptr noundef nonnull @.str.32) #6
  %v_ulpi.i = getelementptr inbounds %struct.ab8500_usb, ptr %call.i, i32 0, i32 9
  %40 = ptrtoint ptr %v_ulpi.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call7.i, ptr %v_ulpi.i, align 4
  %cmp.i46.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  %41 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev16, align 4
  br i1 %cmp.i46.i, label %do.end13.i, label %if.end17.i

do.end13.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.34) #9
  br label %ab8500_usb_regulator_get.exit

if.end17.i:                                       ; preds = %if.end.i
  %call19.i = tail call ptr @devm_regulator_get(ptr noundef %42, ptr noundef nonnull @.str.36) #6
  %v_musb.i = getelementptr inbounds %struct.ab8500_usb, ptr %call.i, i32 0, i32 8
  %43 = ptrtoint ptr %v_musb.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call19.i, ptr %v_musb.i, align 4
  %cmp.i47.i = icmp ugt ptr %call19.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i47.i, label %do.end25.i, label %if.end17.i.if.end56_crit_edge

if.end17.i.if.end56_crit_edge:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

do.end25.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.38) #9
  br label %ab8500_usb_regulator_get.exit

ab8500_usb_regulator_get.exit:                    ; preds = %do.end25.i, %do.end13.i, %do.end.i
  %v_musb.sink.i = phi ptr [ %v_musb.i, %do.end25.i ], [ %v_ulpi.i, %do.end13.i ], [ %v_ape.i, %do.end.i ]
  %46 = ptrtoint ptr %v_musb.sink.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %v_musb.sink.i, align 4
  %48 = ptrtoint ptr %47 to i32
  %tobool54.not = icmp eq ptr %47, null
  br i1 %tobool54.not, label %ab8500_usb_regulator_get.exit.if.end56_crit_edge, label %ab8500_usb_regulator_get.exit.cleanup_crit_edge

ab8500_usb_regulator_get.exit.cleanup_crit_edge:  ; preds = %ab8500_usb_regulator_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

ab8500_usb_regulator_get.exit.if.end56_crit_edge: ; preds = %ab8500_usb_regulator_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.end56:                                         ; preds = %ab8500_usb_regulator_get.exit.if.end56_crit_edge, %if.end17.i.if.end56_crit_edge
  %49 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev16, align 4
  %call58 = tail call ptr @devm_clk_get(ptr noundef %50, ptr noundef nonnull @.str.8) #6
  %sysclk = getelementptr inbounds %struct.ab8500_usb, ptr %call.i, i32 0, i32 6
  %51 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call58, ptr %sysclk, align 4
  %cmp.i173 = icmp ugt ptr %call58, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i173, label %do.end64, label %if.end68

do.end64:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.10) #9
  %54 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sysclk, align 4
  %56 = ptrtoint ptr %55 to i32
  br label %cleanup

if.end68:                                         ; preds = %if.end56
  %flags.i = getelementptr inbounds %struct.ab8500_usb, ptr %call.i, i32 0, i32 15
  %57 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end68.if.end7.i_crit_edge, label %if.then.i

if.end68.if.end7.i_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.then.i:                                        ; preds = %if.end68
  %call.i174 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.40) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i174)
  %cmp.i175 = icmp slt i32 %call.i174, 0
  br i1 %cmp.i175, label %if.then.i.cleanup_crit_edge, label %if.end.i177

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i177:                                      ; preds = %if.then.i
  %call2.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call.i174, ptr noundef null, ptr noundef nonnull @ab8500_usb_link_status_irq, i32 noundef 24704, ptr noundef nonnull @.str.41, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i177.cleanup.sink.split.i178_crit_edge, label %if.end.i177.if.end7.i_crit_edge

if.end.i177.if.end7.i_crit_edge:                  ; preds = %if.end.i177
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.end.i177.cleanup.sink.split.i178_crit_edge:    ; preds = %if.end.i177
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i178

if.end7.i:                                        ; preds = %if.end.i177.if.end7.i_crit_edge, %if.end68.if.end7.i_crit_edge
  %59 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags.i, align 4
  %and9.i = and i32 %60, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end7.i.if.end25.i_crit_edge, label %if.then11.i

if.end7.i.if.end25.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.i

if.then11.i:                                      ; preds = %if.end7.i
  %call12.i = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.44) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.then11.i.cleanup_crit_edge, label %if.end15.i

if.then11.i.cleanup_crit_edge:                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15.i:                                       ; preds = %if.then11.i
  %call17.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call12.i, ptr noundef null, ptr noundef nonnull @ab8500_usb_disconnect_irq, i32 noundef 24704, ptr noundef nonnull @.str.45, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp slt i32 %call17.i, 0
  br i1 %cmp18.i, label %if.end15.i.cleanup.sink.split.i178_crit_edge, label %if.end15.i.if.end25.i_crit_edge

if.end15.i.if.end25.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.i

if.end15.i.cleanup.sink.split.i178_crit_edge:     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i178

if.end25.i:                                       ; preds = %if.end15.i.if.end25.i_crit_edge, %if.end7.i.if.end25.i_crit_edge
  %61 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags.i, align 4
  %and27.i = and i32 %62, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.end25.i.if.end71_crit_edge, label %if.then29.i

if.end25.i.if.end71_crit_edge:                    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.then29.i:                                      ; preds = %if.end25.i
  %call30.i = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.49) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp31.i = icmp slt i32 %call30.i, 0
  br i1 %cmp31.i, label %if.then29.i.cleanup_crit_edge, label %if.end33.i

if.then29.i.cleanup_crit_edge:                    ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33.i:                                       ; preds = %if.then29.i
  %call35.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call30.i, ptr noundef null, ptr noundef nonnull @ab8500_usb_disconnect_irq, i32 noundef 24704, ptr noundef nonnull @.str.50, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %cmp36.i = icmp slt i32 %call35.i, 0
  br i1 %cmp36.i, label %if.end33.i.cleanup.sink.split.i178_crit_edge, label %if.end33.i.if.end71_crit_edge

if.end33.i.if.end71_crit_edge:                    ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.end33.i.cleanup.sink.split.i178_crit_edge:     ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i178

cleanup.sink.split.i178:                          ; preds = %if.end33.i.cleanup.sink.split.i178_crit_edge, %if.end15.i.cleanup.sink.split.i178_crit_edge, %if.end.i177.cleanup.sink.split.i178_crit_edge
  %.str.52.sink.i = phi ptr [ @.str.42, %if.end.i177.cleanup.sink.split.i178_crit_edge ], [ @.str.47, %if.end15.i.cleanup.sink.split.i178_crit_edge ], [ @.str.52, %if.end33.i.cleanup.sink.split.i178_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call2.i, %if.end.i177.cleanup.sink.split.i178_crit_edge ], [ %call17.i, %if.end15.i.cleanup.sink.split.i178_crit_edge ], [ %call35.i, %if.end33.i.cleanup.sink.split.i178_crit_edge ]
  %63 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull %.str.52.sink.i) #9
  br label %cleanup

if.end71:                                         ; preds = %if.end33.i.if.end71_crit_edge, %if.end25.i.if.end71_crit_edge
  %call73 = tail call i32 @usb_add_phy(ptr noundef nonnull %call.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end80, label %do.end78

do.end78:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end80:                                         ; preds = %if.end71
  %65 = ptrtoint ptr %ab850017 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ab850017, align 4
  %version.i180 = getelementptr inbounds %struct.ab8500, ptr %66, i32 0, i32 6
  %67 = ptrtoint ptr %version.i180 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %version.i180, align 4
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values)
  switch i32 %68, label %if.end80.if.end94_crit_edge [
    i32 0, label %is_ab8500_2p0_or_earlier.exit189
    i32 1, label %if.then92
  ]

if.end80.if.end94_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94

is_ab8500_2p0_or_earlier.exit189:                 ; preds = %if.end80
  %chip_id.i185 = getelementptr inbounds %struct.ab8500, ptr %66, i32 0, i32 7
  %70 = ptrtoint ptr %chip_id.i185 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %chip_id.i185, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %71)
  %cmp.i186 = icmp ugt i8 %71, 32
  br i1 %cmp.i186, label %if.then87, label %is_ab8500_2p0_or_earlier.exit189.if.end94_crit_edge

is_ab8500_2p0_or_earlier.exit189.if.end94_crit_edge: ; preds = %is_ab8500_2p0_or_earlier.exit189
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94

if.then87:                                        ; preds = %is_ab8500_2p0_or_earlier.exit189
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @ab8500_usb_set_ab8500_tuning_values(ptr noundef nonnull %call.i)
  br label %if.end94

if.then92:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @ab8500_usb_set_ab8505_tuning_values(ptr noundef nonnull %call.i)
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %if.then87, %is_ab8500_2p0_or_earlier.exit189.if.end94_crit_edge, %if.end80.if.end94_crit_edge
  tail call fastcc void @ab8500_usb_wd_workaround(ptr noundef nonnull %call.i)
  tail call fastcc void @ab8500_usb_restart_phy(ptr noundef nonnull %call.i)
  tail call fastcc void @abx500_usb_link_status_update(ptr noundef nonnull %call.i)
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %do.end78, %cleanup.sink.split.i178, %if.then29.i.cleanup_crit_edge, %if.then11.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %do.end64, %ab8500_usb_regulator_get.exit.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %56, %do.end64 ], [ %call73, %do.end78 ], [ 0, %if.end94 ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end9.cleanup_crit_edge ], [ %48, %ab8500_usb_regulator_get.exit.cleanup_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i178 ], [ %call30.i, %if.then29.i.cleanup_crit_edge ], [ %call12.i, %if.then11.i.cleanup_crit_edge ], [ %call.i174, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_usb_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %phy_dis_work = getelementptr inbounds %struct.ab8500_usb, ptr %1, i32 0, i32 4
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %phy_dis_work) #6
  tail call void @usb_remove_phy(ptr noundef %1) #6
  %mode = getelementptr inbounds %struct.ab8500_usb, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %3, label %entry.if.end5_crit_edge [
    i32 2, label %entry.if.end5.sink.split_crit_edge
    i32 1, label %if.then4
  ]

entry.if.end5.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.sink.split

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.sink.split

if.end5.sink.split:                               ; preds = %if.then4, %entry.if.end5.sink.split_crit_edge
  %.sink = phi i1 [ false, %if.then4 ], [ true, %entry.if.end5.sink.split_crit_edge ]
  tail call fastcc void @ab8500_usb_phy_disable(ptr noundef %1, i1 noundef zeroext %.sink)
  br label %if.end5

if.end5:                                          ; preds = %if.end5.sink.split, %entry.if.end5_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_get_chip_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ab8500_usb_set_suspend(ptr nocapture noundef readnone %x, i32 noundef %suspend) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_usb_set_host(ptr noundef readonly %otg, ptr noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %otg, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %usb_phy = getelementptr inbounds %struct.usb_otg, ptr %otg, i32 0, i32 2
  %0 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_phy, align 4
  %otg1 = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %otg1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %otg1, align 4
  %host2 = getelementptr inbounds %struct.usb_otg, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %host2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %host, ptr %host2, align 4
  %mode = getelementptr inbounds %struct.ab8500_usb, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp ne i32 %6, 0
  %tobool3.not = icmp eq ptr %host, null
  %or.cond = and i1 %tobool3.not, %cmp.not
  br i1 %or.cond, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %mode, align 4
  %phy_dis_work = getelementptr inbounds %struct.ab8500_usb, ptr %1, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %phy_dis_work) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_usb_set_peripheral(ptr noundef readonly %otg, ptr noundef %gadget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %otg, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %usb_phy = getelementptr inbounds %struct.usb_otg, ptr %otg, i32 0, i32 2
  %0 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_phy, align 4
  %otg1 = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %otg1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %otg1, align 4
  %gadget2 = getelementptr inbounds %struct.usb_otg, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %gadget2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %gadget, ptr %gadget2, align 4
  %mode = getelementptr inbounds %struct.ab8500_usb, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp ne i32 %6, 0
  %tobool3.not = icmp eq ptr %gadget, null
  %or.cond = and i1 %tobool3.not, %cmp.not
  br i1 %or.cond, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %mode, align 4
  %phy_dis_work = getelementptr inbounds %struct.ab8500_usb, ptr %1, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %phy_dis_work) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ab8500_usb_phy_disable_work(ptr nocapture noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -272
  %otg = getelementptr i8, ptr %work, i32 -252
  %0 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %otg, align 4
  %host = getelementptr inbounds %struct.usb_otg, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @ab8500_usb_phy_disable(ptr noundef %add.ptr, i1 noundef zeroext true)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %otg, align 4
  %gadget = getelementptr inbounds %struct.usb_otg, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gadget, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @ab8500_usb_phy_disable(ptr noundef %add.ptr, i1 noundef zeroext false)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_phy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ab8500_usb_set_ab8500_tuning_values(ptr nocapture noundef readonly %ab) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call i32 @abx500_set_register_interruptible(ptr noundef %1, i8 noundef zeroext 17, i8 noundef zeroext 0, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.54, i32 noundef %call) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call3 = tail call i32 @abx500_set_register_interruptible(ptr noundef %5, i8 noundef zeroext 18, i8 noundef zeroext 5, i8 noundef zeroext -56) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end8, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.57, i32 noundef %call3) #9
  br label %if.end10

if.end10:                                         ; preds = %do.end8, %if.end.if.end10_crit_edge
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call12 = tail call i32 @abx500_set_register_interruptible(ptr noundef %9, i8 noundef zeroext 18, i8 noundef zeroext 6, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.end17, label %if.end10.if.end19_crit_edge

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.60, i32 noundef %call12) #9
  br label %if.end19

if.end19:                                         ; preds = %do.end17, %if.end10.if.end19_crit_edge
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %call21 = tail call i32 @abx500_set_register_interruptible(ptr noundef %13, i8 noundef zeroext 18, i8 noundef zeroext 7, i8 noundef zeroext 120) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %do.end26, label %if.end19.if.end28_crit_edge

if.end19.if.end28_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

do.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.63, i32 noundef %call21) #9
  br label %if.end28

if.end28:                                         ; preds = %do.end26, %if.end19.if.end28_crit_edge
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %call30 = tail call i32 @abx500_set_register_interruptible(ptr noundef %17, i8 noundef zeroext 17, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %do.end35, label %if.end28.if.end37_crit_edge

if.end28.if.end37_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.66, i32 noundef %call30) #9
  br label %if.end37

if.end37:                                         ; preds = %do.end35, %if.end28.if.end37_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ab8500_usb_set_ab8505_tuning_values(ptr nocapture noundef readonly %ab) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %1, i8 noundef zeroext 17, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.54, i32 noundef %call) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call3 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %5, i8 noundef zeroext 18, i8 noundef zeroext 5, i8 noundef zeroext -56, i8 noundef zeroext -56) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end8, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.57, i32 noundef %call3) #9
  br label %if.end10

if.end10:                                         ; preds = %do.end8, %if.end.if.end10_crit_edge
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call12 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %9, i8 noundef zeroext 18, i8 noundef zeroext 6, i8 noundef zeroext 96, i8 noundef zeroext 96) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.end17, label %if.end10.if.end19_crit_edge

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.60, i32 noundef %call12) #9
  br label %if.end19

if.end19:                                         ; preds = %do.end17, %if.end10.if.end19_crit_edge
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %call21 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %13, i8 noundef zeroext 18, i8 noundef zeroext 7, i8 noundef zeroext -4, i8 noundef zeroext -128) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %do.end26, label %if.end19.if.end28_crit_edge

if.end19.if.end28_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

do.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.63, i32 noundef %call21) #9
  br label %if.end28

if.end28:                                         ; preds = %do.end26, %if.end19.if.end28_crit_edge
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %call30 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %17, i8 noundef zeroext 17, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %do.end35, label %if.end28.if.end37_crit_edge

if.end28.if.end37_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.66, i32 noundef %call30) #9
  br label %if.end37

if.end37:                                         ; preds = %do.end35, %if.end28.if.end37_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ab8500_usb_wd_workaround(ptr nocapture noundef readonly %ab) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call i32 @abx500_set_register_interruptible(ptr noundef %1, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 21474800) #6
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %call2 = tail call i32 @abx500_set_register_interruptible(ptr noundef %4, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 3) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 21474800) #6
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call4 = tail call i32 @abx500_set_register_interruptible(ptr noundef %7, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ab8500_usb_restart_phy(ptr nocapture noundef readonly %ab) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %1, i8 noundef zeroext 5, i8 noundef zeroext -118, i8 noundef zeroext 2, i8 noundef zeroext 2) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 21474800) #6
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %call2 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %4, i8 noundef zeroext 5, i8 noundef zeroext -118, i8 noundef zeroext 2, i8 noundef zeroext 0) #6
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %call4 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %6, i8 noundef zeroext 5, i8 noundef zeroext -118, i8 noundef zeroext 1, i8 noundef zeroext 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 21474800) #6
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call6 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %9, i8 noundef zeroext 5, i8 noundef zeroext -118, i8 noundef zeroext 1, i8 noundef zeroext 0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @abx500_usb_link_status_update(ptr noundef %ab) unnamed_addr #2 align 64 {
entry:
  %reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #6
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reg, align 1, !annotation !202
  %ab8500 = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 2
  %1 = ptrtoint ptr %ab8500 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ab8500, align 4
  %version.i = getelementptr inbounds %struct.ab8500, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %version.i, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %4, label %entry.cleanup24_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then7
  ]

entry.cleanup24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup24

if.then:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call1 = call i32 @abx500_get_register_interruptible(ptr noundef %7, i8 noundef zeroext 5, i8 noundef zeroext -128, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then.cleanup24_crit_edge, label %if.end

if.then.cleanup24_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup24

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %reg, align 1
  %10 = lshr i8 %9, 3
  %11 = and i8 %10, 15
  %and = zext i8 %11 to i32
  call fastcc void @ab8500_usb_link_status_update(ptr noundef %ab, i32 noundef %and)
  br label %cleanup24

if.then7:                                         ; preds = %entry
  %dev9 = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 1
  %12 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev9, align 4
  %call10 = call i32 @abx500_get_register_interruptible(ptr noundef %13, i8 noundef zeroext 5, i8 noundef zeroext -108, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then7.cleanup24_crit_edge, label %if.end14

if.then7.cleanup24_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup24

if.end14:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %reg, align 1
  %16 = lshr i8 %15, 3
  %17 = zext i8 %16 to i32
  call fastcc void @ab8505_usb_link_status_update(ptr noundef %ab, i32 noundef %17)
  br label %cleanup24

cleanup24:                                        ; preds = %if.end14, %if.then7.cleanup24_crit_edge, %if.end, %if.then.cleanup24_crit_edge, %entry.cleanup24_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ab8500_usb_phy_disable(ptr nocapture noundef %ab, i1 noundef zeroext %sel_host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = select i1 %sel_host, i8 1, i8 2
  %ab8500.i = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 2
  %0 = ptrtoint ptr %ab8500.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ab8500.i, align 4
  %version.i.i.i = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %version.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %version.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not.i.i = icmp eq i32 %3, 0
  br i1 %cmp.i.not.i.i, label %is_ab8500_2p0.exit.i, label %entry.ab8500_usb_wd_linkstatus.exit_crit_edge

entry.ab8500_usb_wd_linkstatus.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ab8500_usb_wd_linkstatus.exit

is_ab8500_2p0.exit.i:                             ; preds = %entry
  %chip_id.i.i = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chip_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %5)
  %cmp.i.not.i = icmp eq i8 %5, 32
  br i1 %cmp.i.not.i, label %if.then.i, label %is_ab8500_2p0.exit.i.ab8500_usb_wd_linkstatus.exit_crit_edge

is_ab8500_2p0.exit.i.ab8500_usb_wd_linkstatus.exit_crit_edge: ; preds = %is_ab8500_2p0.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ab8500_usb_wd_linkstatus.exit

if.then.i:                                        ; preds = %is_ab8500_2p0.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 1
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %call1.i = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %7, i8 noundef zeroext 5, i8 noundef zeroext -118, i8 noundef zeroext %conv, i8 noundef zeroext %conv) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 21474800) #6
  br label %ab8500_usb_wd_linkstatus.exit

ab8500_usb_wd_linkstatus.exit:                    ; preds = %if.then.i, %is_ab8500_2p0.exit.i.ab8500_usb_wd_linkstatus.exit_crit_edge, %entry.ab8500_usb_wd_linkstatus.exit_crit_edge
  %dev = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %call = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %10, i8 noundef zeroext 5, i8 noundef zeroext -118, i8 noundef zeroext %conv, i8 noundef zeroext 0) #6
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @abx500_set_register_interruptible(ptr noundef %12, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 21474800) #6
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %call2.i = tail call i32 @abx500_set_register_interruptible(ptr noundef %15, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 3) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 21474800) #6
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %call4.i = tail call i32 @abx500_set_register_interruptible(ptr noundef %18, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 0) #6
  %sysclk = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 6
  %19 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sysclk, align 4
  tail call void @clk_disable(ptr noundef %20) #6
  tail call void @clk_unprepare(ptr noundef %20) #6
  %v_musb.i = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 8
  %21 = ptrtoint ptr %v_musb.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %v_musb.i, align 4
  %call.i42 = tail call i32 @regulator_disable(ptr noundef %22) #6
  %v_ulpi.i = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 9
  %23 = ptrtoint ptr %v_ulpi.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %v_ulpi.i, align 4
  %call1.i43 = tail call i32 @regulator_disable(ptr noundef %24) #6
  %flags.i = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 15
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %26, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %ab8500_usb_wd_linkstatus.exit.ab8500_usb_regulator_disable.exit_crit_edge, label %if.then.i44

ab8500_usb_wd_linkstatus.exit.ab8500_usb_regulator_disable.exit_crit_edge: ; preds = %ab8500_usb_wd_linkstatus.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ab8500_usb_regulator_disable.exit

if.then.i44:                                      ; preds = %ab8500_usb_wd_linkstatus.exit
  %saved_v_ulpi.i = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 10
  %27 = ptrtoint ptr %saved_v_ulpi.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %saved_v_ulpi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i = icmp sgt i32 %28, 0
  br i1 %cmp.i, label %if.then2.i, label %if.then.i44.if.end10.i_crit_edge

if.then.i44.if.end10.i_crit_edge:                 ; preds = %if.then.i44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.then2.i:                                       ; preds = %if.then.i44
  %29 = ptrtoint ptr %v_ulpi.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %v_ulpi.i, align 4
  %call6.i = tail call i32 @regulator_set_voltage(ptr noundef %30, i32 noundef %28, i32 noundef %28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %do.end.i, label %if.then2.i.if.end10.i_crit_edge

if.then2.i.if.end10.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

do.end.i:                                         ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  %33 = ptrtoint ptr %saved_v_ulpi.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %saved_v_ulpi.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.24, i32 noundef %34, i32 noundef %call6.i) #9
  br label %if.end10.i

if.end10.i:                                       ; preds = %do.end.i, %if.then2.i.if.end10.i_crit_edge, %if.then.i44.if.end10.i_crit_edge
  %35 = ptrtoint ptr %v_ulpi.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %v_ulpi.i, align 4
  %call12.i = tail call i32 @regulator_set_load(ptr noundef %36, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %do.end17.i, label %if.end10.i.ab8500_usb_regulator_disable.exit_crit_edge

if.end10.i.ab8500_usb_regulator_disable.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ab8500_usb_regulator_disable.exit

do.end17.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.27, i32 noundef %call12.i) #9
  br label %ab8500_usb_regulator_disable.exit

ab8500_usb_regulator_disable.exit:                ; preds = %do.end17.i, %if.end10.i.ab8500_usb_regulator_disable.exit_crit_edge, %ab8500_usb_wd_linkstatus.exit.ab8500_usb_regulator_disable.exit_crit_edge
  %v_ape.i = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 7
  %39 = ptrtoint ptr %v_ape.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %v_ape.i, align 4
  %call21.i = tail call i32 @regulator_disable(ptr noundef %40) #6
  %pinctrl = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 12
  %41 = ptrtoint ptr %pinctrl to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pinctrl, align 4
  %cmp.i46 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i46, label %ab8500_usb_regulator_disable.exit.if.end26_crit_edge, label %if.then

ab8500_usb_regulator_disable.exit.if.end26_crit_edge: ; preds = %ab8500_usb_regulator_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then:                                          ; preds = %ab8500_usb_regulator_disable.exit
  %call3 = tail call ptr @pinctrl_lookup_state(ptr noundef %42, ptr noundef nonnull @.str.19) #6
  %pins_sleep = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 13
  %43 = ptrtoint ptr %pins_sleep to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call3, ptr %pins_sleep, align 4
  %cmp.i47 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i47, label %do.body, label %if.else

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_usb_phy_disable.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ab8500_usb_phy_disable, %if.then12)) #6
          to label %if.end24 [label %if.then12], !srcloc !203

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_usb_phy_disable.__UNIQUE_ID_ddebug293, ptr noundef %45, ptr noundef nonnull @.str.22) #6
  br label %if.end24

if.else:                                          ; preds = %if.then
  %46 = ptrtoint ptr %pinctrl to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pinctrl, align 4
  %call16 = tail call i32 @pinctrl_select_state(ptr noundef %47, ptr noundef %call3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.else.if.end24_crit_edge, label %do.end21

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

do.end21:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.23) #9
  br label %if.end24

if.end24:                                         ; preds = %do.end21, %if.else.if.end24_crit_edge, %if.then12, %do.body
  %50 = ptrtoint ptr %pinctrl to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pinctrl, align 4
  tail call void @pinctrl_put(ptr noundef %51) #6
  br label %if.end26

if.end26:                                         ; preds = %if.end24, %ab8500_usb_regulator_disable.exit.if.end26_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_mask_and_set_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_load(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_usb_link_status_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @abx500_usb_link_status_update(ptr noundef %data)
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_usb_disconnect_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.ab8500_usb, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %1, label %entry.if.end20_crit_edge [
    i32 2, label %if.end20.thread
    i32 1, label %if.then6
  ]

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.end20.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %otg = getelementptr inbounds %struct.usb_phy, ptr %data, i32 0, i32 5
  %3 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %otg, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %4, align 4
  %vbus_draw = getelementptr inbounds %struct.ab8500_usb, ptr %data, i32 0, i32 3
  %6 = ptrtoint ptr %vbus_draw to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %vbus_draw, align 4
  %notifier = getelementptr inbounds %struct.usb_phy, ptr %data, i32 0, i32 18
  %call = tail call i32 @atomic_notifier_call_chain(ptr noundef %notifier, i32 noundef 0, ptr noundef %vbus_draw) #6
  br label %if.end25.sink.split

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %notifier8 = getelementptr inbounds %struct.usb_phy, ptr %data, i32 0, i32 18
  %vbus_draw9 = getelementptr inbounds %struct.ab8500_usb, ptr %data, i32 0, i32 3
  %call10 = tail call i32 @atomic_notifier_call_chain(ptr noundef %notifier8, i32 noundef 0, ptr noundef %vbus_draw9) #6
  tail call fastcc void @ab8500_usb_phy_disable(ptr noundef %data, i1 noundef zeroext false)
  %call14 = tail call i32 @atomic_notifier_call_chain(ptr noundef %notifier8, i32 noundef 9, ptr noundef %vbus_draw9) #6
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %mode, align 4
  %otg17 = getelementptr inbounds %struct.usb_phy, ptr %data, i32 0, i32 5
  %8 = ptrtoint ptr %otg17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %otg17, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %9, align 4
  %11 = ptrtoint ptr %vbus_draw9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %vbus_draw9, align 4
  %.pr = load i32, ptr %mode, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then6, %entry.if.end20_crit_edge
  %12 = phi i32 [ %.pr, %if.then6 ], [ %1, %entry.if.end20_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp22 = icmp eq i32 %12, 4
  br i1 %cmp22, label %if.end20.if.end25.sink.split_crit_edge, label %if.end20.if.end25_crit_edge

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.end20.if.end25.sink.split_crit_edge:           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.sink.split

if.end25.sink.split:                              ; preds = %if.end20.if.end25.sink.split_crit_edge, %if.end20.thread
  %.sink = phi i1 [ true, %if.end20.thread ], [ false, %if.end20.if.end25.sink.split_crit_edge ]
  tail call fastcc void @ab8500_usb_phy_disable(ptr noundef %data, i1 noundef zeroext %.sink)
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %mode, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.end25.sink.split, %if.end20.if.end25_crit_edge
  %ab8500 = getelementptr inbounds %struct.ab8500_usb, ptr %data, i32 0, i32 2
  %14 = ptrtoint ptr %ab8500 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ab8500, align 4
  %version.i.i = getelementptr inbounds %struct.ab8500, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i.not.i = icmp eq i32 %17, 0
  br i1 %cmp.i.not.i, label %is_ab8500_2p0.exit, label %if.end25.if.end33_crit_edge

if.end25.if.end33_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

is_ab8500_2p0.exit:                               ; preds = %if.end25
  %chip_id.i = getelementptr inbounds %struct.ab8500, ptr %15, i32 0, i32 7
  %18 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %19)
  %cmp.i.not = icmp eq i8 %19, 32
  br i1 %cmp.i.not, label %if.then27, label %is_ab8500_2p0.exit.if.end33_crit_edge

is_ab8500_2p0.exit.if.end33_crit_edge:            ; preds = %is_ab8500_2p0.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then27:                                        ; preds = %is_ab8500_2p0.exit
  %20 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %cmp29 = icmp eq i32 %21, 3
  br i1 %cmp29, label %is_ab8500_2p0.exit.i, label %if.then27.if.end33_crit_edge

if.then27.if.end33_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

is_ab8500_2p0.exit.i:                             ; preds = %if.then27
  %22 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %23)
  %cmp.i.not.i57 = icmp eq i8 %23, 32
  br i1 %cmp.i.not.i57, label %if.then.i, label %is_ab8500_2p0.exit.i.ab8500_usb_wd_linkstatus.exit_crit_edge

is_ab8500_2p0.exit.i.ab8500_usb_wd_linkstatus.exit_crit_edge: ; preds = %is_ab8500_2p0.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ab8500_usb_wd_linkstatus.exit

if.then.i:                                        ; preds = %is_ab8500_2p0.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.ab8500_usb, ptr %data, i32 0, i32 1
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  %call1.i = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %25, i8 noundef zeroext 5, i8 noundef zeroext -118, i8 noundef zeroext 2, i8 noundef zeroext 2) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 21474800) #6
  br label %ab8500_usb_wd_linkstatus.exit

ab8500_usb_wd_linkstatus.exit:                    ; preds = %if.then.i, %is_ab8500_2p0.exit.i.ab8500_usb_wd_linkstatus.exit_crit_edge
  %dev = getelementptr inbounds %struct.ab8500_usb, ptr %data, i32 0, i32 1
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %call31 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %28, i8 noundef zeroext 5, i8 noundef zeroext -118, i8 noundef zeroext 2, i8 noundef zeroext 0) #6
  br label %if.end33

if.end33:                                         ; preds = %ab8500_usb_wd_linkstatus.exit, %if.then27.if.end33_crit_edge, %is_ab8500_2p0.exit.if.end33_crit_edge, %if.end25.if.end33_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_set_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_get_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ab8500_usb_link_status_update(ptr noundef %ab, i32 noundef %lsts) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_usb_link_status_update.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ab8500_usb_link_status_update, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !203

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_usb_link_status_update.__UNIQUE_ID_ddebug295, ptr noundef %1, ptr noundef nonnull @.str.78, i32 noundef %lsts) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %previous_link_status_state = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 11
  %2 = ptrtoint ptr %previous_link_status_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %previous_link_status_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %3)
  %cmp = icmp eq i32 %3, 13
  %lsts.off = add i32 %lsts, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %lsts.off)
  %switch = icmp ult i32 %lsts.off, 2
  %or.cond1 = and i1 %switch, %cmp
  br i1 %or.cond1, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp8 = icmp eq i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %lsts)
  %cmp10 = icmp eq i32 %lsts, 1
  %or.cond = and i1 %cmp10, %cmp8
  br i1 %or.cond, label %if.end6.cleanup_crit_edge, label %if.end12

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %4 = ptrtoint ptr %previous_link_status_state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %lsts, ptr %previous_link_status_state, align 4
  %5 = zext i32 %lsts to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %lsts, label %if.end12.cleanup_crit_edge [
    i32 9, label %if.end12.sw.bb14_crit_edge
    i32 0, label %if.end12.sw.bb14_crit_edge3
    i32 15, label %if.end12.sw.bb14_crit_edge4
    i32 10, label %if.end12.sw.bb22_crit_edge
    i32 11, label %if.end12.sw.bb22_crit_edge5
    i32 12, label %if.end12.sw.bb22_crit_edge6
    i32 1, label %if.end12.sw.bb22_crit_edge7
    i32 2, label %if.end12.sw.bb22_crit_edge8
    i32 3, label %if.end12.sw.bb22_crit_edge9
    i32 4, label %if.end12.sw.bb22_crit_edge10
    i32 5, label %if.end12.sw.bb22_crit_edge11
    i32 6, label %if.end12.sw.bb22_crit_edge12
    i32 8, label %sw.bb35
    i32 13, label %if.end12.sw.bb36_crit_edge
    i32 7, label %sw.bb56
  ]

if.end12.sw.bb36_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb36

if.end12.sw.bb22_crit_edge12:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb22

if.end12.sw.bb22_crit_edge11:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb22

if.end12.sw.bb22_crit_edge10:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb22

if.end12.sw.bb22_crit_edge9:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb22

if.end12.sw.bb22_crit_edge8:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb22

if.end12.sw.bb22_crit_edge7:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb22

if.end12.sw.bb22_crit_edge6:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb22

if.end12.sw.bb22_crit_edge5:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb22

if.end12.sw.bb22_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb22

if.end12.sw.bb14_crit_edge4:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb14

if.end12.sw.bb14_crit_edge3:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb14

if.end12.sw.bb14_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb14

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb14:                                          ; preds = %if.end12.sw.bb14_crit_edge, %if.end12.sw.bb14_crit_edge3, %if.end12.sw.bb14_crit_edge4
  %mode = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 5
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %mode, align 4
  %otg = getelementptr inbounds %struct.usb_phy, ptr %ab, i32 0, i32 5
  %7 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %otg, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %8, align 4
  %vbus_draw = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 3
  %10 = ptrtoint ptr %vbus_draw to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %vbus_draw, align 4
  %11 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %state, align 4
  tail call void @usb_phy_set_event(ptr noundef %ab, i32 noundef 0) #6
  br label %cleanup

sw.bb22:                                          ; preds = %if.end12.sw.bb22_crit_edge, %if.end12.sw.bb22_crit_edge5, %if.end12.sw.bb22_crit_edge6, %if.end12.sw.bb22_crit_edge7, %if.end12.sw.bb22_crit_edge8, %if.end12.sw.bb22_crit_edge9, %if.end12.sw.bb22_crit_edge10, %if.end12.sw.bb22_crit_edge11, %if.end12.sw.bb22_crit_edge12
  %mode23 = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 5
  %13 = ptrtoint ptr %mode23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mode23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp24 = icmp eq i32 %14, 0
  br i1 %cmp24, label %if.then25, label %sw.bb22.cleanup_crit_edge

sw.bb22.cleanup_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then25:                                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %mode23 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %mode23, align 4
  tail call fastcc void @ab8500_usb_phy_enable(ptr noundef %ab, i1 noundef zeroext false)
  %notifier = getelementptr inbounds %struct.usb_phy, ptr %ab, i32 0, i32 18
  %vbus_draw28 = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 3
  %call29 = tail call i32 @atomic_notifier_call_chain(ptr noundef %notifier, i32 noundef 8, ptr noundef %vbus_draw28) #6
  tail call void @usb_phy_set_event(ptr noundef %ab, i32 noundef 4) #6
  br label %cleanup

sw.bb35:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb36

sw.bb36:                                          ; preds = %sw.bb35, %if.end12.sw.bb36_crit_edge
  %cmp49.not = phi i32 [ 2, %if.end12.sw.bb36_crit_edge ], [ 5, %sw.bb35 ]
  %mode37 = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 5
  %16 = ptrtoint ptr %mode37 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mode37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp38 = icmp eq i32 %17, 0
  br i1 %cmp38, label %if.then39, label %sw.bb36.if.end45_crit_edge

sw.bb36.if.end45_crit_edge:                       ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then39:                                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %mode37 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %mode37, align 4
  tail call fastcc void @ab8500_usb_phy_enable(ptr noundef %ab, i1 noundef zeroext true)
  %notifier42 = getelementptr inbounds %struct.usb_phy, ptr %ab, i32 0, i32 18
  %vbus_draw43 = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 3
  %call44 = tail call i32 @atomic_notifier_call_chain(ptr noundef %notifier42, i32 noundef 8, ptr noundef %vbus_draw43) #6
  br label %if.end45

if.end45:                                         ; preds = %if.then39, %sw.bb36.if.end45_crit_edge
  %otg47 = getelementptr inbounds %struct.usb_phy, ptr %ab, i32 0, i32 5
  %19 = ptrtoint ptr %otg47 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %otg47, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %20, align 4
  %notifier53 = getelementptr inbounds %struct.usb_phy, ptr %ab, i32 0, i32 18
  %vbus_draw54 = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 3
  %call55 = tail call i32 @atomic_notifier_call_chain(ptr noundef %notifier53, i32 noundef %cmp49.not, ptr noundef %vbus_draw54) #6
  br label %cleanup

sw.bb56:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %mode57 = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 5
  %22 = ptrtoint ptr %mode57 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3, ptr %mode57, align 4
  %notifier59 = getelementptr inbounds %struct.usb_phy, ptr %ab, i32 0, i32 18
  %vbus_draw60 = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 3
  %call61 = tail call i32 @atomic_notifier_call_chain(ptr noundef %notifier59, i32 noundef 3, ptr noundef %vbus_draw60) #6
  tail call void @usb_phy_set_event(ptr noundef %ab, i32 noundef 3) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb56, %if.end45, %if.then25, %sw.bb22.cleanup_crit_edge, %sw.bb14, %if.end12.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ab8505_usb_link_status_update(ptr noundef %ab, i32 noundef %lsts) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8505_usb_link_status_update.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ab8505_usb_link_status_update, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !203

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8505_usb_link_status_update.__UNIQUE_ID_ddebug294, ptr noundef %1, ptr noundef nonnull @.str.105, i32 noundef %lsts) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %previous_link_status_state = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 11
  %2 = ptrtoint ptr %previous_link_status_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %previous_link_status_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp = icmp eq i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %lsts)
  %cmp3 = icmp eq i32 %lsts, 1
  %or.cond = and i1 %cmp3, %cmp
  br i1 %or.cond, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %4 = ptrtoint ptr %previous_link_status_state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %lsts, ptr %previous_link_status_state, align 4
  %5 = zext i32 %lsts to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %lsts, label %if.end5.cleanup_crit_edge [
    i32 9, label %if.end5.sw.bb7_crit_edge
    i32 0, label %if.end5.sw.bb7_crit_edge2
    i32 5, label %if.end5.sw.bb7_crit_edge3
    i32 6, label %if.end5.sw.bb7_crit_edge4
    i32 11, label %if.end5.sw.bb7_crit_edge5
    i32 12, label %if.end5.sw.bb7_crit_edge6
    i32 10, label %if.end5.sw.bb15_crit_edge
    i32 1, label %if.end5.sw.bb15_crit_edge7
    i32 2, label %if.end5.sw.bb15_crit_edge8
    i32 3, label %if.end5.sw.bb15_crit_edge9
    i32 4, label %if.end5.sw.bb15_crit_edge10
    i32 8, label %if.end5.sw.bb28_crit_edge
    i32 22, label %if.end5.sw.bb28_crit_edge11
    i32 13, label %if.end5.sw.bb29_crit_edge
    i32 7, label %sw.bb49
    i32 25, label %if.end5.sw.bb56_crit_edge
    i32 26, label %if.end5.sw.bb56_crit_edge12
  ]

if.end5.sw.bb56_crit_edge12:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb56

if.end5.sw.bb56_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb56

if.end5.sw.bb29_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb29

if.end5.sw.bb28_crit_edge11:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb28

if.end5.sw.bb28_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb28

if.end5.sw.bb15_crit_edge10:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb15

if.end5.sw.bb15_crit_edge9:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb15

if.end5.sw.bb15_crit_edge8:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb15

if.end5.sw.bb15_crit_edge7:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb15

if.end5.sw.bb15_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb15

if.end5.sw.bb7_crit_edge6:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7

if.end5.sw.bb7_crit_edge5:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7

if.end5.sw.bb7_crit_edge4:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7

if.end5.sw.bb7_crit_edge3:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7

if.end5.sw.bb7_crit_edge2:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7

if.end5.sw.bb7_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb7:                                           ; preds = %if.end5.sw.bb7_crit_edge, %if.end5.sw.bb7_crit_edge2, %if.end5.sw.bb7_crit_edge3, %if.end5.sw.bb7_crit_edge4, %if.end5.sw.bb7_crit_edge5, %if.end5.sw.bb7_crit_edge6
  %mode = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 5
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %mode, align 4
  %otg = getelementptr inbounds %struct.usb_phy, ptr %ab, i32 0, i32 5
  %7 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %otg, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %8, align 4
  %vbus_draw = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 3
  %10 = ptrtoint ptr %vbus_draw to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %vbus_draw, align 4
  %11 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %state, align 4
  tail call void @usb_phy_set_event(ptr noundef %ab, i32 noundef 0) #6
  br label %cleanup

sw.bb15:                                          ; preds = %if.end5.sw.bb15_crit_edge, %if.end5.sw.bb15_crit_edge7, %if.end5.sw.bb15_crit_edge8, %if.end5.sw.bb15_crit_edge9, %if.end5.sw.bb15_crit_edge10
  %mode16 = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 5
  %13 = ptrtoint ptr %mode16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mode16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp17 = icmp eq i32 %14, 0
  br i1 %cmp17, label %if.then18, label %sw.bb15.cleanup_crit_edge

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then18:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %mode16 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %mode16, align 4
  tail call fastcc void @ab8500_usb_phy_enable(ptr noundef %ab, i1 noundef zeroext false)
  %notifier = getelementptr inbounds %struct.usb_phy, ptr %ab, i32 0, i32 18
  %vbus_draw21 = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 3
  %call22 = tail call i32 @atomic_notifier_call_chain(ptr noundef %notifier, i32 noundef 8, ptr noundef %vbus_draw21) #6
  tail call void @usb_phy_set_event(ptr noundef %ab, i32 noundef 4) #6
  br label %cleanup

sw.bb28:                                          ; preds = %if.end5.sw.bb28_crit_edge, %if.end5.sw.bb28_crit_edge11
  br label %sw.bb29

sw.bb29:                                          ; preds = %sw.bb28, %if.end5.sw.bb29_crit_edge
  %cmp42.not = phi i32 [ 2, %if.end5.sw.bb29_crit_edge ], [ 5, %sw.bb28 ]
  %mode30 = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 5
  %16 = ptrtoint ptr %mode30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mode30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp31 = icmp eq i32 %17, 0
  br i1 %cmp31, label %if.then32, label %sw.bb29.if.end38_crit_edge

sw.bb29.if.end38_crit_edge:                       ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then32:                                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %mode30 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %mode30, align 4
  tail call fastcc void @ab8500_usb_phy_enable(ptr noundef %ab, i1 noundef zeroext true)
  %notifier35 = getelementptr inbounds %struct.usb_phy, ptr %ab, i32 0, i32 18
  %vbus_draw36 = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 3
  %call37 = tail call i32 @atomic_notifier_call_chain(ptr noundef %notifier35, i32 noundef 8, ptr noundef %vbus_draw36) #6
  br label %if.end38

if.end38:                                         ; preds = %if.then32, %sw.bb29.if.end38_crit_edge
  %otg40 = getelementptr inbounds %struct.usb_phy, ptr %ab, i32 0, i32 5
  %19 = ptrtoint ptr %otg40 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %otg40, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %20, align 4
  %notifier46 = getelementptr inbounds %struct.usb_phy, ptr %ab, i32 0, i32 18
  %vbus_draw47 = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 3
  %call48 = tail call i32 @atomic_notifier_call_chain(ptr noundef %notifier46, i32 noundef %cmp42.not, ptr noundef %vbus_draw47) #6
  br label %cleanup

sw.bb49:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %mode50 = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 5
  %22 = ptrtoint ptr %mode50 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3, ptr %mode50, align 4
  %notifier52 = getelementptr inbounds %struct.usb_phy, ptr %ab, i32 0, i32 18
  %vbus_draw53 = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 3
  %call54 = tail call i32 @atomic_notifier_call_chain(ptr noundef %notifier52, i32 noundef 3, ptr noundef %vbus_draw53) #6
  tail call void @usb_phy_set_event(ptr noundef %ab, i32 noundef 3) #6
  br label %cleanup

sw.bb56:                                          ; preds = %if.end5.sw.bb56_crit_edge, %if.end5.sw.bb56_crit_edge12
  %mode57 = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 5
  %23 = ptrtoint ptr %mode57 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mode57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp58 = icmp eq i32 %24, 0
  br i1 %cmp58, label %if.then59, label %sw.bb56.cleanup_crit_edge

sw.bb56.cleanup_crit_edge:                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then59:                                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %mode57 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %mode57, align 4
  tail call fastcc void @ab8500_usb_phy_enable(ptr noundef %ab, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %sw.bb56.cleanup_crit_edge, %sw.bb49, %if.end38, %if.then18, %sw.bb15.cleanup_crit_edge, %sw.bb7, %if.end5.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_phy_set_event(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ab8500_usb_phy_enable(ptr nocapture noundef %ab, i1 noundef zeroext %sel_host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call ptr @pinctrl_get(ptr noundef %1) #6
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.pinctrl_get_select.exit_crit_edge, label %if.end.i

entry.pinctrl_get_select.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %pinctrl_get_select.exit

if.end.i:                                         ; preds = %entry
  %call2.i = tail call ptr @pinctrl_lookup_state(ptr noundef %call.i, ptr noundef nonnull @.str.79) #6
  %cmp.i1.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1.i, label %if.then4.i, label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pinctrl_put(ptr noundef %call.i) #6
  br label %pinctrl_get_select.exit

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = tail call i32 @pinctrl_select_state(ptr noundef %call.i, ptr noundef %call2.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i = icmp slt i32 %call7.i, 0
  br i1 %cmp.i, label %if.then8.i, label %if.end6.i.pinctrl_get_select.exit_crit_edge

if.end6.i.pinctrl_get_select.exit_crit_edge:      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pinctrl_get_select.exit

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pinctrl_put(ptr noundef %call.i) #6
  %2 = inttoptr i32 %call7.i to ptr
  br label %pinctrl_get_select.exit

pinctrl_get_select.exit:                          ; preds = %if.then8.i, %if.end6.i.pinctrl_get_select.exit_crit_edge, %if.then4.i, %entry.pinctrl_get_select.exit_crit_edge
  %retval.0.i = phi ptr [ %call2.i, %if.then4.i ], [ %2, %if.then8.i ], [ %call.i, %entry.pinctrl_get_select.exit_crit_edge ], [ %call.i, %if.end6.i.pinctrl_get_select.exit_crit_edge ]
  %pinctrl = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 12
  %3 = ptrtoint ptr %pinctrl to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %retval.0.i, ptr %pinctrl, align 4
  %cmp.i22 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i22, label %do.end, label %pinctrl_get_select.exit.if.end_crit_edge

pinctrl_get_select.exit.if.end_crit_edge:         ; preds = %pinctrl_get_select.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %pinctrl_get_select.exit
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.80) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %pinctrl_get_select.exit.if.end_crit_edge
  %sysclk = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 6
  %6 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sysclk, align 4
  %call.i23 = tail call i32 @clk_prepare(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool.not.i = icmp eq i32 %call.i23, 0
  br i1 %tobool.not.i, label %if.end.i24, label %if.end.do.end9_crit_edge

if.end.do.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9

if.end.i24:                                       ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i24.if.end11_crit_edge, label %if.then3.i

if.end.i24.if.end11_crit_edge:                    ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then3.i:                                       ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %7) #6
  br label %do.end9

do.end9:                                          ; preds = %if.then3.i, %if.end.do.end9_crit_edge
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.83) #9
  br label %if.end11

if.end11:                                         ; preds = %do.end9, %if.end.i24.if.end11_crit_edge
  %v_ape.i = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 7
  %10 = ptrtoint ptr %v_ape.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %v_ape.i, align 4
  %call.i26 = tail call i32 @regulator_enable(ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %tobool.not.i27 = icmp eq i32 %call.i26, 0
  br i1 %tobool.not.i27, label %if.end11.if.end.i28_crit_edge, label %do.end.i

if.end11.if.end.i28_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i28

do.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.85) #9
  br label %if.end.i28

if.end.i28:                                       ; preds = %do.end.i, %if.end11.if.end.i28_crit_edge
  %flags.i = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 15
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i28.if.end29.i_crit_edge, label %if.then2.i

if.end.i28.if.end29.i_crit_edge:                  ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i

if.then2.i:                                       ; preds = %if.end.i28
  %v_ulpi.i = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 9
  %16 = ptrtoint ptr %v_ulpi.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %v_ulpi.i, align 4
  %call3.i = tail call i32 @regulator_get_voltage(ptr noundef %17) #6
  %saved_v_ulpi.i = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 10
  %18 = ptrtoint ptr %saved_v_ulpi.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call3.i, ptr %saved_v_ulpi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i29 = icmp slt i32 %call3.i, 0
  br i1 %cmp.i29, label %do.end8.i, label %if.then2.i.if.end10.i_crit_edge

if.then2.i.if.end10.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

do.end8.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.88) #9
  br label %if.end10.i

if.end10.i:                                       ; preds = %do.end8.i, %if.then2.i.if.end10.i_crit_edge
  %21 = ptrtoint ptr %v_ulpi.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %v_ulpi.i, align 4
  %call12.i = tail call i32 @regulator_set_voltage(ptr noundef %22, i32 noundef 1300000, i32 noundef 1350000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %do.end17.i, label %if.end10.i.if.end19.i_crit_edge

if.end10.i.if.end19.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

do.end17.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.91, i32 noundef %call12.i) #9
  br label %if.end19.i

if.end19.i:                                       ; preds = %do.end17.i, %if.end10.i.if.end19.i_crit_edge
  %25 = ptrtoint ptr %v_ulpi.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %v_ulpi.i, align 4
  %call21.i = tail call i32 @regulator_set_load(ptr noundef %26, i32 noundef 28000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp22.i = icmp slt i32 %call21.i, 0
  br i1 %cmp22.i, label %do.end26.i, label %if.end19.i.if.end29.i_crit_edge

if.end19.i.if.end29.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i

do.end26.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.27, i32 noundef %call21.i) #9
  br label %if.end29.i

if.end29.i:                                       ; preds = %do.end26.i, %if.end19.i.if.end29.i_crit_edge, %if.end.i28.if.end29.i_crit_edge
  %v_ulpi30.i = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 9
  %29 = ptrtoint ptr %v_ulpi30.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %v_ulpi30.i, align 4
  %call31.i = tail call i32 @regulator_enable(ptr noundef %30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end29.i.if.end38.i_crit_edge, label %do.end36.i

if.end29.i.if.end38.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i

do.end36.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.96) #9
  br label %if.end38.i

if.end38.i:                                       ; preds = %do.end36.i, %if.end29.i.if.end38.i_crit_edge
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i, align 4
  %and40.i = and i32 %34, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  br i1 %tobool41.not.i, label %if.end38.i.if.end53.i_crit_edge, label %if.then42.i

if.end38.i.if.end53.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53.i

if.then42.i:                                      ; preds = %if.end38.i
  %35 = ptrtoint ptr %v_ulpi30.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %v_ulpi30.i, align 4
  %call44.i = tail call i32 @regulator_get_voltage(ptr noundef %36) #6
  %37 = zext i32 %call44.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %call44.i, label %do.end50.i [
    i32 1300000, label %if.then42.i.if.end53.i_crit_edge
    i32 1350000, label %if.then42.i.if.end53.i_crit_edge32
  ]

if.then42.i.if.end53.i_crit_edge32:               ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53.i

if.then42.i.if.end53.i_crit_edge:                 ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53.i

do.end50.i:                                       ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.99, i32 noundef %call44.i) #9
  br label %if.end53.i

if.end53.i:                                       ; preds = %do.end50.i, %if.then42.i.if.end53.i_crit_edge, %if.then42.i.if.end53.i_crit_edge32, %if.end38.i.if.end53.i_crit_edge
  %v_musb.i = getelementptr inbounds %struct.ab8500_usb, ptr %ab, i32 0, i32 8
  %40 = ptrtoint ptr %v_musb.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %v_musb.i, align 4
  %call54.i = tail call i32 @regulator_enable(ptr noundef %41) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %tobool55.not.i = icmp eq i32 %call54.i, 0
  br i1 %tobool55.not.i, label %if.end53.i.ab8500_usb_regulator_enable.exit_crit_edge, label %do.end59.i

if.end53.i.ab8500_usb_regulator_enable.exit_crit_edge: ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ab8500_usb_regulator_enable.exit

do.end59.i:                                       ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.102) #9
  br label %ab8500_usb_regulator_enable.exit

ab8500_usb_regulator_enable.exit:                 ; preds = %do.end59.i, %if.end53.i.ab8500_usb_regulator_enable.exit_crit_edge
  %conv = select i1 %sel_host, i8 1, i8 2
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  %call13 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %45, i8 noundef zeroext 5, i8 noundef zeroext -118, i8 noundef zeroext %conv, i8 noundef zeroext %conv) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_phy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !27, !28, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !67, !68, !69, !70, !72, !74, !75, !76, !78, !80, !81, !82, !84, !86, !88, !89, !90, !91, !93, !95, !97, !98, !99, !101, !103, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !146, !147, !148, !150, !152, !153, !154, !155, !157, !158, !159, !161, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !191}
!llvm.module.flags = !{!193, !194, !195, !196, !197, !198, !199, !200}
!llvm.ident = !{!201}

!0 = !{ptr @__initcall__kmod_phy_ab8500_usb__296_1003_ab8500_usb_init4, !1, !"__initcall__kmod_phy_ab8500_usb__296_1003_ab8500_usb_init4", i1 false, i1 false}
!1 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 1003, i32 1}
!2 = !{ptr @__exitcall_ab8500_usb_exit, !3, !"__exitcall_ab8500_usb_exit", i1 false, i1 false}
!3 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 1009, i32 1}
!4 = !{ptr @__UNIQUE_ID_author297, !5, !"__UNIQUE_ID_author297", i1 false, i1 false}
!5 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 1011, i32 1}
!6 = !{ptr @__UNIQUE_ID_description298, !7, !"__UNIQUE_ID_description298", i1 false, i1 false}
!7 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 1012, i32 1}
!8 = !{ptr @__UNIQUE_ID_file299, !9, !"__UNIQUE_ID_file299", i1 false, i1 false}
!9 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 1013, i32 1}
!10 = !{ptr @__UNIQUE_ID_license300, !9, !"__UNIQUE_ID_license300", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 995, i32 11}
!13 = !{ptr @ab8500_usb_driver, !14, !"ab8500_usb_driver", i1 false, i1 false}
!14 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 990, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 880, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ab8500_usb_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @ab8500_usb_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 896, i32 19}
!25 = !{ptr @ab8500_usb_probe.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 923, i32 2}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 929, i32 37}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 931, i32 3}
!32 = !{ptr @ab8500_usb_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @ab8500_usb_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 941, i32 3}
!36 = !{ptr @ab8500_usb_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @ab8500_usb_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 963, i32 2}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ab8500_usb_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @ab8500_usb_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 294, i32 5}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 297, i32 4}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @ab8500_usb_phy_disable.__UNIQUE_ID_ddebug293, !46, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 299, i32 4}
!52 = !{ptr @ab8500_usb_phy_disable._entry, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @ab8500_usb_phy_disable._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 227, i32 5}
!56 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ab8500_usb_regulator_disable._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @ab8500_usb_regulator_disable._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 233, i32 4}
!61 = !{ptr @ab8500_usb_regulator_disable._entry.26, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @ab8500_usb_regulator_disable._entry_ptr.28, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 713, i32 42}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 715, i32 3}
!67 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @ab8500_usb_regulator_get._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @ab8500_usb_regulator_get._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 720, i32 43}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 722, i32 3}
!74 = !{ptr @ab8500_usb_regulator_get._entry.33, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @ab8500_usb_regulator_get._entry_ptr.35, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 727, i32 43}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 729, i32 3}
!80 = !{ptr @ab8500_usb_regulator_get._entry.37, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @ab8500_usb_regulator_get._entry_ptr.39, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 744, i32 39}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 750, i32 5}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 752, i32 4}
!88 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @ab8500_usb_irq_setup._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @ab8500_usb_irq_setup._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 758, i32 39}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 764, i32 5}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 766, i32 4}
!97 = !{ptr @ab8500_usb_irq_setup._entry.46, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @ab8500_usb_irq_setup._entry_ptr.48, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 772, i32 39}
!101 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 778, i32 5}
!103 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 780, i32 4}
!105 = !{ptr @ab8500_usb_irq_setup._entry.51, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @ab8500_usb_irq_setup._entry_ptr.53, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 796, i32 3}
!109 = !{ptr @.str.55, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @ab8500_usb_set_ab8500_tuning_values._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @ab8500_usb_set_ab8500_tuning_values._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.57, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 802, i32 3}
!114 = !{ptr @ab8500_usb_set_ab8500_tuning_values._entry.56, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @ab8500_usb_set_ab8500_tuning_values._entry_ptr.58, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.60, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 808, i32 3}
!118 = !{ptr @ab8500_usb_set_ab8500_tuning_values._entry.59, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @ab8500_usb_set_ab8500_tuning_values._entry_ptr.61, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.63, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 814, i32 3}
!122 = !{ptr @ab8500_usb_set_ab8500_tuning_values._entry.62, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @ab8500_usb_set_ab8500_tuning_values._entry_ptr.64, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.66, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 821, i32 3}
!126 = !{ptr @ab8500_usb_set_ab8500_tuning_values._entry.65, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @ab8500_usb_set_ab8500_tuning_values._entry_ptr.67, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.68, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 834, i32 3}
!130 = !{ptr @ab8500_usb_set_ab8505_tuning_values._entry, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @ab8500_usb_set_ab8505_tuning_values._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @ab8500_usb_set_ab8505_tuning_values._entry.69, !133, !"_entry", i1 false, i1 false}
!133 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 841, i32 3}
!134 = !{ptr @ab8500_usb_set_ab8505_tuning_values._entry_ptr.70, !133, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @ab8500_usb_set_ab8505_tuning_values._entry.71, !136, !"_entry", i1 false, i1 false}
!136 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 848, i32 3}
!137 = !{ptr @ab8500_usb_set_ab8505_tuning_values._entry_ptr.72, !136, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @ab8500_usb_set_ab8505_tuning_values._entry.73, !139, !"_entry", i1 false, i1 false}
!139 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 856, i32 3}
!140 = !{ptr @ab8500_usb_set_ab8505_tuning_values._entry_ptr.74, !139, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @ab8500_usb_set_ab8505_tuning_values._entry.75, !142, !"_entry", i1 false, i1 false}
!142 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 864, i32 3}
!143 = !{ptr @ab8500_usb_set_ab8505_tuning_values._entry_ptr.76, !142, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.77, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 427, i32 2}
!146 = !{ptr @.str.78, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @ab8500_usb_link_status_update.__UNIQUE_ID_ddebug295, !145, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!148 = !{ptr @.str.79, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 258, i32 44}
!150 = !{ptr @.str.80, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 260, i32 3}
!152 = !{ptr @.str.81, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @ab8500_usb_phy_enable._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @ab8500_usb_phy_enable._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.83, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 263, i32 3}
!157 = !{ptr @ab8500_usb_phy_enable._entry.82, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @ab8500_usb_phy_enable._entry_ptr.84, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.85, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 179, i32 3}
!161 = !{ptr @.str.86, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @ab8500_usb_regulator_enable._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @ab8500_usb_regulator_enable._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.88, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 184, i32 4}
!166 = !{ptr @ab8500_usb_regulator_enable._entry.87, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @ab8500_usb_regulator_enable._entry_ptr.89, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.91, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 188, i32 4}
!170 = !{ptr @ab8500_usb_regulator_enable._entry.90, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @ab8500_usb_regulator_enable._entry_ptr.92, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @ab8500_usb_regulator_enable._entry.93, !173, !"_entry", i1 false, i1 false}
!173 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 193, i32 4}
!174 = !{ptr @ab8500_usb_regulator_enable._entry_ptr.94, !173, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.96, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 199, i32 3}
!177 = !{ptr @ab8500_usb_regulator_enable._entry.95, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @ab8500_usb_regulator_enable._entry_ptr.97, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.99, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 204, i32 4}
!181 = !{ptr @ab8500_usb_regulator_enable._entry.98, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @ab8500_usb_regulator_enable._entry_ptr.100, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.102, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 210, i32 3}
!185 = !{ptr @ab8500_usb_regulator_enable._entry.101, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @ab8500_usb_regulator_enable._entry_ptr.103, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.104, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 319, i32 2}
!189 = !{ptr @.str.105, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @ab8505_usb_link_status_update.__UNIQUE_ID_ddebug294, !188, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!191 = !{ptr @ab8500_usb_devtype, !192, !"ab8500_usb_devtype", i1 false, i1 false}
!192 = !{!"../drivers/usb/phy/phy-ab8500-usb.c", i32 984, i32 40}
!193 = !{i32 1, !"wchar_size", i32 2}
!194 = !{i32 1, !"min_enum_size", i32 4}
!195 = !{i32 8, !"branch-target-enforcement", i32 0}
!196 = !{i32 8, !"sign-return-address", i32 0}
!197 = !{i32 8, !"sign-return-address-all", i32 0}
!198 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!199 = !{i32 7, !"uwtable", i32 1}
!200 = !{i32 7, !"frame-pointer", i32 2}
!201 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!202 = !{!"auto-init"}
!203 = !{i64 2148977900, i64 2148977905, i64 2148977918, i64 2148977962, i64 2148977996, i64 2148978017}
