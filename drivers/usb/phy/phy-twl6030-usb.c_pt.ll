; ModuleID = '/llk/IR_all_yes/drivers/usb/phy/phy-twl6030-usb.c_pt.bc'
source_filename = "../drivers/usb/phy/phy-twl6030-usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.atomic_t = type { i32 }
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
%struct.twl6030_usb = type { %struct.phy_companion, ptr, %struct.spinlock, ptr, %struct.delayed_work, %struct.work_struct, i32, i32, i32, i8, i8 }
%struct.phy_companion = type { ptr, ptr }

@__initcall__kmod_phy_twl6030_usb__293_449_twl6030_usb_init4 = internal global ptr @twl6030_usb_init, section ".initcall4.init", align 4
@twl6030_usb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @twl6030_usb_probe, ptr @twl6030_usb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @twl6030_usb_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twl6030_groups, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_twl6030_usb_exit = internal global ptr @twl6030_usb_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias294 = internal constant [43 x i8] c"phy_twl6030_usb.alias=platform:twl6030_usb\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [47 x i8] c"phy_twl6030_usb.author=Hema HK <hemahk@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [59 x i8] c"phy_twl6030_usb.description=TWL6030 USB transceiver driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [53 x i8] c"phy_twl6030_usb.file=drivers/usb/phy/phy-twl6030-usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [28 x i8] c"phy_twl6030_usb.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"twl6030_usb\00", [20 x i8] zeroinitializer }, align 32
@twl6030_usb_id_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6030-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@twl6030_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @twl6030_group, ptr null], [24 x i8] zeroinitializer }, align 32
@twl6030_usb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 338, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"no DT info\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"twl6030_usb_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/usb/phy/phy-twl6030-usb.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@twl6030_usb_probe._entry_ptr = internal global ptr @twl6030_usb_probe._entry, section ".printk_index", align 4
@twl6030_usb_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 361, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"phy not ready, deferring probe\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@twl6030_usb_probe._entry_ptr.9 = internal global ptr @twl6030_usb_probe._entry.6, section ".printk_index", align 4
@twl6030_usb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&twl->lock\00", [21 x i8] zeroinitializer }, align 32
@twl6030_usb_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 370, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ldo init failed\0A\00", [47 x i8] zeroinitializer }, align 32
@twl6030_usb_probe._entry_ptr.13 = internal global ptr @twl6030_usb_probe._entry.11, section ".printk_index", align 4
@twl6030_usb_probe.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&twl->set_vbus_work)\00", [57 x i8] zeroinitializer }, align 32
@twl6030_usb_probe.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(work_completion)(&(&twl->get_status_work)->work)\00", [46 x i8] zeroinitializer }, align 32
@twl6030_usb_probe.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&(&twl->get_status_work)->timer\00", [32 x i8] zeroinitializer }, align 32
@twl6030_usb_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 384, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"can't get IRQ %d, err %d\0A\00", [38 x i8] zeroinitializer }, align 32
@twl6030_usb_probe._entry_ptr.22 = internal global ptr @twl6030_usb_probe._entry.20, section ".printk_index", align 4
@twl6030_usb_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 393, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@twl6030_usb_probe._entry_ptr.24 = internal global ptr @twl6030_usb_probe._entry.23, section ".printk_index", align 4
@twl6030_usb_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 400, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Initialized TWL6030 USB module\0A\00", [32 x i8] zeroinitializer }, align 32
@twl6030_usb_probe._entry_ptr.27 = internal global ptr @twl6030_usb_probe._entry.25, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@twl6030_writeb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 112, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Write[0x%x] Error %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"twl6030_writeb\00", [17 x i8] zeroinitializer }, align 32
@twl6030_writeb._entry_ptr = internal global ptr @twl6030_writeb._entry, section ".printk_index", align 4
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"usb\00", [28 x i8] zeroinitializer }, align 32
@twl6030_usbotg_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 259, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to enable usb3v3\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"twl6030_usbotg_irq\00", [45 x i8] zeroinitializer }, align 32
@twl6030_usbotg_irq._entry_ptr = internal global ptr @twl6030_usbotg_irq._entry, section ".printk_index", align 4
@twl6030_readb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 127, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"readb[0x%x,0x%x] Error %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"twl6030_readb\00", [18 x i8] zeroinitializer }, align 32
@twl6030_readb._entry_ptr = internal global ptr @twl6030_readb._entry, section ".printk_index", align 4
@twl6030_usb_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.35, ptr @.str.3, i32 220, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"twl6030_usb_irq\00", [16 x i8] zeroinitializer }, align 32
@twl6030_usb_irq._entry_ptr = internal global ptr @twl6030_usb_irq._entry, section ".printk_index", align 4
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbus\00", [27 x i8] zeroinitializer }, align 32
@twl6030_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @twl6030_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@twl6030_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_vbus, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_vbus = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vbus_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vbus\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"none\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"UNKNOWN\0A\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@___asan_gen_.41 = private unnamed_addr constant [19 x i8] c"twl6030_usb_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 435, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 439, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant [21 x i8] c"twl6030_usb_id_table\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 429, i32 34 }
@___asan_gen_.50 = private unnamed_addr constant [15 x i8] c"twl6030_groups\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 338, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 361, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 366, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 370, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 376, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 377, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 383, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 392, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 400, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 111, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 155, i32 40 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 259, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 125, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 220, i32 5 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 242, i32 38 }
@___asan_gen_.164 = private unnamed_addr constant [14 x i8] c"twl6030_group\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 203, i32 1 }
@___asan_gen_.167 = private unnamed_addr constant [14 x i8] c"twl6030_attrs\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 199, i32 26 }
@___asan_gen_.170 = private unnamed_addr constant [14 x i8] c"dev_attr_vbus\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 197, i32 8 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 182, i32 40 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 188, i32 40 }
@___asan_gen_.179 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.180 = private constant [37 x i8] c"../drivers/usb/phy/phy-twl6030-usb.c\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 191, i32 40 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID_alias294, ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_twl6030_usb_exit, ptr @__initcall__kmod_phy_twl6030_usb__293_449_twl6030_usb_init4, ptr @twl6030_readb._entry, ptr @twl6030_readb._entry_ptr, ptr @twl6030_usb_exit, ptr @twl6030_usb_irq._entry, ptr @twl6030_usb_irq._entry_ptr, ptr @twl6030_usb_probe._entry, ptr @twl6030_usb_probe._entry.11, ptr @twl6030_usb_probe._entry.20, ptr @twl6030_usb_probe._entry.23, ptr @twl6030_usb_probe._entry.25, ptr @twl6030_usb_probe._entry.6, ptr @twl6030_usb_probe._entry_ptr, ptr @twl6030_usb_probe._entry_ptr.13, ptr @twl6030_usb_probe._entry_ptr.22, ptr @twl6030_usb_probe._entry_ptr.24, ptr @twl6030_usb_probe._entry_ptr.27, ptr @twl6030_usb_probe._entry_ptr.9, ptr @twl6030_usbotg_irq._entry, ptr @twl6030_usbotg_irq._entry_ptr, ptr @twl6030_writeb._entry, ptr @twl6030_writeb._entry_ptr, ptr @twl6030_usb_driver, ptr @.str, ptr @twl6030_usb_id_table, ptr @twl6030_groups, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @twl6030_usb_probe.__key, ptr @.str.10, ptr @.str.12, ptr @twl6030_usb_probe.__key.14, ptr @.str.15, ptr @twl6030_usb_probe.__key.16, ptr @.str.17, ptr @twl6030_usb_probe.__key.18, ptr @.str.19, ptr @.str.21, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @twl6030_group, ptr @twl6030_attrs, ptr @dev_attr_vbus, ptr @.str.37, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_usb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_usb_id_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_usb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_usb_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_usb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_usb_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_usb_probe.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_usb_probe.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_usb_probe.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_usb_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_usb_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_usb_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_writeb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_usbotg_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_readb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_usb_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vbus to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6030_usb_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @twl6030_usb_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @twl6030_usb_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @twl6030_usb_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6030_usb_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 220, i32 noundef 3520) #5
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %dev7 = getelementptr inbounds %struct.twl6030_usb, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %dev7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev7, align 4
  %call8 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  %irq1 = getelementptr inbounds %struct.twl6030_usb, ptr %call.i, i32 0, i32 6
  %3 = ptrtoint ptr %irq1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call8, ptr %irq1, align 4
  %call9 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #5
  %irq2 = getelementptr inbounds %struct.twl6030_usb, ptr %call.i, i32 0, i32 7
  %4 = ptrtoint ptr %irq2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call9, ptr %irq2, align 4
  %linkstat = getelementptr inbounds %struct.twl6030_usb, ptr %call.i, i32 0, i32 8
  %5 = ptrtoint ptr %linkstat to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %linkstat, align 4
  %6 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %if.end13

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp15 = icmp slt i32 %call9, 0
  br i1 %cmp15, label %if.end13.cleanup_crit_edge, label %if.end18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @twl6030_set_vbus, ptr %call.i, align 4
  %start_srp = getelementptr inbounds %struct.phy_companion, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %start_srp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @twl6030_start_srp, ptr %start_srp, align 4
  %call21 = tail call i32 @omap_usb2_set_comparator(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call21)
  %cmp22 = icmp eq i32 %call21, -19
  br i1 %cmp22, label %do.end26, label %do.body29

