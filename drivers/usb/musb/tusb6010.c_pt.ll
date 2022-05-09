; ModuleID = '/llk/IR_all_yes/drivers/usb/musb/tusb6010.c_pt.bc'
source_filename = "../drivers/usb/musb/tusb6010.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.musb_platform_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.musb_hdrc_platform_data = type { i8, ptr, ptr, i8, i8, i8, i8, ptr, ptr, ptr, ptr }
%struct.tusb6010_glue = type { ptr, ptr, ptr }
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

@__UNIQUE_ID_description321 = internal constant [46 x i8] c"tusb6010.description=TUSB6010 MUSB Glue Layer\00", section ".modinfo", align 1
@__UNIQUE_ID_author322 = internal constant [44 x i8] c"tusb6010.author=Felipe Balbi <balbi@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file323 = internal constant [40 x i8] c"tusb6010.file=drivers/usb/musb/tusb6010\00", section ".modinfo", align 1
@__UNIQUE_ID_license324 = internal constant [24 x i8] c"tusb6010.license=GPL v2\00", section ".modinfo", align 1
@__initcall__kmod_tusb6010__325_1282_tusb_driver_init6 = internal global ptr @tusb_driver_init, section ".initcall6.init", align 4
@tusb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tusb_probe, ptr @tusb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tusb_driver_exit = internal global ptr @tusb_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"musb-tusb\00", [22 x i8] zeroinitializer }, align 32
@tusb_ops = internal constant { %struct.musb_platform_ops, [36 x i8] } { %struct.musb_platform_ops { i32 522, ptr @tusb_musb_init, ptr @tusb_musb_exit, ptr @tusb_musb_enable, ptr @tusb_musb_disable, ptr @tusb_ep_offset, ptr @tusb_ep_select, i16 0, ptr @tusb_fifo_offset, ptr null, ptr @tusb_readb, ptr @tusb_writeb, ptr null, ptr null, ptr null, ptr null, ptr @tusb_read_fifo, ptr @tusb_write_fifo, ptr null, ptr null, ptr null, ptr null, ptr @tusb_musb_set_mode, ptr @tusb_musb_try_idle, ptr null, ptr @tusb_musb_vbus_status, ptr @tusb_musb_set_vbus, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tusb_dev_info = internal constant { %struct.platform_device_info, [40 x i8] } { %struct.platform_device_info { ptr null, ptr null, i8 0, ptr @.str.65, i32 -2, ptr null, i32 0, ptr null, i32 0, i64 4294967295, ptr null }, [40 x i8] zeroinitializer }, align 32
@tusb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1254, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to register musb device: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tusb_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/usb/musb/tusb6010.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tusb_probe._entry_ptr = internal global ptr @tusb_probe._entry, section ".printk_index", align 4
@tusb_musb_init.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.3, ptr @.str.8, i8 1, i8 21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tusb6010\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tusb_musb_init\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"no async dma resource?\0A\00", [40 x i8] zeroinitializer }, align 32
@tusb_musb_init.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.3, ptr @.str.9, i8 1, i8 23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no sync dma resource?\0A\00", [41 x i8] zeroinitializer }, align 32
@tusb_musb_init.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.3, ptr @.str.10, i8 1, i8 25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ioremap for sync failed\0A\00", [39 x i8] zeroinitializer }, align 32
@tusb_musb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.7, ptr @.str.3, i32 1139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013Could not start tusb6010 (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@tusb_musb_init._entry_ptr = internal global ptr @tusb_musb_init._entry, section ".printk_index", align 4
@the_musb = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@tusb_musb_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&musb->dev_timer)\00", [45 x i8] zeroinitializer }, align 32
@tusb_musb_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 1032, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013tusb: Cannot enable TUSB6010\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tusb_musb_start\00", [16 x i8] zeroinitializer }, align 32
@tusb_musb_start._entry_ptr = internal global ptr @tusb_musb_start._entry, section ".printk_index", align 4
@tusb_musb_start._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.3, i32 1040, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013tusb: Unable to detect TUSB6010\0A\00", [61 x i8] zeroinitializer }, align 32
@tusb_musb_start._entry_ptr.17 = internal global ptr @tusb_musb_start._entry.15, section ".printk_index", align 4
@tusb_musb_start._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.3, i32 1048, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013tusb: Unsupported TUSB6010 revision %i\0A\00", [54 x i8] zeroinitializer }, align 32
@tusb_musb_start._entry_ptr.20 = internal global ptr @tusb_musb_start._entry.18, section ".printk_index", align 4
@tusb_print_revision._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016tusb: %s%i.%i %s%i.%i %s%i.%i %s%i.%i %s%i %s%i.%i\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tusb_print_revision\00", [44 x i8] zeroinitializer }, align 32
@tusb_print_revision._entry_ptr = internal global ptr @tusb_print_revision._entry, section ".printk_index", align 4
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"prcm\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dma\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dieid\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rev\00", [28 x i8] zeroinitializer }, align 32
@tusb_musb_interrupt.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 0, i8 -48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tusb_musb_interrupt\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TUSB IRQ %08x\0A\00", [17 x i8] zeroinitializer }, align 32
@tusb_musb_interrupt.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.29, ptr @.str.3, ptr @.str.31, i8 0, i8 -43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TUSB NOR not ready\0A\00", [44 x i8] zeroinitializer }, align 32
@tusb_musb_interrupt.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.29, ptr @.str.3, ptr @.str.32, i8 0, i8 -40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wake %sactive %02x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@tusb_musb_interrupt.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.29, ptr @.str.3, ptr @.str.35, i8 0, i8 -34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DMA IRQ %08x\0A\00", [18 x i8] zeroinitializer }, align 32
@tusb_wbus_quirk.phy_otg_ctrl = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tusb_wbus_quirk.phy_otg_ena = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tusb_wbus_quirk.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.36, ptr @.str.3, ptr @.str.37, i8 0, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tusb_wbus_quirk\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Enabled tusb wbus quirk ctrl %08x ena %08x\0A\00", [52 x i8] zeroinitializer }, align 32
@tusb_wbus_quirk.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.36, ptr @.str.3, ptr @.str.38, i8 0, i8 30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Disabled tusb wbus quirk ctrl %08x ena %08x\0A\00", [51 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@tusb_otg_ints.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.39, ptr @.str.3, ptr @.str.40, i8 0, i8 -84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tusb_otg_ints\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Default-%c\0A\00", [20 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@tusb_otg_ints.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.39, ptr @.str.3, ptr @.str.41, i8 0, i8 -78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Forcing disconnect (no interrupt)\0A\00", [61 x i8] zeroinitializer }, align 32
@tusb_otg_ints.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.39, ptr @.str.3, ptr @.str.42, i8 0, i8 -76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vbus change, %s, otg %03x\0A\00", [37 x i8] zeroinitializer }, align 32
@tusb_otg_ints.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.39, ptr @.str.3, ptr @.str.42, i8 0, i8 -74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@tusb_otg_ints.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.39, ptr @.str.3, ptr @.str.43, i8 0, i8 -73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Got SRP, turning on VBUS\0A\00", [38 x i8] zeroinitializer }, align 32
@tusb_otg_ints.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.39, ptr @.str.3, ptr @.str.44, i8 0, i8 -62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s timer, %03x\0A\00", [16 x i8] zeroinitializer }, align 32
@musb_readb = external dso_local local_unnamed_addr global ptr, align 4
@tusb_otg_ints.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.39, ptr @.str.3, ptr @.str.45, i8 0, i8 -59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"devctl %02x\0A\00", [19 x i8] zeroinitializer }, align 32
@tusb_otg_ints._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.39, ptr @.str.3, i32 797, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s %d: vbus too slow, devctl %02x\0A\00", [59 x i8] zeroinitializer }, align 32
@tusb_otg_ints._entry_ptr = internal global ptr @tusb_otg_ints._entry, section ".printk_index", align 4
@tusb_draw_power.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.47, ptr @.str.3, ptr @.str.48, i8 0, i8 88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tusb_draw_power\00", [16 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"draw max %d mA VBUS\0A\00", [43 x i8] zeroinitializer }, align 32
@musb_do_idle.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.49, ptr @.str.3, ptr @.str.50, i8 0, i8 116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"musb_do_idle\00", [19 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Nothing connected %s, turning off VBUS\0A\00", [56 x i8] zeroinitializer }, align 32
@tusb_allow_idle.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.51, ptr @.str.3, ptr @.str.52, i8 0, i8 105, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tusb_allow_idle\00", [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"idle, wake on %02x\0A\00", [44 x i8] zeroinitializer }, align 32
@musb_writeb = external dso_local local_unnamed_addr global ptr, align 4
@tusb_read_fifo.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.53, ptr @.str.3, ptr @.str.54, i8 0, i8 69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tusb_read_fifo\00", [17 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%cX ep%d fifo %p count %d buf %p\0A\00", [62 x i8] zeroinitializer }, align 32
@tusb_write_fifo.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.55, ptr @.str.3, ptr @.str.54, i8 0, i8 57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tusb_write_fifo\00", [16 x i8] zeroinitializer }, align 32
@tusb_musb_set_mode.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.56, ptr @.str.3, ptr @.str.57, i8 0, i8 -92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tusb_musb_set_mode\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Trying to set mode %i\0A\00", [41 x i8] zeroinitializer }, align 32
@tusb_musb_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.3, i32 672, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016%s %d: Cannot be peripheral with mini-A cable otg_stat: %08x\0A\00", [32 x i8] zeroinitializer }, align 32
@tusb_musb_set_mode._entry_ptr = internal global ptr @tusb_musb_set_mode._entry, section ".printk_index", align 4
@tusb_musb_try_idle.last_timer = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tusb_musb_try_idle.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.59, ptr @.str.3, ptr @.str.60, i8 0, i8 -126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tusb_musb_try_idle\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s active, deleting timer\0A\00", [37 x i8] zeroinitializer }, align 32
@tusb_musb_try_idle.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.59, ptr @.str.3, ptr @.str.61, i8 0, i8 -123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Longer idle timer already pending, ignoring\0A\00", [51 x i8] zeroinitializer }, align 32
@tusb_musb_try_idle.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.59, ptr @.str.3, ptr @.str.62, i8 0, i8 -121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s inactive, for idle timer for %lu ms\0A\00", [56 x i8] zeroinitializer }, align 32
@tusb_musb_set_vbus.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.63, ptr @.str.3, ptr @.str.64, i8 0, i8 -102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tusb_musb_set_vbus\00", [45 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"VBUS %s, devctl %02x otg %3x conf %08x prcm %08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"musb-hdrc\00", [22 x i8] zeroinitializer }, align 32
@switch.table.tusb_musb_set_vbus = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 12, i32 12, i32 6, i32 6, i32 6, i32 6], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 8]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 12]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@___asan_gen_.69 = private unnamed_addr constant [12 x i8] c"tusb_driver\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1271, i32 31 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1275, i32 11 }
@___asan_gen_.75 = private unnamed_addr constant [9 x i8] c"tusb_ops\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1173, i32 39 }
@___asan_gen_.78 = private unnamed_addr constant [14 x i8] c"tusb_dev_info\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1200, i32 42 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1254, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1108, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1117, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1125, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1138, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [9 x i8] c"the_musb\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 317, i32 21 }
@___asan_gen_.123 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1147, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1032, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1040, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1047, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 68, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 833, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 854, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 866, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 888, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant [13 x i8] c"phy_otg_ctrl\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 97, i32 13 }
@___asan_gen_.201 = private unnamed_addr constant [12 x i8] c"phy_otg_ena\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 97, i32 27 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 109, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 118, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 689, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 713, i32 5 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 721, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 732, i32 5 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 776, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 788, i32 6 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 797, i32 5 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 354, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 465, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 420, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 277, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 229, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 658, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 671, i32 4 }
@___asan_gen_.279 = private unnamed_addr constant [11 x i8] c"last_timer\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 513, i32 23 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 521, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 532, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 538, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 614, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.301 = private constant [31 x i8] c"../drivers/usb/musb/tusb6010.c\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1201, i32 11 }
@___asan_gen_.303 = private unnamed_addr constant [32 x i8] c"switch.table.tusb_musb_set_vbus\00", align 1
@llvm.compiler.used = appending global [94 x ptr] [ptr @__UNIQUE_ID_author322, ptr @__UNIQUE_ID_description321, ptr @__UNIQUE_ID_file323, ptr @__UNIQUE_ID_license324, ptr @__exitcall_tusb_driver_exit, ptr @__initcall__kmod_tusb6010__325_1282_tusb_driver_init6, ptr @tusb_driver_exit, ptr @tusb_musb_init._entry, ptr @tusb_musb_init._entry_ptr, ptr @tusb_musb_set_mode._entry, ptr @tusb_musb_set_mode._entry_ptr, ptr @tusb_musb_start._entry, ptr @tusb_musb_start._entry.15, ptr @tusb_musb_start._entry.18, ptr @tusb_musb_start._entry_ptr, ptr @tusb_musb_start._entry_ptr.17, ptr @tusb_musb_start._entry_ptr.20, ptr @tusb_otg_ints._entry, ptr @tusb_otg_ints._entry_ptr, ptr @tusb_print_revision._entry, ptr @tusb_print_revision._entry_ptr, ptr @tusb_probe._entry, ptr @tusb_probe._entry_ptr, ptr @tusb_driver, ptr @.str, ptr @tusb_ops, ptr @tusb_dev_info, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @the_musb, ptr @tusb_musb_init.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @tusb_wbus_quirk.phy_otg_ctrl, ptr @tusb_wbus_quirk.phy_otg_ena, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @tusb_musb_try_idle.last_timer, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @switch.table.tusb_musb_set_vbus], section "llvm.metadata"
@0 = internal global [79 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb_ops to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb_dev_info to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb_musb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @the_musb to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb_musb_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb_musb_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb_musb_start._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb_musb_start._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb_print_revision._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb_wbus_quirk.phy_otg_ctrl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb_wbus_quirk.phy_otg_ena to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb_otg_ints._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb_musb_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb_musb_try_idle.last_timer to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tusb_musb_set_vbus to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tusb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tusb_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tusb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @tusb_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tusb_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %musb_resources = alloca [3 x %struct.resource], align 4
  %pinfo = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %musb_resources) #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pinfo) #7
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %call.i, align 4
  %platform_ops = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %platform_ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @tusb_ops, ptr %platform_ops, align 4
  %call5 = tail call ptr @usb_phy_generic_register() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %5 = getelementptr inbounds i8, ptr %musb_resources, i32 16
  %6 = call ptr @memset(ptr %5, i32 0, i32 80)
  %resource = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 7
  %7 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %resource, align 8
  %name = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 4
  %name7 = getelementptr inbounds %struct.resource, ptr %musb_resources, i32 0, i32 2
  %11 = ptrtoint ptr %name7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %name7, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %8, align 4
  %14 = ptrtoint ptr %musb_resources to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %musb_resources, align 4
  %end = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 1
  %15 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %end, align 4
  %end15 = getelementptr inbounds %struct.resource, ptr %musb_resources, i32 0, i32 1
  %17 = ptrtoint ptr %end15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %end15, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 3
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %flags19 = getelementptr inbounds %struct.resource, ptr %musb_resources, i32 0, i32 3
  %20 = ptrtoint ptr %flags19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %flags19, align 4
  %name22 = getelementptr %struct.resource, ptr %8, i32 1, i32 2
  %21 = ptrtoint ptr %name22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name22, align 4
  %arrayidx23 = getelementptr inbounds [3 x %struct.resource], ptr %musb_resources, i32 0, i32 1
  %name24 = getelementptr inbounds [3 x %struct.resource], ptr %musb_resources, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %name24 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %name24, align 4
  %arrayidx26 = getelementptr %struct.resource, ptr %8, i32 1
  %24 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx26, align 4
  %26 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx23, align 4
  %end32 = getelementptr %struct.resource, ptr %8, i32 1, i32 1
  %27 = ptrtoint ptr %end32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %end32, align 4
  %end34 = getelementptr inbounds [3 x %struct.resource], ptr %musb_resources, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %end34 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %end34, align 4
  %flags37 = getelementptr %struct.resource, ptr %8, i32 1, i32 3
  %30 = ptrtoint ptr %flags37 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags37, align 4
  %flags39 = getelementptr inbounds [3 x %struct.resource], ptr %musb_resources, i32 0, i32 1, i32 3
  %32 = ptrtoint ptr %flags39 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %flags39, align 4
  %name42 = getelementptr %struct.resource, ptr %8, i32 2, i32 2
  %33 = ptrtoint ptr %name42 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name42, align 4
  %arrayidx43 = getelementptr inbounds [3 x %struct.resource], ptr %musb_resources, i32 0, i32 2
  %name44 = getelementptr inbounds [3 x %struct.resource], ptr %musb_resources, i32 0, i32 2, i32 2
  %35 = ptrtoint ptr %name44 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %name44, align 4
  %arrayidx46 = getelementptr %struct.resource, ptr %8, i32 2
  %36 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx46, align 4
  %38 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx43, align 4
  %end52 = getelementptr %struct.resource, ptr %8, i32 2, i32 1
  %39 = ptrtoint ptr %end52 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %end52, align 4
  %end54 = getelementptr inbounds [3 x %struct.resource], ptr %musb_resources, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %end54 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %end54, align 4
  %flags57 = getelementptr %struct.resource, ptr %8, i32 2, i32 3
  %42 = ptrtoint ptr %flags57 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags57, align 4
  %flags59 = getelementptr inbounds [3 x %struct.resource], ptr %musb_resources, i32 0, i32 2, i32 3
  %44 = ptrtoint ptr %flags59 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %flags59, align 4
  %45 = call ptr @memcpy(ptr %pinfo, ptr @tusb_dev_info, i32 56)
  %46 = ptrtoint ptr %pinfo to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %dev, ptr %pinfo, align 8
  %res = getelementptr inbounds %struct.platform_device_info, ptr %pinfo, i32 0, i32 5
  %47 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %musb_resources, ptr %res, align 4
  %num_res = getelementptr inbounds %struct.platform_device_info, ptr %pinfo, i32 0, i32 6
  %48 = ptrtoint ptr %num_res to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 3, ptr %num_res, align 8
  %data = getelementptr inbounds %struct.platform_device_info, ptr %pinfo, i32 0, i32 7
  %49 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %1, ptr %data, align 4
  %size_data = getelementptr inbounds %struct.platform_device_info, ptr %pinfo, i32 0, i32 8
  %50 = ptrtoint ptr %size_data to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 32, ptr %size_data, align 8
  %call62 = call ptr @platform_device_register_full(ptr noundef nonnull %pinfo) #7
  %musb63 = getelementptr inbounds %struct.tusb6010_glue, ptr %call.i, i32 0, i32 1
  %51 = ptrtoint ptr %musb63 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call62, ptr %musb63, align 4
  %cmp.i = icmp ugt ptr %call62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then65, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then65:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %call62 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %52) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %52, %if.then65 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pinfo) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %musb_resources) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tusb_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %musb = getelementptr inbounds %struct.tusb6010_glue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %musb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %musb, align 4
  tail call void @platform_device_unregister(ptr noundef %3) #7
  %phy = getelementptr inbounds %struct.tusb6010_glue, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 4
  tail call void @usb_phy_generic_unregister(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_phy_generic_register() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tusb_musb_init(ptr noundef %musb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usb_get_phy(i32 noundef 1) #7
  %xceiv = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 35
  %0 = ptrtoint ptr %xceiv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %xceiv, align 8
  %tobool.not.i = icmp eq ptr %call, null
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %controller = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %1 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %controller, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 -16
  %call3 = tail call ptr @platform_get_resource(ptr noundef %add.ptr, i32 noundef 512, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %do.body, label %if.end12

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tusb_musb_init.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tusb_musb_init, %if.then10)) #7
          to label %done [label %if.then10], !srcloc !177

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tusb_musb_init.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.8) #7
  br label %if.end74

