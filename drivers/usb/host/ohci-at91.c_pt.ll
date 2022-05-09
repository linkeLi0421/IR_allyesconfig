; ModuleID = '/llk/IR_all_yes/drivers/usb/host/ohci-at91.c_pt.bc'
source_filename = "../drivers/usb/host/ohci-at91.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ohci_driver_overrides = type { ptr, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.at91_usbh_data = type { [3 x ptr], [3 x ptr], i8, i8, [3 x i8], [3 x i8] }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.71, i32 }
%union.anon.71 = type { ptr }
%struct.usb_hub_descriptor = type <{ i8, i8, i8, i16, i8, i8, %union.anon.72 }>
%union.anon.72 = type { %struct.anon.73 }
%struct.anon.73 = type { [4 x i8], [4 x i8] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.ohci_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ohci_roothub_regs, [16 x i8] }
%struct.ohci_roothub_regs = type { i32, i32, i32, [15 x i32] }
%struct.ohci_at91_priv = type { ptr, ptr, ptr, i8, i8, ptr }

@__initcall__kmod_ohci_at91__254_696_ohci_at91_init6 = internal global ptr @ohci_at91_init, section ".initcall6.init", align 4
@ohci_hcd_at91_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ohci_hcd_at91_drv_probe, ptr @ohci_hcd_at91_drv_remove, ptr @usb_hcd_platform_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.15, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @at91_ohci_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ohci_hcd_at91_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ohci_at91_cleanup = internal global ptr @ohci_at91_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_description255 = internal constant [40 x i8] c"ohci_at91.description=OHCI Atmel driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file256 = internal constant [42 x i8] c"ohci_at91.file=drivers/usb/host/ohci-at91\00", section ".modinfo", align 1
@__UNIQUE_ID_license257 = internal constant [22 x i8] c"ohci_at91.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias258 = internal constant [35 x i8] c"ohci_at91.alias=platform:at91_ohci\00", section ".modinfo", align 1
@ohci_at91_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 679, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016%s: OHCI Atmel driver\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ohci_at91_init\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/usb/host/ohci-at91.c\00", [35 x i8] zeroinitializer }, align 32
@ohci_at91_init._entry_ptr = internal global ptr @ohci_at91_init._entry, section ".printk_index", align 4
@hcd_name = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ohci-atmel\00", [21 x i8] zeroinitializer }, align 32
@ohci_at91_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 4
@ohci_at91_drv_overrides = internal constant %struct.ohci_driver_overrides { ptr null, i32 20, ptr null }, section ".init.rodata", align 4
@ohci_at91_hub_control.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ohci_at91\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ohci_at91_hub_control\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"ohci_at91_hub_control(%p,0x%04x,0x%04x,0x%04x,%p,%04x)\0A\00", [40 x i8] zeroinitializer }, align 32
@ohci_at91_hub_control.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 0, i8 87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SetPortFeat: POWER\0A\00", [44 x i8] zeroinitializer }, align 32
@ohci_at91_hub_control.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.7, i8 0, i8 89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SetPortFeat: SUSPEND\0A\00", [42 x i8] zeroinitializer }, align 32
@ohci_at91_hub_control.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.8, i8 0, i8 93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ClearPortFeature: C_OVER_CURRENT\0A\00", [62 x i8] zeroinitializer }, align 32
@ohci_at91_hub_control.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.9, i8 0, i8 96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ClearPortFeature: OVER_CURRENT\0A\00", [32 x i8] zeroinitializer }, align 32
@ohci_at91_hub_control.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.10, i8 0, i8 98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ClearPortFeature: POWER\0A\00", [39 x i8] zeroinitializer }, align 32
@ohci_at91_hub_control.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.11, i8 0, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ClearPortFeature: SUSPEND\0A\00", [37 x i8] zeroinitializer }, align 32
@ohci_at91_hub_control.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.12, i8 0, i8 106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wHubCharacteristics 0x%04x\0A\00", [36 x i8] zeroinitializer }, align 32
@ohci_at91_hub_control.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.13, i8 0, i8 110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"wHubCharacteristics after 0x%04x\0A\00", [62 x i8] zeroinitializer }, align 32
@ohci_at91_hub_control.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.14, i8 0, i8 112, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GetPortStatus(%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"at91_ohci\00", [22 x i8] zeroinitializer }, align 32
@at91_ohci_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-ohci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ohci_hcd_at91_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ohci_hcd_at91_drv_suspend, ptr @ohci_hcd_at91_drv_resume, ptr @ohci_hcd_at91_drv_suspend, ptr @ohci_hcd_at91_drv_resume, ptr @ohci_hcd_at91_drv_suspend, ptr @ohci_hcd_at91_drv_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"num-ports\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"atmel,vbus\00", [21 x i8] zeroinitializer }, align 32
@ohci_hcd_at91_drv_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 548, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to claim gpio \22vbus\22: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ohci_hcd_at91_drv_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ohci_hcd_at91_drv_probe._entry_ptr = internal global ptr @ohci_hcd_at91_drv_probe._entry, section ".printk_index", align 4
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"atmel,oc\00", [23 x i8] zeroinitializer }, align 32
@ohci_hcd_at91_drv_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.2, i32 564, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"unable to claim gpio \22overcurrent\22: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@ohci_hcd_at91_drv_probe._entry_ptr.25 = internal global ptr @ohci_hcd_at91_drv_probe._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ohci_overcurrent\00", [47 x i8] zeroinitializer }, align 32
@ohci_hcd_at91_drv_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.19, ptr @.str.2, i32 574, ptr @.str.29, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to request gpio \22overcurrent\22 IRQ\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ohci_hcd_at91_drv_probe._entry_ptr.30 = internal global ptr @ohci_hcd_at91_drv_probe._entry.27, section ".printk_index", align 4
@ohci_hcd_at91_overcurrent_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 483, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"overcurrent interrupt from unknown GPIO\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ohci_hcd_at91_overcurrent_irq\00", [34 x i8] zeroinitializer }, align 32
@ohci_hcd_at91_overcurrent_irq._entry_ptr = internal global ptr @ohci_hcd_at91_overcurrent_irq._entry, section ".printk_index", align 4
@ohci_hcd_at91_overcurrent_irq.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 0, i8 124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"overcurrent situation %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"exited\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"notified\00", [23 x i8] zeroinitializer }, align 32
@usb_hcd_at91_probe.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 0, i8 45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"usb_hcd_at91_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"hcd probe: missing irq resource\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"at91\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ohci_clk\00", [23 x i8] zeroinitializer }, align 32
@usb_hcd_at91_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.36, ptr @.str.2, i32 201, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get ohci_clk\0A\00", [40 x i8] zeroinitializer }, align 32
@usb_hcd_at91_probe._entry_ptr = internal global ptr @usb_hcd_at91_probe._entry, section ".printk_index", align 4
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uhpck\00", [26 x i8] zeroinitializer }, align 32
@usb_hcd_at91_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.36, ptr @.str.2, i32 207, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get uhpck\0A\00", [43 x i8] zeroinitializer }, align 32
@usb_hcd_at91_probe._entry_ptr.44 = internal global ptr @usb_hcd_at91_probe._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hclk\00", [27 x i8] zeroinitializer }, align 32
@usb_hcd_at91_probe._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.36, ptr @.str.2, i32 213, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to get hclk\0A\00", [44 x i8] zeroinitializer }, align 32
@usb_hcd_at91_probe._entry_ptr.48 = internal global ptr @usb_hcd_at91_probe._entry.46, section ".printk_index", align 4
@usb_hcd_at91_probe.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.36, ptr @.str.2, ptr @.str.49, i8 0, i8 55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to find sfr node\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atmel,sama5d2-sfr\00", [46 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"microchip,sam9x60-sfr\00", [42 x i8] zeroinitializer }, align 32
@at91_start_hc.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.52, ptr @.str.2, ptr @.str.53, i8 0, i8 25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"at91_start_hc\00", [18 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"start\0A\00", [25 x i8] zeroinitializer }, align 32
@at91_stop_hc.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.54, ptr @.str.2, ptr @.str.55, i8 0, i8 30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"at91_stop_hc\00", [19 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stop\0A\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 8961, i64 8963]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 8]
@__sancov_gen_cov_switch_values.57 = internal global [6 x i64] [i64 4, i64 16, i64 2, i64 3, i64 8, i64 19]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 16, i64 40966, i64 41728]
@___asan_gen_.59 = private unnamed_addr constant [21 x i8] c"ohci_hcd_at91_driver\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 663, i32 31 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 679, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [9 x i8] c"hcd_name\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 63, i32 19 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 340, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 350, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 359, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 372, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 383, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 392, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 402, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 424, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 441, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 449, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 668, i32 11 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"at91_ohci_dt_ids\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 504, i32 34 }
@___asan_gen_.119 = private unnamed_addr constant [21 x i8] c"ohci_hcd_at91_pm_ops\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 660, i32 8 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 536, i32 32 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 544, i32 46 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 548, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 558, i32 46 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 564, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 572, i32 12 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 574, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 483, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 498, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 181, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 185, i32 36 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 199, i32 38 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 201, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 205, i32 38 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 207, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 211, i32 38 }
@___asan_gen_.212 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 213, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 220, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 142, i32 46 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 144, i32 47 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 102, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.237 = private constant [32 x i8] c"../drivers/usb/host/ohci-at91.c\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 120, i32 2 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_alias258, ptr @__UNIQUE_ID_description255, ptr @__UNIQUE_ID_file256, ptr @__UNIQUE_ID_license257, ptr @__exitcall_ohci_at91_cleanup, ptr @__initcall__kmod_ohci_at91__254_696_ohci_at91_init6, ptr @ohci_at91_cleanup, ptr @ohci_at91_init._entry, ptr @ohci_at91_init._entry_ptr, ptr @ohci_hcd_at91_drv_probe._entry, ptr @ohci_hcd_at91_drv_probe._entry.23, ptr @ohci_hcd_at91_drv_probe._entry.27, ptr @ohci_hcd_at91_drv_probe._entry_ptr, ptr @ohci_hcd_at91_drv_probe._entry_ptr.25, ptr @ohci_hcd_at91_drv_probe._entry_ptr.30, ptr @ohci_hcd_at91_overcurrent_irq._entry, ptr @ohci_hcd_at91_overcurrent_irq._entry_ptr, ptr @usb_hcd_at91_probe._entry, ptr @usb_hcd_at91_probe._entry.42, ptr @usb_hcd_at91_probe._entry.46, ptr @usb_hcd_at91_probe._entry_ptr, ptr @usb_hcd_at91_probe._entry_ptr.44, ptr @usb_hcd_at91_probe._entry_ptr.48, ptr @ohci_hcd_at91_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @hcd_name, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @at91_ohci_dt_ids, ptr @ohci_hcd_at91_pm_ops, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_hcd_at91_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_at91_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hcd_name to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_ohci_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_hcd_at91_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_hcd_at91_drv_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_hcd_at91_drv_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_hcd_at91_drv_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_hcd_at91_overcurrent_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_hcd_at91_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_hcd_at91_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_hcd_at91_probe._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_at91_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_disabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @hcd_name) #8
  tail call void @ohci_init_driver(ptr noundef nonnull @ohci_at91_hc_driver, ptr noundef nonnull @ohci_at91_drv_overrides) #5
  store ptr @ohci_at91_hub_status_data, ptr getelementptr inbounds (%struct.hc_driver, ptr @ohci_at91_hc_driver, i32 0, i32 18), align 4
  store ptr @ohci_at91_hub_control, ptr getelementptr inbounds (%struct.hc_driver, ptr @ohci_at91_hc_driver, i32 0, i32 19), align 4
  %call2 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ohci_hcd_at91_driver, ptr noundef null) #5
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ohci_at91_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @ohci_hcd_at91_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ohci_init_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_at91_hub_status_data(ptr noundef %hcd, ptr noundef %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 8
  %platform_data = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data, align 8
  %call = tail call i32 @ohci_hub_status_data(ptr noundef %hcd, ptr noundef %buf) #5
  %arrayidx = getelementptr %struct.at91_usbh_data, ptr %3, i32 0, i32 5, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  %spec.store.select = select i1 %tobool1.not, i32 1, i32 %call
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buf, align 1
  %conv4 = or i8 %7, 2
  store i8 %conv4, ptr %buf, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %length.1 = phi i32 [ %spec.store.select, %if.then ], [ %call, %entry.for.inc_crit_edge ]
  %arrayidx.1 = getelementptr %struct.at91_usbh_data, ptr %3, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.1 = icmp eq i8 %9, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length.1)
  %tobool1.not.1 = icmp eq i32 %length.1, 0
  %spec.store.select.1 = select i1 %tobool1.not.1, i32 1, i32 %length.1
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buf, align 1
  %conv4.1 = or i8 %11, 4
  store i8 %conv4.1, ptr %buf, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %length.1.1 = phi i32 [ %spec.store.select.1, %if.then.1 ], [ %length.1, %for.inc.for.inc.1_crit_edge ]
  %arrayidx.2 = getelementptr %struct.at91_usbh_data, ptr %3, i32 0, i32 5, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.2 = icmp eq i8 %13, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length.1.1)
  %tobool1.not.2 = icmp eq i32 %length.1.1, 0
  %spec.store.select.2 = select i1 %tobool1.not.2, i32 1, i32 %length.1.1
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %buf, align 1
  %conv4.2 = or i8 %15, 8
  store i8 %conv4.2, ptr %buf, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %length.1.2 = phi i32 [ %spec.store.select.2, %if.then.2 ], [ %length.1.1, %for.inc.1.for.inc.2_crit_edge ]
  ret i32 %length.1.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_at91_hub_control(ptr noundef %hcd, i16 noundef zeroext %typeReq, i16 noundef zeroext %wValue, i16 noundef zeroext %wIndex, ptr noundef %buf, i16 noundef zeroext %wLength) #3 align 64 {
