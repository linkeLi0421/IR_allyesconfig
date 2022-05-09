; ModuleID = '/llk/IR_all_yes/drivers/usb/musb/ux500.c_pt.bc'
source_filename = "../drivers/usb/musb/ux500.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.musb_platform_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.musb_hdrc_config = type { ptr, i32, i8, i8, i8, i32 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.ux500_glue = type { ptr, ptr, ptr }
%struct.musb_hdrc_platform_data = type { i8, ptr, ptr, i8, i8, i8, i8, ptr, ptr, ptr, ptr }
%struct.musb = type { %struct.spinlock, %struct.spinlock, %struct.musb_io, ptr, %struct.musb_context_registers, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, i16, i16, i16, i32, i32, i8, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.timer_list, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, i32, ptr, i8, i8, i16, i16, ptr, ptr, i32, i8, [16 x %struct.musb_hw_ep], i16, i16, i8, ptr, i8, i32, i8, i32, i8, i32, i32, [3 x i8], i8, i8, i16, i8, %struct.usb_gadget, ptr, ptr, ptr, i32, ptr }
%struct.musb_io = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.musb_context_registers = type { i8, i8, i16, i8, i8, i8, i8, i8, i32, [16 x %struct.musb_csr_regs] }
%struct.musb_csr_regs = type { i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.musb_hw_ep = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i16, i16, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, i8, %struct.musb_ep, %struct.musb_ep }
%struct.musb_ep = type { %struct.usb_ep, [12 x i8], ptr, ptr, i8, i8, i8, i16, ptr, ptr, %struct.list_head, i8, i8, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_description300 = internal constant [40 x i8] c"ux500.description=UX500 MUSB Glue Layer\00", section ".modinfo", align 1
@__UNIQUE_ID_author301 = internal constant [68 x i8] c"ux500.author=Mian Yousaf Kaukab <mian.yousaf.kaukab@stericsson.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file302 = internal constant [34 x i8] c"ux500.file=drivers/usb/musb/ux500\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [21 x i8] c"ux500.license=GPL v2\00", section ".modinfo", align 1
@__initcall__kmod_ux500__304_371_ux500_driver_init6 = internal global ptr @ux500_driver_init, section ".initcall6.init", align 4
@ux500_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ux500_probe, ptr @ux500_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ux500_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ux500_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ux500_driver_exit = internal global ptr @ux500_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"musb-ux500\00", [21 x i8] zeroinitializer }, align 32
@ux500_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"stericsson,db8500-musb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ux500_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ux500_suspend, ptr @ux500_resume, ptr @ux500_suspend, ptr @ux500_resume, ptr @ux500_suspend, ptr @ux500_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ux500_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 234, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"no pdata or device tree found\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ux500_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/usb/musb/ux500.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ux500_probe._entry_ptr = internal global ptr @ux500_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"musb-hdrc\00", [22 x i8] zeroinitializer }, align 32
@ux500_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 245, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to allocate musb device\0A\00", [32 x i8] zeroinitializer }, align 32
@ux500_probe._entry_ptr.9 = internal global ptr @ux500_probe._entry.7, section ".printk_index", align 4
@ux500_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 251, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@ux500_probe._entry_ptr.12 = internal global ptr @ux500_probe._entry.10, section ".printk_index", align 4
@ux500_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 258, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@ux500_probe._entry_ptr.15 = internal global ptr @ux500_probe._entry.13, section ".printk_index", align 4
@ux500_ops = internal constant { %struct.musb_platform_ops, [36 x i8] } { %struct.musb_platform_ops { i32 65, ptr @ux500_musb_init, ptr @ux500_musb_exit, ptr null, ptr null, ptr null, ptr null, i16 5, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ux500_musb_set_vbus, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ux500_musb_hdrc_config = internal constant { %struct.musb_hdrc_config, [16 x i8] } { %struct.musb_hdrc_config { ptr null, i32 0, i8 -64, i8 16, i8 16, i32 0 }, [16 x i8] zeroinitializer }, align 32
@ux500_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 278, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to add resources\0A\00", [39 x i8] zeroinitializer }, align 32
@ux500_probe._entry_ptr.18 = internal global ptr @ux500_probe._entry.16, section ".printk_index", align 4
@ux500_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 284, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to add platform_data\0A\00", [35 x i8] zeroinitializer }, align 32
@ux500_probe._entry_ptr.21 = internal global ptr @ux500_probe._entry.19, section ".printk_index", align 4
@ux500_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 290, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to register musb device\0A\00", [32 x i8] zeroinitializer }, align 32
@ux500_probe._entry_ptr.24 = internal global ptr @ux500_probe._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dr_mode\00", [24 x i8] zeroinitializer }, align 32
@ux500_of_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 201, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"No 'dr_mode' property found\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ux500_of_probe\00", [17 x i8] zeroinitializer }, align 32
@ux500_of_probe._entry_ptr = internal global ptr @ux500_of_probe._entry, section ".printk_index", align 4
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"host\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"otg\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"peripheral\00", [21 x i8] zeroinitializer }, align 32
@ux500_musb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013HS USB OTG: no transceiver configured\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ux500_musb_init\00", [16 x i8] zeroinitializer }, align 32
@ux500_musb_init._entry_ptr = internal global ptr @ux500_musb_init._entry, section ".printk_index", align 4
@ux500_musb_init.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.32, ptr @.str.3, ptr @.str.34, i8 0, i8 39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ux500\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"notification register failed\0A\00", [34 x i8] zeroinitializer }, align 32
@musb_otg_notifications.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.35, ptr @.str.3, ptr @.str.36, i8 0, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"musb_otg_notifications\00", [41 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"musb_otg_notifications %ld %s\0A\00", [33 x i8] zeroinitializer }, align 32
@musb_otg_notifications.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.35, ptr @.str.3, ptr @.str.37, i8 0, i8 26, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ID GND\0A\00", [24 x i8] zeroinitializer }, align 32
@musb_otg_notifications.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.35, ptr @.str.3, ptr @.str.38, i8 0, i8 27, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"VBUS Connect\0A\00", [18 x i8] zeroinitializer }, align 32
@musb_otg_notifications.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.35, ptr @.str.3, ptr @.str.39, i8 0, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"VBUS Disconnect\0A\00", [47 x i8] zeroinitializer }, align 32
@musb_otg_notifications.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.35, ptr @.str.3, ptr @.str.40, i8 0, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ID float\0A\00", [22 x i8] zeroinitializer }, align 32
@musb_readb = external dso_local local_unnamed_addr global ptr, align 4
@musb_readw = external dso_local local_unnamed_addr global ptr, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@musb_writeb = external dso_local local_unnamed_addr global ptr, align 4
@ux500_musb_set_vbus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 58, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"configured as A device timeout\00", [33 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ux500_musb_set_vbus\00", [44 x i8] zeroinitializer }, align 32
@ux500_musb_set_vbus._entry_ptr = internal global ptr @ux500_musb_set_vbus._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ux500_musb_set_vbus.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.42, ptr @.str.3, ptr @.str.43, i8 0, i8 22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"VBUS %s, devctl %02x\0A\00", [42 x i8] zeroinitializer }, align 32
@ux500_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.44, ptr @.str.3, i32 338, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ux500_resume\00", [19 x i8] zeroinitializer }, align 32
@ux500_resume._entry_ptr = internal global ptr @ux500_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.45 = private unnamed_addr constant [13 x i8] c"ux500_driver\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 358, i32 31 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 362, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant [12 x i8] c"ux500_match\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 351, i32 34 }
@___asan_gen_.54 = private unnamed_addr constant [13 x i8] c"ux500_pm_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 349, i32 8 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 234, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 243, i32 31 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 245, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 251, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 258, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [10 x i8] c"ux500_ops\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 175, i32 39 }
@___asan_gen_.99 = private unnamed_addr constant [23 x i8] c"ux500_musb_hdrc_config\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 20, i32 38 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 278, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 284, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 290, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 199, i32 29 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 201, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 206, i32 21 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 208, i32 21 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 210, i32 21 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 150, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 157, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 99, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 104, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 108, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 111, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 118, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 57, i32 6 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 89, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.190 = private constant [28 x i8] c"../drivers/usb/musb/ux500.c\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 338, i32 3 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__exitcall_ux500_driver_exit, ptr @__initcall__kmod_ux500__304_371_ux500_driver_init6, ptr @ux500_driver_exit, ptr @ux500_musb_init._entry, ptr @ux500_musb_init._entry_ptr, ptr @ux500_musb_set_vbus._entry, ptr @ux500_musb_set_vbus._entry_ptr, ptr @ux500_of_probe._entry, ptr @ux500_of_probe._entry_ptr, ptr @ux500_probe._entry, ptr @ux500_probe._entry.10, ptr @ux500_probe._entry.13, ptr @ux500_probe._entry.16, ptr @ux500_probe._entry.19, ptr @ux500_probe._entry.22, ptr @ux500_probe._entry.7, ptr @ux500_probe._entry_ptr, ptr @ux500_probe._entry_ptr.12, ptr @ux500_probe._entry_ptr.15, ptr @ux500_probe._entry_ptr.18, ptr @ux500_probe._entry_ptr.21, ptr @ux500_probe._entry_ptr.24, ptr @ux500_probe._entry_ptr.9, ptr @ux500_resume._entry, ptr @ux500_resume._entry_ptr, ptr @ux500_driver, ptr @.str, ptr @ux500_match, ptr @ux500_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @ux500_ops, ptr @ux500_musb_hdrc_config, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_ops to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_musb_hdrc_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_of_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_musb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_musb_set_vbus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ux500_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ux500_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ux500_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @ux500_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ux500_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %strlen.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then:                                          ; preds = %entry
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %do.end, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %strlen.i) #6
  %4 = ptrtoint ptr %strlen.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %strlen.i, align 4, !annotation !115
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then3.ux500_of_probe.exit_crit_edge, label %if.end.i