do.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  br label %cleanup

do.body29:                                        ; preds = %if.end18
  %lock = getelementptr inbounds %struct.twl6030_usb, ptr %call.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @twl6030_usb_probe.__key, i16 noundef signext 3) #5
  %call33 = tail call fastcc i32 @twl6030_usb_ldo_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end40, label %do.end38

do.end38:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #8
  br label %cleanup

if.end40:                                         ; preds = %do.body29
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %set_vbus_work = getelementptr inbounds %struct.twl6030_usb, ptr %call.i, i32 0, i32 5
  tail call void @__init_work(ptr noundef %set_vbus_work, i32 noundef 0) #5
  %11 = ptrtoint ptr %set_vbus_work to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -64, ptr %set_vbus_work, align 4
  %lockdep_map = getelementptr inbounds %struct.twl6030_usb, ptr %call.i, i32 0, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.15, ptr noundef nonnull @twl6030_usb_probe.__key.14, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry45 = getelementptr inbounds %struct.twl6030_usb, ptr %call.i, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %entry45 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entry45, ptr %entry45, align 4
  %prev.i = getelementptr inbounds %struct.twl6030_usb, ptr %call.i, i32 0, i32 5, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry45, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.twl6030_usb, ptr %call.i, i32 0, i32 5, i32 2
  %14 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @otg_set_vbus_work, ptr %func, align 4
  %get_status_work = getelementptr inbounds %struct.twl6030_usb, ptr %call.i, i32 0, i32 4
  tail call void @__init_work(ptr noundef %get_status_work, i32 noundef 0) #5
  %15 = ptrtoint ptr %get_status_work to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -64, ptr %get_status_work, align 4
  %lockdep_map58 = getelementptr inbounds %struct.twl6030_usb, ptr %call.i, i32 0, i32 4, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map58, ptr noundef nonnull @.str.17, ptr noundef nonnull @twl6030_usb_probe.__key.16, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry61 = getelementptr inbounds %struct.twl6030_usb, ptr %call.i, i32 0, i32 4, i32 0, i32 1
  %16 = ptrtoint ptr %entry61 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry61, ptr %entry61, align 4
  %prev.i161 = getelementptr inbounds %struct.twl6030_usb, ptr %call.i, i32 0, i32 4, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i161 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry61, ptr %prev.i161, align 4
  %func64 = getelementptr inbounds %struct.twl6030_usb, ptr %call.i, i32 0, i32 4, i32 0, i32 2
  %18 = ptrtoint ptr %func64 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @twl6030_status_work, ptr %func64, align 4
  %timer = getelementptr inbounds %struct.twl6030_usb, ptr %call.i, i32 0, i32 4, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.19, ptr noundef nonnull @twl6030_usb_probe.__key.18) #5
  %19 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq1, align 4
  %call74 = tail call i32 @request_threaded_irq(i32 noundef %20, ptr noundef null, ptr noundef nonnull @twl6030_usbotg_irq, i32 noundef 8195, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %do.end79, label %if.end82

do.end79:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %22, i32 noundef %call74) #8
  br label %err_put_regulator