entry:
  %regval.i416 = alloca i32, align 4
  %regval.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 8
  %platform_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ohci_at91_hub_control.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ohci_at91_hub_control, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !145

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hcd, align 8
  %conv = zext i16 %typeReq to i32
  %conv7 = zext i16 %wValue to i32
  %conv8 = zext i16 %wIndex to i32
  %conv9 = zext i16 %wLength to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ohci_at91_hub_control.__UNIQUE_ID_ddebug243, ptr noundef %5, ptr noundef nonnull @.str.5, ptr noundef %hcd, i32 noundef %conv, i32 noundef %conv7, i32 noundef %conv8, ptr noundef %buf, i32 noundef %conv9) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dec = add i16 %wIndex, -1
  %6 = zext i16 %typeReq to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %typeReq, label %do.end.sw.epilog197_crit_edge [
    i16 8963, label %sw.bb
    i16 8961, label %sw.bb71
  ]

do.end.sw.epilog197_crit_edge:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog197

sw.bb:                                            ; preds = %do.end
  %7 = zext i16 %wValue to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.56)
  switch i16 %wValue, label %sw.bb.sw.epilog197_crit_edge [
    i16 8, label %do.body13
    i16 2, label %do.body40
  ]

sw.bb.sw.epilog197_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog197

do.body13:                                        ; preds = %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ohci_at91_hub_control.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ohci_at91_hub_control, %if.then25)) #5
          to label %do.end30 [label %if.then25], !srcloc !145

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ohci_at91_hub_control.__UNIQUE_ID_ddebug244, ptr noundef %9, ptr noundef nonnull @.str.6) #5
  br label %do.end30

do.end30:                                         ; preds = %if.then25, %do.body13
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %dec)
  %cmp34 = icmp ult i16 %dec, 3
  br i1 %cmp34, label %if.end.i, label %do.end30.cleanup_crit_edge

do.end30.cleanup_crit_edge:                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #7
  %conv31 = zext i16 %dec to i32
  %arrayidx.i = getelementptr [3 x ptr], ptr %3, i32 0, i32 %conv31
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  tail call void @gpiod_set_value(ptr noundef %11, i32 noundef 1) #5
  br label %cleanup

do.body40:                                        ; preds = %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ohci_at91_hub_control.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ohci_at91_hub_control, %if.then52)) #5
          to label %land.lhs.true61 [label %if.then52], !srcloc !145

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ohci_at91_hub_control.__UNIQUE_ID_ddebug245, ptr noundef %13, ptr noundef nonnull @.str.7) #5
  br label %land.lhs.true61

land.lhs.true61:                                  ; preds = %if.then52, %do.body40
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %dec)
  %cmp63 = icmp ult i16 %dec, 3
  br i1 %cmp63, label %land.lhs.true65, label %land.lhs.true61.sw.epilog197_crit_edge

land.lhs.true61.sw.epilog197_crit_edge:           ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog197

land.lhs.true65:                                  ; preds = %land.lhs.true61
  %sfr_regmap = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 3
  %14 = ptrtoint ptr %sfr_regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sfr_regmap, align 4
  %tobool66.not = icmp eq ptr %15, null
  br i1 %tobool66.not, label %land.lhs.true65.sw.epilog197_crit_edge, label %if.end.i412

land.lhs.true65.sw.epilog197_crit_edge:           ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog197

if.end.i412:                                      ; preds = %land.lhs.true65
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #5
  %16 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %regval.i, align 4, !annotation !146
  %call.i = call i32 @regmap_read(ptr noundef nonnull %15, i32 noundef 16, ptr noundef nonnull %regval.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i412.ohci_at91_port_suspend.exit_crit_edge

if.end.i412.ohci_at91_port_suspend.exit_crit_edge: ; preds = %if.end.i412
  call void @__sanitizer_cov_trace_pc() #7
  br label %ohci_at91_port_suspend.exit

if.end3.i:                                        ; preds = %if.end.i412
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %regval.i, align 4
  %storemerge.i = or i32 %18, 1792
  store i32 %storemerge.i, ptr %regval.i, align 4
  %call7.i = call i32 @regmap_write(ptr noundef nonnull %15, i32 noundef 16, i32 noundef %storemerge.i) #5
  br label %ohci_at91_port_suspend.exit

ohci_at91_port_suspend.exit:                      ; preds = %if.end3.i, %if.end.i412.ohci_at91_port_suspend.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #5
  br label %cleanup

sw.bb71:                                          ; preds = %do.end
  %19 = zext i16 %wValue to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.57)
  switch i16 %wValue, label %sw.bb71.sw.epilog197_crit_edge [
    i16 19, label %do.body74
    i16 3, label %do.body104
    i16 8, label %do.body135
    i16 2, label %do.body164
  ]

sw.bb71.sw.epilog197_crit_edge:                   ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog197

do.body74:                                        ; preds = %sw.bb71
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ohci_at91_hub_control.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ohci_at91_hub_control, %if.then86)) #5
          to label %do.end91 [label %if.then86], !srcloc !145

if.then86:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ohci_at91_hub_control.__UNIQUE_ID_ddebug246, ptr noundef %21, ptr noundef nonnull @.str.8) #5
  br label %do.end91

do.end91:                                         ; preds = %if.then86, %do.body74
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %dec)
  %cmp97 = icmp ult i16 %dec, 3
  br i1 %cmp97, label %if.then99, label %do.end91.cleanup_crit_edge