if.end12:                                         ; preds = %if.end
  %3 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call3, align 4
  %async = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 28
  %5 = ptrtoint ptr %async to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %async, align 4
  %call13 = tail call ptr @platform_get_resource(ptr noundef %add.ptr, i32 noundef 512, i32 noundef 1) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %do.body16, label %if.end32

do.body16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tusb_musb_init.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tusb_musb_init, %if.then28)) #7
          to label %done [label %if.then28], !srcloc !177

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tusb_musb_init.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.9) #7
  br label %if.end74

if.end32:                                         ; preds = %if.end12
  %6 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call13, align 4
  %sync34 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 29
  %8 = ptrtoint ptr %sync34 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %sync34, align 8
  %9 = load i32, ptr %call13, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call13, i32 0, i32 1
  %10 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %9
  %add.i = add i32 %sub.i, %11
  %call37 = tail call ptr @ioremap(i32 noundef %9, i32 noundef %add.i) #7
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %do.body40, label %if.end56

do.body40:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tusb_musb_init.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tusb_musb_init, %if.then52)) #7
          to label %done [label %if.then52], !srcloc !177

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tusb_musb_init.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.10) #7
  br label %if.end74

if.end56:                                         ; preds = %if.end32
  %sync_va = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 30
  %12 = ptrtoint ptr %sync_va to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call37, ptr %sync_va, align 4
  %mregs = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 27
  %13 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mregs, align 8
  %add.ptr57 = getelementptr i8, ptr %14, i32 1024
  store ptr %add.ptr57, ptr %mregs, align 8
  %ctrl_base.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 26
  %15 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctrl_base.i, align 4
  %board_set_power.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 43
  %17 = ptrtoint ptr %board_set_power.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %board_set_power.i, align 8
  %tobool.not.i110 = icmp eq ptr %18, null
  br i1 %tobool.not.i110, label %if.end56.do.body6.i_crit_edge, label %if.end.i

if.end56.do.body6.i_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6.i

if.end.i:                                         ; preds = %if.end56
  %call.i = tail call i32 %18(i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i.do.body6.i_crit_edge, label %do.end.i

if.end.i.do.body6.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #10
  br label %do.end63

do.body6.i:                                       ; preds = %if.end.i.do.body6.i_crit_edge, %if.end56.do.body6.i_crit_edge
  %call10.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %musb) #7
  %call15.i = tail call i32 @musb_readl(ptr noundef %16, i32 noundef 2520) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 42390, i32 %call15.i)
  %cmp16.not.i = icmp eq i32 %call15.i, 42390
  br i1 %cmp16.not.i, label %if.end24.i, label %do.end21.i

do.end21.i:                                       ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #9
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #10
  br label %err.i

if.end24.i:                                       ; preds = %do.body6.i
  %19 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctrl_base.i, align 4
  %call.i.i = tail call i32 @musb_readl(ptr noundef %20, i32 noundef 2304) #7
  %21 = and i32 %call.i.i, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %21)
  %cmp.i.i = icmp eq i32 %21, 48
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end24.i.tusb_get_revision.exit.i_crit_edge

if.end24.i.tusb_get_revision.exit.i_crit_edge:    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tusb_get_revision.exit.i

if.then.i.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv1.i.i = and i32 %call.i.i, 254
  %call4.i.i = tail call i32 @musb_readl(ptr noundef %20, i32 noundef 2556) #7
  %22 = and i32 %call4.i.i, 1835008
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp7.not.i.i = icmp eq i32 %22, 0
  %or.i.i = or i32 %conv1.i.i, 1
  %spec.select.i.i = select i1 %cmp7.not.i.i, i32 %call.i.i, i32 %or.i.i
  br label %tusb_get_revision.exit.i

tusb_get_revision.exit.i:                         ; preds = %if.then.i.i, %if.end24.i.tusb_get_revision.exit.i_crit_edge
  %rev.0.in.i.i = phi i32 [ %call.i.i, %if.end24.i.tusb_get_revision.exit.i_crit_edge ], [ %spec.select.i.i, %if.then.i.i ]
  %rev.0.i.i = trunc i32 %rev.0.in.i.i to i8
  %tusb_revision.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 31
  %23 = ptrtoint ptr %tusb_revision.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %rev.0.i.i, ptr %tusb_revision.i, align 8
  %24 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctrl_base.i, align 4
  %call.i80.i = tail call i32 @musb_readl(ptr noundef %25, i32 noundef 2068) #7
  %shr.i.i = lshr i32 %call.i80.i, 4
  %and.i.i = and i32 %shr.i.i, 15
  %call1.i.i = tail call i32 @musb_readl(ptr noundef %25, i32 noundef 2068) #7
  %and2.i.i = and i32 %call1.i.i, 15
  %call3.i.i = tail call i32 @musb_readl(ptr noundef %25, i32 noundef 2104) #7
  %shr4.i.i = lshr i32 %call3.i.i, 4
  %and5.i.i = and i32 %shr4.i.i, 15
  %call6.i.i = tail call i32 @musb_readl(ptr noundef %25, i32 noundef 2104) #7
  %and7.i.i = and i32 %call6.i.i, 15
  %call8.i.i = tail call i32 @musb_readl(ptr noundef %25, i32 noundef 2176) #7
  %shr9.i.i = lshr i32 %call8.i.i, 4
  %and10.i.i = and i32 %shr9.i.i, 15
  %call11.i.i = tail call i32 @musb_readl(ptr noundef %25, i32 noundef 2176) #7
  %and12.i.i = and i32 %call11.i.i, 15
  %call13.i.i = tail call i32 @musb_readl(ptr noundef %25, i32 noundef 2304) #7
  %shr14.i.i = lshr i32 %call13.i.i, 4
  %and15.i.i = and i32 %shr14.i.i, 15
  %call16.i.i = tail call i32 @musb_readl(ptr noundef %25, i32 noundef 2304) #7
  %and17.i.i = and i32 %call16.i.i, 15
  %call18.i.i = tail call i32 @musb_readl(ptr noundef %25, i32 noundef 2556) #7
  %shr19.i.i = lshr i32 %call18.i.i, 17
  %and20.i.i = and i32 %shr19.i.i, 15
  %conv.i.i = lshr i32 %rev.0.in.i.i, 4
  %26 = and i32 %conv.i.i, 15
  %and24.i.i = and i32 %rev.0.in.i.i, 15
  %call25.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.23, i32 noundef %and.i.i, i32 noundef %and2.i.i, ptr noundef nonnull @.str.24, i32 noundef %and5.i.i, i32 noundef %and7.i.i, ptr noundef nonnull @.str.25, i32 noundef %and10.i.i, i32 noundef %and12.i.i, ptr noundef nonnull @.str.26, i32 noundef %and15.i.i, i32 noundef %and17.i.i, ptr noundef nonnull @.str.27, i32 noundef %and20.i.i, ptr noundef nonnull @.str.28, i32 noundef %26, i32 noundef %and24.i.i) #10
  %27 = ptrtoint ptr %tusb_revision.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %tusb_revision.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %28)
  %cmp28.i = icmp ult i8 %28, 2
  br i1 %cmp28.i, label %do.end33.i, label %done.thread123

do.end33.i:                                       ; preds = %tusb_get_revision.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv27.i = zext i8 %28 to i32
  %call37.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %conv27.i) #10
  br label %err.i

err.i:                                            ; preds = %do.end33.i, %do.end21.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %musb, i32 noundef %call10.i) #7
  %29 = ptrtoint ptr %board_set_power.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %board_set_power.i, align 8
  %tobool45.not.i = icmp eq ptr %30, null
  br i1 %tobool45.not.i, label %err.i.do.end63_crit_edge, label %if.then46.i

err.i.do.end63_crit_edge:                         ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end63

if.then46.i:                                      ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #9
  %call48.i = tail call i32 %30(i32 noundef 0) #7
  br label %do.end63

do.end63:                                         ; preds = %if.then46.i, %err.i.do.end63_crit_edge, %do.end.i
  %retval.0.i111.ph = phi i32 [ -19, %err.i.do.end63_crit_edge ], [ -19, %if.then46.i ], [ %call.i, %do.end.i ]
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %retval.0.i111.ph) #10
  br label %done

