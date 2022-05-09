; ModuleID = '/llk/IR_all_yes/drivers/usb/musb/omap2430.c_pt.bc'
source_filename = "../drivers/usb/musb/omap2430.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.musb_platform_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.omap2430_glue = type { ptr, ptr, i32, %struct.work_struct, ptr, i8 }
%struct.musb_hdrc_config = type { ptr, i32, i8, i8, i8, i32 }
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

@__initcall__kmod_omap2430__302_564_omap2430_driver_init6 = internal global ptr @omap2430_driver_init, section ".initcall6.init", align 4
@omap2430_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @omap2430_probe, ptr @omap2430_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap2430_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap2430_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_omap2430_driver_exit = internal global ptr @omap2430_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description303 = internal constant [47 x i8] c"omap2430.description=OMAP2PLUS MUSB Glue Layer\00", section ".modinfo", align 1
@__UNIQUE_ID_author304 = internal constant [44 x i8] c"omap2430.author=Felipe Balbi <balbi@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [40 x i8] c"omap2430.file=drivers/usb/musb/omap2430\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [24 x i8] c"omap2430.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"musb-omap2430\00", [18 x i8] zeroinitializer }, align 32
@omap2430_id_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-musb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-musb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@omap2430_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @omap2430_suspend, ptr @omap2430_resume, ptr null, ptr null, ptr null, ptr null, ptr @omap2430_suspend_late, ptr @omap2430_resume_early, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap2430_runtime_suspend, ptr @omap2430_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"musb-hdrc\00", [22 x i8] zeroinitializer }, align 32
@omap2430_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 323, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to allocate musb device\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"omap2430_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/usb/musb/omap2430.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap2430_probe._entry_ptr = internal global ptr @omap2430_probe._entry, section ".printk_index", align 4
@omap2430_dmamask = internal global { i64, [24 x i8] } { i64 4294967295, [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"interface-type\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"num-eps\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ram-bits\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"multipoint\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ctrl-module\00", [20 x i8] zeroinitializer }, align 32
@omap2430_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 366, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get control device\0A\00", [34 x i8] zeroinitializer }, align 32
@omap2430_probe._entry_ptr.16 = internal global ptr @omap2430_probe._entry.14, section ".printk_index", align 4
@omap2430_ops = internal constant { %struct.musb_platform_ops, [36 x i8] } { %struct.musb_platform_ops { i32 4, ptr @omap2430_musb_init, ptr @omap2430_musb_exit, ptr @omap2430_musb_enable, ptr @omap2430_musb_disable, ptr null, ptr null, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap2430_musb_mailbox, ptr null }, [36 x i8] zeroinitializer }, align 32
@_glue = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@omap2430_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&glue->omap_musb_mailbox_work)\00", [47 x i8] zeroinitializer }, align 32
@omap2430_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 387, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to add resources\0A\00", [39 x i8] zeroinitializer }, align 32
@omap2430_probe._entry_ptr.20 = internal global ptr @omap2430_probe._entry.18, section ".printk_index", align 4
@omap2430_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 393, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to add platform_data\0A\00", [35 x i8] zeroinitializer }, align 32
@omap2430_probe._entry_ptr.23 = internal global ptr @omap2430_probe._entry.21, section ".printk_index", align 4
@omap2430_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 401, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to register musb device\0A\00", [32 x i8] zeroinitializer }, align 32
@omap2430_probe._entry_ptr.26 = internal global ptr @omap2430_probe._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb2-phy\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb-phy\00", [24 x i8] zeroinitializer }, align 32
@omap2430_musb_init.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.30, ptr @.str.4, ptr @.str.31, i8 0, i8 54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"omap2430\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"omap2430_musb_init\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"HS USB OTG: no transceiver configured\0A\00", [57 x i8] zeroinitializer }, align 32
@omap2430_musb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.4, i32 221, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"HS USB OTG: no PHY configured\0A\00", [33 x i8] zeroinitializer }, align 32
@omap2430_musb_init._entry_ptr = internal global ptr @omap2430_musb_init._entry, section ".printk_index", align 4
@omap2430_musb_init.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.30, ptr @.str.4, ptr @.str.33, i8 0, i8 61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"HS USB OTG: revision 0x%x, sysconfig 0x%02x, sysstatus 0x%x, intrfsel 0x%x, simenable  0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@musb_readb = external dso_local local_unnamed_addr global ptr, align 4
@musb_readw = external dso_local local_unnamed_addr global ptr, align 4
@omap_musb_set_mailbox.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.34, ptr @.str.4, ptr @.str.35, i8 0, i8 24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"omap_musb_set_mailbox\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"VBUS %s, devctl %02x\0A\00", [42 x i8] zeroinitializer }, align 32
@omap_musb_set_mailbox.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.34, ptr @.str.4, ptr @.str.36, i8 0, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ID GND\0A\00", [24 x i8] zeroinitializer }, align 32
@omap_musb_set_mailbox.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.34, ptr @.str.4, ptr @.str.37, i8 0, i8 33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"VBUS Connect\0A\00", [18 x i8] zeroinitializer }, align 32
@omap_musb_set_mailbox.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.34, ptr @.str.4, ptr @.str.38, i8 0, i8 35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"VBUS Disconnect\0A\00", [47 x i8] zeroinitializer }, align 32
@omap_musb_set_mailbox.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.34, ptr @.str.4, ptr @.str.39, i8 0, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ID float\0A\00", [22 x i8] zeroinitializer }, align 32
@omap2430_musb_mailbox._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.4, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: musb core is not yet initialized\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"omap2430_musb_mailbox\00", [42 x i8] zeroinitializer }, align 32
@omap2430_musb_mailbox._entry_ptr = internal global ptr @omap2430_musb_mailbox._entry, section ".printk_index", align 4
@omap2430_musb_mailbox._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.4, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: musb core is not yet ready\0A\00", [62 x i8] zeroinitializer }, align 32
@omap2430_musb_mailbox._entry_ptr.44 = internal global ptr @omap2430_musb_mailbox._entry.42, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.45 = internal global [6 x i64] [i64 4, i64 32, i64 6, i64 7, i64 8, i64 9]
@___asan_gen_.46 = private unnamed_addr constant [16 x i8] c"omap2430_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 554, i32 31 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 558, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant [18 x i8] c"omap2430_id_table\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 542, i32 34 }
@___asan_gen_.55 = private unnamed_addr constant [16 x i8] c"omap2430_pm_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 527, i32 32 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 321, i32 31 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 323, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"omap2430_dmamask\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 300, i32 12 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 348, i32 27 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 349, i32 27 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 351, i32 27 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 352, i32 27 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 353, i32 27 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 355, i32 33 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 362, i32 38 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 366, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant [13 x i8] c"omap2430_ops\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 285, i32 39 }
@___asan_gen_.112 = private unnamed_addr constant [6 x i8] c"_glue\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 42, i32 30 }
@___asan_gen_.115 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 383, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 387, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 393, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 401, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 200, i32 40 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 208, i32 57 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 216, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 221, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 240, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 97, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 103, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 133, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 142, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 151, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 68, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.194 = private constant [31 x i8] c"../drivers/usb/musb/omap2430.c\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 74, i32 3 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_omap2430_driver_exit, ptr @__initcall__kmod_omap2430__302_564_omap2430_driver_init6, ptr @omap2430_driver_exit, ptr @omap2430_musb_init._entry, ptr @omap2430_musb_init._entry_ptr, ptr @omap2430_musb_mailbox._entry, ptr @omap2430_musb_mailbox._entry.42, ptr @omap2430_musb_mailbox._entry_ptr, ptr @omap2430_musb_mailbox._entry_ptr.44, ptr @omap2430_probe._entry, ptr @omap2430_probe._entry.14, ptr @omap2430_probe._entry.18, ptr @omap2430_probe._entry.21, ptr @omap2430_probe._entry.24, ptr @omap2430_probe._entry_ptr, ptr @omap2430_probe._entry_ptr.16, ptr @omap2430_probe._entry_ptr.20, ptr @omap2430_probe._entry_ptr.23, ptr @omap2430_probe._entry_ptr.26, ptr @omap2430_driver, ptr @.str, ptr @omap2430_id_table, ptr @omap2430_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @omap2430_dmamask, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @omap2430_ops, ptr @_glue, ptr @omap2430_probe.__key, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2430_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2430_id_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2430_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2430_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2430_dmamask to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2430_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2430_ops to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_glue to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2430_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2430_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2430_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2430_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2430_musb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2430_musb_mailbox._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2430_musb_mailbox._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2430_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap2430_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @omap2430_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap2430_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2430_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !117
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 64, i32 noundef 3520) #5
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str.1, i32 noundef -2) #5
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %parent = getelementptr inbounds %struct.platform_device, ptr %call7, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %parent, align 8
  %dma_mask = getelementptr inbounds %struct.platform_device, ptr %call7, i32 0, i32 3, i32 18
  %4 = ptrtoint ptr %dma_mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @omap2430_dmamask, ptr %dma_mask, align 8
  %5 = load i64, ptr @omap2430_dmamask, align 8
  %coherent_dma_mask = getelementptr inbounds %struct.platform_device, ptr %call7, i32 0, i32 3, i32 19
  %6 = ptrtoint ptr %coherent_dma_mask to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %coherent_dma_mask, align 8
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %call.i, align 4
  %musb18 = getelementptr inbounds %struct.omap2430_glue, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %musb18 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7, ptr %musb18, align 4
  %status = getelementptr inbounds %struct.omap2430_glue, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %status, align 4
  %control_otghs = getelementptr inbounds %struct.omap2430_glue, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %control_otghs to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -19 to ptr), ptr %control_otghs, align 4
  %call.i166 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #5
  %tobool22.not = icmp eq ptr %call.i166, null
  br i1 %tobool22.not, label %if.end11.err2_crit_edge, label %if.end24