do.end91.cleanup_crit_edge:                       ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then99:                                        ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #7
  %conv92 = zext i16 %dec to i32
  %arrayidx = getelementptr %struct.at91_usbh_data, ptr %3, i32 0, i32 5, i32 %conv92
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx, align 1
  %arrayidx101 = getelementptr %struct.at91_usbh_data, ptr %3, i32 0, i32 4, i32 %conv92
  %23 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx101, align 1
  br label %cleanup

do.body104:                                       ; preds = %sw.bb71
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ohci_at91_hub_control.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ohci_at91_hub_control, %if.then116)) #5
          to label %do.end121 [label %if.then116], !srcloc !145

if.then116:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ohci_at91_hub_control.__UNIQUE_ID_ddebug247, ptr noundef %25, ptr noundef nonnull @.str.9) #5
  br label %do.end121

do.end121:                                        ; preds = %if.then116, %do.body104
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %dec)
  %cmp127 = icmp ult i16 %dec, 3
  br i1 %cmp127, label %if.then129, label %do.end121.cleanup_crit_edge

do.end121.cleanup_crit_edge:                      ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then129:                                       ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #7
  %conv122 = zext i16 %dec to i32
  %arrayidx132 = getelementptr %struct.at91_usbh_data, ptr %3, i32 0, i32 4, i32 %conv122
  %26 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %arrayidx132, align 1
  br label %cleanup

do.body135:                                       ; preds = %sw.bb71
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ohci_at91_hub_control.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ohci_at91_hub_control, %if.then147)) #5
          to label %do.end152 [label %if.then147], !srcloc !145

if.then147:                                       ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ohci_at91_hub_control.__UNIQUE_ID_ddebug248, ptr noundef %28, ptr noundef nonnull @.str.10) #5
  br label %do.end152

do.end152:                                        ; preds = %if.then147, %do.body135
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %dec)
  %cmp158 = icmp ult i16 %dec, 3
  br i1 %cmp158, label %if.end.i414, label %do.end152.sw.epilog197_crit_edge

do.end152.sw.epilog197_crit_edge:                 ; preds = %do.end152
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog197

if.end.i414:                                      ; preds = %do.end152
  call void @__sanitizer_cov_trace_pc() #7
  %conv153 = zext i16 %dec to i32
  %arrayidx.i413 = getelementptr [3 x ptr], ptr %3, i32 0, i32 %conv153
  %29 = ptrtoint ptr %arrayidx.i413 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i413, align 4
  tail call void @gpiod_set_value(ptr noundef %30, i32 noundef 0) #5
  br label %cleanup

do.body164:                                       ; preds = %sw.bb71
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ohci_at91_hub_control.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ohci_at91_hub_control, %if.then176)) #5
          to label %land.lhs.true185 [label %if.then176], !srcloc !145

if.then176:                                       ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ohci_at91_hub_control.__UNIQUE_ID_ddebug249, ptr noundef %32, ptr noundef nonnull @.str.11) #5
  br label %land.lhs.true185

land.lhs.true185:                                 ; preds = %if.then176, %do.body164
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %dec)
  %cmp187 = icmp ult i16 %dec, 3
  br i1 %cmp187, label %land.lhs.true189, label %land.lhs.true185.sw.epilog197_crit_edge

land.lhs.true185.sw.epilog197_crit_edge:          ; preds = %land.lhs.true185
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog197

land.lhs.true189:                                 ; preds = %land.lhs.true185
  %sfr_regmap190 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 3
  %33 = ptrtoint ptr %sfr_regmap190 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sfr_regmap190, align 4
  %tobool191.not = icmp eq ptr %34, null
  br i1 %tobool191.not, label %land.lhs.true189.sw.epilog197_crit_edge, label %if.end.i420

land.lhs.true189.sw.epilog197_crit_edge:          ; preds = %land.lhs.true189
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog197

if.end.i420:                                      ; preds = %land.lhs.true189
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i416) #5
  %35 = ptrtoint ptr %regval.i416 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %regval.i416, align 4, !annotation !146
  %call.i418 = call i32 @regmap_read(ptr noundef nonnull %34, i32 noundef 16, ptr noundef nonnull %regval.i416) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i418)
  %tobool1.not.i419 = icmp eq i32 %call.i418, 0
  br i1 %tobool1.not.i419, label %if.end3.i423, label %if.end.i420.ohci_at91_port_suspend.exit424_crit_edge

if.end.i420.ohci_at91_port_suspend.exit424_crit_edge: ; preds = %if.end.i420
  call void @__sanitizer_cov_trace_pc() #7
  br label %ohci_at91_port_suspend.exit424

if.end3.i423:                                     ; preds = %if.end.i420
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %regval.i416 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %regval.i416, align 4
  %and.i421 = and i32 %37, -1793
  store i32 %and.i421, ptr %regval.i416, align 4
  %call7.i422 = call i32 @regmap_write(ptr noundef nonnull %34, i32 noundef 16, i32 noundef %and.i421) #5
  br label %ohci_at91_port_suspend.exit424

ohci_at91_port_suspend.exit424:                   ; preds = %if.end3.i423, %if.end.i420.ohci_at91_port_suspend.exit424_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i416) #5
  br label %cleanup

sw.epilog197:                                     ; preds = %land.lhs.true189.sw.epilog197_crit_edge, %land.lhs.true185.sw.epilog197_crit_edge, %do.end152.sw.epilog197_crit_edge, %sw.bb71.sw.epilog197_crit_edge, %land.lhs.true65.sw.epilog197_crit_edge, %land.lhs.true61.sw.epilog197_crit_edge, %sw.bb.sw.epilog197_crit_edge, %do.end.sw.epilog197_crit_edge
  %conv198 = zext i16 %dec to i32
  %call200 = tail call i32 @ohci_hub_control(ptr noundef %hcd, i16 noundef zeroext %typeReq, i16 noundef zeroext %wValue, i16 noundef zeroext %wIndex, ptr noundef %buf, i16 noundef zeroext %wLength) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200)
  %tobool201.not = icmp eq i32 %call200, 0
  br i1 %tobool201.not, label %if.end203, label %sw.epilog197.cleanup_crit_edge

sw.epilog197.cleanup_crit_edge:                   ; preds = %sw.epilog197
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end203:                                        ; preds = %sw.epilog197
  %38 = zext i16 %typeReq to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.58)
  switch i16 %typeReq, label %if.end203.cleanup_crit_edge [
    i16 -24570, label %sw.bb205
    i16 -23808, label %do.body263
  ]

if.end203.cleanup_crit_edge:                      ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb205:                                         ; preds = %if.end203
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ohci_at91_hub_control.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ohci_at91_hub_control, %if.then218)) #5
          to label %do.end224 [label %if.then218], !srcloc !145

if.then218:                                       ; preds = %sw.bb205
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hcd, align 8
  %wHubCharacteristics = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 3
  %41 = ptrtoint ptr %wHubCharacteristics to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %wHubCharacteristics, align 1
  %conv221 = zext i16 %42 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ohci_at91_hub_control.__UNIQUE_ID_ddebug250, ptr noundef %40, ptr noundef nonnull @.str.12, i32 noundef %conv221) #5
  br label %do.end224

do.end224:                                        ; preds = %if.then218, %sw.bb205
  %wHubCharacteristics225 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 3
  %43 = ptrtoint ptr %wHubCharacteristics225 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %wHubCharacteristics225, align 1
  %45 = and i16 %44, -769
  %46 = or i16 %45, 256
  store i16 %46, ptr %wHubCharacteristics225, align 1
  %overcurrent_supported = getelementptr inbounds %struct.at91_usbh_data, ptr %3, i32 0, i32 3
  %47 = ptrtoint ptr %overcurrent_supported to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %overcurrent_supported, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool231.not = icmp eq i8 %48, 0
  br i1 %tobool231.not, label %do.end224.do.body242_crit_edge, label %if.then232

do.end224.do.body242_crit_edge:                   ; preds = %do.end224
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body242

if.then232:                                       ; preds = %do.end224
  call void @__sanitizer_cov_trace_pc() #7
  %49 = and i16 %46, -6657
  %50 = or i16 %49, 2048
  %51 = ptrtoint ptr %wHubCharacteristics225 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 2)
  store i16 %50, ptr %wHubCharacteristics225, align 1
  br label %do.body242

do.body242:                                       ; preds = %if.then232, %do.end224.do.body242_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ohci_at91_hub_control.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ohci_at91_hub_control, %if.then254)) #5
          to label %cleanup [label %if.then254], !srcloc !145

if.then254:                                       ; preds = %do.body242
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hcd, align 8
  %54 = ptrtoint ptr %wHubCharacteristics225 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %wHubCharacteristics225, align 1
  %conv258 = zext i16 %55 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ohci_at91_hub_control.__UNIQUE_ID_ddebug251, ptr noundef %53, ptr noundef nonnull @.str.13, i32 noundef %conv258) #5
  br label %cleanup

do.body263:                                       ; preds = %if.end203
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ohci_at91_hub_control.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ohci_at91_hub_control, %if.then275)) #5
          to label %land.lhs.true285 [label %if.then275], !srcloc !145

if.then275:                                       ; preds = %do.body263
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ohci_at91_hub_control.__UNIQUE_ID_ddebug252, ptr noundef %57, ptr noundef nonnull @.str.14, i32 noundef %conv198) #5
  br label %land.lhs.true285

land.lhs.true285:                                 ; preds = %if.then275, %do.body263
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %dec)
  %cmp287 = icmp ult i16 %dec, 3
  br i1 %cmp287, label %if.then289, label %land.lhs.true285.cleanup_crit_edge