done.thread123:                                   ; preds = %tusb_get_revision.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @musb_writel(ptr noundef %16, i32 noundef 4, i32 noundef 8) #7
  %31 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ctrl_base.i, align 4
  %call.i82.i = tail call i32 @musb_readl(ptr noundef %32, i32 noundef 2072) #7
  %and.i83.i = and i32 %call.i82.i, -196609
  %or.i84.i = or i32 %and.i83.i, 65536
  tail call void @musb_writel(ptr noundef %32, i32 noundef 2072, i32 noundef %or.i84.i) #7
  tail call void @musb_writel(ptr noundef %16, i32 noundef 2076, i32 noundef 11011840) #7
  %33 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctrl_base.i, align 4
  tail call void @musb_writel(ptr noundef %34, i32 noundef 2096, i32 noundef 63) #7
  tail call void @musb_writel(ptr noundef %34, i32 noundef 2100, i32 noundef 33554431) #7
  tail call void @musb_writel(ptr noundef %34, i32 noundef 2180, i32 noundef 1056964608) #7
  tail call void @musb_writel(ptr noundef %34, i32 noundef 2308, i32 noundef 200409088) #7
  tail call void @musb_writel(ptr noundef %34, i32 noundef 2504, i32 noundef 1) #7
  %call39.i = tail call i32 @musb_readl(ptr noundef %16, i32 noundef 2052) #7
  %or.i = or i32 %call39.i, -1518338048
  tail call void @musb_writel(ptr noundef %16, i32 noundef 2052, i32 noundef %or.i) #7
  %call40.i = tail call i32 @musb_readl(ptr noundef %16, i32 noundef 2056) #7
  %or41.i = or i32 %call40.i, -1518338048
  tail call void @musb_writel(ptr noundef %16, i32 noundef 2056, i32 noundef %or41.i) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %musb, i32 noundef %call10.i) #7
  %isr = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 5
  %35 = ptrtoint ptr %isr to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @tusb_musb_interrupt, ptr %isr, align 4
  %36 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %xceiv, align 8
  %set_power = getelementptr inbounds %struct.usb_phy, ptr %37, i32 0, i32 25
  %38 = ptrtoint ptr %set_power to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @tusb_draw_power, ptr %set_power, align 4
  store ptr %musb, ptr @the_musb, align 4
  %dev_timer = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 22
  tail call void @init_timer_key(ptr noundef %dev_timer, ptr noundef nonnull @musb_do_idle, i32 noundef 0, ptr noundef nonnull @.str.12, ptr noundef nonnull @tusb_musb_init.__key) #7
  br label %cleanup

done:                                             ; preds = %do.end63, %do.body40, %do.body16, %do.body
  %ret.0 = phi i32 [ %retval.0.i111.ph, %do.end63 ], [ -19, %do.body ], [ -19, %do.body16 ], [ -12, %do.body40 ]
  %sync.0 = phi ptr [ %call37, %do.end63 ], [ null, %do.body ], [ null, %do.body16 ], [ null, %do.body40 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp = icmp slt i32 %ret.0, 0
  br i1 %cmp, label %if.then71, label %done.cleanup_crit_edge

done.cleanup_crit_edge:                           ; preds = %done
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then71:                                        ; preds = %done
  %tobool72.not = icmp eq ptr %sync.0, null
  br i1 %tobool72.not, label %if.then71.if.end74_crit_edge, label %if.then73

if.then71.if.end74_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.then73:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iounmap(ptr noundef nonnull %sync.0) #7
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %if.then71.if.end74_crit_edge, %if.then52, %if.then28, %if.then10
  %ret.0121130 = phi i32 [ %ret.0, %if.then73 ], [ %ret.0, %if.then71.if.end74_crit_edge ], [ -12, %if.then52 ], [ -19, %if.then28 ], [ -19, %if.then10 ]
  %39 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %xceiv, align 8
  tail call void @usb_put_phy(ptr noundef %40) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %done.cleanup_crit_edge, %done.thread123, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -517, %entry.cleanup_crit_edge ], [ %ret.0121130, %if.end74 ], [ %ret.0, %done.cleanup_crit_edge ], [ 0, %done.thread123 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tusb_musb_exit(ptr noundef %musb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_timer = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 22
  %call = tail call i32 @del_timer_sync(ptr noundef %dev_timer) #7
  store ptr null, ptr @the_musb, align 4
  %board_set_power = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 43
  %0 = ptrtoint ptr %board_set_power to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_set_power, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 %1(i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sync_va = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 30
  %2 = ptrtoint ptr %sync_va to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sync_va, align 4
  tail call void @iounmap(ptr noundef %3) #7
  %xceiv = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 35
  %4 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xceiv, align 8
  tail call void @usb_put_phy(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tusb_musb_enable(ptr nocapture noundef readonly %musb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_base = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 26
  %0 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_base, align 4
  tail call void @musb_writel(ptr noundef %1, i32 noundef 2172, i32 noundef 8) #7
  tail call void @musb_writel(ptr noundef %1, i32 noundef 2124, i32 noundef 0) #7
  tail call void @musb_writel(ptr noundef %1, i32 noundef 2140, i32 noundef 2147483647) #7
  tail call void @musb_writel(ptr noundef %1, i32 noundef 2156, i32 noundef 511) #7
  tail call void @musb_writel(ptr noundef %1, i32 noundef 2120, i32 noundef 2147483647) #7
  tail call void @musb_writel(ptr noundef %1, i32 noundef 2136, i32 noundef 2147483647) #7
  tail call void @musb_writel(ptr noundef %1, i32 noundef 2152, i32 noundef 511) #7
  tail call void @musb_writel(ptr noundef %1, i32 noundef 2168, i32 noundef -2147364609) #7
  tail call void @musb_writel(ptr noundef %1, i32 noundef 2108, i32 noundef 0) #7
  %nIrq = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 37
  %2 = ptrtoint ptr %nIrq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nIrq, align 8
  %call = tail call i32 @irq_set_irq_type(i32 noundef %3, i32 noundef 8) #7
  %call1 = tail call i32 @musb_readl(ptr noundef %1, i32 noundef 2060) #7
  %and = and i32 %call1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @musb_writel(ptr noundef %1, i32 noundef 2164, i32 noundef 16384) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tusb_musb_disable(ptr noundef %musb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_base = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 26
  %0 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_base, align 4
  tail call void @musb_writel(ptr noundef %1, i32 noundef 2172, i32 noundef -2147364609) #7
  tail call void @musb_writel(ptr noundef %1, i32 noundef 2124, i32 noundef 2147483647) #7
  tail call void @musb_writel(ptr noundef %1, i32 noundef 2140, i32 noundef 2147483647) #7
  tail call void @musb_writel(ptr noundef %1, i32 noundef 2156, i32 noundef 511) #7
  %dev_timer = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 22
  %call = tail call i32 @del_timer(ptr noundef %dev_timer) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tusb_ep_offset(i8 noundef zeroext %epnum, i16 noundef zeroext %offset) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %offset to i32
  %add = add nuw nsw i32 %conv, 16
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tusb_ep_select(ptr noundef %mbase, i8 noundef zeroext %epnum) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %0 = load ptr, ptr @musb_writeb, align 4
  tail call void %0(ptr noundef %mbase, i32 noundef 14, i8 noundef zeroext %epnum) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tusb_fifo_offset(i8 noundef zeroext %epnum) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %epnum to i32
  %mul = shl nuw nsw i32 %conv, 5
  %add = add nuw nsw i32 %mul, 512
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @tusb_readb(ptr noundef %addr, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %offset, -2
  %add.ptr = getelementptr i8, ptr %addr, i32 %and
  %0 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #7, !srcloc !178
  %and1 = and i32 %offset, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  %1 = lshr i16 %0, 8
  %val.0.v = select i1 %tobool.not, i16 %0, i16 %1
  %val.0 = trunc i16 %val.0.v to i8
  ret i8 %val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tusb_writeb(ptr noundef %addr, i32 noundef %offset, i8 noundef zeroext %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %offset, -2
  %add.ptr = getelementptr i8, ptr %addr, i32 %and
  %0 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #7, !srcloc !178
  %and1 = and i32 %offset, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %data to i16
  %shl = shl nuw i16 %conv, 8
  %1 = and i16 %0, 255
  %or = or i16 %1, %shl
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = and i16 %0, -256
  %conv7 = zext i8 %data to i16
  %or8 = or i16 %2, %conv7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tmp.0 = phi i16 [ %or, %if.then ], [ %or8, %if.else ]
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %tmp.0) #7, !srcloc !179
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tusb_read_fifo(ptr nocapture noundef readonly %hw_ep, i16 noundef zeroext %len, ptr noundef %buf) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw_ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_ep, align 4
  %conf = getelementptr inbounds %struct.musb_hw_ep, ptr %hw_ep, i32 0, i32 3
  %2 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conf, align 4
  %fifo2 = getelementptr inbounds %struct.musb_hw_ep, ptr %hw_ep, i32 0, i32 1
  %4 = ptrtoint ptr %fifo2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fifo2, align 4
  %epnum3 = getelementptr inbounds %struct.musb_hw_ep, ptr %hw_ep, i32 0, i32 4
  %6 = ptrtoint ptr %epnum3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %epnum3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tusb_read_fifo.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tusb_read_fifo, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !177

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %controller = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 25
  %8 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %controller, align 8
  %conv = zext i8 %7 to i32
  %conv6 = zext i16 %len to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tusb_read_fifo.__UNIQUE_ID_ddebug298, ptr noundef %9, ptr noundef nonnull @.str.54, i32 noundef 82, i32 noundef %conv, ptr noundef %5, i32 noundef %conv6, ptr noundef %buf) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not = icmp eq i8 %7, 0
  %10 = and i16 %len, 127
  %.sink103 = select i1 %tobool7.not, i16 %10, i16 %len
  %.sink = select i1 %tobool7.not, i32 0, i32 332
  %and11 = zext i16 %.sink103 to i32
  tail call void @musb_writel(ptr noundef %3, i32 noundef %.sink, i32 noundef %and11) #7
  %11 = ptrtoint ptr %buf to i32
  %and13 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %cmp = icmp eq i32 %and13, 0
  br i1 %cmp, label %if.then21, label %do.end.if.end58_crit_edge, !prof !180

do.end.if.end58_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then21:                                        ; preds = %do.end
  %and22 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %cmp23 = icmp eq i32 %and22, 0
  br i1 %cmp23, label %if.then25, label %if.else37

if.then25:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %len)
  %cmp27 = icmp ugt i16 %len, 3
  br i1 %cmp27, label %if.then29, label %if.then25.if.end58_crit_edge

if.then25.if.end58_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then29:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  %conv26 = zext i16 %len to i32
  %12 = lshr i32 %conv26, 2
  tail call void @__raw_readsl(ptr noundef %5, ptr noundef %buf, i32 noundef %12) #7
  %and32 = and i32 %conv26, 65532
  %add.ptr = getelementptr i8, ptr %buf, i32 %and32
  %and34 = and i16 %len, 3
  br label %if.end58

if.else37:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %len)
  %cmp39 = icmp ugt i16 %len, 1
  br i1 %cmp39, label %for.cond.preheader, label %if.else37.if.end58_crit_edge

if.else37.if.end58_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

for.cond.preheader:                               ; preds = %if.else37
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %len)
  %cmp44100.not = icmp ult i16 %len, 4
  br i1 %cmp44100.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.preheader

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %13 = lshr i16 %len, 2
  %umax = zext i16 %13 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0102 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %buf.addr.0101 = phi ptr [ %add.ptr52, %for.body.for.body_crit_edge ], [ %buf, %for.body.preheader ]
  %call46 = tail call i32 @musb_readl(ptr noundef %5, i32 noundef 0) #7
  %conv48 = trunc i32 %call46 to i16
  %14 = ptrtoint ptr %buf.addr.0101 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv48, ptr %buf.addr.0101, align 2
  %add.ptr49 = getelementptr i8, ptr %buf.addr.0101, i32 2
  %shr50 = lshr i32 %call46, 16
  %conv51 = trunc i32 %shr50 to i16
  %15 = ptrtoint ptr %add.ptr49 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv51, ptr %add.ptr49, align 2
  %add.ptr52 = getelementptr i8, ptr %buf.addr.0101, i32 4
  %inc = add nuw nsw i32 %i.0102, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %buf.addr.0.lcssa = phi ptr [ %buf, %for.cond.preheader.for.end_crit_edge ], [ %add.ptr52, %for.body.for.end_crit_edge ]
  %and54 = and i16 %len, 3
  br label %if.end58

if.end58:                                         ; preds = %for.end, %if.else37.if.end58_crit_edge, %if.then29, %if.then25.if.end58_crit_edge, %do.end.if.end58_crit_edge
  %buf.addr.1 = phi ptr [ %add.ptr, %if.then29 ], [ %buf, %if.then25.if.end58_crit_edge ], [ %buf.addr.0.lcssa, %for.end ], [ %buf, %if.else37.if.end58_crit_edge ], [ %buf, %do.end.if.end58_crit_edge ]
  %len.addr.0 = phi i16 [ %and34, %if.then29 ], [ %len, %if.then25.if.end58_crit_edge ], [ %and54, %for.end ], [ %len, %if.else37.if.end58_crit_edge ], [ %len, %do.end.if.end58_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %len.addr.0)
  %cmp60.not = icmp eq i16 %len.addr.0, 0
  br i1 %cmp60.not, label %if.end58.if.end63_crit_edge, label %if.then62

if.end58.if.end63_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then62:                                        ; preds = %if.end58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i)
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %len.addr.0)
  %cmp.i = icmp ugt i16 %len.addr.0, 4
  br i1 %cmp.i, label %for.body.preheader.i, label %if.then62.if.then10.i_crit_edge

if.then62.if.then10.i_crit_edge:                  ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10.i

for.body.preheader.i:                             ; preds = %if.then62
  %16 = lshr i16 %len.addr.0, 2
  %umax.i = zext i16 %16 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.025.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %buf.addr.024.i = phi ptr [ %add.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %buf.addr.1, %for.body.preheader.i ]
  %call.i = tail call i32 @musb_readl(ptr noundef %5, i32 noundef 0) #7
  %17 = ptrtoint ptr %buf.addr.024.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %call.i, ptr %buf.addr.024.i, align 1
  %add.ptr.i = getelementptr i8, ptr %buf.addr.024.i, i32 4
  %inc.i = add nuw nsw i32 %i.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %if.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end.i:                                         ; preds = %for.body.i
  %rem.i = and i16 %len.addr.0, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem.i)
  %cmp8.not.i = icmp eq i16 %rem.i, 0
  br i1 %cmp8.not.i, label %if.end.i.tusb_fifo_read_unaligned.exit_crit_edge, label %if.end.i.if.then10.i_crit_edge