if.end11.err2_crit_edge:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %err2

if.end24:                                         ; preds = %if.end11
  %call.i167 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #5
  %tobool27.not = icmp eq ptr %call.i167, null
  br i1 %tobool27.not, label %if.end24.err2_crit_edge, label %if.end29

if.end24.err2_crit_edge:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %err2

if.end29:                                         ; preds = %if.end24
  %call.i168 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #5
  %tobool32.not = icmp eq ptr %call.i168, null
  br i1 %tobool32.not, label %if.end29.err2_crit_edge, label %if.end34

if.end29.err2_crit_edge:                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %err2

if.end34:                                         ; preds = %if.end29
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.7, ptr noundef nonnull %call.i166, i32 noundef 1, i32 noundef 0) #5
  %call.i.i169 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.8, ptr noundef nonnull %call.i167, i32 noundef 1, i32 noundef 0) #5
  %num_eps = getelementptr inbounds %struct.musb_hdrc_config, ptr %call.i168, i32 0, i32 3
  %call.i.i170 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.9, ptr noundef %num_eps, i32 noundef 1, i32 noundef 0) #5
  %ram_bits = getelementptr inbounds %struct.musb_hdrc_config, ptr %call.i168, i32 0, i32 4
  %call.i.i171 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.10, ptr noundef %ram_bits, i32 noundef 1, i32 noundef 0) #5
  %power = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %call.i166, i32 0, i32 3
  %call.i.i172 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.11, ptr noundef %power, i32 noundef 1, i32 noundef 0) #5
  %call.i.i173 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.12, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i173)
  %tobool41.not = icmp sgt i32 %call.i.i173, -1
  br i1 %tobool41.not, label %land.lhs.true, label %if.end34.if.end44_crit_edge