land.lhs.true285.cleanup_crit_edge:               ; preds = %land.lhs.true285
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then289:                                       ; preds = %land.lhs.true285
  %arrayidx.i425 = getelementptr [3 x ptr], ptr %3, i32 0, i32 %conv198
  %58 = ptrtoint ptr %arrayidx.i425 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i425, align 4
  %call.i426 = tail call i32 @gpiod_get_value(ptr noundef %59) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i426)
  %tobool292.not = icmp eq i32 %call.i426, 0
  br i1 %tobool292.not, label %if.then293, label %if.then289.if.end295_crit_edge

if.then289.if.end295_crit_edge:                   ; preds = %if.then289
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end295

if.then293:                                       ; preds = %if.then289
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %buf, align 4
  %and294 = and i32 %61, -65537
  store i32 %and294, ptr %buf, align 4
  br label %if.end295

if.end295:                                        ; preds = %if.then293, %if.then289.if.end295_crit_edge
  %arrayidx298 = getelementptr %struct.at91_usbh_data, ptr %3, i32 0, i32 5, i32 %conv198
  %62 = ptrtoint ptr %arrayidx298 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx298, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool299.not = icmp eq i8 %63, 0
  br i1 %tobool299.not, label %if.end295.if.end302_crit_edge, label %if.then300

if.end295.if.end302_crit_edge:                    ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end302

if.then300:                                       ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %buf, align 4
  %or301 = or i32 %65, 2048
  store i32 %or301, ptr %buf, align 4
  br label %if.end302

if.end302:                                        ; preds = %if.then300, %if.end295.if.end302_crit_edge
  %arrayidx305 = getelementptr %struct.at91_usbh_data, ptr %3, i32 0, i32 4, i32 %conv198
  %66 = ptrtoint ptr %arrayidx305 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx305, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool306.not = icmp eq i8 %67, 0
  br i1 %tobool306.not, label %if.end302.cleanup_crit_edge, label %if.then307

if.end302.cleanup_crit_edge:                      ; preds = %if.end302
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then307:                                       ; preds = %if.end302
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %buf, align 4
  %or308 = or i32 %69, 134217728
  store i32 %or308, ptr %buf, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then307, %if.end302.cleanup_crit_edge, %land.lhs.true285.cleanup_crit_edge, %if.then254, %do.body242, %if.end203.cleanup_crit_edge, %sw.epilog197.cleanup_crit_edge, %ohci_at91_port_suspend.exit424, %if.end.i414, %if.then129, %do.end121.cleanup_crit_edge, %if.then99, %do.end91.cleanup_crit_edge, %ohci_at91_port_suspend.exit, %if.end.i, %do.end30.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ohci_at91_port_suspend.exit424 ], [ 0, %ohci_at91_port_suspend.exit ], [ 0, %if.then254 ], [ %call200, %sw.epilog197.cleanup_crit_edge ], [ 0, %if.end203.cleanup_crit_edge ], [ 0, %if.then307 ], [ 0, %if.end302.cleanup_crit_edge ], [ 0, %land.lhs.true285.cleanup_crit_edge ], [ -22, %if.then129 ], [ -22, %do.end121.cleanup_crit_edge ], [ -22, %if.then99 ], [ -22, %do.end91.cleanup_crit_edge ], [ -22, %do.end30.cleanup_crit_edge ], [ 0, %if.end.i ], [ 0, %if.end.i414 ], [ 0, %do.body242 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ohci_hub_status_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ohci_hub_control(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_hcd_at91_drv_probe(ptr noundef %pdev) #3 align 64 {
entry:
  %ports = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ports) #5
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ports, align 4, !annotation !146
  %coherent_dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 19
  %dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 18
  %3 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %coherent_dma_mask.i, ptr %dma_mask.i, align 8
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #5
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #5
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %platform_data, align 8
  %call.i.i126 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull %ports, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i126)
  %tobool9.not = icmp sgt i32 %call.i.i126, -1
  br i1 %tobool9.not, label %if.then10, label %if.end6.if.end12_crit_edge

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ports, align 4
  %conv = trunc i32 %6 to i8
  %ports11 = getelementptr inbounds %struct.at91_usbh_data, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %ports11 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %ports11, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end6.if.end12_crit_edge
  %ports14 = getelementptr inbounds %struct.at91_usbh_data, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %ports14 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ports14, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp16.not.not = icmp eq i8 %9, 0
  br i1 %cmp16.not.not, label %if.end12.for.end75_crit_edge, label %if.end19

if.end12.for.end75_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end75

if.end19:                                         ; preds = %if.end12
  %call21 = call ptr @devm_gpiod_get_index_optional(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef 7) #5
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call21, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then25, label %if.end19.for.inc_crit_edge

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then25:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %call21 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %11) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then25, %if.end19.for.inc_crit_edge
  %12 = ptrtoint ptr %ports14 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ports14, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp16.not.1 = icmp ugt i8 %13, 1
  br i1 %cmp16.not.1, label %if.end19.1, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end19.1:                                       ; preds = %for.inc
  %call21.1 = call ptr @devm_gpiod_get_index_optional(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef 1, i32 noundef 7) #5
  %arrayidx.1 = getelementptr [3 x ptr], ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call21.1, ptr %arrayidx.1, align 4
  %cmp.i.1 = icmp ugt ptr %call21.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %if.then25.1, label %if.end19.1.for.inc.1_crit_edge

if.end19.1.for.inc.1_crit_edge:                   ; preds = %if.end19.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then25.1:                                      ; preds = %if.end19.1
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %call21.1 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %15) #8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then25.1, %if.end19.1.for.inc.1_crit_edge
  %16 = ptrtoint ptr %ports14 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ports14, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %cmp16.not.2 = icmp ugt i8 %17, 2
  br i1 %cmp16.not.2, label %if.end19.2, label %for.inc.1.for.end_crit_edge

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end19.2:                                       ; preds = %for.inc.1
  %call21.2 = call ptr @devm_gpiod_get_index_optional(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef 2, i32 noundef 7) #5
  %arrayidx.2 = getelementptr [3 x ptr], ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call21.2, ptr %arrayidx.2, align 4
  %cmp.i.2 = icmp ugt ptr %call21.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2, label %if.then25.2, label %if.end19.2.for.endthread-pre-split_crit_edge

if.end19.2.for.endthread-pre-split_crit_edge:     ; preds = %if.end19.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.endthread-pre-split

if.then25.2:                                      ; preds = %if.end19.2
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %call21.2 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %19) #8
  br label %for.endthread-pre-split

for.endthread-pre-split:                          ; preds = %if.then25.2, %if.end19.2.for.endthread-pre-split_crit_edge
  %20 = ptrtoint ptr %ports14 to i32
  call void @__asan_load1_noabort(i32 %20)
  %.pr = load i8, ptr %ports14, align 4
  br label %for.end

for.end:                                          ; preds = %for.endthread-pre-split, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge
  %21 = phi i8 [ %.pr, %for.endthread-pre-split ], [ %17, %for.inc.1.for.end_crit_edge ], [ %13, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp37.not.not = icmp eq i8 %21, 0
  br i1 %cmp37.not.not, label %for.end.for.end75_crit_edge, label %if.end40

for.end.for.end75_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end75

if.end40:                                         ; preds = %for.end
  %call42 = call ptr @devm_gpiod_get_index_optional(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef 0, i32 noundef 1) #5
  %arrayidx43 = getelementptr %struct.at91_usbh_data, ptr %call.i, i32 0, i32 1, i32 0
  %22 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call42, ptr %arrayidx43, align 4
  %tobool46.not = icmp eq ptr %call42, null
  br i1 %tobool46.not, label %if.end40.for.inc73_crit_edge, label %if.end48

if.end40.for.inc73_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc73

if.end48:                                         ; preds = %if.end40
  %cmp.i127 = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i127, label %if.then52, label %if.end60

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %call42 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %23) #8
  br label %for.inc73

if.end60:                                         ; preds = %if.end48
  %call64 = call i32 @gpiod_to_irq(ptr noundef nonnull %call42) #5
  %call.i128 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call64, ptr noundef nonnull @ohci_hcd_at91_overcurrent_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.26, ptr noundef %pdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %tobool66.not = icmp eq i32 %call.i128, 0
  br i1 %tobool66.not, label %if.end60.for.inc73_crit_edge, label %do.end70

if.end60.for.inc73_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc73

do.end70:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.28) #8
  br label %for.inc73

for.inc73:                                        ; preds = %do.end70, %if.end60.for.inc73_crit_edge, %if.then52, %if.end40.for.inc73_crit_edge
  %24 = ptrtoint ptr %ports14 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ports14, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %25)
  %cmp37.not.1 = icmp ugt i8 %25, 1
  br i1 %cmp37.not.1, label %if.end40.1, label %for.inc73.for.end75_crit_edge

for.inc73.for.end75_crit_edge:                    ; preds = %for.inc73
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end75

if.end40.1:                                       ; preds = %for.inc73
  %call42.1 = call ptr @devm_gpiod_get_index_optional(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef 1, i32 noundef 1) #5
  %arrayidx43.1 = getelementptr %struct.at91_usbh_data, ptr %call.i, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %arrayidx43.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call42.1, ptr %arrayidx43.1, align 4
  %tobool46.not.1 = icmp eq ptr %call42.1, null
  br i1 %tobool46.not.1, label %if.end40.1.for.inc73.1_crit_edge, label %if.end48.1

if.end40.1.for.inc73.1_crit_edge:                 ; preds = %if.end40.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc73.1