if.then3.ux500_of_probe.exit_crit_edge:           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %ux500_of_probe.exit

if.end.i:                                         ; preds = %if.then3
  %call1.i = call ptr @of_get_property(ptr noundef nonnull %3, ptr noundef nonnull @.str.25, ptr noundef nonnull %strlen.i) #6
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %do.end.i, label %if.end5.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #9
  br label %ux500_of_probe.exit

if.end5.i:                                        ; preds = %if.end.i
  %5 = ptrtoint ptr %strlen.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %strlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp sgt i32 %6, 0
  br i1 %cmp.i, label %if.then6.i, label %if.end5.i.if.end_crit_edge

if.end5.i.if.end_crit_edge:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then6.i:                                       ; preds = %if.end5.i
  %call7.i = call i32 @strcmp(ptr noundef nonnull %call1.i, ptr noundef nonnull dereferenceable(5) @.str.28) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %if.then6.i.if.end11.i_crit_edge

if.then6.i.if.end11.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %call.i.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %if.then6.i.if.end11.i_crit_edge
  %call12.i = call i32 @strcmp(ptr noundef nonnull %call1.i, ptr noundef nonnull dereferenceable(4) @.str.29) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.then14.i, label %if.end11.i.if.end16.i_crit_edge

if.end11.i.if.end16.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 3, ptr %call.i.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %if.end11.i.if.end16.i_crit_edge
  %call17.i = call i32 @strcmp(ptr noundef nonnull %call1.i, ptr noundef nonnull dereferenceable(11) @.str.30) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.then19.i, label %if.end16.i.if.end_crit_edge