if.end.i.if.then10.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10.i

if.end.i.tusb_fifo_read_unaligned.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tusb_fifo_read_unaligned.exit

if.then10.i:                                      ; preds = %if.end.i.if.then10.i_crit_edge, %if.then62.if.then10.i_crit_edge
  %len.addr.0.i99 = phi i16 [ %rem.i, %if.end.i.if.then10.i_crit_edge ], [ %len.addr.0, %if.then62.if.then10.i_crit_edge ]
  %buf.addr.1.i98 = phi ptr [ %add.ptr.i, %if.end.i.if.then10.i_crit_edge ], [ %buf.addr.1, %if.then62.if.then10.i_crit_edge ]
  %conv7.i = zext i16 %len.addr.0.i99 to i32
  %call11.i = tail call i32 @musb_readl(ptr noundef %5, i32 noundef 0) #7
  %18 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call11.i, ptr %val.i, align 4
  %19 = call ptr @memcpy(ptr %buf.addr.1.i98, ptr %val.i, i32 %conv7.i)
  br label %tusb_fifo_read_unaligned.exit

tusb_fifo_read_unaligned.exit:                    ; preds = %if.then10.i, %if.end.i.tusb_fifo_read_unaligned.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i)
  br label %if.end63

if.end63:                                         ; preds = %tusb_fifo_read_unaligned.exit, %if.end58.if.end63_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tusb_write_fifo(ptr nocapture noundef readonly %hw_ep, i16 noundef zeroext %len, ptr noundef %buf) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw_ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_ep, align 4
  %conf = getelementptr inbounds %struct.musb_hw_ep, ptr %hw_ep, i32 0, i32 3
  %2 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conf, align 4
  %fifo2 = getelementptr inbounds %struct.musb_hw_ep, ptr %hw_ep, i32 0, i32 1
  %4 = ptrtoint ptr %fifo2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fifo2, align 4
  %epnum3 = getelementptr inbounds %struct.musb_hw_ep, ptr %hw_ep, i32 0, i32 4
  %6 = ptrtoint ptr %epnum3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %epnum3, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %buf) #7, !srcloc !181
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tusb_write_fifo.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tusb_write_fifo, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !177

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %controller = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 25
  %8 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %controller, align 8
  %conv = zext i8 %7 to i32
  %conv6 = zext i16 %len to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tusb_write_fifo.__UNIQUE_ID_ddebug297, ptr noundef %9, ptr noundef nonnull @.str.54, i32 noundef 84, i32 noundef %conv, ptr noundef %5, i32 noundef %conv6, ptr noundef %buf) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not = icmp eq i8 %7, 0
  %10 = and i16 %len, 127
  %11 = or i16 %10, 128
  %.sink102 = select i1 %tobool7.not, i16 %11, i16 %len
  %.sink = select i1 %tobool7.not, i32 0, i32 268
  %or = zext i16 %.sink102 to i32
  tail call void @musb_writel(ptr noundef %3, i32 noundef %.sink, i32 noundef %or) #7
  %12 = ptrtoint ptr %buf to i32
  %and13 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %cmp = icmp eq i32 %and13, 0
  br i1 %cmp, label %if.then21, label %do.end.if.end56_crit_edge, !prof !180

do.end.if.end56_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then21:                                        ; preds = %do.end
  %and22 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %cmp23 = icmp eq i32 %and22, 0
  br i1 %cmp23, label %if.then25, label %if.else37

if.then25:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %len)
  %cmp27 = icmp ugt i16 %len, 3
  br i1 %cmp27, label %if.then29, label %if.then25.if.end56_crit_edge

if.then25.if.end56_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then29:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  %conv26 = zext i16 %len to i32
  %13 = lshr i32 %conv26, 2
  tail call void @__raw_writesl(ptr noundef %5, ptr noundef %buf, i32 noundef %13) #7
  %and32 = and i32 %conv26, 65532
  %add.ptr = getelementptr i8, ptr %buf, i32 %and32
  %and34 = and i16 %len, 3
  br label %if.end56

if.else37:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %len)
  %cmp39 = icmp ugt i16 %len, 1
  br i1 %cmp39, label %for.cond.preheader, label %if.else37.if.end56_crit_edge

if.else37.if.end56_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

for.cond.preheader:                               ; preds = %if.else37
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %len)
  %cmp4499.not = icmp ult i16 %len, 4
  br i1 %cmp4499.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.preheader

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %14 = lshr i16 %len, 2
  %umax = zext i16 %14 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0101 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %buf.addr.0100 = phi ptr [ %add.ptr50, %for.body.for.body_crit_edge ], [ %buf, %for.body.preheader ]
  %15 = ptrtoint ptr %buf.addr.0100 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %buf.addr.0100, align 2
  %conv46 = zext i16 %16 to i32
  %add.ptr47 = getelementptr i8, ptr %buf.addr.0100, i32 2
  %17 = ptrtoint ptr %add.ptr47 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr47, align 2
  %conv48 = zext i16 %18 to i32
  %shl = shl nuw i32 %conv48, 16
  %or49 = or i32 %shl, %conv46
  %add.ptr50 = getelementptr i8, ptr %buf.addr.0100, i32 4
  tail call void @musb_writel(ptr noundef %5, i32 noundef 0, i32 noundef %or49) #7
  %inc = add nuw nsw i32 %i.0101, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %buf.addr.0.lcssa = phi ptr [ %buf, %for.cond.preheader.for.end_crit_edge ], [ %add.ptr50, %for.body.for.end_crit_edge ]
  %and52 = and i16 %len, 3
  br label %if.end56

if.end56:                                         ; preds = %for.end, %if.else37.if.end56_crit_edge, %if.then29, %if.then25.if.end56_crit_edge, %do.end.if.end56_crit_edge
  %buf.addr.1 = phi ptr [ %add.ptr, %if.then29 ], [ %buf, %if.then25.if.end56_crit_edge ], [ %buf.addr.0.lcssa, %for.end ], [ %buf, %if.else37.if.end56_crit_edge ], [ %buf, %do.end.if.end56_crit_edge ]
  %len.addr.0 = phi i16 [ %and34, %if.then29 ], [ %len, %if.then25.if.end56_crit_edge ], [ %and52, %for.end ], [ %len, %if.else37.if.end56_crit_edge ], [ %len, %do.end.if.end56_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %len.addr.0)
  %cmp58.not = icmp eq i16 %len.addr.0, 0
  br i1 %cmp58.not, label %if.end56.if.end61_crit_edge, label %if.then60

if.end56.if.end61_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then60:                                        ; preds = %if.end56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i)
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %len.addr.0)
  %cmp.i = icmp ugt i16 %len.addr.0, 4
  br i1 %cmp.i, label %for.body.preheader.i, label %if.then60.if.then10.i_crit_edge

if.then60.if.then10.i_crit_edge:                  ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10.i

for.body.preheader.i:                             ; preds = %if.then60
  %19 = lshr i16 %len.addr.0, 2
  %umax.i = zext i16 %19 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.025.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %buf.addr.024.i = phi ptr [ %add.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %buf.addr.1, %for.body.preheader.i ]
  %20 = ptrtoint ptr %buf.addr.024.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %val.0.copyload.i = load i32, ptr %buf.addr.024.i, align 1
  tail call void @musb_writel(ptr noundef %5, i32 noundef 0, i32 noundef %val.0.copyload.i) #7
  %add.ptr.i = getelementptr i8, ptr %buf.addr.024.i, i32 4
  %inc.i = add nuw nsw i32 %i.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %if.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end.i:                                         ; preds = %for.body.i
  %rem.i = and i16 %len.addr.0, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem.i)
  %cmp8.not.i = icmp eq i16 %rem.i, 0
  br i1 %cmp8.not.i, label %if.end.i.tusb_fifo_write_unaligned.exit_crit_edge, label %if.end.i.if.then10.i_crit_edge

if.end.i.if.then10.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10.i

if.end.i.tusb_fifo_write_unaligned.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tusb_fifo_write_unaligned.exit

if.then10.i:                                      ; preds = %if.end.i.if.then10.i_crit_edge, %if.then60.if.then10.i_crit_edge
  %len.addr.0.i98 = phi i16 [ %rem.i, %if.end.i.if.then10.i_crit_edge ], [ %len.addr.0, %if.then60.if.then10.i_crit_edge ]
  %buf.addr.1.i97 = phi ptr [ %add.ptr.i, %if.end.i.if.then10.i_crit_edge ], [ %buf.addr.1, %if.then60.if.then10.i_crit_edge ]
  %conv7.i = zext i16 %len.addr.0.i98 to i32
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %val.i, align 4
  %22 = call ptr @memcpy(ptr %val.i, ptr %buf.addr.1.i97, i32 %conv7.i)
  %val.i.0.val.i.0.val.0.val.0.val.0.14.i = load i32, ptr %val.i, align 4
  tail call void @musb_writel(ptr noundef %5, i32 noundef 0, i32 noundef %val.i.0.val.i.0.val.0.val.0.val.0.14.i) #7
  br label %tusb_fifo_write_unaligned.exit

tusb_fifo_write_unaligned.exit:                   ; preds = %if.then10.i, %if.end.i.tusb_fifo_write_unaligned.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i)
  br label %if.end61

if.end61:                                         ; preds = %tusb_fifo_write_unaligned.exit, %if.end56.if.end61_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tusb_musb_set_mode(ptr nocapture noundef readonly %musb, i8 noundef zeroext %musb_mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_base = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 26
  %0 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_base, align 4
  %call = tail call i32 @musb_readl(ptr noundef %1, i32 noundef 2060) #7
  %call1 = tail call i32 @musb_readl(ptr noundef %1, i32 noundef 2056) #7
  %call2 = tail call i32 @musb_readl(ptr noundef %1, i32 noundef 2052) #7
  %call3 = tail call i32 @musb_readl(ptr noundef %1, i32 noundef 2048) #7
  %conv = zext i8 %musb_mode to i32
  %2 = zext i8 %musb_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %musb_mode, label %do.body [
    i8 1, label %sw.bb
    i8 2, label %sw.bb6
    i8 3, label %sw.bb10
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %call1, -8388609
  %or4 = and i32 %call3, -4
  %and5 = or i32 %or4, 1
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or7 = or i32 %call1, 8388608
  %or9 = or i32 %call3, 3
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or11 = or i32 %call1, 8388608
  %and13 = and i32 %call3, -4
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tusb_musb_set_mode.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tusb_musb_set_mode, %if.then)) #7
          to label %cleanup [label %if.then], !srcloc !177

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %controller = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %3 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %controller, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tusb_musb_set_mode.__UNIQUE_ID_ddebug306, ptr noundef %4, ptr noundef nonnull @.str.57, i32 noundef %conv) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb6, %sw.bb
  %phy_otg_ctrl.0 = phi i32 [ %or11, %sw.bb10 ], [ %or7, %sw.bb6 ], [ %and, %sw.bb ]
  %dev_conf.0 = phi i32 [ %and13, %sw.bb10 ], [ %or9, %sw.bb6 ], [ %and5, %sw.bb ]
  %or18 = or i32 %phy_otg_ctrl.0, -1526726656
  tail call void @musb_writel(ptr noundef %1, i32 noundef 2056, i32 noundef %or18) #7
  %or19 = or i32 %call2, -1518338048
  tail call void @musb_writel(ptr noundef %1, i32 noundef 2052, i32 noundef %or19) #7
  tail call void @musb_writel(ptr noundef %1, i32 noundef 2048, i32 noundef %dev_conf.0) #7
  %call20 = tail call i32 @musb_readl(ptr noundef %1, i32 noundef 2060) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %musb_mode)
  %cmp = icmp eq i8 %musb_mode, 2
  %and23 = and i32 %call20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  %or.cond = select i1 %cmp, i1 %tobool24.not, i1 false
  br i1 %or.cond, label %do.end29, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end29:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.56, i32 noundef 672, i32 noundef %call20) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %sw.epilog.cleanup_crit_edge, %if.then, %do.body
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %do.end29 ], [ 0, %sw.epilog.cleanup_crit_edge ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tusb_musb_try_idle(ptr noundef %musb, i32 noundef %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %cmp = icmp eq i32 %timeout, 0
  %add = add i32 %0, 1
  %spec.select = select i1 %cmp, i32 %add, i32 %timeout
  %is_active = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 51
  %1 = ptrtoint ptr %is_active to i32
  call void @__asan_loadN_noabort(i32 %1, i32 3)
  %bf.load = load i24, ptr %is_active, align 8
  %2 = and i24 %bf.load, 2097152
  %tobool.not = icmp eq i24 %2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %a_wait_bcon = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 49
  %3 = ptrtoint ptr %a_wait_bcon to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %a_wait_bcon, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false.if.end15_crit_edge

lor.lhs.false.if.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

land.lhs.true:                                    ; preds = %lor.lhs.false
  %xceiv = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 35
  %5 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xceiv, align 8
  %otg = getelementptr inbounds %struct.usb_phy, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %10)
  %cmp2 = icmp eq i32 %10, 8
  br i1 %cmp2, label %land.lhs.true.do.body_crit_edge, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tusb_musb_try_idle.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tusb_musb_try_idle, %if.then8)) #7
          to label %do.end [label %if.then8], !srcloc !177

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %controller = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %11 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %controller, align 8
  %xceiv9 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 35
  %13 = ptrtoint ptr %xceiv9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xceiv9, align 8
  %otg10 = getelementptr inbounds %struct.usb_phy, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %otg10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %otg10, align 4
  %state11 = getelementptr inbounds %struct.usb_otg, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %state11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state11, align 4
  %call12 = tail call ptr @usb_otg_state_string(i32 noundef %18) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tusb_musb_try_idle.__UNIQUE_ID_ddebug302, ptr noundef %12, ptr noundef nonnull @.str.60, ptr noundef %call12) #7
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %dev_timer = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 22
  %call14 = tail call i32 @del_timer(ptr noundef %dev_timer) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  store i32 %19, ptr @tusb_musb_try_idle.last_timer, align 4
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %lor.lhs.false.if.end15_crit_edge
  %20 = load i32, ptr @tusb_musb_try_idle.last_timer, align 4
  %sub = sub i32 %spec.select, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp16 = icmp slt i32 %sub, 0
  br i1 %cmp16, label %if.then17, label %if.end15.if.end40_crit_edge