if.end82:                                         ; preds = %if.end40
  %23 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq2, align 4
  %call84 = tail call i32 @request_threaded_irq(i32 noundef %24, ptr noundef null, ptr noundef nonnull @twl6030_usb_irq, i32 noundef 8195, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %do.end89, label %if.end92

do.end89:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %26, i32 noundef %call84) #8
  %27 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq1, align 4
  %call101 = tail call ptr @free_irq(i32 noundef %28, ptr noundef nonnull %call.i) #5
  br label %err_put_regulator

if.end92:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  %asleep = getelementptr inbounds %struct.twl6030_usb, ptr %call.i, i32 0, i32 9
  %29 = ptrtoint ptr %asleep to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %asleep, align 4
  tail call fastcc void @twl6030_enable_irq(ptr noundef nonnull %call.i)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %30 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %30, ptr noundef %get_status_work, i32 noundef 100) #5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.26) #8
  br label %cleanup

err_put_regulator:                                ; preds = %do.end89, %do.end79
  %status.0 = phi i32 [ %call74, %do.end79 ], [ %call84, %do.end89 ]
  %usb3v3 = getelementptr inbounds %struct.twl6030_usb, ptr %call.i, i32 0, i32 3
  %31 = ptrtoint ptr %usb3v3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %usb3v3, align 4
  tail call void @regulator_put(ptr noundef %32) #5
  br label %cleanup

cleanup:                                          ; preds = %err_put_regulator, %if.end92, %do.end38, %do.end26, %if.end13.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -517, %do.end26 ], [ %call33, %do.end38 ], [ %status.0, %err_put_regulator ], [ 0, %if.end92 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %7, %if.end5.cleanup_crit_edge ], [ %call9, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6030_usb_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %get_status_work = getelementptr inbounds %struct.twl6030_usb, ptr %1, i32 0, i32 4
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %get_status_work) #5
  %call2 = tail call i32 @twl6030_interrupt_mask(i8 noundef zeroext 15, i8 noundef zeroext 5) #5
  %call3 = tail call i32 @twl6030_interrupt_mask(i8 noundef zeroext 15, i8 noundef zeroext 8) #5
  %irq1 = getelementptr inbounds %struct.twl6030_usb, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq1, align 4
  %call4 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #5
  %irq2 = getelementptr inbounds %struct.twl6030_usb, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq2, align 4
  %call5 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %1) #5
  %usb3v3 = getelementptr inbounds %struct.twl6030_usb, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %usb3v3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb3v3, align 4
  tail call void @regulator_put(ptr noundef %7) #5
  %set_vbus_work = getelementptr inbounds %struct.twl6030_usb, ptr %1, i32 0, i32 5
  %call6 = tail call zeroext i1 @cancel_work_sync(ptr noundef %set_vbus_work) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6030_set_vbus(ptr noundef %comparator, i1 noundef zeroext %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enabled to i8
  %vbus_enable = getelementptr inbounds %struct.twl6030_usb, ptr %comparator, i32 0, i32 10
  %0 = ptrtoint ptr %vbus_enable to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %vbus_enable, align 1
  %set_vbus_work = getelementptr inbounds %struct.twl6030_usb, ptr %comparator, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %set_vbus_work) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6030_start_srp(ptr nocapture noundef readonly %comparator) #2 align 64 {
entry:
  %val.addr.i.i11 = alloca i8, align 1
  %val.addr.i.i5 = alloca i8, align 1
  %val.addr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #5
  %0 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 36, ptr %val.addr.i.i, align 1
  %call.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 0, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext 4, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.twl6030_writeb.exit_crit_edge

entry.twl6030_writeb.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %twl6030_writeb.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.twl6030_usb, ptr %comparator, i32 0, i32 1
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.28, i32 noundef 4, i32 noundef %call.i.i) #8
  br label %twl6030_writeb.exit

twl6030_writeb.exit:                              ; preds = %do.end.i, %entry.twl6030_writeb.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i5) #5
  %3 = ptrtoint ptr %val.addr.i.i5 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -124, ptr %val.addr.i.i5, align 1
  %call.i.i6 = call i32 @twl_i2c_write(i8 noundef zeroext 0, ptr noundef nonnull %val.addr.i.i5, i8 noundef zeroext 4, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i6)
  %cmp.i7 = icmp slt i32 %call.i.i6, 0
  br i1 %cmp.i7, label %do.end.i9, label %twl6030_writeb.exit.while.body.preheader_crit_edge

twl6030_writeb.exit.while.body.preheader_crit_edge: ; preds = %twl6030_writeb.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.preheader

do.end.i9:                                        ; preds = %twl6030_writeb.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i8 = getelementptr inbounds %struct.twl6030_usb, ptr %comparator, i32 0, i32 1
  %4 = ptrtoint ptr %dev.i8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.28, i32 noundef 4, i32 noundef %call.i.i6) #8
  br label %while.body.preheader