if.end16.i.if.end_crit_edge:                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %call.i.i, align 4
  br label %if.end

ux500_of_probe.exit:                              ; preds = %do.end.i, %if.then3.ux500_of_probe.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %strlen.i) #6
  br label %cleanup

if.end:                                           ; preds = %if.then19.i, %if.end16.i.if.end_crit_edge, %if.end5.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %strlen.i) #6
  %10 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i.i, ptr %platform_data.i, align 8
  br label %if.end10

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end, %entry.if.end10_crit_edge
  %pdata.0 = phi ptr [ %1, %entry.if.end10_crit_edge ], [ %call.i.i, %if.end ]
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #6
  %tobool13.not = icmp eq ptr %call.i, null
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %call16 = call ptr @platform_device_alloc(ptr noundef nonnull @.str.6, i32 noundef -2) #6
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %do.end21, label %if.end23

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  %call25 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #6
  %cmp.i132 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i132, label %do.end30, label %if.end33

do.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  %11 = ptrtoint ptr %call25 to i32
  br label %err1

if.end33:                                         ; preds = %if.end23
  %call.i133 = call i32 @clk_prepare(ptr noundef %call25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133)
  %tobool.not.i134 = icmp eq i32 %call.i133, 0
  br i1 %tobool.not.i134, label %if.end.i137, label %if.end33.do.end39_crit_edge

if.end33.do.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end39

if.end.i137:                                      ; preds = %if.end33
  %call1.i135 = call i32 @clk_enable(ptr noundef %call25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i135)
  %tobool2.not.i136 = icmp eq i32 %call1.i135, 0
  br i1 %tobool2.not.i136, label %if.end41, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i137
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %call25) #6
  br label %do.end39