if.end15.if.end40_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then17:                                        ; preds = %if.end15
  %pprev.i.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 22, i32 0, i32 1
  %21 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %22, null
  br i1 %tobool.not.i.i.not, label %if.then17.if.end40_crit_edge, label %do.body22

if.then17.if.end40_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

do.body22:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tusb_musb_try_idle.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tusb_musb_try_idle, %if.then34)) #7
          to label %cleanup [label %if.then34], !srcloc !177

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  %controller35 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %23 = ptrtoint ptr %controller35 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %controller35, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tusb_musb_try_idle.__UNIQUE_ID_ddebug303, ptr noundef %24, ptr noundef nonnull @.str.61) #7
  br label %cleanup

if.end40:                                         ; preds = %if.then17.if.end40_crit_edge, %if.end15.if.end40_crit_edge
  store i32 %spec.select, ptr @tusb_musb_try_idle.last_timer, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tusb_musb_try_idle.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tusb_musb_try_idle, %if.then53)) #7
          to label %do.end63 [label %if.then53], !srcloc !177

if.then53:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %controller54 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %25 = ptrtoint ptr %controller54 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %controller54, align 8
  %xceiv55 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 35
  %27 = ptrtoint ptr %xceiv55 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %xceiv55, align 8
  %otg56 = getelementptr inbounds %struct.usb_phy, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %otg56 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %otg56, align 4
  %state57 = getelementptr inbounds %struct.usb_otg, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %state57 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state57, align 4
  %call58 = tail call ptr @usb_otg_state_string(i32 noundef %32) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %sub59 = sub i32 %spec.select, %33
  %call60 = tail call i32 @jiffies_to_msecs(i32 noundef %sub59) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tusb_musb_try_idle.__UNIQUE_ID_ddebug304, ptr noundef %26, ptr noundef nonnull @.str.62, ptr noundef %call58, i32 noundef %call60) #7
  br label %do.end63

do.end63:                                         ; preds = %if.then53, %if.end40
  %dev_timer64 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 22
  %call65 = tail call i32 @mod_timer(ptr noundef %dev_timer64, i32 noundef %spec.select) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end63, %if.then34, %do.body22, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tusb_musb_vbus_status(ptr nocapture noundef readonly %musb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_base = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 26
  %0 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_base, align 4
  %call = tail call i32 @musb_readl(ptr noundef %1, i32 noundef 2060) #7
  %call1 = tail call i32 @musb_readl(ptr noundef %1, i32 noundef 2076) #7
  %and = and i32 %call1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %call1, 512
  tail call void @musb_writel(ptr noundef %1, i32 noundef 2076, i32 noundef %or) #7
  %call2 = tail call i32 @musb_readl(ptr noundef %1, i32 noundef 2060) #7
  tail call void @musb_writel(ptr noundef %1, i32 noundef 2076, i32 noundef %call1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %otg_stat.0 = phi i32 [ %call, %entry.if.end_crit_edge ], [ %call2, %if.then ]
  %and3 = lshr i32 %otg_stat.0, 5
  %and3.lobit = and i32 %and3, 1
  ret i32 %and3.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tusb_musb_set_vbus(ptr nocapture noundef %musb, i32 noundef %is_on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_base = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 26
  %0 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_base, align 4
  %xceiv = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 35
  %2 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xceiv, align 8
  %otg1 = getelementptr inbounds %struct.usb_phy, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %otg1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %otg1, align 4
  %call = tail call i32 @musb_readl(ptr noundef %1, i32 noundef 2076) #7
  %call2 = tail call i32 @musb_readl(ptr noundef %1, i32 noundef 2048) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %6 = load ptr, ptr @musb_readb, align 4
  %mregs = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 27
  %7 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mregs, align 8
  %call3 = tail call zeroext i8 %6(ptr noundef %8, i32 noundef 96) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %tobool.not = icmp eq i32 %is_on, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %5, align 4
  %10 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xceiv, align 8
  %otg5 = getelementptr inbounds %struct.usb_phy, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %otg5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %otg5, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 7, ptr %state, align 4
  %15 = or i8 %call3, 1
  %or7 = or i32 %call2, 65536
  %is_host = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 48
  %16 = ptrtoint ptr %is_host to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %is_host, align 4
  br label %if.end40

if.else:                                          ; preds = %entry
  %call8 = tail call i32 @musb_readl(ptr noundef %1, i32 noundef 2060) #7
  %and = and i32 %call8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.then10, label %if.else26

if.then10:                                        ; preds = %if.else
  %17 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %xceiv, align 8
  %otg12 = getelementptr inbounds %struct.usb_phy, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %otg12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %otg12, align 4
  %state13 = getelementptr inbounds %struct.usb_otg, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %state13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state13, align 4
  %switch.tableidx = add i32 %22, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %23 = icmp ult i32 %switch.tableidx, 6
  br i1 %23, label %switch.lookup, label %if.then10.sw.epilog_crit_edge

if.then10.sw.epilog_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.tusb_musb_set_vbus, i32 0, i32 %switch.tableidx
  %24 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %24)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.then10.sw.epilog_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 6, %if.then10.sw.epilog_crit_edge ]
  %25 = ptrtoint ptr %state13 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink, ptr %state13, align 4
  %is_active = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 51
  %26 = ptrtoint ptr %is_active to i32
  call void @__asan_loadN_noabort(i32 %26, i32 3)
  %bf.load = load i24, ptr %is_active, align 8
  %bf.clear = and i24 %bf.load, -2097153
  store i24 %bf.clear, ptr %is_active, align 8
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %5, align 4
  br label %if.end

if.else26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %is_active27 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 51
  %28 = ptrtoint ptr %is_active27 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 3)
  %bf.load28 = load i24, ptr %is_active27, align 8
  %bf.clear29 = and i24 %bf.load28, -2097153
  store i24 %bf.clear29, ptr %is_active27, align 8
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %5, align 4
  %30 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %xceiv, align 8
  %otg33 = getelementptr inbounds %struct.usb_phy, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %otg33 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %otg33, align 4
  %state34 = getelementptr inbounds %struct.usb_otg, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %state34 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %state34, align 4
  br label %if.end

if.end:                                           ; preds = %if.else26, %sw.epilog
  %.sink90 = phi i8 [ 0, %if.else26 ], [ 1, %sw.epilog ]
  %is_host35 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 48
  %35 = ptrtoint ptr %is_host35 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %.sink90, ptr %is_host35, align 4
  %36 = and i8 %call3, -2
  %and39 = and i32 %call2, -65537
  br label %if.end40

if.end40:                                         ; preds = %if.end, %if.then
  %timer.0 = phi i32 [ -2141483648, %if.then ], [ 0, %if.end ]
  %devctl.0 = phi i8 [ %15, %if.then ], [ %36, %if.end ]
  %conf.0 = phi i32 [ %or7, %if.then ], [ %and39, %if.end ]
  %and41 = and i32 %call, -25
  tail call void @musb_writel(ptr noundef %1, i32 noundef 2076, i32 noundef %and41) #7
  tail call void @musb_writel(ptr noundef %1, i32 noundef 2064, i32 noundef %timer.0) #7
  tail call void @musb_writel(ptr noundef %1, i32 noundef 2048, i32 noundef %conf.0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %37 = load ptr, ptr @musb_writeb, align 4
  %38 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mregs, align 8
  tail call void %37(ptr noundef %39, i32 noundef 96, i8 noundef zeroext %devctl.0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tusb_musb_set_vbus.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tusb_musb_set_vbus, %if.then47)) #7
          to label %do.end [label %if.then47], !srcloc !177

if.then47:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %controller = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %40 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %controller, align 8
  %42 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %xceiv, align 8
  %otg49 = getelementptr inbounds %struct.usb_phy, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %otg49 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %otg49, align 4
  %state50 = getelementptr inbounds %struct.usb_otg, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %state50 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %state50, align 4
  %call51 = tail call ptr @usb_otg_state_string(i32 noundef %47) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %48 = load ptr, ptr @musb_readb, align 4
  %49 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mregs, align 8
  %call53 = tail call zeroext i8 %48(ptr noundef %50, i32 noundef 96) #7
  %conv54 = zext i8 %call53 to i32
  %call55 = tail call i32 @musb_readl(ptr noundef %1, i32 noundef 2060) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tusb_musb_set_vbus.__UNIQUE_ID_ddebug305, ptr noundef %41, ptr noundef nonnull @.str.64, ptr noundef %call51, i32 noundef %conv54, i32 noundef %call55, i32 noundef %conf.0, i32 noundef %and41) #7
  br label %do.end

do.end:                                           ; preds = %if.then47, %if.end40
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_phy(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tusb_musb_interrupt(i32 noundef %irq, ptr noundef %__hci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_base = getelementptr inbounds %struct.musb, ptr %__hci, i32 0, i32 26
  %0 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_base, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %__hci) #7
  %call5 = tail call i32 @musb_readl(ptr noundef %1, i32 noundef 2172) #7
  tail call void @musb_writel(ptr noundef %1, i32 noundef 2172, i32 noundef -2147364609) #7
  %call6 = tail call i32 @musb_readl(ptr noundef %1, i32 noundef 2160) #7
  %and = and i32 %call6, -2096892929
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tusb_musb_interrupt.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tusb_musb_interrupt, %if.then)) #7
          to label %do.end13 [label %if.then], !srcloc !177

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %controller = getelementptr inbounds %struct.musb, ptr %__hci, i32 0, i32 25
  %2 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tusb_musb_interrupt.__UNIQUE_ID_ddebug314, ptr noundef %3, ptr noundef nonnull @.str.30, i32 noundef %and) #7
  br label %do.end13

do.end13:                                         ; preds = %if.then, %entry
  %conv14 = trunc i32 %call6 to i8
  %int_usb = getelementptr inbounds %struct.musb, ptr %__hci, i32 0, i32 32
  %4 = ptrtoint ptr %int_usb to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv14, ptr %int_usb, align 1
  %and15 = and i32 %call6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %do.end13.if.end74_crit_edge, label %if.then17

do.end13.if.end74_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.then17:                                        ; preds = %do.end13
  %tusb_revision = getelementptr inbounds %struct.musb, ptr %__hci, i32 0, i32 31
  %5 = ptrtoint ptr %tusb_revision to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tusb_revision, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %6)
  %cmp19 = icmp eq i8 %6, 48
  br i1 %cmp19, label %if.then21, label %if.then17.if.end22_crit_edge

if.then17.if.end22_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then21:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @tusb_wbus_quirk(ptr noundef %__hci, i32 noundef 0)
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.then17.if.end22_crit_edge
  %controller43 = getelementptr inbounds %struct.musb, ptr %__hci, i32 0, i32 25
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end22
  %i.0191 = phi i32 [ 16250871, %if.end22 ], [ %dec, %for.inc.for.body_crit_edge ]
  tail call void @musb_writel(ptr noundef %1, i32 noundef 2500, i32 noundef 0) #7
  tail call void @musb_writel(ptr noundef %1, i32 noundef 2500, i32 noundef %i.0191) #7
  %call25 = tail call i32 @musb_readl(ptr noundef %1, i32 noundef 2500) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call25, i32 %i.0191)
  %cmp26 = icmp eq i32 %call25, %i.0191
  br i1 %cmp26, label %for.body.for.end_crit_edge, label %do.body30

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.body30:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tusb_musb_interrupt.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tusb_musb_interrupt, %if.then42)) #7
          to label %for.inc [label %if.then42], !srcloc !177

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %controller43 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %controller43, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tusb_musb_interrupt.__UNIQUE_ID_ddebug315, ptr noundef %8, ptr noundef nonnull @.str.31) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then42, %do.body30
  %dec = add nsw i32 %i.0191, -1
  %cmp23 = icmp ugt i32 %dec, 16249871
  br i1 %cmp23, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %9 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctrl_base, align 4
  %call.i = tail call i32 @musb_readl(ptr noundef %10, i32 noundef 2072) #7
  %and.i = and i32 %call.i, -196609
  %or.i = or i32 %and.i, 65536
  tail call void @musb_writel(ptr noundef %10, i32 noundef 2072, i32 noundef %or.i) #7
  %call47 = tail call i32 @musb_readl(ptr noundef %1, i32 noundef 2080) #7
  tail call void @musb_writel(ptr noundef %1, i32 noundef 2088, i32 noundef %call47) #7
  %and48 = and i32 %call47, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %for.end.do.body53_crit_edge, label %if.then50

for.end.do.body53_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body53

if.then50:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %is_active = getelementptr inbounds %struct.musb, ptr %__hci, i32 0, i32 51
  %11 = ptrtoint ptr %is_active to i32
  call void @__asan_loadN_noabort(i32 %11, i32 3)
  %bf.load = load i24, ptr %is_active, align 8
  %bf.set = or i24 %bf.load, 2097152
  store i24 %bf.set, ptr %is_active, align 8
  %irq_work = getelementptr inbounds %struct.musb, ptr %__hci, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %12 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %irq_work, i32 noundef 0) #7
  br label %do.body53

do.body53:                                        ; preds = %if.then50, %for.end.do.body53_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tusb_musb_interrupt.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tusb_musb_interrupt, %if.then65)) #7
          to label %if.end74 [label %if.then65], !srcloc !177

if.then65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %controller43 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %controller43, align 8
  %is_active67 = getelementptr inbounds %struct.musb, ptr %__hci, i32 0, i32 51
  %15 = ptrtoint ptr %is_active67 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 3)
  %bf.load68 = load i24, ptr %is_active67, align 8
  %16 = and i24 %bf.load68, 2097152
  %tobool70.not = icmp eq i24 %16, 0
  %cond = select i1 %tobool70.not, ptr @.str.34, ptr @.str.33
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tusb_musb_interrupt.__UNIQUE_ID_ddebug316, ptr noundef %14, ptr noundef nonnull @.str.32, ptr noundef nonnull %cond, i32 noundef %call47) #7
  br label %if.end74