while.body.preheader:                             ; preds = %do.end.i9, %twl6030_writeb.exit.while.body.preheader_crit_edge
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %__ms.017 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 100, %while.body.preheader ]
  %dec = add nsw i32 %__ms.017, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %6(i32 noundef 214748000) #5
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i11) #5
  %7 = ptrtoint ptr %val.addr.i.i11 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -96, ptr %val.addr.i.i11, align 1
  %call.i.i12 = call i32 @twl_i2c_write(i8 noundef zeroext 0, ptr noundef nonnull %val.addr.i.i11, i8 noundef zeroext 5, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i12)
  %cmp.i13 = icmp slt i32 %call.i.i12, 0
  br i1 %cmp.i13, label %do.end.i15, label %while.end.twl6030_writeb.exit16_crit_edge

while.end.twl6030_writeb.exit16_crit_edge:        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %twl6030_writeb.exit16

do.end.i15:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i14 = getelementptr inbounds %struct.twl6030_usb, ptr %comparator, i32 0, i32 1
  %8 = ptrtoint ptr %dev.i14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i14, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.28, i32 noundef 5, i32 noundef %call.i.i12) #8
  br label %twl6030_writeb.exit16

twl6030_writeb.exit16:                            ; preds = %do.end.i15, %while.end.twl6030_writeb.exit16_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_usb2_set_comparator(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @twl6030_usb_ldo_init(ptr nocapture noundef %twl) unnamed_addr #2 align 64 {
entry:
  %val.addr.i.i34 = alloca i8, align 1
  %val.addr.i.i28 = alloca i8, align 1
  %val.addr.i.i21 = alloca i8, align 1
  %val.addr.i.i15 = alloca i8, align 1
  %val.addr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #5
  %0 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %val.addr.i.i, align 1
  %call.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext -6, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.twl6030_writeb.exit_crit_edge

entry.twl6030_writeb.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %twl6030_writeb.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.twl6030_usb, ptr %twl, i32 0, i32 1
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.28, i32 noundef 250, i32 noundef %call.i.i) #8
  br label %twl6030_writeb.exit

twl6030_writeb.exit:                              ; preds = %do.end.i, %entry.twl6030_writeb.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i15) #5
  %3 = ptrtoint ptr %val.addr.i.i15 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %val.addr.i.i15, align 1
  %call.i.i16 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i15, i8 noundef zeroext -11, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i16)
  %cmp.i17 = icmp slt i32 %call.i.i16, 0
  br i1 %cmp.i17, label %do.end.i19, label %twl6030_writeb.exit.twl6030_writeb.exit20_crit_edge

twl6030_writeb.exit.twl6030_writeb.exit20_crit_edge: ; preds = %twl6030_writeb.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %twl6030_writeb.exit20

do.end.i19:                                       ; preds = %twl6030_writeb.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i18 = getelementptr inbounds %struct.twl6030_usb, ptr %twl, i32 0, i32 1
  %4 = ptrtoint ptr %dev.i18 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i18, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.28, i32 noundef 245, i32 noundef %call.i.i16) #8
  br label %twl6030_writeb.exit20

twl6030_writeb.exit20:                            ; preds = %do.end.i19, %twl6030_writeb.exit.twl6030_writeb.exit20_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i21) #5
  %6 = ptrtoint ptr %val.addr.i.i21 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 16, ptr %val.addr.i.i21, align 1
  %call.i.i22 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i21, i8 noundef zeroext -27, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i21) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i22)
  %cmp.i23 = icmp slt i32 %call.i.i22, 0
  br i1 %cmp.i23, label %do.end.i25, label %twl6030_writeb.exit20.twl6030_writeb.exit26_crit_edge

twl6030_writeb.exit20.twl6030_writeb.exit26_crit_edge: ; preds = %twl6030_writeb.exit20
  call void @__sanitizer_cov_trace_pc() #7
  br label %twl6030_writeb.exit26

do.end.i25:                                       ; preds = %twl6030_writeb.exit20
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i24 = getelementptr inbounds %struct.twl6030_usb, ptr %twl, i32 0, i32 1
  %7 = ptrtoint ptr %dev.i24 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i24, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.28, i32 noundef 229, i32 noundef %call.i.i22) #8
  br label %twl6030_writeb.exit26

twl6030_writeb.exit26:                            ; preds = %do.end.i25, %twl6030_writeb.exit20.twl6030_writeb.exit26_crit_edge
  %dev = getelementptr inbounds %struct.twl6030_usb, ptr %twl, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %call3 = call ptr @regulator_get(ptr noundef %10, ptr noundef nonnull @.str.30) #5
  %usb3v3 = getelementptr inbounds %struct.twl6030_usb, ptr %twl, i32 0, i32 3
  %11 = ptrtoint ptr %usb3v3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call3, ptr %usb3v3, align 4
  %cmp.i27 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i27, label %twl6030_writeb.exit26.return_crit_edge, label %if.end

twl6030_writeb.exit26.return_crit_edge:           ; preds = %twl6030_writeb.exit26
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %twl6030_writeb.exit26
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i28) #5
  %12 = ptrtoint ptr %val.addr.i.i28 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 4, ptr %val.addr.i.i28, align 1
  %call.i.i29 = call i32 @twl_i2c_write(i8 noundef zeroext 0, ptr noundef nonnull %val.addr.i.i28, i8 noundef zeroext 4, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i29)
  %cmp.i30 = icmp slt i32 %call.i.i29, 0
  br i1 %cmp.i30, label %do.end.i32, label %if.end.twl6030_writeb.exit33_crit_edge

if.end.twl6030_writeb.exit33_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %twl6030_writeb.exit33

do.end.i32:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.28, i32 noundef 4, i32 noundef %call.i.i29) #8
  br label %twl6030_writeb.exit33

twl6030_writeb.exit33:                            ; preds = %do.end.i32, %if.end.twl6030_writeb.exit33_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i34) #5
  %15 = ptrtoint ptr %val.addr.i.i34 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 20, ptr %val.addr.i.i34, align 1
  %call.i.i35 = call i32 @twl_i2c_write(i8 noundef zeroext 0, ptr noundef nonnull %val.addr.i.i34, i8 noundef zeroext 6, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i34) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35)
  %cmp.i36 = icmp slt i32 %call.i.i35, 0
  br i1 %cmp.i36, label %do.end.i38, label %twl6030_writeb.exit33.return_crit_edge