do.end39:                                         ; preds = %if.then3.i, %if.end33.do.end39_crit_edge
  %retval.0.i138.ph = phi i32 [ %call1.i135, %if.then3.i ], [ %call.i133, %if.end33.do.end39_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #9
  br label %err1

if.end41:                                         ; preds = %if.end.i137
  %dev43 = getelementptr inbounds %struct.platform_device, ptr %call16, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %call16, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %parent, align 8
  %coherent_dma_mask = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 19
  %dma_mask = getelementptr inbounds %struct.platform_device, ptr %call16, i32 0, i32 3, i32 18
  %13 = ptrtoint ptr %dma_mask to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %coherent_dma_mask, ptr %dma_mask, align 8
  %14 = ptrtoint ptr %coherent_dma_mask to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %coherent_dma_mask, align 8
  %coherent_dma_mask49 = getelementptr inbounds %struct.platform_device, ptr %call16, i32 0, i32 3, i32 19
  %16 = ptrtoint ptr %coherent_dma_mask49 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %coherent_dma_mask49, align 8
  call void @device_set_of_node_from_dev(ptr noundef %dev43, ptr noundef %dev) #6
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %call.i, align 4
  %musb54 = getelementptr inbounds %struct.ux500_glue, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %musb54 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call16, ptr %musb54, align 4
  %clk55 = getelementptr inbounds %struct.ux500_glue, ptr %call.i, i32 0, i32 2
  %19 = ptrtoint ptr %clk55 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call25, ptr %clk55, align 4
  %platform_ops = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %pdata.0, i32 0, i32 10
  %20 = ptrtoint ptr %platform_ops to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @ux500_ops, ptr %platform_ops, align 4
  %config = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %pdata.0, i32 0, i32 8
  %21 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @ux500_musb_hdrc_config, ptr %config, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %resource = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 7
  %23 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %resource, align 8
  %num_resources = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 6
  %25 = ptrtoint ptr %num_resources to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_resources, align 4
  %call56 = call i32 @platform_device_add_resources(ptr noundef nonnull %call16, ptr noundef %24, i32 noundef %26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end63, label %if.end41.err2_crit_edge

if.end41.err2_crit_edge:                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %err2

if.end63:                                         ; preds = %if.end41
  %call64 = call i32 @platform_device_add_data(ptr noundef nonnull %call16, ptr noundef nonnull %pdata.0, i32 noundef 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end71, label %if.end63.err2_crit_edge

if.end63.err2_crit_edge:                          ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %err2

if.end71:                                         ; preds = %if.end63
  %call72 = call i32 @platform_device_add(ptr noundef nonnull %call16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end71.cleanup_crit_edge, label %if.end71.err2_crit_edge

if.end71.err2_crit_edge:                          ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %err2

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err2:                                             ; preds = %if.end71.err2_crit_edge, %if.end63.err2_crit_edge, %if.end41.err2_crit_edge
  %.str.23.sink = phi ptr [ @.str.17, %if.end41.err2_crit_edge ], [ @.str.20, %if.end63.err2_crit_edge ], [ @.str.23, %if.end71.err2_crit_edge ]
  %ret.0 = phi i32 [ %call56, %if.end41.err2_crit_edge ], [ %call64, %if.end63.err2_crit_edge ], [ %call72, %if.end71.err2_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.23.sink) #9
  call void @clk_disable(ptr noundef %call25) #6
  call void @clk_unprepare(ptr noundef %call25) #6
  br label %err1

err1:                                             ; preds = %err2, %do.end39, %do.end30
  %ret.1 = phi i32 [ %11, %do.end30 ], [ %retval.0.i138.ph, %do.end39 ], [ %ret.0, %err2 ]
  call void @platform_device_put(ptr noundef nonnull %call16) #6
  br label %cleanup

cleanup:                                          ; preds = %err1, %if.end71.cleanup_crit_edge, %do.end21, %if.end10.cleanup_crit_edge, %do.end, %ux500_of_probe.exit
  %retval.0 = phi i32 [ 0, %if.end71.cleanup_crit_edge ], [ %ret.1, %err1 ], [ -12, %do.end21 ], [ -12, %if.end10.cleanup_crit_edge ], [ -12, %ux500_of_probe.exit ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ux500_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %musb = getelementptr inbounds %struct.ux500_glue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %musb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %musb, align 4
  tail call void @platform_device_unregister(ptr noundef %3) #6
  %clk = getelementptr inbounds %struct.ux500_glue, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_of_node_from_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_resources(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ux500_musb_init(ptr noundef %musb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usb_get_phy(i32 noundef 1) #6
  %xceiv = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 35
  %0 = ptrtoint ptr %xceiv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %xceiv, align 8
  %tobool.not.i = icmp eq ptr %call, null
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %nb = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 23
  %1 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @musb_otg_notifications, ptr %nb, align 8
  %notifier.i = getelementptr inbounds %struct.usb_phy, ptr %call, i32 0, i32 18
  %call.i = tail call i32 @atomic_notifier_chain_register(ptr noundef %notifier.i, ptr noundef %nb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.body8, label %if.end17

do.body8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ux500_musb_init.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ux500_musb_init, %if.then13)) #6
          to label %cleanup [label %if.then13], !srcloc !116

if.then13:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  %controller = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %2 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ux500_musb_init.__UNIQUE_ID_ddebug299, ptr noundef %3, ptr noundef nonnull @.str.34) #6
  br label %cleanup

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %isr = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 5
  %4 = ptrtoint ptr %isr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ux500_musb_interrupt, ptr %isr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then13, %do.body8, %do.end
  %retval.0 = phi i32 [ -517, %do.end ], [ 0, %if.end17 ], [ %call.i, %if.then13 ], [ %call.i, %do.body8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ux500_musb_exit(ptr noundef %musb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %xceiv = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 35
  %0 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xceiv, align 8
  %nb = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 23
  %notifier.i = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 18
  %call.i = tail call i32 @atomic_notifier_chain_unregister(ptr noundef %notifier.i, ptr noundef %nb) #6
  %2 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xceiv, align 8
  tail call void @usb_put_phy(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ux500_musb_set_vbus(ptr nocapture noundef %musb, i32 noundef %is_on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %1 = load ptr, ptr @musb_readb, align 4
  %mregs = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 27
  %2 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mregs, align 8
  %call1 = tail call zeroext i8 %1(ptr noundef %3, i32 noundef 96) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %tobool.not = icmp eq i32 %is_on, 0
  br i1 %tobool.not, label %if.then31, label %if.then

if.then:                                          ; preds = %entry
  %xceiv = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 35
  %4 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xceiv, align 8
  %otg = getelementptr inbounds %struct.usb_phy, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %9)
  %cmp = icmp eq i32 %9, 6
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %10 = or i8 %call1, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %11 = load ptr, ptr @musb_writeb, align 4
  %12 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mregs, align 8
  tail call void %11(ptr noundef %13, i32 noundef 96, i8 noundef zeroext %10) #6
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.then2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %14 = load ptr, ptr @musb_readb, align 4
  %15 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mregs, align 8
  %call6 = tail call zeroext i8 %14(ptr noundef %16, i32 noundef 96) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call6)
  %tobool8.not = icmp sgt i8 %call6, -1
  br i1 %tobool8.not, label %while.cond.do.body37.sink.split_crit_edge, label %while.body

while.cond.do.body37.sink.split_crit_edge:        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body37.sink.split

while.body:                                       ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %17
  %cmp9 = icmp slt i32 %sub, 0
  br i1 %cmp9, label %do.end, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %controller = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %18 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %controller, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.41) #9
  br label %do.body37.sink.split

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %is_active = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 51
  %20 = ptrtoint ptr %is_active to i32
  call void @__asan_loadN_noabort(i32 %20, i32 3)
  %bf.load = load i24, ptr %is_active, align 8
  %bf.set = or i24 %bf.load, 2097152
  store i24 %bf.set, ptr %is_active, align 8
  %21 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %otg, align 4
  %state14 = getelementptr inbounds %struct.usb_otg, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %state14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 7, ptr %state14, align 4
  %24 = or i8 %call1, 1
  %is_host = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 48
  %25 = ptrtoint ptr %is_host to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %is_host, align 4
  br label %do.body37.sink.split

if.then31:                                        ; preds = %entry
  %is_active20 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 51
  %26 = ptrtoint ptr %is_active20 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 3)
  %bf.load21 = load i24, ptr %is_active20, align 8
  %bf.clear22 = and i24 %bf.load21, -2097153
  store i24 %bf.clear22, ptr %is_active20, align 8
  %27 = and i8 %call1, -2
  %is_host27 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 48
  %28 = ptrtoint ptr %is_host27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %is_host27, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %29 = load ptr, ptr @musb_writeb, align 4
  %30 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mregs, align 8
  tail call void %29(ptr noundef %31, i32 noundef 96, i8 noundef zeroext %27) #6
  br label %while.body34

while.body34:                                     ; preds = %while.body34.while.body34_crit_edge, %if.then31
  %__ms.073 = phi i32 [ 200, %if.then31 ], [ %dec, %while.body34.while.body34_crit_edge ]
  %dec = add nsw i32 %__ms.073, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #6
  %tobool33.not = icmp eq i32 %dec, 0
  br i1 %tobool33.not, label %while.body34.do.body37_crit_edge, label %while.body34.while.body34_crit_edge

while.body34.while.body34_crit_edge:              ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body34

while.body34.do.body37_crit_edge:                 ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body37

do.body37.sink.split:                             ; preds = %if.else, %do.end, %while.cond.do.body37.sink.split_crit_edge
  %.sink74 = phi i8 [ %24, %if.else ], [ %10, %do.end ], [ %10, %while.cond.do.body37.sink.split_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %33 = load ptr, ptr @musb_writeb, align 4
  %34 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mregs, align 8
  tail call void %33(ptr noundef %35, i32 noundef 96, i8 noundef zeroext %.sink74) #6
  br label %do.body37

do.body37:                                        ; preds = %do.body37.sink.split, %while.body34.do.body37_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ux500_musb_set_vbus.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ux500_musb_set_vbus, %if.then42)) #6
          to label %do.end53 [label %if.then42], !srcloc !116

if.then42:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #8
  %controller43 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %36 = ptrtoint ptr %controller43 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %controller43, align 8
  %xceiv44 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 35
  %38 = ptrtoint ptr %xceiv44 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %xceiv44, align 8
  %otg45 = getelementptr inbounds %struct.usb_phy, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %otg45 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %otg45, align 4
  %state46 = getelementptr inbounds %struct.usb_otg, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %state46 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %state46, align 4
  %call47 = tail call ptr @usb_otg_state_string(i32 noundef %43) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %44 = load ptr, ptr @musb_readb, align 4
  %45 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mregs, align 8
  %call49 = tail call zeroext i8 %44(ptr noundef %46, i32 noundef 96) #6
  %conv50 = zext i8 %call49 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ux500_musb_set_vbus.__UNIQUE_ID_ddebug293, ptr noundef %37, ptr noundef nonnull @.str.43, ptr noundef %call47, i32 noundef %conv50) #6
  br label %do.end53

do.end53:                                         ; preds = %if.then42, %do.body37
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_phy(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @musb_otg_notifications(ptr nocapture noundef %nb, i32 noundef %event, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -1080
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @musb_otg_notifications.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@musb_otg_notifications, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !116

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %controller = getelementptr i8, ptr %nb, i32 16
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 8
  %xceiv = getelementptr i8, ptr %nb, i32 48
  %2 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xceiv, align 8
  %otg = getelementptr inbounds %struct.usb_phy, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  %call4 = tail call ptr @usb_otg_state_string(i32 noundef %7) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @musb_otg_notifications.__UNIQUE_ID_ddebug294, ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef %event, ptr noundef %call4) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %do.body64 [
    i32 2, label %do.body5
    i32 1, label %do.body23
    i32 0, label %do.body41
  ]

do.body5:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @musb_otg_notifications.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@musb_otg_notifications, %if.then17)) #6
          to label %do.end21 [label %if.then17], !srcloc !116

if.then17:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  %controller18 = getelementptr i8, ptr %nb, i32 16
  %9 = ptrtoint ptr %controller18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %controller18, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @musb_otg_notifications.__UNIQUE_ID_ddebug295, ptr noundef %10, ptr noundef nonnull @.str.37) #6
  br label %do.end21

do.end21:                                         ; preds = %if.then17, %do.body5
  tail call void @ux500_musb_set_vbus(ptr noundef %add.ptr, i32 noundef 1)
  br label %cleanup

do.body23:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @musb_otg_notifications.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@musb_otg_notifications, %if.then35)) #6
          to label %cleanup [label %if.then35], !srcloc !116

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #8
  %controller36 = getelementptr i8, ptr %nb, i32 16
  %11 = ptrtoint ptr %controller36 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %controller36, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @musb_otg_notifications.__UNIQUE_ID_ddebug296, ptr noundef %12, ptr noundef nonnull @.str.38) #6
  br label %cleanup