if.end74:                                         ; preds = %if.then65, %do.body53, %do.end13.if.end74_crit_edge
  %and75 = and i32 %call6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end74.if.end79_crit_edge, label %if.then77

if.end74.if.end79_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

if.then77:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  %dev_timer = getelementptr inbounds %struct.musb, ptr %__hci, i32 0, i32 22
  %call78 = tail call i32 @del_timer(ptr noundef %dev_timer) #7
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %if.end74.if.end79_crit_edge
  %and80 = and i32 %call6, 114688
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.end79.if.end84_crit_edge, label %if.then82

if.end79.if.end84_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.then82:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  %call83 = tail call fastcc i32 @tusb_otg_ints(ptr noundef %__hci, i32 noundef %and, ptr noundef %1)
  br label %if.end84

if.end84:                                         ; preds = %if.then82, %if.end79.if.end84_crit_edge
  %idle_timeout.0 = phi i32 [ %call83, %if.then82 ], [ 0, %if.end79.if.end84_crit_edge ]
  %and85 = and i32 %call6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.end84.if.end106_crit_edge, label %if.then87

if.end84.if.end106_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

if.then87:                                        ; preds = %if.end84
  %call88 = tail call i32 @musb_readl(ptr noundef %1, i32 noundef 2128) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tusb_musb_interrupt.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tusb_musb_interrupt, %if.then101)) #7
          to label %do.end105 [label %if.then101], !srcloc !177

if.then101:                                       ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  %controller102 = getelementptr inbounds %struct.musb, ptr %__hci, i32 0, i32 25
  %17 = ptrtoint ptr %controller102 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %controller102, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tusb_musb_interrupt.__UNIQUE_ID_ddebug317, ptr noundef %18, ptr noundef nonnull @.str.35, i32 noundef %call88) #7
  br label %do.end105

do.end105:                                        ; preds = %if.then101, %if.then87
  tail call void @musb_writel(ptr noundef %1, i32 noundef 2136, i32 noundef %call88) #7
  br label %if.end106

if.end106:                                        ; preds = %do.end105, %if.end84.if.end106_crit_edge
  %and107 = and i32 %call6, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %if.end106.if.end117_crit_edge, label %if.then109

if.end106.if.end117_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117

if.then109:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  %call110 = tail call i32 @musb_readl(ptr noundef %1, i32 noundef 2112) #7
  tail call void @musb_writel(ptr noundef %1, i32 noundef 2120, i32 noundef %call110) #7
  %19 = lshr i32 %call110, 15
  %20 = trunc i32 %19 to i16
  %conv112 = and i16 %20, -2
  %conv114 = trunc i32 %call110 to i16
  br label %if.end117

if.end117:                                        ; preds = %if.then109, %if.end106.if.end117_crit_edge
  %conv112.sink = phi i16 [ %conv112, %if.then109 ], [ 0, %if.end106.if.end117_crit_edge ]
  %conv114.sink = phi i16 [ %conv114, %if.then109 ], [ 0, %if.end106.if.end117_crit_edge ]
  %21 = getelementptr inbounds %struct.musb, ptr %__hci, i32 0, i32 33
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv112.sink, ptr %21, align 2
  %23 = getelementptr inbounds %struct.musb, ptr %__hci, i32 0, i32 34
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv114.sink, ptr %23, align 4
  %and118 = and i32 %call6, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %if.end117.if.end122_crit_edge, label %if.then120

if.end117.if.end122_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122

if.then120:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  %call121 = tail call i32 @musb_interrupt(ptr noundef %__hci) #7
  br label %if.end122

if.end122:                                        ; preds = %if.then120, %if.end117.if.end122_crit_edge
  %and123 = and i32 %call6, -2147364609
  tail call void @musb_writel(ptr noundef %1, i32 noundef 2168, i32 noundef %and123) #7
  tail call void @tusb_musb_try_idle(ptr noundef %__hci, i32 noundef %idle_timeout.0)
  tail call void @musb_writel(ptr noundef %1, i32 noundef 2172, i32 noundef %call5) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %__hci, i32 noundef %call2) #7
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tusb_draw_power(ptr nocapture noundef readonly %x, i32 noundef %mA) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @the_musb, align 4
  %ctrl_base = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 26
  %1 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctrl_base, align 4
  %otg = getelementptr inbounds %struct.usb_phy, ptr %x, i32 0, i32 5
  %3 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %otg, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.end.thread_crit_edge

entry.if.end.thread_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.thread

lor.lhs.false:                                    ; preds = %entry
  %min_power = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 44
  %7 = ptrtoint ptr %min_power to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %min_power, align 4
  %conv1 = zext i8 %8 to i32
  %shl = shl nuw nsw i32 %conv1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %mA)
  %cmp = icmp ugt i32 %shl, %mA
  br i1 %cmp, label %lor.lhs.false.if.end.thread_crit_edge, label %if.end

lor.lhs.false.if.end.thread_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.thread

if.end.thread:                                    ; preds = %lor.lhs.false.if.end.thread_crit_edge, %entry.if.end.thread_crit_edge
  %call26 = tail call i32 @musb_readl(ptr noundef %2, i32 noundef 2076) #7
  br label %if.else

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 @musb_readl(ptr noundef %2, i32 noundef 2076) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mA)
  %tobool3.not = icmp eq i32 %mA, 0
  br i1 %tobool3.not, label %if.end.if.else_crit_edge, label %if.then4

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %is_bus_powered = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 51
  %9 = ptrtoint ptr %is_bus_powered to i32
  call void @__asan_loadN_noabort(i32 %9, i32 3)
  %bf.load = load i24, ptr %is_bus_powered, align 8
  %bf.set = or i24 %bf.load, 2048
  store i24 %bf.set, ptr %is_bus_powered, align 8
  %or = or i32 %call, 24
  br label %if.end9

if.else:                                          ; preds = %if.end.if.else_crit_edge, %if.end.thread
  %call30 = phi i32 [ %call26, %if.end.thread ], [ %call, %if.end.if.else_crit_edge ]
  %is_bus_powered5 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 51
  %10 = ptrtoint ptr %is_bus_powered5 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 3)
  %bf.load6 = load i24, ptr %is_bus_powered5, align 8
  %bf.clear7 = and i24 %bf.load6, -2049
  store i24 %bf.clear7, ptr %is_bus_powered5, align 8
  %and = and i32 %call30, -25
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then4
  %mA.addr.028 = phi i32 [ %mA, %if.then4 ], [ 0, %if.else ]
  %reg.0 = phi i32 [ %or, %if.then4 ], [ %and, %if.else ]
  tail call void @musb_writel(ptr noundef %2, i32 noundef 2076, i32 noundef %reg.0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tusb_draw_power.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tusb_draw_power, %if.then14)) #7
          to label %do.end [label %if.then14], !srcloc !177

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %controller = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %11 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %controller, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tusb_draw_power.__UNIQUE_ID_ddebug299, ptr noundef %12, ptr noundef nonnull @.str.48, i32 noundef %mA.addr.028) #7
  br label %do.end

do.end:                                           ; preds = %if.then14, %if.end9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @musb_do_idle(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1032
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #7
  %xceiv = getelementptr i8, ptr %t, i32 96
  %0 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xceiv, align 8
  %otg = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %5, label %entry.sw.epilog_crit_edge [
    i32 8, label %sw.bb
    i32 6, label %entry.sw.bb26_crit_edge
  ]

entry.sw.bb26_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb26

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %a_wait_bcon = getelementptr i8, ptr %t, i32 3984
  %7 = ptrtoint ptr %a_wait_bcon to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %a_wait_bcon, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp6.not = icmp eq i32 %8, 0
  br i1 %cmp6.not, label %sw.bb.sw.bb26_crit_edge, label %land.lhs.true

sw.bb.sw.bb26_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb26

land.lhs.true:                                    ; preds = %sw.bb
  %idle_timeout = getelementptr i8, ptr %t, i32 3988
  %9 = ptrtoint ptr %idle_timeout to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %idle_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp8 = icmp eq i32 %10, 0
  br i1 %cmp8, label %land.lhs.true.do.body13_crit_edge, label %lor.lhs.false

land.lhs.true.do.body13_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body13

lor.lhs.false:                                    ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %10, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp11 = icmp slt i32 %sub, 0
  br i1 %cmp11, label %lor.lhs.false.do.body13_crit_edge, label %lor.lhs.false.sw.bb26_crit_edge

lor.lhs.false.sw.bb26_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb26

lor.lhs.false.do.body13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body13

do.body13:                                        ; preds = %lor.lhs.false.do.body13_crit_edge, %land.lhs.true.do.body13_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @musb_do_idle.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@musb_do_idle, %if.then18)) #7
          to label %sw.bb26 [label %if.then18], !srcloc !177

if.then18:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  %controller = getelementptr i8, ptr %t, i32 64
  %12 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %controller, align 8
  %14 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xceiv, align 8
  %otg20 = getelementptr inbounds %struct.usb_phy, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %otg20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %otg20, align 4
  %state21 = getelementptr inbounds %struct.usb_otg, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %state21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state21, align 4
  %call22 = tail call ptr @usb_otg_state_string(i32 noundef %19) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @musb_do_idle.__UNIQUE_ID_ddebug301, ptr noundef %13, ptr noundef nonnull @.str.50, ptr noundef %call22) #7
  br label %sw.bb26

sw.bb26:                                          ; preds = %if.then18, %do.body13, %lor.lhs.false.sw.bb26_crit_edge, %sw.bb.sw.bb26_crit_edge, %entry.sw.bb26_crit_edge
  tail call void @tusb_musb_set_vbus(ptr noundef %add.ptr, i32 noundef 0)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb26, %entry.sw.epilog_crit_edge
  %is_active = getelementptr i8, ptr %t, i32 3992
  %20 = ptrtoint ptr %is_active to i32
  call void @__asan_loadN_noabort(i32 %20, i32 3)
  %bf.load = load i24, ptr %is_active, align 8
  %21 = and i24 %bf.load, 2097152
  %tobool27.not = icmp eq i24 %21, 0
  br i1 %tobool27.not, label %if.then28, label %sw.epilog.done_crit_edge

sw.epilog.done_crit_edge:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.then28:                                        ; preds = %sw.epilog
  %is_host = getelementptr i8, ptr %t, i32 3980
  %22 = ptrtoint ptr %is_host to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %is_host, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool29.not = icmp eq i8 %23, 0
  br i1 %tobool29.not, label %if.then28.if.end34_crit_edge, label %land.lhs.true31

if.then28.if.end34_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

land.lhs.true31:                                  ; preds = %if.then28
  %port1_status = getelementptr i8, ptr %t, i32 -96
  %24 = ptrtoint ptr %port1_status to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port1_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %25)
  %tobool32.not = icmp ult i32 %25, 65536
  br i1 %tobool32.not, label %land.lhs.true31.if.end34_crit_edge, label %land.lhs.true31.done_crit_edge

land.lhs.true31.done_crit_edge:                   ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

land.lhs.true31.if.end34_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.end34:                                         ; preds = %land.lhs.true31.if.end34_crit_edge, %if.then28.if.end34_crit_edge
  %gadget_driver = getelementptr i8, ptr %t, i32 5056
  %26 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %gadget_driver, align 8
  %tobool35.not = icmp eq ptr %27, null
  %. = select i1 %tobool35.not, i32 0, i32 27
  tail call fastcc void @tusb_allow_idle(ptr noundef %add.ptr, i32 noundef %.)
  br label %done

done:                                             ; preds = %if.end34, %land.lhs.true31.done_crit_edge, %sw.epilog.done_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_phy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_readl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_writel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tusb_wbus_quirk(ptr nocapture noundef readonly %musb, i32 noundef %enabled) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_base = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 26
  %0 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @musb_readl(ptr noundef %1, i32 noundef 2056) #7
  store i32 %call, ptr @tusb_wbus_quirk.phy_otg_ctrl, align 4
  %call1 = tail call i32 @musb_readl(ptr noundef %1, i32 noundef 2052) #7
  store i32 %call1, ptr @tusb_wbus_quirk.phy_otg_ena, align 4
  %or2 = or i32 %call1, -1526497280
  tail call void @musb_writel(ptr noundef %1, i32 noundef 2056, i32 noundef %or2) #7
  %2 = load i32, ptr @tusb_wbus_quirk.phy_otg_ena, align 4
  %and = and i32 %2, 1526497279
  %or3 = or i32 %and, -1526595584
  tail call void @musb_writel(ptr noundef %1, i32 noundef 2052, i32 noundef %or3) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tusb_wbus_quirk.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tusb_wbus_quirk, %if.then9)) #7
          to label %if.end38 [label %if.then9], !srcloc !177

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %controller = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %3 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %controller, align 8
  %call10 = tail call i32 @musb_readl(ptr noundef %1, i32 noundef 2056) #7
  %call11 = tail call i32 @musb_readl(ptr noundef %1, i32 noundef 2052) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tusb_wbus_quirk.__UNIQUE_ID_ddebug295, ptr noundef %4, ptr noundef nonnull @.str.37, i32 noundef %call10, i32 noundef %call11) #7
  br label %if.end38

if.else:                                          ; preds = %entry
  %call12 = tail call i32 @musb_readl(ptr noundef %1, i32 noundef 2052) #7
  %and13 = and i32 %call12, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.else.if.end38_crit_edge, label %if.then15

if.else.if.end38_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then15:                                        ; preds = %if.else
  %5 = load i32, ptr @tusb_wbus_quirk.phy_otg_ctrl, align 4
  %or16 = or i32 %5, -1526726656
  tail call void @musb_writel(ptr noundef %1, i32 noundef 2056, i32 noundef %or16) #7
  %6 = load i32, ptr @tusb_wbus_quirk.phy_otg_ena, align 4
  %or17 = or i32 %6, -1526726656
  tail call void @musb_writel(ptr noundef %1, i32 noundef 2052, i32 noundef %or17) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tusb_wbus_quirk.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tusb_wbus_quirk, %if.then30)) #7
          to label %do.end36 [label %if.then30], !srcloc !177