twl6030_writeb.exit33.return_crit_edge:           ; preds = %twl6030_writeb.exit33
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

do.end.i38:                                       ; preds = %twl6030_writeb.exit33
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.28, i32 noundef 6, i32 noundef %call.i.i35) #8
  br label %return

return:                                           ; preds = %do.end.i38, %twl6030_writeb.exit33.return_crit_edge, %twl6030_writeb.exit26.return_crit_edge
  %retval.0 = phi i32 [ -19, %twl6030_writeb.exit26.return_crit_edge ], [ 0, %twl6030_writeb.exit33.return_crit_edge ], [ 0, %do.end.i38 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @otg_set_vbus_work(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %val.addr.i.i4 = alloca i8, align 1
  %val.addr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vbus_enable = getelementptr i8, ptr %data, i32 57
  %0 = ptrtoint ptr %vbus_enable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vbus_enable, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #5
  %2 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 64, ptr %val.addr.i.i, align 1
  %call.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 2, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext 8, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.then.if.end.sink.split_crit_edge, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then.if.end.sink.split_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.sink.split

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i4) #5
  %3 = ptrtoint ptr %val.addr.i.i4 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %val.addr.i.i4, align 1
  %call.i.i5 = call i32 @twl_i2c_write(i8 noundef zeroext 2, ptr noundef nonnull %val.addr.i.i4, i8 noundef zeroext 8, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i5)
  %cmp.i6 = icmp slt i32 %call.i.i5, 0
  br i1 %cmp.i6, label %if.else.if.end.sink.split_crit_edge, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.else.if.end.sink.split_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %if.else.if.end.sink.split_crit_edge, %if.then.if.end.sink.split_crit_edge
  %call.i.i5.sink = phi i32 [ %call.i.i, %if.then.if.end.sink.split_crit_edge ], [ %call.i.i5, %if.else.if.end.sink.split_crit_edge ]
  %dev.i7 = getelementptr i8, ptr %data, i32 -152
  %4 = ptrtoint ptr %dev.i7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.28, i32 noundef 8, i32 noundef %call.i.i5.sink) #8
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.if.end_crit_edge, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @twl6030_status_work(ptr nocapture noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -60
  %irq2 = getelementptr i8, ptr %work, i32 148
  %0 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq2, align 4
  %call = tail call i32 @twl6030_usb_irq(i32 noundef %1, ptr noundef %add.ptr)
  %irq1 = getelementptr i8, ptr %work, i32 144
  %2 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq1, align 4
  %call1 = tail call i32 @twl6030_usbotg_irq(i32 noundef %3, ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6030_usbotg_irq(i32 noundef %irq, ptr nocapture noundef %_twl) #2 align 64 {
entry:
  %val.addr.i.i51 = alloca i8, align 1
  %val.addr.i.i45 = alloca i8, align 1
  %val.addr.i.i39 = alloca i8, align 1
  %val.addr.i.i33 = alloca i8, align 1
  %val.addr.i.i = alloca i8, align 1
  %data.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #5
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %data.i, align 1, !annotation !106
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %data.i, i8 noundef zeroext 33, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.i = icmp sgt i32 %call.i.i, -1
  br i1 %cmp.i, label %if.then.i, label %do.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %data.i, align 1
  %conv.i = zext i8 %2 to i32
  br label %twl6030_readb.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.twl6030_usb, ptr %_twl, i32 0, i32 1
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.33, i32 noundef 9, i32 noundef 33, i32 noundef %call.i.i) #8
  br label %twl6030_readb.exit

twl6030_readb.exit:                               ; preds = %do.end.i, %if.then.i
  %ret.0.i = phi i32 [ %conv.i, %if.then.i ], [ %call.i.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #5
  %5 = and i32 %ret.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %twl6030_readb.exit
  %usb3v3 = getelementptr inbounds %struct.twl6030_usb, ptr %_twl, i32 0, i32 3
  %6 = ptrtoint ptr %usb3v3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb3v3, align 4
  %call1 = call i32 @regulator_enable(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.twl6030_usb, ptr %_twl, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.31) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %asleep = getelementptr inbounds %struct.twl6030_usb, ptr %_twl, i32 0, i32 9
  %10 = ptrtoint ptr %asleep to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %asleep, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #5
  %11 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %val.addr.i.i, align 1
  %call.i.i29 = call i32 @twl_i2c_write(i8 noundef zeroext 0, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext 21, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i29)
  %cmp.i30 = icmp slt i32 %call.i.i29, 0
  br i1 %cmp.i30, label %do.end.i32, label %if.end.twl6030_writeb.exit_crit_edge

if.end.twl6030_writeb.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %twl6030_writeb.exit

do.end.i32:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i31 = getelementptr inbounds %struct.twl6030_usb, ptr %_twl, i32 0, i32 1
  %12 = ptrtoint ptr %dev.i31 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i31, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.28, i32 noundef 21, i32 noundef %call.i.i29) #8
  br label %twl6030_writeb.exit

twl6030_writeb.exit:                              ; preds = %do.end.i32, %if.end.twl6030_writeb.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i33) #5
  %14 = ptrtoint ptr %val.addr.i.i33 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 16, ptr %val.addr.i.i33, align 1
  %call.i.i34 = call i32 @twl_i2c_write(i8 noundef zeroext 0, ptr noundef nonnull %val.addr.i.i33, i8 noundef zeroext 20, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i33) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i34)
  %cmp.i35 = icmp slt i32 %call.i.i34, 0
  br i1 %cmp.i35, label %do.end.i37, label %twl6030_writeb.exit.twl6030_writeb.exit38_crit_edge

twl6030_writeb.exit.twl6030_writeb.exit38_crit_edge: ; preds = %twl6030_writeb.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %twl6030_writeb.exit38