if.end48.1:                                       ; preds = %if.end40.1
  %cmp.i127.1 = icmp ugt ptr %call42.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i127.1, label %if.then52.1, label %if.end60.1

if.end60.1:                                       ; preds = %if.end48.1
  %call64.1 = call i32 @gpiod_to_irq(ptr noundef nonnull %call42.1) #5
  %call.i128.1 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call64.1, ptr noundef nonnull @ohci_hcd_at91_overcurrent_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.26, ptr noundef %pdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128.1)
  %tobool66.not.1 = icmp eq i32 %call.i128.1, 0
  br i1 %tobool66.not.1, label %if.end60.1.for.inc73.1_crit_edge, label %do.end70.1

if.end60.1.for.inc73.1_crit_edge:                 ; preds = %if.end60.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc73.1

do.end70.1:                                       ; preds = %if.end60.1
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.28) #8
  br label %for.inc73.1

if.then52.1:                                      ; preds = %if.end48.1
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %call42.1 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %27) #8
  br label %for.inc73.1

for.inc73.1:                                      ; preds = %if.then52.1, %do.end70.1, %if.end60.1.for.inc73.1_crit_edge, %if.end40.1.for.inc73.1_crit_edge
  %28 = ptrtoint ptr %ports14 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ports14, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %29)
  %cmp37.not.2 = icmp ugt i8 %29, 2
  br i1 %cmp37.not.2, label %if.end40.2, label %for.inc73.1.for.end75_crit_edge

for.inc73.1.for.end75_crit_edge:                  ; preds = %for.inc73.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end75

if.end40.2:                                       ; preds = %for.inc73.1
  %call42.2 = call ptr @devm_gpiod_get_index_optional(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef 2, i32 noundef 1) #5
  %arrayidx43.2 = getelementptr %struct.at91_usbh_data, ptr %call.i, i32 0, i32 1, i32 2
  %30 = ptrtoint ptr %arrayidx43.2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call42.2, ptr %arrayidx43.2, align 4
  %tobool46.not.2 = icmp eq ptr %call42.2, null
  br i1 %tobool46.not.2, label %if.end40.2.for.end75_crit_edge, label %if.end48.2

if.end40.2.for.end75_crit_edge:                   ; preds = %if.end40.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end75

if.end48.2:                                       ; preds = %if.end40.2
  %cmp.i127.2 = icmp ugt ptr %call42.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i127.2, label %if.then52.2, label %if.end60.2

if.end60.2:                                       ; preds = %if.end48.2
  %call64.2 = call i32 @gpiod_to_irq(ptr noundef nonnull %call42.2) #5
  %call.i128.2 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call64.2, ptr noundef nonnull @ohci_hcd_at91_overcurrent_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.26, ptr noundef %pdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128.2)
  %tobool66.not.2 = icmp eq i32 %call.i128.2, 0
  br i1 %tobool66.not.2, label %if.end60.2.for.end75_crit_edge, label %do.end70.2

if.end60.2.for.end75_crit_edge:                   ; preds = %if.end60.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end75

do.end70.2:                                       ; preds = %if.end60.2
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.28) #8
  br label %for.end75

if.then52.2:                                      ; preds = %if.end48.2
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %call42.2 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %31) #8
  br label %for.end75

for.end75:                                        ; preds = %if.then52.2, %do.end70.2, %if.end60.2.for.end75_crit_edge, %if.end40.2.for.end75_crit_edge, %for.inc73.1.for.end75_crit_edge, %for.inc73.for.end75_crit_edge, %for.end.for.end75_crit_edge, %if.end12.for.end75_crit_edge
  %call77 = call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #5
  %call78 = call fastcc i32 @usb_hcd_at91_probe(ptr noundef %pdev)
  br label %cleanup

cleanup:                                          ; preds = %for.end75, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call78, %for.end75 ], [ -12, %if.end.cleanup_crit_edge ], [ %call.i.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ports) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_hcd_at91_drv_remove(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.end.i.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 0) #5
  %arrayidx.i.1 = getelementptr [3 x ptr], ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.1, align 4
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 0) #5
  %arrayidx.i.2 = getelementptr [3 x ptr], ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.2, align 4
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.end.i.preheader, %entry.if.end_crit_edge
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call2 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext false) #5
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @usb_remove_hcd(ptr noundef %9) #5
  tail call fastcc void @at91_stop_hc(ptr noundef %pdev) #5
  tail call void @usb_put_hcd(ptr noundef %9) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_platform_shutdown(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index_optional(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_hcd_at91_overcurrent_irq(i32 noundef %irq, ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %data, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %data, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %arrayidx = getelementptr %struct.at91_usbh_data, ptr %1, i32 0, i32 1, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call i32 @gpiod_to_irq(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %irq)
  %cmp2 = icmp eq i32 %call1, %irq
  br i1 %cmp2, label %entry.if.end6_crit_edge, label %for.inc

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.at91_usbh_data, ptr %1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  %call1.1 = tail call i32 @gpiod_to_irq(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.1, i32 %irq)
  %cmp2.1 = icmp eq i32 %call1.1, %irq
  br i1 %cmp2.1, label %for.inc.if.end6_crit_edge, label %for.inc.1

for.inc.if.end6_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.at91_usbh_data, ptr %1, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2, align 4
  %call1.2 = tail call i32 @gpiod_to_irq(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.2, i32 %irq)
  %cmp2.2 = icmp eq i32 %call1.2, %irq
  br i1 %cmp2.2, label %for.inc.1.if.end6_crit_edge, label %do.end

for.inc.1.if.end6_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

do.end:                                           ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31) #8
  br label %cleanup

if.end6:                                          ; preds = %for.inc.1.if.end6_crit_edge, %for.inc.if.end6_crit_edge, %entry.if.end6_crit_edge
  %port.047.lcssa = phi i32 [ 0, %entry.if.end6_crit_edge ], [ 1, %for.inc.if.end6_crit_edge ], [ 2, %for.inc.1.if.end6_crit_edge ]
  %arrayidx8 = getelementptr %struct.at91_usbh_data, ptr %1, i32 0, i32 1, i32 %port.047.lcssa
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx8, align 4
  %call9 = tail call i32 @gpiod_get_value(ptr noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %ohci_at91_usb_set_power.exit, label %if.end6.do.body14_crit_edge

if.end6.do.body14_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body14

ohci_at91_usb_set_power.exit:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr [3 x ptr], ptr %1, i32 0, i32 %port.047.lcssa
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  tail call void @gpiod_set_value(ptr noundef %11, i32 noundef 0) #5
  %arrayidx11 = getelementptr %struct.at91_usbh_data, ptr %1, i32 0, i32 4, i32 %port.047.lcssa
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %arrayidx11, align 1
  %arrayidx12 = getelementptr %struct.at91_usbh_data, ptr %1, i32 0, i32 5, i32 %port.047.lcssa
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %arrayidx12, align 1
  br label %do.body14

do.body14:                                        ; preds = %ohci_at91_usb_set_power.exit, %if.end6.do.body14_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ohci_hcd_at91_overcurrent_irq.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ohci_hcd_at91_overcurrent_irq, %if.then19)) #5
          to label %cleanup [label %if.then19], !srcloc !145

if.then19:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  %cond = select i1 %tobool.not, ptr @.str.35, ptr @.str.34
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ohci_hcd_at91_overcurrent_irq.__UNIQUE_ID_ddebug253, ptr noundef %dev, ptr noundef nonnull @.str.33, ptr noundef nonnull %cond) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %do.body14, %do.end
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usb_hcd_at91_probe(ptr noundef %pdev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_hcd_at91_probe.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_hcd_at91_probe, %if.then6)) #5
          to label %cleanup [label %if.then6], !srcloc !145

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_hcd_at91_probe.__UNIQUE_ID_ddebug241, ptr noundef %dev2, ptr noundef nonnull @.str.37) #5
  br label %cleanup

if.end7:                                          ; preds = %entry
  %call8 = tail call ptr @usb_create_hcd(ptr noundef nonnull @ohci_at91_hc_driver, ptr noundef %dev2, ptr noundef nonnull @.str.38) #5
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %priv = getelementptr inbounds %struct.usb_hcd, ptr %call8, i32 2, i32 0, i32 17
  %call13 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %call14 = tail call ptr @devm_ioremap_resource(ptr noundef %dev2, ptr noundef %call13) #5
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %call8, i32 0, i32 16
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call14, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call14 to i32
  br label %err

if.end20:                                         ; preds = %if.end11
  %2 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call13, align 4
  %rsrc_start = getelementptr inbounds %struct.usb_hcd, ptr %call8, i32 0, i32 17
  %4 = ptrtoint ptr %rsrc_start to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rsrc_start, align 8
  %end.i = getelementptr inbounds %struct.resource, ptr %call13, i32 0, i32 1
  %5 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end.i, align 4
  %7 = load i32, ptr %call13, align 4
  %sub.i = add i32 %6, 1
  %add.i = sub i32 %sub.i, %7
  %rsrc_len = getelementptr inbounds %struct.usb_hcd, ptr %call8, i32 0, i32 18
  %8 = ptrtoint ptr %rsrc_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add.i, ptr %rsrc_len, align 4
  %call22 = tail call ptr @devm_clk_get(ptr noundef %dev2, ptr noundef nonnull @.str.39) #5
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call22, ptr %priv, align 4
  %cmp.i4 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i4, label %do.end28, label %if.end31

do.end28:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.40) #8
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %err

if.end31:                                         ; preds = %if.end20
  %call32 = tail call ptr @devm_clk_get(ptr noundef %dev2, ptr noundef nonnull @.str.41) #5
  %fclk = getelementptr inbounds %struct.usb_hcd, ptr %call8, i32 2, i32 0, i32 18
  %13 = ptrtoint ptr %fclk to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call32, ptr %fclk, align 4
  %cmp.i5 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i5, label %do.end38, label %if.end41