do.body41:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @musb_otg_notifications.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@musb_otg_notifications, %if.then53)) #6
          to label %do.end57 [label %if.then53], !srcloc !116

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #8
  %controller54 = getelementptr i8, ptr %nb, i32 16
  %13 = ptrtoint ptr %controller54 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %controller54, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @musb_otg_notifications.__UNIQUE_ID_ddebug297, ptr noundef %14, ptr noundef nonnull @.str.39) #6
  br label %do.end57

do.end57:                                         ; preds = %if.then53, %do.body41
  %is_host = getelementptr i8, ptr %nb, i32 3932
  %15 = ptrtoint ptr %is_host to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %is_host, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool58.not = icmp eq i8 %16, 0
  br i1 %tobool58.not, label %if.else, label %if.then59

if.then59:                                        ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ux500_musb_set_vbus(ptr noundef %add.ptr, i32 noundef 0)
  br label %cleanup

if.else:                                          ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #8
  %xceiv60 = getelementptr i8, ptr %nb, i32 48
  %17 = ptrtoint ptr %xceiv60 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %xceiv60, align 8
  %otg61 = getelementptr inbounds %struct.usb_phy, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %otg61 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %otg61, align 4
  %state62 = getelementptr inbounds %struct.usb_otg, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %state62, align 4
  br label %cleanup