if.end34.if.end44_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

land.lhs.true:                                    ; preds = %if.end34
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool42.not = icmp eq i32 %12, 0
  br i1 %tobool42.not, label %land.lhs.true.if.end44_crit_edge, label %if.then43

land.lhs.true.if.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then43:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %multipoint = getelementptr inbounds %struct.musb_hdrc_config, ptr %call.i168, i32 0, i32 2
  %13 = ptrtoint ptr %multipoint to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %multipoint, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %multipoint, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %land.lhs.true.if.end44_crit_edge, %if.end34.if.end44_crit_edge
  %board_data = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %call.i166, i32 0, i32 9
  %14 = ptrtoint ptr %board_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i167, ptr %board_data, align 4
  %config45 = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %call.i166, i32 0, i32 8
  %15 = ptrtoint ptr %config45 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i168, ptr %config45, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #5
  %16 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i174 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %1, ptr noundef nonnull @.str.13, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i174)
  %tobool.not.i = icmp eq i32 %call.i174, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  br label %if.end59

of_parse_phandle.exit:                            ; preds = %if.end44
  %17 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  %tobool47.not = icmp eq ptr %18, null
  br i1 %tobool47.not, label %of_parse_phandle.exit.if.end59_crit_edge, label %if.then48

of_parse_phandle.exit.if.end59_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

if.then48:                                        ; preds = %of_parse_phandle.exit
  %call49 = call ptr @of_find_device_by_node(ptr noundef nonnull %18) #5
  %tobool50.not = icmp eq ptr %call49, null
  br i1 %tobool50.not, label %do.end54, label %if.end56

do.end54:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #8
  br label %err2

if.end56:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #7
  %dev57 = getelementptr inbounds %struct.platform_device, ptr %call49, i32 0, i32 3
  %19 = ptrtoint ptr %control_otghs to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev57, ptr %control_otghs, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.end56, %of_parse_phandle.exit.if.end59_crit_edge, %of_parse_phandle.exit.thread
  %platform_ops = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %call.i166, i32 0, i32 10
  %20 = ptrtoint ptr %platform_ops to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @omap2430_ops, ptr %platform_ops, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %21 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  store ptr %call.i, ptr @_glue, align 4
  %omap_musb_mailbox_work = getelementptr inbounds %struct.omap2430_glue, ptr %call.i, i32 0, i32 3
  call void @__init_work(ptr noundef %omap_musb_mailbox_work, i32 noundef 0) #5
  %22 = ptrtoint ptr %omap_musb_mailbox_work to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -64, ptr %omap_musb_mailbox_work, align 4
  %lockdep_map = getelementptr inbounds %struct.omap2430_glue, ptr %call.i, i32 0, i32 3, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.17, ptr noundef nonnull @omap2430_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry65 = getelementptr inbounds %struct.omap2430_glue, ptr %call.i, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %entry65 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %entry65, ptr %entry65, align 4
  %prev.i = getelementptr inbounds %struct.omap2430_glue, ptr %call.i, i32 0, i32 3, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entry65, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.omap2430_glue, ptr %call.i, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @omap_musb_mailbox_work, ptr %func, align 4
  %resource = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 7
  %26 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %resource, align 8
  %num_resources = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 6
  %28 = ptrtoint ptr %num_resources to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_resources, align 4
  %call69 = call i32 @platform_device_add_resources(ptr noundef nonnull %call7, ptr noundef %27, i32 noundef %29) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end76, label %do.end74

do.end74:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #8
  br label %err2

if.end76:                                         ; preds = %if.end59
  %call77 = call i32 @platform_device_add_data(ptr noundef nonnull %call7, ptr noundef nonnull %call.i166, i32 noundef 32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end84, label %do.end82

do.end82:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #8
  br label %err2

if.end84:                                         ; preds = %if.end76
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 4
  call void @pm_runtime_enable(ptr noundef %31) #5
  %call86 = call i32 @platform_device_add(ptr noundef nonnull %call7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end84.cleanup_crit_edge, label %do.end91

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end91:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #8
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call.i, align 4
  call void @__pm_runtime_disable(ptr noundef %33, i1 noundef zeroext true) #5
  br label %err2

err2:                                             ; preds = %do.end91, %do.end82, %do.end74, %do.end54, %if.end29.err2_crit_edge, %if.end24.err2_crit_edge, %if.end11.err2_crit_edge
  %ret.0 = phi i32 [ %call69, %do.end74 ], [ %call77, %do.end82 ], [ %call86, %do.end91 ], [ -22, %do.end54 ], [ -12, %if.end29.err2_crit_edge ], [ -12, %if.end24.err2_crit_edge ], [ -12, %if.end11.err2_crit_edge ]
  call void @platform_device_put(ptr noundef nonnull %call7) #5
  br label %cleanup

cleanup:                                          ; preds = %err2, %if.end84.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end84.cleanup_crit_edge ], [ %ret.0, %err2 ], [ -12, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2430_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %musb = getelementptr inbounds %struct.omap2430_glue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %musb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %musb, align 4
  tail call void @platform_device_unregister(ptr noundef %3) #5
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @__pm_runtime_disable(ptr noundef %5, i1 noundef zeroext true) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_musb_mailbox_work(ptr nocapture noundef readonly %mailbox_work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %mailbox_work, i32 -12
  tail call fastcc void @omap_musb_set_mailbox(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_resources(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2430_musb_init(ptr nocapture noundef %musb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 8
  %platform_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %board_data = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %board_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %board_data, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %call1 = tail call ptr @devm_phy_get(ptr noundef %7, ptr noundef nonnull @.str.27) #5
  %phy = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 36
  %8 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1, ptr %phy, align 4
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 8
  %call3 = tail call ptr @devm_usb_get_phy_by_phandle(ptr noundef %10, ptr noundef nonnull @.str.28, i8 noundef zeroext 0) #5
  %xceiv = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 35
  %11 = ptrtoint ptr %xceiv to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call3, ptr %xceiv, align 8
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %cmp = icmp eq ptr %call3, inttoptr (i32 -6 to ptr)
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %do.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap2430_musb_init.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap2430_musb_init, %if.then12)) #5
          to label %cleanup [label %if.then12], !srcloc !118

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap2430_musb_init.__UNIQUE_ID_ddebug300, ptr noundef %1, ptr noundef nonnull @.str.31) #5
  br label %cleanup

if.end14:                                         ; preds = %entry
  %12 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy, align 4
  %cmp.i93 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i93, label %do.end20, label %if.end23

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.32) #8
  %14 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %isr = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 5
  %17 = ptrtoint ptr %isr to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @omap2430_musb_interrupt, ptr %isr, align 4
  %call25 = tail call i32 @phy_init(ptr noundef %13) #5
  %18 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phy, align 4
  %call27 = tail call i32 @phy_power_on(ptr noundef %19) #5
  %mregs = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 27
  %20 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mregs, align 8
  %call28 = tail call i32 @musb_readl(ptr noundef %21, i32 noundef 1036) #5
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp29 = icmp ne i8 %23, 1
  %and = and i32 %call28, -2
  %masksel = zext i1 %cmp29 to i32
  %l.0 = or i32 %and, %masksel
  %24 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mregs, align 8
  tail call void @musb_writel(ptr noundef %25, i32 noundef 1036, i32 noundef %l.0) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap2430_musb_init.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap2430_musb_init, %if.then47)) #5
          to label %cleanup [label %if.then47], !srcloc !118