do.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.43) #8
  %14 = ptrtoint ptr %fclk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fclk, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %err

if.end41:                                         ; preds = %if.end31
  %call42 = tail call ptr @devm_clk_get(ptr noundef %dev2, ptr noundef nonnull @.str.45) #5
  %hclk = getelementptr inbounds %struct.usb_hcd, ptr %call8, i32 2, i32 1
  %17 = ptrtoint ptr %hclk to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call42, ptr %hclk, align 4
  %cmp.i6 = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i6, label %do.end48, label %if.end51

do.end48:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.47) #8
  %18 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hclk, align 4
  %20 = ptrtoint ptr %19 to i32
  br label %err

if.end51:                                         ; preds = %if.end41
  %call.i = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.50) #5
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end51.at91_dt_syscon_sfr.exit_crit_edge

if.end51.at91_dt_syscon_sfr.exit_crit_edge:       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %at91_dt_syscon_sfr.exit

if.then.i:                                        ; preds = %if.end51
  %call2.i = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.51) #5
  %cmp.i8.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i8.i, label %at91_dt_syscon_sfr.exit.thread, label %if.then.i.at91_dt_syscon_sfr.exit_crit_edge

if.then.i.at91_dt_syscon_sfr.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %at91_dt_syscon_sfr.exit

at91_dt_syscon_sfr.exit.thread:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %sfr_regmap11 = getelementptr inbounds %struct.usb_hcd, ptr %call8, i32 2, i32 3
  %21 = ptrtoint ptr %sfr_regmap11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %sfr_regmap11, align 4
  br label %do.body56

at91_dt_syscon_sfr.exit:                          ; preds = %if.then.i.at91_dt_syscon_sfr.exit_crit_edge, %if.end51.at91_dt_syscon_sfr.exit_crit_edge
  %regmap.0.i = phi ptr [ %call.i, %if.end51.at91_dt_syscon_sfr.exit_crit_edge ], [ %call2.i, %if.then.i.at91_dt_syscon_sfr.exit_crit_edge ]
  %sfr_regmap = getelementptr inbounds %struct.usb_hcd, ptr %call8, i32 2, i32 3
  %22 = ptrtoint ptr %sfr_regmap to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %regmap.0.i, ptr %sfr_regmap, align 4
  %tobool54.not = icmp eq ptr %regmap.0.i, null
  br i1 %tobool54.not, label %at91_dt_syscon_sfr.exit.do.body56_crit_edge, label %at91_dt_syscon_sfr.exit.if.end72_crit_edge

at91_dt_syscon_sfr.exit.if.end72_crit_edge:       ; preds = %at91_dt_syscon_sfr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

at91_dt_syscon_sfr.exit.do.body56_crit_edge:      ; preds = %at91_dt_syscon_sfr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body56

do.body56:                                        ; preds = %at91_dt_syscon_sfr.exit.do.body56_crit_edge, %at91_dt_syscon_sfr.exit.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_hcd_at91_probe.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_hcd_at91_probe, %if.then68)) #5
          to label %if.end72 [label %if.then68], !srcloc !145

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_hcd_at91_probe.__UNIQUE_ID_ddebug242, ptr noundef %dev2, ptr noundef nonnull @.str.49) #5
  br label %if.end72

if.end72:                                         ; preds = %if.then68, %do.body56, %at91_dt_syscon_sfr.exit.if.end72_crit_edge
  %23 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call8, align 8
  %platform_data = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %platform_data, align 8
  %ports = getelementptr inbounds %struct.at91_usbh_data, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %ports to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ports, align 4
  %conv = zext i8 %28 to i32
  %num_ports = getelementptr inbounds %struct.usb_hcd, ptr %call8, i32 1, i32 21, i32 1, i32 0, i32 0, i32 4
  %29 = ptrtoint ptr %num_ports to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv, ptr %num_ports, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %30 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver_data.i.i.i, align 4
  %regs1.i = getelementptr inbounds %struct.usb_hcd, ptr %31, i32 0, i32 16
  %32 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs1.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_start_hc.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_hcd_at91_probe, %if.then.i8)) #5
          to label %at91_start_hc.exit [label %if.then.i8], !srcloc !145

if.then.i8:                                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_start_hc.__UNIQUE_ID_ddebug239, ptr noundef %dev2, ptr noundef nonnull @.str.53) #5
  br label %at91_start_hc.exit

at91_start_hc.exit:                               ; preds = %if.then.i8, %if.end72
  %priv.i = getelementptr inbounds %struct.usb_hcd, ptr %31, i32 2, i32 0, i32 17
  tail call fastcc void @at91_start_clock(ptr noundef %priv.i) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !147
  tail call void @arm_heavy_mb() #5
  %control.i = getelementptr inbounds %struct.ohci_regs, ptr %33, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %control.i, i32 0) #5, !srcloc !148
  %hc_control = getelementptr inbounds %struct.usb_hcd, ptr %call8, i32 2, i32 0, i32 8
  %34 = ptrtoint ptr %hc_control to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 512, ptr %hc_control, align 8
  %call74 = tail call i32 @usb_add_hcd(ptr noundef nonnull %call8, i32 noundef %call, i32 noundef 128) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp eq i32 %call74, 0
  br i1 %cmp75, label %if.then77, label %if.end81

if.then77:                                        ; preds = %at91_start_hc.exit
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call8, align 8
  %call80 = tail call i32 @device_wakeup_enable(ptr noundef %36) #5
  br label %cleanup

if.end81:                                         ; preds = %at91_start_hc.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @at91_stop_hc(ptr noundef %pdev)
  br label %err

err:                                              ; preds = %if.end81, %do.end48, %do.end38, %do.end28, %if.then17
  %retval1.0 = phi i32 [ %1, %if.then17 ], [ %12, %do.end28 ], [ %16, %do.end38 ], [ %20, %do.end48 ], [ %call74, %if.end81 ]
  tail call void @usb_put_hcd(ptr noundef nonnull %call8) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then77, %if.end7.cleanup_crit_edge, %if.then6, %do.body
  %retval.0 = phi i32 [ %retval1.0, %err ], [ 0, %if.then77 ], [ %call, %if.then6 ], [ -12, %if.end7.cleanup_crit_edge ], [ %call, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @at91_stop_hc(ptr noundef %pdev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_stop_hc.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@at91_stop_hc, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !145

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_stop_hc.__UNIQUE_ID_ddebug240, ptr noundef %dev, ptr noundef nonnull @.str.55) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @usb_hcd_platform_shutdown(ptr noundef %pdev) #5
  %clocked.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 2
  %2 = ptrtoint ptr %clocked.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %clocked.i, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %do.end.at91_stop_clock.exit_crit_edge, label %if.end.i

do.end.at91_stop_clock.exit_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %at91_stop_clock.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %priv = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 17
  %fclk.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 18
  %4 = ptrtoint ptr %fclk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fclk.i, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  %hclk.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 1
  %8 = ptrtoint ptr %hclk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hclk.i, align 4
  tail call void @clk_disable(ptr noundef %9) #5
  tail call void @clk_unprepare(ptr noundef %9) #5
  %10 = ptrtoint ptr %clocked.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %clocked.i, align 4
  br label %at91_stop_clock.exit

at91_stop_clock.exit:                             ; preds = %if.end.i, %do.end.at91_stop_clock.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @at91_start_clock(ptr nocapture noundef %ohci_at91) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %clocked = getelementptr inbounds %struct.ohci_at91_priv, ptr %ohci_at91, i32 0, i32 3
  %0 = ptrtoint ptr %clocked to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %clocked, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  %fclk = getelementptr inbounds %struct.ohci_at91_priv, ptr %ohci_at91, i32 0, i32 1
  %2 = ptrtoint ptr %fclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fclk, align 4
  %call = tail call i32 @clk_set_rate(ptr noundef %3, i32 noundef 48000000) #5
  %hclk = getelementptr inbounds %struct.ohci_at91_priv, ptr %ohci_at91, i32 0, i32 2
  %4 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.clk_prepare_enable.exit_crit_edge

if.end.clk_prepare_enable.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %5) #5
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end.clk_prepare_enable.exit_crit_edge
  %6 = ptrtoint ptr %ohci_at91 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ohci_at91, align 4
  %call.i11 = tail call i32 @clk_prepare(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11)
  %tobool.not.i12 = icmp eq i32 %call.i11, 0
  br i1 %tobool.not.i12, label %if.end.i15, label %clk_prepare_enable.exit.clk_prepare_enable.exit17_crit_edge

clk_prepare_enable.exit.clk_prepare_enable.exit17_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit17

if.end.i15:                                       ; preds = %clk_prepare_enable.exit
  %call1.i13 = tail call i32 @clk_enable(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i13)
  %tobool2.not.i14 = icmp eq i32 %call1.i13, 0
  br i1 %tobool2.not.i14, label %if.end.i15.clk_prepare_enable.exit17_crit_edge, label %if.then3.i16

if.end.i15.clk_prepare_enable.exit17_crit_edge:   ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit17

if.then3.i16:                                     ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %7) #5
  br label %clk_prepare_enable.exit17