do.body64:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @musb_otg_notifications.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@musb_otg_notifications, %if.then76)) #6
          to label %cleanup [label %if.then76], !srcloc !116

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #8
  %controller77 = getelementptr i8, ptr %nb, i32 16
  %22 = ptrtoint ptr %controller77 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %controller77, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @musb_otg_notifications.__UNIQUE_ID_ddebug298, ptr noundef %23, ptr noundef nonnull @.str.40) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then76, %do.body64, %if.else, %if.then59, %if.then35, %do.body23, %do.end21
  %retval.0 = phi i32 [ 0, %if.then76 ], [ 1, %if.then59 ], [ 1, %if.else ], [ 1, %if.then35 ], [ 1, %do.end21 ], [ 1, %do.body23 ], [ 0, %do.body64 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ux500_musb_interrupt(i32 noundef %irq, ptr noundef %__hci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %__hci) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %0 = load ptr, ptr @musb_readb, align 4
  %mregs = getelementptr inbounds %struct.musb, ptr %__hci, i32 0, i32 27
  %1 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mregs, align 8
  %call6 = tail call zeroext i8 %0(ptr noundef %2, i32 noundef 10) #6
  %int_usb = getelementptr inbounds %struct.musb, ptr %__hci, i32 0, i32 32
  %3 = ptrtoint ptr %int_usb to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %call6, ptr %int_usb, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %4 = load ptr, ptr @musb_readw, align 4
  %5 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mregs, align 8
  %call8 = tail call zeroext i16 %4(ptr noundef %6, i32 noundef 2) #6
  %int_tx = getelementptr inbounds %struct.musb, ptr %__hci, i32 0, i32 34
  %7 = ptrtoint ptr %int_tx to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %call8, ptr %int_tx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %8 = load ptr, ptr @musb_readw, align 4
  %9 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mregs, align 8
  %call10 = tail call zeroext i16 %8(ptr noundef %10, i32 noundef 4) #6
  %int_rx = getelementptr inbounds %struct.musb, ptr %__hci, i32 0, i32 33
  %11 = ptrtoint ptr %int_rx to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %call10, ptr %int_rx, align 2
  %12 = ptrtoint ptr %int_usb to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %int_usb, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %14 = ptrtoint ptr %int_tx to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %int_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool15.not = icmp eq i16 %15, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call10)
  %tobool19.not = icmp eq i16 %call10, 0
  %or.cond = select i1 %tobool15.not, i1 %tobool19.not, i1 false
  br i1 %or.cond, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call20 = tail call i32 @musb_interrupt(ptr noundef %__hci) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %retval1.0 = phi i32 [ %call20, %if.then ], [ 0, %lor.lhs.false.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %__hci, i32 noundef %call3) #6
  ret i32 %retval1.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_otg_state_string(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_interrupt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_phy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ux500_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %musb1 = getelementptr inbounds %struct.ux500_glue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %musb1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %musb1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %xceiv = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 35
  %6 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xceiv, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %land.lhs.true.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.then
  %set_suspend.i = getelementptr inbounds %struct.usb_phy, ptr %7, i32 0, i32 26
  %8 = ptrtoint ptr %set_suspend.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_suspend.i, align 4
  %cmp.not.i = icmp eq ptr %9, null
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end_crit_edge, label %if.then.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %9(ptr noundef nonnull %7, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then.i, %land.lhs.true.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %clk = getelementptr inbounds %struct.ux500_glue, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %11) #6
  tail call void @clk_unprepare(ptr noundef %11) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ux500_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %musb1 = getelementptr inbounds %struct.ux500_glue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %musb1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %musb1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.ux500_glue, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %7) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %xceiv = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 35
  %8 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xceiv, align 8
  %tobool.not.i14 = icmp eq ptr %9, null
  br i1 %tobool.not.i14, label %if.then5.cleanup_crit_edge, label %land.lhs.true.i

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.then5
  %set_suspend.i = getelementptr inbounds %struct.usb_phy, ptr %9, i32 0, i32 26
  %10 = ptrtoint ptr %set_suspend.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_suspend.i, align 4
  %cmp.not.i = icmp eq ptr %11, null
  br i1 %cmp.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i15 = tail call i32 %11(ptr noundef nonnull %9, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %land.lhs.true.i.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then5.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !53, !54, !55, !57, !59, !61, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !91, !92, !93, !95, !96, !98, !100, !102, !104, !105}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !{ptr @__UNIQUE_ID_description300, !1, !"__UNIQUE_ID_description300", i1 false, i1 false}