do.end.i37:                                       ; preds = %twl6030_writeb.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i36 = getelementptr inbounds %struct.twl6030_usb, ptr %_twl, i32 0, i32 1
  %15 = ptrtoint ptr %dev.i36 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i36, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.28, i32 noundef 20, i32 noundef %call.i.i34) #8
  br label %twl6030_writeb.exit38

twl6030_writeb.exit38:                            ; preds = %do.end.i37, %twl6030_writeb.exit.twl6030_writeb.exit38_crit_edge
  %linkstat = getelementptr inbounds %struct.twl6030_usb, ptr %_twl, i32 0, i32 8
  %17 = ptrtoint ptr %linkstat to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %linkstat, align 4
  %call6 = call i32 @musb_mailbox(i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %twl6030_writeb.exit38.if.end13_crit_edge, label %if.then8

twl6030_writeb.exit38.if.end13_crit_edge:         ; preds = %twl6030_writeb.exit38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then8:                                         ; preds = %twl6030_writeb.exit38
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %linkstat to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %linkstat, align 4
  br label %if.end13

if.else:                                          ; preds = %twl6030_readb.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i39) #5
  %19 = ptrtoint ptr %val.addr.i.i39 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 16, ptr %val.addr.i.i39, align 1
  %call.i.i40 = call i32 @twl_i2c_write(i8 noundef zeroext 0, ptr noundef nonnull %val.addr.i.i39, i8 noundef zeroext 21, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i39) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i40)
  %cmp.i41 = icmp slt i32 %call.i.i40, 0
  br i1 %cmp.i41, label %do.end.i43, label %if.else.twl6030_writeb.exit44_crit_edge

if.else.twl6030_writeb.exit44_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %twl6030_writeb.exit44

do.end.i43:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i42 = getelementptr inbounds %struct.twl6030_usb, ptr %_twl, i32 0, i32 1
  %20 = ptrtoint ptr %dev.i42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i42, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.28, i32 noundef 21, i32 noundef %call.i.i40) #8
  br label %twl6030_writeb.exit44

twl6030_writeb.exit44:                            ; preds = %do.end.i43, %if.else.twl6030_writeb.exit44_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i45) #5
  %22 = ptrtoint ptr %val.addr.i.i45 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %val.addr.i.i45, align 1
  %call.i.i46 = call i32 @twl_i2c_write(i8 noundef zeroext 0, ptr noundef nonnull %val.addr.i.i45, i8 noundef zeroext 20, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i45) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i46)
  %cmp.i47 = icmp slt i32 %call.i.i46, 0
  br i1 %cmp.i47, label %do.end.i49, label %twl6030_writeb.exit44.if.end13_crit_edge

twl6030_writeb.exit44.if.end13_crit_edge:         ; preds = %twl6030_writeb.exit44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

do.end.i49:                                       ; preds = %twl6030_writeb.exit44
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i48 = getelementptr inbounds %struct.twl6030_usb, ptr %_twl, i32 0, i32 1
  %23 = ptrtoint ptr %dev.i48 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i48, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.28, i32 noundef 20, i32 noundef %call.i.i46) #8
  br label %if.end13

if.end13:                                         ; preds = %do.end.i49, %twl6030_writeb.exit44.if.end13_crit_edge, %if.then8, %twl6030_writeb.exit38.if.end13_crit_edge
  %status.0 = phi i8 [ 1, %if.then8 ], [ 1, %twl6030_writeb.exit38.if.end13_crit_edge ], [ 0, %twl6030_writeb.exit44.if.end13_crit_edge ], [ 0, %do.end.i49 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i51) #5
  %25 = ptrtoint ptr %val.addr.i.i51 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %status.0, ptr %val.addr.i.i51, align 1
  %call.i.i52 = call i32 @twl_i2c_write(i8 noundef zeroext 0, ptr noundef nonnull %val.addr.i.i51, i8 noundef zeroext 17, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i51) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i52)
  %cmp.i53 = icmp slt i32 %call.i.i52, 0
  br i1 %cmp.i53, label %do.end.i55, label %if.end13.twl6030_writeb.exit56_crit_edge

if.end13.twl6030_writeb.exit56_crit_edge:         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %twl6030_writeb.exit56

do.end.i55:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i54 = getelementptr inbounds %struct.twl6030_usb, ptr %_twl, i32 0, i32 1
  %26 = ptrtoint ptr %dev.i54 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i54, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.28, i32 noundef 17, i32 noundef %call.i.i52) #8
  br label %twl6030_writeb.exit56

twl6030_writeb.exit56:                            ; preds = %do.end.i55, %if.end13.twl6030_writeb.exit56_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6030_usb_irq(i32 noundef %irq, ptr nocapture noundef %_twl) #2 align 64 {
entry:
  %data.i52 = alloca i8, align 1
  %data.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #5
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %data.i, align 1, !annotation !106
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %data.i, i8 noundef zeroext 33, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.i = icmp sgt i32 %call.i.i, -1
  br i1 %cmp.i, label %if.then.i, label %do.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %data.i, align 1
  %conv.i = zext i8 %2 to i32
  br label %twl6030_readb.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.twl6030_usb, ptr %_twl, i32 0, i32 1
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.33, i32 noundef 9, i32 noundef 33, i32 noundef %call.i.i) #8
  br label %twl6030_readb.exit

twl6030_readb.exit:                               ; preds = %do.end.i, %if.then.i
  %ret.0.i = phi i32 [ %conv.i, %if.then.i ], [ %call.i.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i52) #5
  %5 = ptrtoint ptr %data.i52 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %data.i52, align 1, !annotation !106
  %call.i.i53 = call i32 @twl_i2c_read(i8 noundef zeroext 2, ptr noundef nonnull %data.i52, i8 noundef zeroext 3, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i53)
  %cmp.i54 = icmp sgt i32 %call.i.i53, -1
  br i1 %cmp.i54, label %if.then.i56, label %do.end.i58