clk_prepare_enable.exit17:                        ; preds = %if.then3.i16, %if.end.i15.clk_prepare_enable.exit17_crit_edge, %clk_prepare_enable.exit.clk_prepare_enable.exit17_crit_edge
  %8 = ptrtoint ptr %fclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fclk, align 4
  %call.i18 = tail call i32 @clk_prepare(ptr noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %tobool.not.i19 = icmp eq i32 %call.i18, 0
  br i1 %tobool.not.i19, label %if.end.i22, label %clk_prepare_enable.exit17.clk_prepare_enable.exit24_crit_edge

clk_prepare_enable.exit17.clk_prepare_enable.exit24_crit_edge: ; preds = %clk_prepare_enable.exit17
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit24

if.end.i22:                                       ; preds = %clk_prepare_enable.exit17
  %call1.i20 = tail call i32 @clk_enable(ptr noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20)
  %tobool2.not.i21 = icmp eq i32 %call1.i20, 0
  br i1 %tobool2.not.i21, label %if.end.i22.clk_prepare_enable.exit24_crit_edge, label %if.then3.i23

if.end.i22.clk_prepare_enable.exit24_crit_edge:   ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit24

if.then3.i23:                                     ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %9) #5
  br label %clk_prepare_enable.exit24

clk_prepare_enable.exit24:                        ; preds = %if.then3.i23, %if.end.i22.clk_prepare_enable.exit24_crit_edge, %clk_prepare_enable.exit17.clk_prepare_enable.exit24_crit_edge
  %10 = ptrtoint ptr %clocked to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %clocked, align 4
  br label %return

return:                                           ; preds = %clk_prepare_enable.exit24, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_hcd_at91_drv_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  %regval.i53 = alloca i32, align 4
  %regval.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 17
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.land.end.thread_crit_edge, label %device_may_wakeup.exit

entry.land.end.thread_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end.thread

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.land.end.thread_crit_edge, label %land.end

device_may_wakeup.exit.land.end.thread_crit_edge: ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end.thread

land.end.thread:                                  ; preds = %device_may_wakeup.exit.land.end.thread_crit_edge, %entry.land.end.thread_crit_edge
  %wakeup63 = getelementptr inbounds %struct.ohci_at91_priv, ptr %priv, i32 0, i32 4
  %5 = ptrtoint ptr %wakeup63 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %wakeup63, align 1
  br label %if.end

land.end:                                         ; preds = %device_may_wakeup.exit
  %call4 = tail call i32 @at91_suspend_entering_slow_clock() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  %wakeup = getelementptr inbounds %struct.ohci_at91_priv, ptr %priv, i32 0, i32 4
  %frombool = zext i1 %tobool.not to i8
  %6 = ptrtoint ptr %wakeup to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %wakeup, align 1
  br i1 %tobool.not, label %if.then, label %land.end.if.end_crit_edge

land.end.if.end_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  %irq = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 15
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 8
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end.if.end_crit_edge, %land.end.thread
  %wakeup65 = phi ptr [ %wakeup63, %land.end.thread ], [ %wakeup, %if.then ], [ %wakeup, %land.end.if.end_crit_edge ]
  %9 = ptrtoint ptr %wakeup65 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %wakeup65, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool9 = icmp ne i8 %10, 0
  %call10 = tail call i32 @ohci_suspend(ptr noundef %1, i1 noundef zeroext %tobool9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  %11 = ptrtoint ptr %wakeup65 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %wakeup65, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool21.not = icmp eq i8 %12, 0
  br i1 %tobool11.not, label %if.end19, label %if.then12

if.then12:                                        ; preds = %if.end
  br i1 %tobool21.not, label %if.then12.cleanup_crit_edge, label %if.then15

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  %irq16 = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 15
  %13 = ptrtoint ptr %irq16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq16, align 8
  %call.i48 = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 0) #5
  br label %cleanup

if.end19:                                         ; preds = %if.end
  br i1 %tobool21.not, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end19
  %rh_state = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 1, i32 21, i32 1, i32 0, i32 0, i32 3
  %15 = ptrtoint ptr %rh_state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %rh_state, align 8
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 1, i32 0, i32 9, i32 1, i32 3
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %control = getelementptr inbounds %struct.ohci_regs, ptr %17, i32 0, i32 1
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %control) #5, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !151
  tail call void @msleep(i32 noundef 1) #5
  %sfr_regmap = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 3
  %19 = ptrtoint ptr %sfr_regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sfr_regmap, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #5
  %21 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %regval.i, align 4, !annotation !146
  %tobool.not.i49 = icmp eq ptr %20, null
  br i1 %tobool.not.i49, label %if.then22.ohci_at91_port_suspend.exit_crit_edge, label %if.end.i

if.then22.ohci_at91_port_suspend.exit_crit_edge:  ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %ohci_at91_port_suspend.exit

if.end.i:                                         ; preds = %if.then22
  %call.i50 = call i32 @regmap_read(ptr noundef nonnull %20, i32 noundef 16, ptr noundef nonnull %regval.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %tobool1.not.i = icmp eq i32 %call.i50, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.ohci_at91_port_suspend.exit_crit_edge

if.end.i.ohci_at91_port_suspend.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ohci_at91_port_suspend.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %regval.i, align 4
  %storemerge.i = or i32 %23, 1792
  store i32 %storemerge.i, ptr %regval.i, align 4
  %call7.i = call i32 @regmap_write(ptr noundef nonnull %20, i32 noundef 16, i32 noundef %storemerge.i) #5
  br label %ohci_at91_port_suspend.exit

ohci_at91_port_suspend.exit:                      ; preds = %if.end3.i, %if.end.i.ohci_at91_port_suspend.exit_crit_edge, %if.then22.ohci_at91_port_suspend.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #5
  %clocked.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 2
  %24 = ptrtoint ptr %clocked.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %clocked.i, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i51 = icmp eq i8 %25, 0
  br i1 %tobool.not.i51, label %ohci_at91_port_suspend.exit.cleanup_crit_edge, label %if.end.i52

ohci_at91_port_suspend.exit.cleanup_crit_edge:    ; preds = %ohci_at91_port_suspend.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i52:                                       ; preds = %ohci_at91_port_suspend.exit
  call void @__sanitizer_cov_trace_pc() #7
  %fclk.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 18
  %26 = ptrtoint ptr %fclk.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fclk.i, align 4
  call void @clk_disable(ptr noundef %27) #5
  call void @clk_unprepare(ptr noundef %27) #5
  %28 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv, align 4
  call void @clk_disable(ptr noundef %29) #5
  call void @clk_unprepare(ptr noundef %29) #5
  %hclk.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 1
  %30 = ptrtoint ptr %hclk.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hclk.i, align 4
  call void @clk_disable(ptr noundef %31) #5
  call void @clk_unprepare(ptr noundef %31) #5
  %32 = ptrtoint ptr %clocked.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %clocked.i, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end19
  %sfr_regmap25 = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 3
  %33 = ptrtoint ptr %sfr_regmap25 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sfr_regmap25, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i53) #5
  %35 = ptrtoint ptr %regval.i53 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %regval.i53, align 4, !annotation !146
  %tobool.not.i54 = icmp eq ptr %34, null
  br i1 %tobool.not.i54, label %if.else.ohci_at91_port_suspend.exit62_crit_edge, label %if.end.i57

if.else.ohci_at91_port_suspend.exit62_crit_edge:  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %ohci_at91_port_suspend.exit62

if.end.i57:                                       ; preds = %if.else
  %call.i55 = call i32 @regmap_read(ptr noundef nonnull %34, i32 noundef 16, ptr noundef nonnull %regval.i53) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool1.not.i56 = icmp eq i32 %call.i55, 0
  br i1 %tobool1.not.i56, label %if.end3.i61, label %if.end.i57.ohci_at91_port_suspend.exit62_crit_edge

if.end.i57.ohci_at91_port_suspend.exit62_crit_edge: ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #7
  br label %ohci_at91_port_suspend.exit62

if.end3.i61:                                      ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %regval.i53 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %regval.i53, align 4
  %storemerge.i59 = or i32 %37, 1792
  store i32 %storemerge.i59, ptr %regval.i53, align 4
  %call7.i60 = call i32 @regmap_write(ptr noundef nonnull %34, i32 noundef 16, i32 noundef %storemerge.i59) #5
  br label %ohci_at91_port_suspend.exit62

ohci_at91_port_suspend.exit62:                    ; preds = %if.end3.i61, %if.end.i57.ohci_at91_port_suspend.exit62_crit_edge, %if.else.ohci_at91_port_suspend.exit62_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i53) #5
  br label %cleanup