if.then47:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mregs, align 8
  %call49 = tail call i32 @musb_readl(ptr noundef %27, i32 noundef 1024) #5
  %28 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mregs, align 8
  %call51 = tail call i32 @musb_readl(ptr noundef %29, i32 noundef 1028) #5
  %30 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mregs, align 8
  %call53 = tail call i32 @musb_readl(ptr noundef %31, i32 noundef 1032) #5
  %32 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mregs, align 8
  %call55 = tail call i32 @musb_readl(ptr noundef %33, i32 noundef 1036) #5
  %34 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mregs, align 8
  %call57 = tail call i32 @musb_readl(ptr noundef %35, i32 noundef 1040) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap2430_musb_init.__UNIQUE_ID_ddebug301, ptr noundef %1, ptr noundef nonnull @.str.33, i32 noundef %call49, i32 noundef %call51, i32 noundef %call53, i32 noundef %call55, i32 noundef %call57) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %if.end23, %do.end20, %if.then12, %do.body, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %do.end20 ], [ -6, %if.then.cleanup_crit_edge ], [ -517, %if.then12 ], [ 0, %if.then47 ], [ -517, %do.body ], [ 0, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2430_musb_exit(ptr nocapture noundef %musb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 8
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %mregs.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 27
  %6 = ptrtoint ptr %mregs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mregs.i, align 8
  %call.i = tail call i32 @musb_readl(ptr noundef %7, i32 noundef 1044) #5
  %or.i = or i32 %call.i, 1
  %8 = ptrtoint ptr %mregs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mregs.i, align 8
  tail call void @musb_writel(ptr noundef %9, i32 noundef 1044, i32 noundef %or.i) #5
  %phy = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 36
  %10 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy, align 4
  %call1 = tail call i32 @phy_power_off(ptr noundef %11) #5
  %12 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy, align 4
  %call3 = tail call i32 @phy_exit(ptr noundef %13) #5
  %14 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %phy, align 4
  %omap_musb_mailbox_work = getelementptr inbounds %struct.omap2430_glue, ptr %5, i32 0, i32 3
  %call5 = tail call zeroext i1 @cancel_work_sync(ptr noundef %omap_musb_mailbox_work) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap2430_musb_enable(ptr nocapture noundef readonly %musb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 8
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %status = getelementptr inbounds %struct.omap2430_glue, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @omap_musb_set_mailbox(ptr noundef %5)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap2430_musb_disable(ptr nocapture noundef readonly %musb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 8
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %status = getelementptr inbounds %struct.omap2430_glue, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %control_otghs = getelementptr inbounds %struct.omap2430_glue, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %control_otghs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %control_otghs, align 4
  tail call void @omap_control_usb_set_mode(ptr noundef %9, i32 noundef 3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2430_musb_mailbox(i32 noundef %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @_glue, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %status1 = getelementptr inbounds %struct.omap2430_glue, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %status1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %status, ptr %status1, align 4
  %musb = getelementptr inbounds %struct.omap2430_glue, ptr %0, i32 0, i32 1
  %2 = ptrtoint ptr %musb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %musb, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.41) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %omap_musb_mailbox_work = getelementptr inbounds %struct.omap2430_glue, ptr %0, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %omap_musb_mailbox_work) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end7, %do.end
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -517, %do.end7 ], [ -517, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_usb_get_phy_by_phandle(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2430_musb_interrupt(i32 noundef %irq, ptr noundef %__hci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %__hci) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %0 = load ptr, ptr @musb_readb, align 4
  %mregs = getelementptr inbounds %struct.musb, ptr %__hci, i32 0, i32 27
  %1 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mregs, align 8
  %call6 = tail call zeroext i8 %0(ptr noundef %2, i32 noundef 10) #5
  %int_usb = getelementptr inbounds %struct.musb, ptr %__hci, i32 0, i32 32
  %3 = ptrtoint ptr %int_usb to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %call6, ptr %int_usb, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %4 = load ptr, ptr @musb_readw, align 4
  %5 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mregs, align 8
  %call8 = tail call zeroext i16 %4(ptr noundef %6, i32 noundef 2) #5
  %int_tx = getelementptr inbounds %struct.musb, ptr %__hci, i32 0, i32 34
  %7 = ptrtoint ptr %int_tx to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %call8, ptr %int_tx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %8 = load ptr, ptr @musb_readw, align 4
  %9 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mregs, align 8
  %call10 = tail call zeroext i16 %8(ptr noundef %10, i32 noundef 4) #5
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
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call20 = tail call i32 @musb_interrupt(ptr noundef %__hci) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %retval1.0 = phi i32 [ %call20, %if.then ], [ 0, %lor.lhs.false.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %__hci, i32 noundef %call3) #5
  ret i32 %retval1.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_readl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_writel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_interrupt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap_musb_set_mailbox(ptr nocapture noundef readonly %glue) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %musb1 = getelementptr inbounds %struct.omap2430_glue, ptr %glue, i32 0, i32 1
  %0 = ptrtoint ptr %musb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %musb1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %controller = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %controller, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_musb_set_mailbox.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_musb_set_mailbox, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !118

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %controller, align 8
  %xceiv = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 35
  %8 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xceiv, align 8
  %otg = getelementptr inbounds %struct.usb_phy, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 4
  %call7 = tail call ptr @usb_otg_state_string(i32 noundef %13) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %14 = load ptr, ptr @musb_readb, align 4
  %mregs = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 27
  %15 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mregs, align 8
  %call8 = tail call zeroext i8 %14(ptr noundef %16, i32 noundef 96) #5
  %conv = zext i8 %call8 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_musb_set_mailbox.__UNIQUE_ID_ddebug295, ptr noundef %7, ptr noundef nonnull @.str.35, ptr noundef %call7, i32 noundef %conv) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %status = getelementptr inbounds %struct.omap2430_glue, ptr %glue, i32 0, i32 2
  %17 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %18, label %do.body101 [
    i32 1, label %do.body9
    i32 3, label %do.body52
    i32 2, label %do.end.do.body76_crit_edge
    i32 4, label %do.end.do.body76_crit_edge188
  ]

do.end.do.body76_crit_edge188:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body76

do.end.do.body76_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body76

do.body9:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_musb_set_mailbox.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_musb_set_mailbox, %if.then21)) #5
          to label %do.end25 [label %if.then21], !srcloc !118

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %controller, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_musb_set_mailbox.__UNIQUE_ID_ddebug296, ptr noundef %21, ptr noundef nonnull @.str.36) #5
  br label %do.end25

do.end25:                                         ; preds = %if.then21, %do.body9
  %xceiv26 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 35
  %22 = ptrtoint ptr %xceiv26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xceiv26, align 8
  %otg27 = getelementptr inbounds %struct.usb_phy, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %otg27 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %otg27, align 4
  %state28 = getelementptr inbounds %struct.usb_otg, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %state28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state28, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %27, label %sw.default [
    i32 6, label %sw.bb29
    i32 7, label %do.end25.sw.bb37_crit_edge
    i32 8, label %do.end25.sw.bb37_crit_edge189
    i32 9, label %do.end25.sw.bb37_crit_edge190
  ]

do.end25.sw.bb37_crit_edge190:                    ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb37

do.end25.sw.bb37_crit_edge189:                    ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb37

do.end25.sw.bb37_crit_edge:                       ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb37

sw.bb29:                                          ; preds = %do.end25
  %call30 = tail call i32 @musb_set_host(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %sw.bb29.sw.epilog118_crit_edge

sw.bb29.sw.epilog118_crit_edge:                   ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog118

if.end33:                                         ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %xceiv26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %xceiv26, align 8
  %otg35 = getelementptr inbounds %struct.usb_phy, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %otg35 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %otg35, align 4
  %state36 = getelementptr inbounds %struct.usb_otg, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %state36 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 7, ptr %state36, align 4
  br label %sw.bb37

sw.bb37:                                          ; preds = %if.end33, %do.end25.sw.bb37_crit_edge, %do.end25.sw.bb37_crit_edge189, %do.end25.sw.bb37_crit_edge190
  %34 = ptrtoint ptr %xceiv26 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %xceiv26, align 8
  %otg39 = getelementptr inbounds %struct.usb_phy, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %otg39 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %otg39, align 4
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %sw.bb37.sw.epilog118_crit_edge, label %land.lhs.true.i

sw.bb37.sw.epilog118_crit_edge:                   ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog118

land.lhs.true.i:                                  ; preds = %sw.bb37
  %set_vbus.i = getelementptr inbounds %struct.usb_otg, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %set_vbus.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %set_vbus.i, align 4
  %tobool1.not.i = icmp eq ptr %39, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.sw.epilog118_crit_edge, label %if.then.i

land.lhs.true.i.sw.epilog118_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog118

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i166 = tail call i32 %39(ptr noundef nonnull %37, i1 noundef zeroext true) #5
  br label %sw.epilog118

sw.default:                                       ; preds = %do.end25
  %40 = ptrtoint ptr %state28 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 6, ptr %state28, align 4
  %41 = ptrtoint ptr %xceiv26 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %xceiv26, align 8
  %last_event = getelementptr inbounds %struct.usb_phy, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %last_event to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2, ptr %last_event, align 4
  %gadget_driver = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 57
  %44 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %gadget_driver, align 8
  %tobool45.not = icmp eq ptr %45, null
  br i1 %tobool45.not, label %sw.default.sw.epilog118_crit_edge, label %if.then46

sw.default.sw.epilog118_crit_edge:                ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog118

if.then46:                                        ; preds = %sw.default
  %control_otghs = getelementptr inbounds %struct.omap2430_glue, ptr %glue, i32 0, i32 4
  %46 = ptrtoint ptr %control_otghs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %control_otghs, align 4
  tail call void @omap_control_usb_set_mode(ptr noundef %47, i32 noundef 1) #5
  %48 = ptrtoint ptr %xceiv26 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %xceiv26, align 8
  %otg48 = getelementptr inbounds %struct.usb_phy, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %otg48 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %otg48, align 4
  %tobool.not.i167 = icmp eq ptr %51, null
  br i1 %tobool.not.i167, label %if.then46.sw.epilog118_crit_edge, label %land.lhs.true.i170

if.then46.sw.epilog118_crit_edge:                 ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog118

land.lhs.true.i170:                               ; preds = %if.then46
  %set_vbus.i168 = getelementptr inbounds %struct.usb_otg, ptr %51, i32 0, i32 8
  %52 = ptrtoint ptr %set_vbus.i168 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %set_vbus.i168, align 4
  %tobool1.not.i169 = icmp eq ptr %53, null
  br i1 %tobool1.not.i169, label %land.lhs.true.i170.sw.epilog118_crit_edge, label %if.then.i172

land.lhs.true.i170.sw.epilog118_crit_edge:        ; preds = %land.lhs.true.i170
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog118

if.then.i172:                                     ; preds = %land.lhs.true.i170
  call void @__sanitizer_cov_trace_pc() #7
  %call.i171 = tail call i32 %53(ptr noundef nonnull %51, i1 noundef zeroext true) #5
  br label %sw.epilog118

do.body52:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_musb_set_mailbox.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_musb_set_mailbox, %if.then64)) #5
          to label %do.end68 [label %if.then64], !srcloc !118

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %controller, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_musb_set_mailbox.__UNIQUE_ID_ddebug297, ptr noundef %55, ptr noundef nonnull @.str.37) #5
  br label %do.end68