if.then30:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %controller31 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %7 = ptrtoint ptr %controller31 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %controller31, align 8
  %call32 = tail call i32 @musb_readl(ptr noundef %1, i32 noundef 2056) #7
  %call33 = tail call i32 @musb_readl(ptr noundef %1, i32 noundef 2052) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tusb_wbus_quirk.__UNIQUE_ID_ddebug296, ptr noundef %8, ptr noundef nonnull @.str.38, i32 noundef %call32, i32 noundef %call33) #7
  br label %do.end36

do.end36:                                         ; preds = %if.then30, %if.then15
  store i32 0, ptr @tusb_wbus_quirk.phy_otg_ctrl, align 4
  store i32 0, ptr @tusb_wbus_quirk.phy_otg_ena, align 4
  br label %if.end38

if.end38:                                         ; preds = %do.end36, %if.else.if.end38_crit_edge, %if.then9, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tusb_otg_ints(ptr noundef %musb, i32 noundef %int_src, ptr noundef %tbase) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @musb_readl(ptr noundef %tbase, i32 noundef 2060) #7
  %xceiv = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 35
  %0 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xceiv, align 8
  %otg1 = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %otg1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %otg1, align 4
  %and = and i32 %int_src, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then:                                          ; preds = %entry
  %and2 = and i32 %call, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %and2.lobit = lshr exact i32 %and2, 3
  %4 = xor i32 %and2.lobit, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tusb_otg_ints.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tusb_otg_ints, %if.then11)) #7
          to label %do.end [label %if.then11], !srcloc !177

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %controller = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %5 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %controller, align 8
  %cond = select i1 %tobool3.not, i32 65, i32 66
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tusb_otg_ints.__UNIQUE_ID_ddebug307, ptr noundef %6, ptr noundef nonnull @.str.40, i32 noundef %cond) #7
  br label %do.end

do.end:                                           ; preds = %if.then11, %if.then
  %conv = trunc i32 %4 to i8
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %3, align 4
  tail call void @tusb_musb_set_vbus(ptr noundef %musb, i32 noundef %4)
  br i1 %tobool3.not, label %if.then15, label %do.end.if.end17_crit_edge

do.end.if.end17_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then15:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %8, 300
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %do.end.if.end17_crit_edge, %entry.if.end17_crit_edge
  %idle_timeout.1 = phi i32 [ 0, %entry.if.end17_crit_edge ], [ %add, %if.then15 ], [ 0, %do.end.if.end17_crit_edge ]
  %and18 = and i32 %int_src, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end142_crit_edge, label %if.then20

if.end17.if.end142_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end142

if.then20:                                        ; preds = %if.end17
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool22.not = icmp eq i8 %10, 0
  br i1 %tobool22.not, label %if.then23, label %do.body79

if.then23:                                        ; preds = %if.then20
  %port1_status = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 13
  %11 = ptrtoint ptr %port1_status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port1_status, align 8
  %and24 = and i32 %12, -3588
  store i32 %and24, ptr %port1_status, align 8
  %and25 = and i32 %call, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.then23.do.body56_crit_edge, label %do.body28

if.then23.do.body56_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body56

do.body28:                                        ; preds = %if.then23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tusb_otg_ints.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tusb_otg_ints, %if.then40)) #7
          to label %do.end44 [label %if.then40], !srcloc !177

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  %controller41 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %13 = ptrtoint ptr %controller41 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %controller41, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tusb_otg_ints.__UNIQUE_ID_ddebug308, ptr noundef %14, ptr noundef nonnull @.str.41) #7
  br label %do.end44

do.end44:                                         ; preds = %if.then40, %do.body28
  %15 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %xceiv, align 8
  %otg46 = getelementptr inbounds %struct.usb_phy, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %otg46 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %otg46, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.not = icmp eq i32 %20, 1
  br i1 %cmp.not, label %do.end44.if.end54_crit_edge, label %if.then48

do.end44.if.end54_crit_edge:                      ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then48:                                        ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %state, align 4
  %int_usb = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 32
  %22 = ptrtoint ptr %int_usb to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %int_usb, align 1
  %24 = or i8 %23, 32
  store i8 %24, ptr %int_usb, align 1
  br label %if.end54

if.end54:                                         ; preds = %if.then48, %do.end44.if.end54_crit_edge
  %is_active = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 51
  %25 = ptrtoint ptr %is_active to i32
  call void @__asan_loadN_noabort(i32 %25, i32 3)
  %bf.load = load i24, ptr %is_active, align 8
  %bf.clear = and i24 %bf.load, -2097153
  store i24 %bf.clear, ptr %is_active, align 8
  br label %do.body56

do.body56:                                        ; preds = %if.end54, %if.then23.do.body56_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tusb_otg_ints.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tusb_otg_ints, %if.then68)) #7
          to label %do.end76 [label %if.then68], !srcloc !177

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #9
  %controller69 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %26 = ptrtoint ptr %controller69 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %controller69, align 8
  %28 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %xceiv, align 8
  %otg71 = getelementptr inbounds %struct.usb_phy, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %otg71 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %otg71, align 4
  %state72 = getelementptr inbounds %struct.usb_otg, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %state72 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %state72, align 4
  %call73 = tail call ptr @usb_otg_state_string(i32 noundef %33) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tusb_otg_ints.__UNIQUE_ID_ddebug309, ptr noundef %27, ptr noundef nonnull @.str.42, ptr noundef %call73, i32 noundef %call) #7
  br label %do.end76

do.end76:                                         ; preds = %if.then68, %do.body56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %add77 = add i32 %34, 100
  %irq_work = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %35 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %35, ptr noundef %irq_work, i32 noundef 0) #7
  br label %if.end142

do.body79:                                        ; preds = %if.then20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tusb_otg_ints.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tusb_otg_ints, %if.then91)) #7
          to label %do.end99 [label %if.then91], !srcloc !177

if.then91:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #9
  %controller92 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %36 = ptrtoint ptr %controller92 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %controller92, align 8
  %38 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %xceiv, align 8
  %otg94 = getelementptr inbounds %struct.usb_phy, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %otg94 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %otg94, align 4
  %state95 = getelementptr inbounds %struct.usb_otg, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %state95 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %state95, align 4
  %call96 = tail call ptr @usb_otg_state_string(i32 noundef %43) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tusb_otg_ints.__UNIQUE_ID_ddebug310, ptr noundef %37, ptr noundef nonnull @.str.42, ptr noundef %call96, i32 noundef %call) #7
  br label %do.end99

do.end99:                                         ; preds = %if.then91, %do.body79
  %44 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %xceiv, align 8
  %otg101 = getelementptr inbounds %struct.usb_phy, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %otg101 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %otg101, align 4
  %state102 = getelementptr inbounds %struct.usb_otg, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %state102 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %state102, align 4
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %49, label %do.end99.if.end142_crit_edge [
    i32 6, label %do.body103
    i32 12, label %sw.bb134
  ]

do.end99.if.end142_crit_edge:                     ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end142

do.body103:                                       ; preds = %do.end99
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tusb_otg_ints.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tusb_otg_ints, %if.then115)) #7
          to label %do.end119 [label %if.then115], !srcloc !177

if.then115:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #9
  %controller116 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %51 = ptrtoint ptr %controller116 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %controller116, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tusb_otg_ints.__UNIQUE_ID_ddebug311, ptr noundef %52, ptr noundef nonnull @.str.43) #7
  br label %do.end119

do.end119:                                        ; preds = %if.then115, %do.body103
  %ops.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 3
  %53 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops.i, align 8
  %set_vbus.i = getelementptr inbounds %struct.musb_platform_ops, ptr %54, i32 0, i32 26
  %55 = ptrtoint ptr %set_vbus.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %set_vbus.i, align 4
  %tobool.not.i = icmp eq ptr %56, null
  br i1 %tobool.not.i, label %do.end119.musb_platform_set_vbus.exit_crit_edge, label %if.then.i311

do.end119.musb_platform_set_vbus.exit_crit_edge:  ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #9
  br label %musb_platform_set_vbus.exit

if.then.i311:                                     ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %56(ptr noundef %musb, i32 noundef 1) #7
  br label %musb_platform_set_vbus.exit

musb_platform_set_vbus.exit:                      ; preds = %if.then.i311, %do.end119.musb_platform_set_vbus.exit_crit_edge
  %a_wait_bcon = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 49
  %57 = ptrtoint ptr %a_wait_bcon to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %a_wait_bcon, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp120.not = icmp eq i32 %58, 0
  %is_active128 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 51
  %59 = ptrtoint ptr %is_active128 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 3)
  %bf.load129 = load i24, ptr %is_active128, align 8
  %bf.clear125 = and i24 %bf.load129, -2097153
  %masksel = select i1 %cmp120.not, i24 2097152, i24 0
  %bf.set131.sink = or i24 %bf.clear125, %masksel
  store i24 %bf.set131.sink, ptr %is_active128, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %60 = load volatile i32, ptr @jiffies, align 128
  %add133 = add i32 %60, 200
  br label %if.end142

sw.bb134:                                         ; preds = %do.end99
  %vbuserr_retry = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 40
  %61 = ptrtoint ptr %vbuserr_retry to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %vbuserr_retry, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool135.not = icmp eq i16 %62, 0
  br i1 %tobool135.not, label %if.else138, label %if.then136

if.then136:                                       ; preds = %sw.bb134
  call void @__sanitizer_cov_trace_pc() #9
  %dec = add i16 %62, -1
  %63 = ptrtoint ptr %vbuserr_retry to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %dec, ptr %vbuserr_retry, align 8
  tail call void @tusb_musb_set_vbus(ptr noundef %musb, i32 noundef 1)
  br label %if.end142

if.else138:                                       ; preds = %sw.bb134
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %vbuserr_retry to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 3, ptr %vbuserr_retry, align 8
  tail call void @tusb_musb_set_vbus(ptr noundef %musb, i32 noundef 0)
  br label %if.end142

if.end142:                                        ; preds = %if.else138, %if.then136, %musb_platform_set_vbus.exit, %do.end99.if.end142_crit_edge, %do.end76, %if.end17.if.end142_crit_edge
  %idle_timeout.2 = phi i32 [ %idle_timeout.1, %do.end99.if.end142_crit_edge ], [ %idle_timeout.1, %if.then136 ], [ %idle_timeout.1, %if.else138 ], [ %add133, %musb_platform_set_vbus.exit ], [ %add77, %do.end76 ], [ %idle_timeout.1, %if.end17.if.end142_crit_edge ]
  %and143 = and i32 %int_src, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %if.end142.if.end231_crit_edge, label %if.then145

if.end142.if.end231_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end231

if.then145:                                       ; preds = %if.end142
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tusb_otg_ints.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tusb_otg_ints, %if.then158)) #7
          to label %do.end166 [label %if.then158], !srcloc !177

if.then158:                                       ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #9
  %controller159 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %65 = ptrtoint ptr %controller159 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %controller159, align 8
  %67 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %xceiv, align 8
  %otg161 = getelementptr inbounds %struct.usb_phy, ptr %68, i32 0, i32 5
  %69 = ptrtoint ptr %otg161 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %otg161, align 4
  %state162 = getelementptr inbounds %struct.usb_otg, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %state162 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %state162, align 4
  %call163 = tail call ptr @usb_otg_state_string(i32 noundef %72) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tusb_otg_ints.__UNIQUE_ID_ddebug312, ptr noundef %66, ptr noundef nonnull @.str.44, ptr noundef %call163, i32 noundef %call) #7
  br label %do.end166

do.end166:                                        ; preds = %if.then158, %if.then145
  %73 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %xceiv, align 8
  %otg168 = getelementptr inbounds %struct.usb_phy, ptr %74, i32 0, i32 5
  %75 = ptrtoint ptr %otg168 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %otg168, align 4
  %state169 = getelementptr inbounds %struct.usb_otg, ptr %76, i32 0, i32 5
  %77 = ptrtoint ptr %state169 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %state169, align 4
  %79 = zext i32 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %78, label %do.end166.if.end231_crit_edge [
    i32 7, label %sw.bb170
    i32 8, label %sw.bb220
  ]

do.end166.if.end231_crit_edge:                    ; preds = %do.end166
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end231

sw.bb170:                                         ; preds = %do.end166
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %80 = load ptr, ptr @musb_readb, align 4
  %mregs = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 27
  %81 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mregs, align 8
  %call171 = tail call zeroext i8 %80(ptr noundef %82, i32 noundef 96) #7
  %and172 = and i32 %call, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %tobool173.not = icmp eq i32 %and172, 0
  %conv215 = zext i8 %call171 to i32
  br i1 %tobool173.not, label %do.end213, label %if.then174

if.then174:                                       ; preds = %sw.bb170
  %and176 = and i32 %conv215, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %and176)
  %cmp177.not = icmp eq i32 %and176, 24
  br i1 %cmp177.not, label %if.end198, label %do.body180

do.body180:                                       ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tusb_otg_ints.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tusb_otg_ints, %if.then192)) #7
          to label %if.end231 [label %if.then192], !srcloc !177

if.then192:                                       ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #9
  %controller193 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %83 = ptrtoint ptr %controller193 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %controller193, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tusb_otg_ints.__UNIQUE_ID_ddebug313, ptr noundef %84, ptr noundef nonnull @.str.45, i32 noundef %conv215) #7
  br label %if.end231

if.end198:                                        ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %xceiv, align 8
  %otg200 = getelementptr inbounds %struct.usb_phy, ptr %86, i32 0, i32 5
  %87 = ptrtoint ptr %otg200 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %otg200, align 4
  %state201 = getelementptr inbounds %struct.usb_otg, ptr %88, i32 0, i32 5
  %89 = ptrtoint ptr %state201 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 8, ptr %state201, align 4
  %is_active202 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 51
  %90 = ptrtoint ptr %is_active202 to i32
  call void @__asan_loadN_noabort(i32 %90, i32 3)
  %bf.load203 = load i24, ptr %is_active202, align 8
  %bf.clear204 = and i24 %bf.load203, -2097153
  store i24 %bf.clear204, ptr %is_active202, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %91 = load volatile i32, ptr @jiffies, align 128
  %a_wait_bcon206 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 49
  %92 = ptrtoint ptr %a_wait_bcon206 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %a_wait_bcon206, align 8
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %93) #7
  %add208 = add i32 %call2.i, %91
  br label %if.end231