cleanup:                                          ; preds = %ohci_at91_port_suspend.exit62, %if.end.i52, %ohci_at91_port_suspend.exit.cleanup_crit_edge, %if.then15, %if.then12.cleanup_crit_edge
  ret i32 %call10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_hcd_at91_drv_resume(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  %regval.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 17
  %sfr_regmap = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 3
  %2 = ptrtoint ptr %sfr_regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sfr_regmap, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #5
  %4 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %regval.i, align 4, !annotation !146
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.ohci_at91_port_suspend.exit_crit_edge, label %if.end.i

entry.ohci_at91_port_suspend.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ohci_at91_port_suspend.exit

if.end.i:                                         ; preds = %entry
  %call.i = call i32 @regmap_read(ptr noundef nonnull %3, i32 noundef 16, ptr noundef nonnull %regval.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.ohci_at91_port_suspend.exit_crit_edge

if.end.i.ohci_at91_port_suspend.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ohci_at91_port_suspend.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %regval.i, align 4
  %and.i = and i32 %6, -1793
  store i32 %and.i, ptr %regval.i, align 4
  %call7.i = call i32 @regmap_write(ptr noundef nonnull %3, i32 noundef 16, i32 noundef %and.i) #5
  br label %ohci_at91_port_suspend.exit

ohci_at91_port_suspend.exit:                      ; preds = %if.end3.i, %if.end.i.ohci_at91_port_suspend.exit_crit_edge, %entry.ohci_at91_port_suspend.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #5
  %wakeup = getelementptr inbounds %struct.ohci_at91_priv, ptr %priv, i32 0, i32 4
  %7 = ptrtoint ptr %wakeup to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %wakeup, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %ohci_at91_port_suspend.exit
  call void @__sanitizer_cov_trace_pc() #7
  %irq = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 15
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 8
  %call.i9 = call i32 @irq_set_irq_wake(i32 noundef %10, i32 noundef 0) #5
  br label %if.end

if.else:                                          ; preds = %ohci_at91_port_suspend.exit
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @at91_start_clock(ptr noundef %priv)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call4 = call i32 @ohci_resume(ptr noundef %1, i1 noundef zeroext false) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @at91_suspend_entering_slow_clock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ohci_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ohci_resume(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !15, !16, !17, !19, !21, !23, !25, !26, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !59, !61, !63, !65, !66, !67, !68, !69, !70, !72, !74, !75, !76, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !99, !101, !103, !104, !105, !107, !109, !110, !111, !113, !115, !116, !117, !119, !120, !122, !124, !126, !127, !128, !130, !131, !132, !134}
!llvm.module.flags = !{!136, !137, !138, !139, !140, !141, !142, !143}
!llvm.ident = !{!144}

!0 = !{ptr @__initcall__kmod_ohci_at91__254_696_ohci_at91_init6, !1, !"__initcall__kmod_ohci_at91__254_696_ohci_at91_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/host/ohci-at91.c", i32 696, i32 1}
!2 = !{ptr @__exitcall_ohci_at91_cleanup, !3, !"__exitcall_ohci_at91_cleanup", i1 false, i1 false}
!3 = !{!"../drivers/usb/host/ohci-at91.c", i32 702, i32 1}
!4 = !{ptr @__UNIQUE_ID_description255, !5, !"__UNIQUE_ID_description255", i1 false, i1 false}
!5 = !{!"../drivers/usb/host/ohci-at91.c", i32 704, i32 1}
!6 = !{ptr @__UNIQUE_ID_file256, !7, !"__UNIQUE_ID_file256", i1 false, i1 false}
!7 = !{!"../drivers/usb/host/ohci-at91.c", i32 705, i32 1}
!8 = !{ptr @__UNIQUE_ID_license257, !7, !"__UNIQUE_ID_license257", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_alias258, !10, !"__UNIQUE_ID_alias258", i1 false, i1 false}
!10 = !{!"../drivers/usb/host/ohci-at91.c", i32 706, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/usb/host/ohci-at91.c", i32 679, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ohci_at91_init._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @ohci_at91_init._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @hcd_name, !18, !"hcd_name", i1 false, i1 false}
!18 = !{!"../drivers/usb/host/ohci-at91.c", i32 63, i32 19}
!19 = !{ptr @ohci_at91_hc_driver, !20, !"ohci_at91_hc_driver", i1 false, i1 false}
!20 = !{!"../drivers/usb/host/ohci-at91.c", i32 65, i32 39}
!21 = !{ptr @ohci_at91_drv_overrides, !22, !"ohci_at91_drv_overrides", i1 false, i1 false}
!22 = !{!"../drivers/usb/host/ohci-at91.c", i32 67, i32 43}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/host/ohci-at91.c", i32 340, i32 2}
!25 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ohci_at91_hub_control.__UNIQUE_ID_ddebug243, !24, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/host/ohci-at91.c", i32 350, i32 4}
!30 = !{ptr @ohci_at91_hub_control.__UNIQUE_ID_ddebug244, !29, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/host/ohci-at91.c", i32 359, i32 4}
!33 = !{ptr @ohci_at91_hub_control.__UNIQUE_ID_ddebug245, !32, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/host/ohci-at91.c", i32 372, i32 4}
!36 = !{ptr @ohci_at91_hub_control.__UNIQUE_ID_ddebug246, !35, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/host/ohci-at91.c", i32 383, i32 4}
!39 = !{ptr @ohci_at91_hub_control.__UNIQUE_ID_ddebug247, !38, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/host/ohci-at91.c", i32 392, i32 4}
!42 = !{ptr @ohci_at91_hub_control.__UNIQUE_ID_ddebug248, !41, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/host/ohci-at91.c", i32 402, i32 4}
!45 = !{ptr @ohci_at91_hub_control.__UNIQUE_ID_ddebug249, !44, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/host/ohci-at91.c", i32 424, i32 3}
!48 = !{ptr @ohci_at91_hub_control.__UNIQUE_ID_ddebug250, !47, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/host/ohci-at91.c", i32 441, i32 3}
!51 = !{ptr @ohci_at91_hub_control.__UNIQUE_ID_ddebug251, !50, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/host/ohci-at91.c", i32 449, i32 3}
!54 = !{ptr @ohci_at91_hub_control.__UNIQUE_ID_ddebug252, !53, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!55 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/host/ohci-at91.c", i32 668, i32 11}
!57 = !{ptr @ohci_hcd_at91_driver, !58, !"ohci_hcd_at91_driver", i1 false, i1 false}
!58 = !{!"../drivers/usb/host/ohci-at91.c", i32 663, i32 31}
!59 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/host/ohci-at91.c", i32 536, i32 32}
!61 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/host/ohci-at91.c", i32 544, i32 46}
!63 = !{ptr @.str.18, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/host/ohci-at91.c", i32 548, i32 4}
!65 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @ohci_hcd_at91_drv_probe._entry, !64, !"_entry", i1 false, i1 false}
!69 = !{ptr @ohci_hcd_at91_drv_probe._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/host/ohci-at91.c", i32 558, i32 46}
!72 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/host/ohci-at91.c", i32 564, i32 4}
!74 = !{ptr @ohci_hcd_at91_drv_probe._entry.23, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @ohci_hcd_at91_drv_probe._entry_ptr.25, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/host/ohci-at91.c", i32 572, i32 12}
!78 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/host/ohci-at91.c", i32 574, i32 4}
!80 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @ohci_hcd_at91_drv_probe._entry.27, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @ohci_hcd_at91_drv_probe._entry_ptr.30, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/host/ohci-at91.c", i32 483, i32 3}
!85 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @ohci_hcd_at91_overcurrent_irq._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @ohci_hcd_at91_overcurrent_irq._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/host/ohci-at91.c", i32 498, i32 2}
!90 = !{ptr @ohci_hcd_at91_overcurrent_irq.__UNIQUE_ID_ddebug253, !89, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!91 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.36, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/host/ohci-at91.c", i32 181, i32 3}
!95 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @usb_hcd_at91_probe.__UNIQUE_ID_ddebug241, !94, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!97 = !{ptr @.str.38, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/usb/host/ohci-at91.c", i32 185, i32 36}
!99 = !{ptr @.str.39, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/host/ohci-at91.c", i32 199, i32 38}
!101 = !{ptr @.str.40, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/usb/host/ohci-at91.c", i32 201, i32 3}
!103 = !{ptr @usb_hcd_at91_probe._entry, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @usb_hcd_at91_probe._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/usb/host/ohci-at91.c", i32 205, i32 38}
!107 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/usb/host/ohci-at91.c", i32 207, i32 3}
!109 = !{ptr @usb_hcd_at91_probe._entry.42, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @usb_hcd_at91_probe._entry_ptr.44, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.45, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/usb/host/ohci-at91.c", i32 211, i32 38}
!113 = !{ptr @.str.47, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/usb/host/ohci-at91.c", i32 213, i32 3}
!115 = !{ptr @usb_hcd_at91_probe._entry.46, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @usb_hcd_at91_probe._entry_ptr.48, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.49, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/usb/host/ohci-at91.c", i32 220, i32 3}
!119 = !{ptr @usb_hcd_at91_probe.__UNIQUE_ID_ddebug242, !118, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!120 = !{ptr @.str.50, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/host/ohci-at91.c", i32 142, i32 46}
!122 = !{ptr @.str.51, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/usb/host/ohci-at91.c", i32 144, i32 47}
!124 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/usb/host/ohci-at91.c", i32 102, i32 2}
!126 = !{ptr @.str.53, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @at91_start_hc.__UNIQUE_ID_ddebug239, !125, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!128 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/usb/host/ohci-at91.c", i32 120, i32 2}
!130 = !{ptr @.str.55, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @at91_stop_hc.__UNIQUE_ID_ddebug240, !129, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!132 = !{ptr @at91_ohci_dt_ids, !133, !"at91_ohci_dt_ids", i1 false, i1 false}
!133 = !{!"../drivers/usb/host/ohci-at91.c", i32 504, i32 34}
!134 = !{ptr @ohci_hcd_at91_pm_ops, !135, !"ohci_hcd_at91_pm_ops", i1 false, i1 false}
!135 = !{!"../drivers/usb/host/ohci-at91.c", i32 660, i32 8}
!136 = !{i32 1, !"wchar_size", i32 2}
!137 = !{i32 1, !"min_enum_size", i32 4}
!138 = !{i32 8, !"branch-target-enforcement", i32 0}
!139 = !{i32 8, !"sign-return-address", i32 0}
!140 = !{i32 8, !"sign-return-address-all", i32 0}
!141 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!142 = !{i32 7, !"uwtable", i32 1}
!143 = !{i32 7, !"frame-pointer", i32 2}
!144 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!145 = !{i64 2148737597, i64 2148737602, i64 2148737615, i64 2148737659, i64 2148737693, i64 2148737714}
!146 = !{!"auto-init"}
!147 = !{i64 2154647983}
!148 = !{i64 6263997}
!149 = !{i8 0, i8 2}
!150 = !{i64 6264415}
!151 = !{i64 2154640204}