do.end68:                                         ; preds = %if.then64, %do.body52
  %xceiv69 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 35
  %56 = ptrtoint ptr %xceiv69 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %xceiv69, align 8
  %otg70 = getelementptr inbounds %struct.usb_phy, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %otg70 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %otg70, align 4
  %state71 = getelementptr inbounds %struct.usb_otg, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %state71 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %state71, align 4
  %61 = load ptr, ptr %xceiv69, align 8
  %last_event73 = getelementptr inbounds %struct.usb_phy, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %last_event73 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %last_event73, align 4
  %control_otghs74 = getelementptr inbounds %struct.omap2430_glue, ptr %glue, i32 0, i32 4
  %63 = ptrtoint ptr %control_otghs74 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %control_otghs74, align 4
  tail call void @omap_control_usb_set_mode(ptr noundef %64, i32 noundef 2) #5
  br label %sw.epilog118

do.body76:                                        ; preds = %do.end.do.body76_crit_edge, %do.end.do.body76_crit_edge188
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_musb_set_mailbox.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_musb_set_mailbox, %if.then88)) #5
          to label %do.end92 [label %if.then88], !srcloc !118

if.then88:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #7
  %65 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %controller, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_musb_set_mailbox.__UNIQUE_ID_ddebug298, ptr noundef %66, ptr noundef nonnull @.str.38) #5
  br label %do.end92