if.then.i56:                                      ; preds = %twl6030_readb.exit
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %data.i52 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %data.i52, align 1
  %conv.i55 = zext i8 %7 to i32
  br label %twl6030_readb.exit61

do.end.i58:                                       ; preds = %twl6030_readb.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i57 = getelementptr inbounds %struct.twl6030_usb, ptr %_twl, i32 0, i32 1
  %8 = ptrtoint ptr %dev.i57 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i57, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.33, i32 noundef 2, i32 noundef 3, i32 noundef %call.i.i53) #8
  br label %twl6030_readb.exit61

twl6030_readb.exit61:                             ; preds = %do.end.i58, %if.then.i56
  %ret.0.i59 = phi i32 [ %conv.i55, %if.then.i56 ], [ %call.i.i53, %do.end.i58 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i52) #5
  %10 = and i32 %ret.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.then, label %twl6030_readb.exit61.if.end32_crit_edge

twl6030_readb.exit61.if.end32_crit_edge:          ; preds = %twl6030_readb.exit61
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then:                                          ; preds = %twl6030_readb.exit61
  %11 = and i32 %ret.0.i59, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not = icmp eq i32 %11, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then
  %usb3v3 = getelementptr inbounds %struct.twl6030_usb, ptr %_twl, i32 0, i32 3
  %12 = ptrtoint ptr %usb3v3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usb3v3, align 4
  %call6 = call i32 @regulator_enable(ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.if.end_crit_edge, label %do.end

if.then5.if.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.twl6030_usb, ptr %_twl, i32 0, i32 1
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.31) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then5.if.end_crit_edge
  %asleep = getelementptr inbounds %struct.twl6030_usb, ptr %_twl, i32 0, i32 9
  %16 = ptrtoint ptr %asleep to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %asleep, align 4
  %linkstat = getelementptr inbounds %struct.twl6030_usb, ptr %_twl, i32 0, i32 8
  %17 = ptrtoint ptr %linkstat to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %linkstat, align 4
  %call9 = call i32 @musb_mailbox(i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end.if.end32_crit_edge, label %if.then11

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %linkstat to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %linkstat, align 4
  br label %if.end32

if.else:                                          ; preds = %if.then
  %linkstat14 = getelementptr inbounds %struct.twl6030_usb, ptr %_twl, i32 0, i32 8
  %19 = ptrtoint ptr %linkstat14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %linkstat14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.not = icmp eq i32 %20, 0
  br i1 %cmp.not, label %if.else.if.end32_crit_edge, label %if.then16

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then16:                                        ; preds = %if.else
  %21 = ptrtoint ptr %linkstat14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %linkstat14, align 4
  %call18 = call i32 @musb_mailbox(i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then16.if.end22_crit_edge, label %if.then20

if.then16.if.end22_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then20:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %linkstat14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %linkstat14, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.then16.if.end22_crit_edge
  %asleep23 = getelementptr inbounds %struct.twl6030_usb, ptr %_twl, i32 0, i32 9
  %23 = ptrtoint ptr %asleep23 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %asleep23, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool24.not = icmp eq i8 %24, 0
  br i1 %tobool24.not, label %if.end22.if.end32_crit_edge, label %if.then25

if.end22.if.end32_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %usb3v326 = getelementptr inbounds %struct.twl6030_usb, ptr %_twl, i32 0, i32 3
  %25 = ptrtoint ptr %usb3v326 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %usb3v326, align 4
  %call27 = call i32 @regulator_disable(ptr noundef %26) #5
  %27 = ptrtoint ptr %asleep23 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %asleep23, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then25, %if.end22.if.end32_crit_edge, %if.else.if.end32_crit_edge, %if.then11, %if.end.if.end32_crit_edge, %twl6030_readb.exit61.if.end32_crit_edge
  %dev33 = getelementptr inbounds %struct.twl6030_usb, ptr %_twl, i32 0, i32 1
  %28 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev33, align 4
  call void @sysfs_notify(ptr noundef %29, ptr noundef null, ptr noundef nonnull @.str.36) #5
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @twl6030_enable_irq(ptr nocapture noundef readonly %twl) unnamed_addr #2 align 64 {
entry:
  %val.addr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #5
  %0 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %val.addr.i.i, align 1
  %call.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 0, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext 20, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.twl6030_writeb.exit_crit_edge

entry.twl6030_writeb.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %twl6030_writeb.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.twl6030_usb, ptr %twl, i32 0, i32 1
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.28, i32 noundef 20, i32 noundef %call.i.i) #8
  br label %twl6030_writeb.exit

twl6030_writeb.exit:                              ; preds = %do.end.i, %entry.twl6030_writeb.exit_crit_edge
  %call1 = call i32 @twl6030_interrupt_unmask(i8 noundef zeroext 5, i8 noundef zeroext 5) #5
  %call2 = call i32 @twl6030_interrupt_unmask(i8 noundef zeroext 5, i8 noundef zeroext 8) #5
  %call3 = call i32 @twl6030_interrupt_unmask(i8 noundef zeroext 16, i8 noundef zeroext 5) #5
  %call4 = call i32 @twl6030_interrupt_unmask(i8 noundef zeroext 16, i8 noundef zeroext 8) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_write(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_mailbox(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_read(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl6030_interrupt_unmask(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl6030_interrupt_mask(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vbus_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.twl6030_usb, ptr %1, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %linkstat = getelementptr inbounds %struct.twl6030_usb, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %linkstat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %linkstat, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %sw.default [
    i32 3, label %sw.bb
    i32 1, label %sw.bb7
    i32 4, label %sw.bb9
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = call ptr @memcpy(ptr %buf, ptr @.str.37, i32 6)
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 1768163840, ptr %buf, align 1
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = call ptr @memcpy(ptr %buf, ptr @.str.39, i32 6)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = call ptr @memcpy(ptr %buf, ptr @.str.40, i32 9)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb9, %sw.bb7, %sw.bb
  %ret.0 = phi i32 [ 8, %sw.default ], [ 5, %sw.bb9 ], [ 3, %sw.bb7 ], [ 5, %sw.bb ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !35, !36, !37, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !81, !83, !84, !86, !88, !90, !92, !94}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !{ptr @__initcall__kmod_phy_twl6030_usb__293_449_twl6030_usb_init4, !1, !"__initcall__kmod_phy_twl6030_usb__293_449_twl6030_usb_init4", i1 false, i1 false}
!1 = !{!"../drivers/usb/phy/phy-twl6030-usb.c", i32 449, i32 1}
!2 = !{ptr @__exitcall_twl6030_usb_exit, !3, !"__exitcall_twl6030_usb_exit", i1 false, i1 false}
!3 = !{!"../drivers/usb/phy/phy-twl6030-usb.c", i32 455, i32 1}
!4 = !{ptr @__UNIQUE_ID_alias294, !5, !"__UNIQUE_ID_alias294", i1 false, i1 false}
!5 = !{!"../drivers/usb/phy/phy-twl6030-usb.c", i32 457, i32 1}
!6 = !{ptr @__UNIQUE_ID_author295, !7, !"__UNIQUE_ID_author295", i1 false, i1 false}
!7 = !{!"../drivers/usb/phy/phy-twl6030-usb.c", i32 458, i32 1}
!8 = !{ptr @__UNIQUE_ID_description296, !9, !"__UNIQUE_ID_description296", i1 false, i1 false}
!9 = !{!"../drivers/usb/phy/phy-twl6030-usb.c", i32 459, i32 1}
!10 = !{ptr @__UNIQUE_ID_file297, !11, !"__UNIQUE_ID_file297", i1 false, i1 false}
!11 = !{!"../drivers/usb/phy/phy-twl6030-usb.c", i32 460, i32 1}
!12 = !{ptr @__UNIQUE_ID_license298, !11, !"__UNIQUE_ID_license298", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/usb/phy/phy-twl6030-usb.c", i32 439, i32 11}
!15 = !{ptr @twl6030_usb_driver, !16, !"twl6030_usb_driver", i1 false, i1 false}
!16 = !{!"../drivers/usb/phy/phy-twl6030-usb.c", i32 435, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/phy/phy-twl6030-usb.c", i32 338, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @twl6030_usb_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @twl6030_usb_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/phy/phy-twl6030-usb.c", i32 361, i32 3}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @twl6030_usb_probe._entry.6, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @twl6030_usb_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @twl6030_usb_probe.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/usb/phy/phy-twl6030-usb.c", i32 366, i32 2}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/phy/phy-twl6030-usb.c", i32 370, i32 3}
!35 = !{ptr @twl6030_usb_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @twl6030_usb_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @twl6030_usb_probe.__key.14, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/usb/phy/phy-twl6030-usb.c", i32 376, i32 2}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @twl6030_usb_probe.__key.16, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/usb/phy/phy-twl6030-usb.c", i32 377, i32 2}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @twl6030_usb_probe.__key.18, !41, !"__key", i1 false, i1 false}
!44 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/phy/phy-twl6030-usb.c", i32 383, i32 3}
!47 = !{ptr @twl6030_usb_probe._entry.20, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @twl6030_usb_probe._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @twl6030_usb_probe._entry.23, !50, !"_entry", i1 false, i1 false}
!50 = !{!"../drivers/usb/phy/phy-twl6030-usb.c", i32 392, i32 3}
!51 = !{ptr @twl6030_usb_probe._entry_ptr.24, !50, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/phy/phy-twl6030-usb.c", i32 400, i32 2}
!54 = !{ptr @twl6030_usb_probe._entry.25, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @twl6030_usb_probe._entry_ptr.27, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/phy/phy-twl6030-usb.c", i32 111, i32 3}
!58 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @twl6030_writeb._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @twl6030_writeb._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/phy/phy-twl6030-usb.c", i32 155, i32 40}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/phy/phy-twl6030-usb.c", i32 259, i32 4}
!65 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @twl6030_usbotg_irq._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @twl6030_usbotg_irq._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/phy/phy-twl6030-usb.c", i32 125, i32 3}
!70 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @twl6030_readb._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @twl6030_readb._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/phy/phy-twl6030-usb.c", i32 220, i32 5}
!75 = !{ptr @twl6030_usb_irq._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @twl6030_usb_irq._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/usb/phy/phy-twl6030-usb.c", i32 242, i32 38}
!79 = !{ptr @twl6030_usb_id_table, !80, !"twl6030_usb_id_table", i1 false, i1 false}
!80 = !{!"../drivers/usb/phy/phy-twl6030-usb.c", i32 429, i32 34}
!81 = !{ptr @twl6030_groups, !82, !"twl6030_groups", i1 false, i1 false}
!82 = !{!"../drivers/usb/phy/phy-twl6030-usb.c", i32 203, i32 1}
!83 = !{ptr @twl6030_group, !82, !"twl6030_group", i1 false, i1 false}
!84 = !{ptr @twl6030_attrs, !85, !"twl6030_attrs", i1 false, i1 false}
!85 = !{!"../drivers/usb/phy/phy-twl6030-usb.c", i32 199, i32 26}
!86 = !{ptr @dev_attr_vbus, !87, !"dev_attr_vbus", i1 false, i1 false}
!87 = !{!"../drivers/usb/phy/phy-twl6030-usb.c", i32 197, i32 8}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/phy/phy-twl6030-usb.c", i32 182, i32 40}
!90 = distinct !{null, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/phy/phy-twl6030-usb.c", i32 185, i32 40}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/phy/phy-twl6030-usb.c", i32 188, i32 40}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/phy/phy-twl6030-usb.c", i32 191, i32 40}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!105 = !{i8 0, i8 2}
!106 = !{!"auto-init"}