do.end213:                                        ; preds = %sw.bb170
  call void @__sanitizer_cov_trace_pc() #9
  %call216 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.39, i32 noundef 797, i32 noundef %conv215) #10
  tail call void @tusb_musb_set_vbus(ptr noundef %musb, i32 noundef 0)
  br label %if.end231

sw.bb220:                                         ; preds = %do.end166
  %a_wait_bcon221 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 49
  %94 = ptrtoint ptr %a_wait_bcon221 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %a_wait_bcon221, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp222.not = icmp eq i32 %95, 0
  br i1 %cmp222.not, label %sw.bb220.if.end231_crit_edge, label %if.then224

sw.bb220.if.end231_crit_edge:                     ; preds = %sw.bb220
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end231

if.then224:                                       ; preds = %sw.bb220
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %96 = load volatile i32, ptr @jiffies, align 128
  %call2.i307 = tail call i32 @__msecs_to_jiffies(i32 noundef %95) #7
  %add227 = add i32 %call2.i307, %96
  br label %if.end231

if.end231:                                        ; preds = %if.then224, %sw.bb220.if.end231_crit_edge, %do.end213, %if.end198, %if.then192, %do.body180, %do.end166.if.end231_crit_edge, %if.end142.if.end231_crit_edge
  %idle_timeout.4 = phi i32 [ %idle_timeout.2, %if.end142.if.end231_crit_edge ], [ %idle_timeout.2, %do.end166.if.end231_crit_edge ], [ %add227, %if.then224 ], [ %idle_timeout.2, %sw.bb220.if.end231_crit_edge ], [ %idle_timeout.2, %if.then192 ], [ %add208, %if.end198 ], [ %idle_timeout.2, %do.end213 ], [ %idle_timeout.2, %do.body180 ]
  %irq_work232 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %97 = load ptr, ptr @system_wq, align 4
  %call.i.i313 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %97, ptr noundef %irq_work232, i32 noundef 0) #7
  ret i32 %idle_timeout.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_interrupt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_otg_state_string(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tusb_allow_idle(ptr nocapture noundef readonly %musb, i32 noundef %wakeup_enables) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_base = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 26
  %0 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_base, align 4
  %and = and i32 %wakeup_enables, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %tusb_revision = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 31
  %2 = ptrtoint ptr %tusb_revision to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tusb_revision, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %3)
  %cmp = icmp eq i8 %3, 48
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @tusb_wbus_quirk(ptr noundef %musb, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_base, align 4
  %call.i = tail call i32 @musb_readl(ptr noundef %5, i32 noundef 2072) #7
  %and.i = and i32 %call.i, -196609
  tail call void @musb_writel(ptr noundef %5, i32 noundef 2072, i32 noundef %and.i) #7
  %or = or i32 %wakeup_enables, 4
  %neg = xor i32 %or, -1
  tail call void @musb_writel(ptr noundef %1, i32 noundef 2092, i32 noundef %neg) #7
  %call = tail call i32 @musb_readl(ptr noundef %1, i32 noundef 2076) #7
  %is_host = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 48
  %6 = ptrtoint ptr %is_host to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_host, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  %or4 = and i32 %call, -1540
  %reg.0.v = select i1 %tobool2.not, i32 1024, i32 512
  %reg.0 = or i32 %or4, %reg.0.v
  %or9 = or i32 %reg.0, 3
  tail call void @musb_writel(ptr noundef %1, i32 noundef 2076, i32 noundef %or9) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tusb_allow_idle.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tusb_allow_idle, %if.then14)) #7
          to label %do.end [label %if.then14], !srcloc !177

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %controller = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %8 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %controller, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tusb_allow_idle.__UNIQUE_ID_ddebug300, ptr noundef %9, ptr noundef nonnull @.str.52, i32 noundef %or) #7
  br label %do.end

do.end:                                           ; preds = %if.then14, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_type(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_phy_generic_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !29, !31, !32, !34, !35, !37, !38, !39, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !68, !69, !70, !72, !73, !75, !76, !77, !78, !80, !81, !83, !85, !87, !88, !89, !91, !92, !94, !95, !96, !98, !99, !101, !102, !104, !106, !107, !109, !110, !112, !113, !115, !116, !117, !119, !120, !121, !123, !125, !126, !127, !129, !130, !131, !133, !135, !136, !137, !139, !140, !142, !143, !144, !146, !147, !148, !150, !152, !153, !154, !156, !157, !159, !160, !162, !163, !164, !166}
!llvm.module.flags = !{!168, !169, !170, !171, !172, !173, !174, !175}
!llvm.ident = !{!176}

!0 = !{ptr @__UNIQUE_ID_description321, !1, !"__UNIQUE_ID_description321", i1 false, i1 false}
!1 = !{!"../drivers/usb/musb/tusb6010.c", i32 1279, i32 1}
!2 = !{ptr @__UNIQUE_ID_author322, !3, !"__UNIQUE_ID_author322", i1 false, i1 false}
!3 = !{!"../drivers/usb/musb/tusb6010.c", i32 1280, i32 1}
!4 = !{ptr @__UNIQUE_ID_file323, !5, !"__UNIQUE_ID_file323", i1 false, i1 false}
!5 = !{!"../drivers/usb/musb/tusb6010.c", i32 1281, i32 1}
!6 = !{ptr @__UNIQUE_ID_license324, !5, !"__UNIQUE_ID_license324", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_tusb6010__325_1282_tusb_driver_init6, !8, !"__initcall__kmod_tusb6010__325_1282_tusb_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/usb/musb/tusb6010.c", i32 1282, i32 1}
!9 = !{ptr @__exitcall_tusb_driver_exit, !8, !"__exitcall_tusb_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/musb/tusb6010.c", i32 1275, i32 11}
!12 = !{ptr @tusb_driver, !13, !"tusb_driver", i1 false, i1 false}
!13 = !{!"../drivers/usb/musb/tusb6010.c", i32 1271, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/musb/tusb6010.c", i32 1254, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @tusb_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @tusb_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @tusb_ops, !23, !"tusb_ops", i1 false, i1 false}
!23 = !{!"../drivers/usb/musb/tusb6010.c", i32 1173, i32 39}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/musb/tusb6010.c", i32 1108, i32 3}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @tusb_musb_init.__UNIQUE_ID_ddebug318, !25, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/musb/tusb6010.c", i32 1117, i32 3}
!31 = !{ptr @tusb_musb_init.__UNIQUE_ID_ddebug319, !30, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/musb/tusb6010.c", i32 1125, i32 3}
!34 = !{ptr @tusb_musb_init.__UNIQUE_ID_ddebug320, !33, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/musb/tusb6010.c", i32 1138, i32 3}
!37 = !{ptr @tusb_musb_init._entry, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @tusb_musb_init._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @tusb_musb_init.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/usb/musb/tusb6010.c", i32 1147, i32 2}
!41 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/musb/tusb6010.c", i32 1032, i32 3}
!44 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @tusb_musb_start._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @tusb_musb_start._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/musb/tusb6010.c", i32 1040, i32 3}
!49 = !{ptr @tusb_musb_start._entry.15, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @tusb_musb_start._entry_ptr.17, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/musb/tusb6010.c", i32 1047, i32 3}
!53 = !{ptr @tusb_musb_start._entry.18, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @tusb_musb_start._entry_ptr.20, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/musb/tusb6010.c", i32 68, i32 2}
!57 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @tusb_print_revision._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @tusb_print_revision._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/musb/tusb6010.c", i32 833, i32 2}
!68 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @tusb_musb_interrupt.__UNIQUE_ID_ddebug314, !67, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/musb/tusb6010.c", i32 854, i32 4}
!72 = !{ptr @tusb_musb_interrupt.__UNIQUE_ID_ddebug315, !71, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/musb/tusb6010.c", i32 866, i32 3}
!75 = !{ptr @tusb_musb_interrupt.__UNIQUE_ID_ddebug316, !74, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!76 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/musb/tusb6010.c", i32 888, i32 3}
!80 = !{ptr @tusb_musb_interrupt.__UNIQUE_ID_ddebug317, !79, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!81 = !{ptr @tusb_wbus_quirk.phy_otg_ctrl, !82, !"phy_otg_ctrl", i1 false, i1 false}
!82 = !{!"../drivers/usb/musb/tusb6010.c", i32 97, i32 13}
!83 = !{ptr @tusb_wbus_quirk.phy_otg_ena, !84, !"phy_otg_ena", i1 false, i1 false}
!84 = !{!"../drivers/usb/musb/tusb6010.c", i32 97, i32 27}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/usb/musb/tusb6010.c", i32 109, i32 3}
!87 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @tusb_wbus_quirk.__UNIQUE_ID_ddebug295, !86, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/usb/musb/tusb6010.c", i32 118, i32 3}
!91 = !{ptr @tusb_wbus_quirk.__UNIQUE_ID_ddebug296, !90, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/musb/tusb6010.c", i32 689, i32 3}
!94 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @tusb_otg_ints.__UNIQUE_ID_ddebug307, !93, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!96 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/musb/tusb6010.c", i32 713, i32 5}
!98 = !{ptr @tusb_otg_ints.__UNIQUE_ID_ddebug308, !97, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/musb/tusb6010.c", i32 721, i32 4}
!101 = !{ptr @tusb_otg_ints.__UNIQUE_ID_ddebug309, !100, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!102 = !{ptr @tusb_otg_ints.__UNIQUE_ID_ddebug310, !103, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!103 = !{!"../drivers/usb/musb/tusb6010.c", i32 727, i32 4}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/musb/tusb6010.c", i32 732, i32 5}
!106 = !{ptr @tusb_otg_ints.__UNIQUE_ID_ddebug311, !105, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!107 = !{ptr @.str.44, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/usb/musb/tusb6010.c", i32 776, i32 3}
!109 = !{ptr @tusb_otg_ints.__UNIQUE_ID_ddebug312, !108, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/usb/musb/tusb6010.c", i32 788, i32 6}
!112 = !{ptr @tusb_otg_ints.__UNIQUE_ID_ddebug313, !111, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!113 = !{ptr @.str.46, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/usb/musb/tusb6010.c", i32 797, i32 5}
!115 = !{ptr @tusb_otg_ints._entry, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @tusb_otg_ints._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.47, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/usb/musb/tusb6010.c", i32 354, i32 2}
!119 = !{ptr @.str.48, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @tusb_draw_power.__UNIQUE_ID_ddebug299, !118, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!121 = !{ptr @the_musb, !122, !"the_musb", i1 false, i1 false}
!122 = !{!"../drivers/usb/musb/tusb6010.c", i32 317, i32 21}
!123 = !{ptr @.str.49, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/usb/musb/tusb6010.c", i32 465, i32 4}
!125 = !{ptr @.str.50, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @musb_do_idle.__UNIQUE_ID_ddebug301, !124, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!127 = !{ptr @.str.51, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/usb/musb/tusb6010.c", i32 420, i32 2}
!129 = !{ptr @.str.52, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @tusb_allow_idle.__UNIQUE_ID_ddebug300, !128, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!131 = distinct !{null, !132, !"dma_off", i1 false, i1 false}
!132 = !{!"../drivers/usb/musb/tusb6010.c", i32 919, i32 12}
!133 = !{ptr @.str.53, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/usb/musb/tusb6010.c", i32 277, i32 2}
!135 = !{ptr @.str.54, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @tusb_read_fifo.__UNIQUE_ID_ddebug298, !134, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!137 = !{ptr @.str.55, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/musb/tusb6010.c", i32 229, i32 2}
!139 = !{ptr @tusb_write_fifo.__UNIQUE_ID_ddebug297, !138, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!140 = !{ptr @.str.56, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/usb/musb/tusb6010.c", i32 658, i32 3}
!142 = !{ptr @.str.57, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @tusb_musb_set_mode.__UNIQUE_ID_ddebug306, !141, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!144 = !{ptr @.str.58, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/usb/musb/tusb6010.c", i32 671, i32 4}
!146 = !{ptr @tusb_musb_set_mode._entry, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @tusb_musb_set_mode._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @tusb_musb_try_idle.last_timer, !149, !"last_timer", i1 false, i1 false}
!149 = !{!"../drivers/usb/musb/tusb6010.c", i32 513, i32 23}
!150 = !{ptr @.str.59, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/usb/musb/tusb6010.c", i32 521, i32 3}
!152 = !{ptr @.str.60, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @tusb_musb_try_idle.__UNIQUE_ID_ddebug302, !151, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!154 = !{ptr @.str.61, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/usb/musb/tusb6010.c", i32 532, i32 4}
!156 = !{ptr @tusb_musb_try_idle.__UNIQUE_ID_ddebug303, !155, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!157 = !{ptr @.str.62, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/usb/musb/tusb6010.c", i32 538, i32 2}
!159 = !{ptr @tusb_musb_try_idle.__UNIQUE_ID_ddebug304, !158, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!160 = !{ptr @.str.63, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/usb/musb/tusb6010.c", i32 614, i32 2}
!162 = !{ptr @.str.64, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @tusb_musb_set_vbus.__UNIQUE_ID_ddebug305, !161, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!164 = !{ptr @.str.65, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/usb/musb/tusb6010.c", i32 1201, i32 11}
!166 = !{ptr @tusb_dev_info, !167, !"tusb_dev_info", i1 false, i1 false}
!167 = !{!"../drivers/usb/musb/tusb6010.c", i32 1200, i32 42}
!168 = !{i32 1, !"wchar_size", i32 2}
!169 = !{i32 1, !"min_enum_size", i32 4}
!170 = !{i32 8, !"branch-target-enforcement", i32 0}
!171 = !{i32 8, !"sign-return-address", i32 0}
!172 = !{i32 8, !"sign-return-address-all", i32 0}
!173 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!174 = !{i32 7, !"uwtable", i32 1}
!175 = !{i32 7, !"frame-pointer", i32 2}
!176 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!177 = !{i64 2148986528, i64 2148986533, i64 2148986546, i64 2148986590, i64 2148986624, i64 2148986645}
!178 = !{i64 4810602}
!179 = !{i64 4810402}
!180 = !{!"branch_weights", i32 2000, i32 1}
!181 = !{i64 871439}
!182 = !{i8 0, i8 2}