do.end92:                                         ; preds = %if.then88, %do.body76
  %xceiv93 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 35
  %67 = ptrtoint ptr %xceiv93 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %xceiv93, align 8
  %last_event94 = getelementptr inbounds %struct.usb_phy, ptr %68, i32 0, i32 4
  %69 = ptrtoint ptr %last_event94 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %last_event94, align 4
  %call95 = tail call i32 @musb_set_peripheral(ptr noundef %3) #5
  %70 = ptrtoint ptr %xceiv93 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %xceiv93, align 8
  %otg97 = getelementptr inbounds %struct.usb_phy, ptr %71, i32 0, i32 5
  %72 = ptrtoint ptr %otg97 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %otg97, align 4
  %tobool.not.i174 = icmp eq ptr %73, null
  br i1 %tobool.not.i174, label %do.end92.otg_set_vbus.exit180_crit_edge, label %land.lhs.true.i177

do.end92.otg_set_vbus.exit180_crit_edge:          ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #7
  br label %otg_set_vbus.exit180

land.lhs.true.i177:                               ; preds = %do.end92
  %set_vbus.i175 = getelementptr inbounds %struct.usb_otg, ptr %73, i32 0, i32 8
  %74 = ptrtoint ptr %set_vbus.i175 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %set_vbus.i175, align 4
  %tobool1.not.i176 = icmp eq ptr %75, null
  br i1 %tobool1.not.i176, label %land.lhs.true.i177.otg_set_vbus.exit180_crit_edge, label %if.then.i179

land.lhs.true.i177.otg_set_vbus.exit180_crit_edge: ; preds = %land.lhs.true.i177
  call void @__sanitizer_cov_trace_pc() #7
  br label %otg_set_vbus.exit180

if.then.i179:                                     ; preds = %land.lhs.true.i177
  call void @__sanitizer_cov_trace_pc() #7
  %call.i178 = tail call i32 %75(ptr noundef nonnull %73, i1 noundef zeroext false) #5
  br label %otg_set_vbus.exit180

otg_set_vbus.exit180:                             ; preds = %if.then.i179, %land.lhs.true.i177.otg_set_vbus.exit180_crit_edge, %do.end92.otg_set_vbus.exit180_crit_edge
  %control_otghs99 = getelementptr inbounds %struct.omap2430_glue, ptr %glue, i32 0, i32 4
  %76 = ptrtoint ptr %control_otghs99 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %control_otghs99, align 4
  tail call void @omap_control_usb_set_mode(ptr noundef %77, i32 noundef 3) #5
  br label %sw.epilog118

do.body101:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_musb_set_mailbox.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_musb_set_mailbox, %if.then113)) #5
          to label %sw.epilog118 [label %if.then113], !srcloc !118

if.then113:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #7
  %78 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %controller, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_musb_set_mailbox.__UNIQUE_ID_ddebug299, ptr noundef %79, ptr noundef nonnull @.str.39) #5
  br label %sw.epilog118