!1 = !{!"../drivers/usb/musb/ux500.c", i32 368, i32 1}
!2 = !{ptr @__UNIQUE_ID_author301, !3, !"__UNIQUE_ID_author301", i1 false, i1 false}
!3 = !{!"../drivers/usb/musb/ux500.c", i32 369, i32 1}
!4 = !{ptr @__UNIQUE_ID_file302, !5, !"__UNIQUE_ID_file302", i1 false, i1 false}
!5 = !{!"../drivers/usb/musb/ux500.c", i32 370, i32 1}
!6 = !{ptr @__UNIQUE_ID_license303, !5, !"__UNIQUE_ID_license303", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_ux500__304_371_ux500_driver_init6, !8, !"__initcall__kmod_ux500__304_371_ux500_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/usb/musb/ux500.c", i32 371, i32 1}
!9 = !{ptr @__exitcall_ux500_driver_exit, !8, !"__exitcall_ux500_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/musb/ux500.c", i32 362, i32 11}
!12 = !{ptr @ux500_driver, !13, !"ux500_driver", i1 false, i1 false}
!13 = !{!"../drivers/usb/musb/ux500.c", i32 358, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/musb/ux500.c", i32 234, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ux500_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ux500_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/musb/ux500.c", i32 243, i32 31}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/musb/ux500.c", i32 245, i32 3}
!26 = !{ptr @ux500_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @ux500_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/musb/ux500.c", i32 251, i32 3}
!30 = !{ptr @ux500_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @ux500_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/musb/ux500.c", i32 258, i32 3}
!34 = !{ptr @ux500_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ux500_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/musb/ux500.c", i32 278, i32 3}
!38 = !{ptr @ux500_probe._entry.16, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @ux500_probe._entry_ptr.18, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/musb/ux500.c", i32 284, i32 3}
!42 = !{ptr @ux500_probe._entry.19, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @ux500_probe._entry_ptr.21, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/musb/ux500.c", i32 290, i32 3}
!46 = !{ptr @ux500_probe._entry.22, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @ux500_probe._entry_ptr.24, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/musb/ux500.c", i32 199, i32 29}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/musb/ux500.c", i32 201, i32 3}
!52 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ux500_of_probe._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @ux500_of_probe._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/musb/ux500.c", i32 206, i32 21}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/musb/ux500.c", i32 208, i32 21}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/musb/ux500.c", i32 210, i32 21}
!61 = !{ptr @ux500_ops, !62, !"ux500_ops", i1 false, i1 false}
!62 = !{!"../drivers/usb/musb/ux500.c", i32 175, i32 39}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/musb/ux500.c", i32 150, i32 3}
!65 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ux500_musb_init._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @ux500_musb_init._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/musb/ux500.c", i32 157, i32 3}
!70 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @ux500_musb_init.__UNIQUE_ID_ddebug299, !69, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/musb/ux500.c", i32 99, i32 2}
!74 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @musb_otg_notifications.__UNIQUE_ID_ddebug294, !73, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/musb/ux500.c", i32 104, i32 3}
!78 = !{ptr @musb_otg_notifications.__UNIQUE_ID_ddebug295, !77, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/musb/ux500.c", i32 108, i32 3}
!81 = !{ptr @musb_otg_notifications.__UNIQUE_ID_ddebug296, !80, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/musb/ux500.c", i32 111, i32 3}
!84 = !{ptr @musb_otg_notifications.__UNIQUE_ID_ddebug297, !83, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/usb/musb/ux500.c", i32 118, i32 3}
!87 = !{ptr @musb_otg_notifications.__UNIQUE_ID_ddebug298, !86, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/musb/ux500.c", i32 57, i32 6}
!90 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @ux500_musb_set_vbus._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @ux500_musb_set_vbus._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/musb/ux500.c", i32 89, i32 2}
!95 = !{ptr @ux500_musb_set_vbus.__UNIQUE_ID_ddebug293, !94, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!96 = !{ptr @ux500_musb_hdrc_config, !97, !"ux500_musb_hdrc_config", i1 false, i1 false}
!97 = !{!"../drivers/usb/musb/ux500.c", i32 20, i32 38}
!98 = !{ptr @ux500_match, !99, !"ux500_match", i1 false, i1 false}
!99 = !{!"../drivers/usb/musb/ux500.c", i32 351, i32 34}
!100 = !{ptr @ux500_pm_ops, !101, !"ux500_pm_ops", i1 false, i1 false}
!101 = !{!"../drivers/usb/musb/ux500.c", i32 349, i32 8}
!102 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/musb/ux500.c", i32 338, i32 3}
!104 = !{ptr @ux500_resume._entry, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @ux500_resume._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{i32 1, !"wchar_size", i32 2}
!107 = !{i32 1, !"min_enum_size", i32 4}
!108 = !{i32 8, !"branch-target-enforcement", i32 0}
!109 = !{i32 8, !"sign-return-address", i32 0}
!110 = !{i32 8, !"sign-return-address-all", i32 0}
!111 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!112 = !{i32 7, !"uwtable", i32 1}
!113 = !{i32 7, !"frame-pointer", i32 2}
!114 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!115 = !{!"auto-init"}
!116 = !{i64 2148959969, i64 2148959974, i64 2148959987, i64 2148960031, i64 2148960065, i64 2148960086}
!117 = !{i8 0, i8 2}