sw.epilog118:                                     ; preds = %if.then113, %do.body101, %otg_set_vbus.exit180, %do.end68, %if.then.i172, %land.lhs.true.i170.sw.epilog118_crit_edge, %if.then46.sw.epilog118_crit_edge, %sw.default.sw.epilog118_crit_edge, %if.then.i, %land.lhs.true.i.sw.epilog118_crit_edge, %sw.bb37.sw.epilog118_crit_edge, %sw.bb29.sw.epilog118_crit_edge
  %80 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %controller, align 8
  %call.i181 = tail call i64 @ktime_get_mono_fast_ns() #5
  %last_busy.i = getelementptr inbounds %struct.device, ptr %81, i32 0, i32 12, i32 22
  %82 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %82)
  store volatile i64 %call.i181, ptr %last_busy.i, align 8
  %83 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %controller, align 8
  %call.i182 = tail call i32 @__pm_runtime_suspend(ptr noundef %84, i32 noundef 13) #5
  %xceiv122 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 35
  %85 = ptrtoint ptr %xceiv122 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %xceiv122, align 8
  %notifier = getelementptr inbounds %struct.usb_phy, ptr %86, i32 0, i32 18
  %last_event124 = getelementptr inbounds %struct.usb_phy, ptr %86, i32 0, i32 4
  %87 = ptrtoint ptr %last_event124 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %last_event124, align 4
  %call125 = tail call i32 @atomic_notifier_call_chain(ptr noundef %notifier, i32 noundef %88, ptr noundef null) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_otg_state_string(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_set_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_control_usb_set_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_set_peripheral(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2430_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %musb1 = getelementptr inbounds %struct.omap2430_glue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %musb1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %musb1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %phy = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 36
  %6 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy, align 4
  %call3 = tail call i32 @phy_power_off(ptr noundef %7) #5
  %8 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy, align 4
  %call5 = tail call i32 @phy_exit(ptr noundef %9) #5
  %phy_suspended = getelementptr inbounds %struct.omap2430_glue, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %phy_suspended to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %phy_suspended, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %phy_suspended, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2430_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %musb1 = getelementptr inbounds %struct.omap2430_glue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %musb1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %musb1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %phy = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 36
  %6 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy, align 4
  %call3 = tail call i32 @phy_init(ptr noundef %7) #5
  %8 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy, align 4
  %call5 = tail call i32 @phy_power_on(ptr noundef %9) #5
  %phy_suspended = getelementptr inbounds %struct.omap2430_glue, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %phy_suspended to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %phy_suspended, align 4
  %bf.clear = and i8 %bf.load, -33
  store i8 %bf.clear, ptr %phy_suspended, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2430_suspend_late(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %is_runtime_suspended = getelementptr inbounds %struct.omap2430_glue, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %is_runtime_suspended to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %is_runtime_suspended, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %bf.set = or i8 %bf.load, 64
  %3 = ptrtoint ptr %is_runtime_suspended to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %bf.set, ptr %is_runtime_suspended, align 4
  %call2 = tail call i32 @omap2430_runtime_suspend(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2430_resume_early(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %needs_resume = getelementptr inbounds %struct.omap2430_glue, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %needs_resume to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %needs_resume, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %bf.clear3 = and i8 %bf.load, -65
  %4 = ptrtoint ptr %needs_resume to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %bf.clear3, ptr %needs_resume, align 4
  %call4 = tail call i32 @omap2430_runtime_resume(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2430_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %musb1 = getelementptr inbounds %struct.omap2430_glue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %musb1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %musb1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %mregs = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mregs, align 8
  %call3 = tail call i32 @musb_readl(ptr noundef %7, i32 noundef 1036) #5
  %otg_interfsel = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 4, i32 8
  %8 = ptrtoint ptr %otg_interfsel to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call3, ptr %otg_interfsel, align 4
  %9 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mregs, align 8
  %call.i = tail call i32 @musb_readl(ptr noundef %10, i32 noundef 1044) #5
  %or.i = or i32 %call.i, 1
  %11 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mregs, align 8
  tail call void @musb_writel(ptr noundef %12, i32 noundef 1044, i32 noundef %or.i) #5
  %phy_suspended = getelementptr inbounds %struct.omap2430_glue, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %phy_suspended to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %phy_suspended, align 4
  %14 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool4.not = icmp eq i8 %14, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %phy = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 36
  %15 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phy, align 4
  %call6 = tail call i32 @phy_power_off(ptr noundef %16) #5
  %17 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phy, align 4
  %call8 = tail call i32 @phy_exit(ptr noundef %18) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge
  %19 = ptrtoint ptr %phy_suspended to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load10 = load i8, ptr %phy_suspended, align 4
  %bf.set = or i8 %bf.load10, -128
  store i8 %bf.set, ptr %phy_suspended, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2430_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %musb1 = getelementptr inbounds %struct.omap2430_glue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %musb1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %musb1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %phy_suspended = getelementptr inbounds %struct.omap2430_glue, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %phy_suspended to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %phy_suspended, align 4
  %7 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %phy = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 36
  %8 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy, align 4
  %call5 = tail call i32 @phy_init(ptr noundef %9) #5
  %10 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy, align 4
  %call7 = tail call i32 @phy_power_on(ptr noundef %11) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %mregs.i = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 27
  %12 = ptrtoint ptr %mregs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mregs.i, align 8
  %call.i = tail call i32 @musb_readl(ptr noundef %13, i32 noundef 1044) #5
  %and.i = and i32 %call.i, -2
  %14 = ptrtoint ptr %mregs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mregs.i, align 8
  tail call void @musb_writel(ptr noundef %15, i32 noundef 1044, i32 noundef %and.i) #5
  %16 = ptrtoint ptr %mregs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mregs.i, align 8
  %otg_interfsel = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 4, i32 8
  %18 = ptrtoint ptr %otg_interfsel to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %otg_interfsel, align 4
  tail call void @musb_writel(ptr noundef %17, i32 noundef 1036, i32 noundef %19) #5
  tail call void @usleep_range_state(i32 noundef 200000, i32 noundef 250000, i32 noundef 2) #5
  %20 = ptrtoint ptr %phy_suspended to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load9 = load i8, ptr %phy_suspended, align 4
  %bf.clear10 = and i8 %bf.load9, 127
  store i8 %bf.clear10, ptr %phy_suspended, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !61, !63, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !79, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !97, !98, !100, !101, !102, !104, !106}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @__initcall__kmod_omap2430__302_564_omap2430_driver_init6, !1, !"__initcall__kmod_omap2430__302_564_omap2430_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/musb/omap2430.c", i32 564, i32 1}
!2 = !{ptr @__exitcall_omap2430_driver_exit, !1, !"__exitcall_omap2430_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description303, !4, !"__UNIQUE_ID_description303", i1 false, i1 false}
!4 = !{!"../drivers/usb/musb/omap2430.c", i32 566, i32 1}
!5 = !{ptr @__UNIQUE_ID_author304, !6, !"__UNIQUE_ID_author304", i1 false, i1 false}
!6 = !{!"../drivers/usb/musb/omap2430.c", i32 567, i32 1}
!7 = !{ptr @__UNIQUE_ID_file305, !8, !"__UNIQUE_ID_file305", i1 false, i1 false}
!8 = !{!"../drivers/usb/musb/omap2430.c", i32 568, i32 1}
!9 = !{ptr @__UNIQUE_ID_license306, !8, !"__UNIQUE_ID_license306", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/musb/omap2430.c", i32 558, i32 11}
!12 = !{ptr @omap2430_driver, !13, !"omap2430_driver", i1 false, i1 false}
!13 = !{!"../drivers/usb/musb/omap2430.c", i32 554, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/musb/omap2430.c", i32 321, i32 31}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/musb/omap2430.c", i32 323, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @omap2430_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @omap2430_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/musb/omap2430.c", i32 348, i32 27}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/musb/omap2430.c", i32 349, i32 27}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/musb/omap2430.c", i32 351, i32 27}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/musb/omap2430.c", i32 352, i32 27}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/musb/omap2430.c", i32 353, i32 27}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/musb/omap2430.c", i32 355, i32 33}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/musb/omap2430.c", i32 362, i32 38}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/musb/omap2430.c", i32 366, i32 4}
!40 = !{ptr @omap2430_probe._entry.14, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @omap2430_probe._entry_ptr.16, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @omap2430_probe.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/usb/musb/omap2430.c", i32 383, i32 2}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/musb/omap2430.c", i32 387, i32 3}
!47 = !{ptr @omap2430_probe._entry.18, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @omap2430_probe._entry_ptr.20, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/musb/omap2430.c", i32 393, i32 3}
!51 = !{ptr @omap2430_probe._entry.21, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @omap2430_probe._entry_ptr.23, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/musb/omap2430.c", i32 401, i32 3}
!55 = !{ptr @omap2430_probe._entry.24, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @omap2430_probe._entry_ptr.26, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @omap2430_dmamask, !58, !"omap2430_dmamask", i1 false, i1 false}
!58 = !{!"../drivers/usb/musb/omap2430.c", i32 300, i32 12}
!59 = !{ptr @omap2430_ops, !60, !"omap2430_ops", i1 false, i1 false}
!60 = !{!"../drivers/usb/musb/omap2430.c", i32 285, i32 39}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/musb/omap2430.c", i32 200, i32 40}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/musb/omap2430.c", i32 208, i32 57}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/musb/omap2430.c", i32 216, i32 3}
!67 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @omap2430_musb_init.__UNIQUE_ID_ddebug300, !66, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/musb/omap2430.c", i32 221, i32 3}
!72 = !{ptr @omap2430_musb_init._entry, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @omap2430_musb_init._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/musb/omap2430.c", i32 240, i32 2}
!76 = !{ptr @omap2430_musb_init.__UNIQUE_ID_ddebug301, !75, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/usb/musb/omap2430.c", i32 97, i32 2}
!79 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @omap_musb_set_mailbox.__UNIQUE_ID_ddebug295, !78, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/usb/musb/omap2430.c", i32 103, i32 3}
!83 = !{ptr @omap_musb_set_mailbox.__UNIQUE_ID_ddebug296, !82, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/musb/omap2430.c", i32 133, i32 3}
!86 = !{ptr @omap_musb_set_mailbox.__UNIQUE_ID_ddebug297, !85, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/musb/omap2430.c", i32 142, i32 3}
!89 = !{ptr @omap_musb_set_mailbox.__UNIQUE_ID_ddebug298, !88, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/musb/omap2430.c", i32 151, i32 3}
!92 = !{ptr @omap_musb_set_mailbox.__UNIQUE_ID_ddebug299, !91, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/musb/omap2430.c", i32 68, i32 3}
!95 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @omap2430_musb_mailbox._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @omap2430_musb_mailbox._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/musb/omap2430.c", i32 74, i32 3}
!100 = !{ptr @omap2430_musb_mailbox._entry.42, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @omap2430_musb_mailbox._entry_ptr.44, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @_glue, !103, !"_glue", i1 false, i1 false}
!103 = !{!"../drivers/usb/musb/omap2430.c", i32 42, i32 30}
!104 = !{ptr @omap2430_id_table, !105, !"omap2430_id_table", i1 false, i1 false}
!105 = !{!"../drivers/usb/musb/omap2430.c", i32 542, i32 34}
!106 = !{ptr @omap2430_pm_ops, !107, !"omap2430_pm_ops", i1 false, i1 false}
!107 = !{!"../drivers/usb/musb/omap2430.c", i32 527, i32 32}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{!"auto-init"}
!118 = !{i64 2148965451, i64 2148965456, i64 2148965469, i64 2148965513, i64 2148965547, i64 2148965568}
