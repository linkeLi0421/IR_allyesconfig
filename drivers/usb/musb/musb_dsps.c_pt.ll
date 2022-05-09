; ModuleID = '/llk/IR_all_yes/drivers/usb/musb/musb_dsps.c_pt.bc'
source_filename = "../drivers/usb/musb/musb_dsps.c"
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
%struct.debugfs_reg32 = type { ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.musb_hdrc_platform_data = type { i8, ptr, ptr, i8, i8, i8, i8, ptr, ptr, ptr, ptr }
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
%struct.dsps_glue = type { ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dsps_context, %struct.debugfs_regset32, ptr }
%struct.dsps_context = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.musb_hdrc_config = type { ptr, i32, i8, i8, i8, i32 }
%struct.musb_hw_ep = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i16, i16, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, i8, %struct.musb_ep, %struct.musb_ep }
%struct.musb_ep = type { %struct.usb_ep, [12 x i8], ptr, ptr, i8, i8, i8, i16, ptr, ptr, %struct.list_head, i8, i8, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.musb = type { %struct.spinlock, %struct.spinlock, %struct.musb_io, ptr, %struct.musb_context_registers, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, i16, i16, i16, i32, i32, i8, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.timer_list, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, i32, ptr, i8, i8, i16, i16, ptr, ptr, i32, i8, [16 x %struct.musb_hw_ep], i16, i16, i8, ptr, i8, i32, i8, i32, i8, i32, i32, [3 x i8], i8, i8, i16, i8, %struct.usb_gadget, ptr, ptr, ptr, i32, ptr }
%struct.musb_io = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.musb_context_registers = type { i8, i8, i16, i8, i8, i8, i8, i8, i32, [16 x %struct.musb_csr_regs] }
%struct.musb_csr_regs = type { i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.dsps_musb_wrapper = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i32, i32, i8, i32, i32, i16, i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_description304 = internal constant [46 x i8] c"musb_dsps.description=TI DSPS MUSB Glue Layer\00", section ".modinfo", align 1
@__UNIQUE_ID_author305 = internal constant [42 x i8] c"musb_dsps.author=Ravi B <ravibabu@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author306 = internal constant [54 x i8] c"musb_dsps.author=Ajay Kumar Gupta <ajay.gupta@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file307 = internal constant [42 x i8] c"musb_dsps.file=drivers/usb/musb/musb_dsps\00", section ".modinfo", align 1
@__UNIQUE_ID_license308 = internal constant [25 x i8] c"musb_dsps.license=GPL v2\00", section ".modinfo", align 1
@__initcall__kmod_musb_dsps__309_1052_dsps_usbss_driver_init6 = internal global ptr @dsps_usbss_driver_init, section ".initcall6.init", align 4
@dsps_usbss_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dsps_probe, ptr @dsps_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @musb_dsps_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dsps_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dsps_usbss_driver_exit = internal global ptr @dsps_usbss_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"musb-dsps\00", [22 x i8] zeroinitializer }, align 32
@musb_dsps_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,musb-am33xx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am33xx_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,musb-dm816\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am33xx_driver_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@dsps_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @dsps_suspend, ptr @dsps_resume, ptr @dsps_suspend, ptr @dsps_resume, ptr @dsps_suspend, ptr @dsps_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"musb-hdrc\00", [22 x i8] zeroinitializer }, align 32
@dsps_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 877, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"fail to get matching of_match struct\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dsps_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/usb/musb/musb_dsps.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dsps_probe._entry_ptr = internal global ptr @dsps_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti,musb-dm816\00", [18 x i8] zeroinitializer }, align 32
@dsps_ops = internal global { %struct.musb_platform_ops, [36 x i8] } { %struct.musb_platform_ops { i32 33, ptr @dsps_musb_init, ptr @dsps_musb_exit, ptr @dsps_musb_enable, ptr @dsps_musb_disable, ptr null, ptr null, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dsps_musb_set_mode, ptr null, ptr @dsps_musb_recover, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dsps_musb_clear_ep_rxintr }, [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"control\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"phys\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb2-phy\00", [23 x i8] zeroinitializer }, align 32
@dsps_musb_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&musb->dev_timer)\00", [45 x i8] zeroinitializer }, align 32
@musb_readb = external dso_local local_unnamed_addr global ptr, align 4
@musb_writeb = external dso_local local_unnamed_addr global ptr, align 4
@otg_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 289, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Poll could not pm_runtime_get: %i\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"otg_timer\00", [22 x i8] zeroinitializer }, align 32
@otg_timer._entry_ptr = internal global ptr @otg_timer._entry, section ".printk_index", align 4
@otg_timer._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.4, i32 298, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s resume work: %i\0A\00", [44 x i8] zeroinitializer }, align 32
@otg_timer._entry_ptr.16 = internal global ptr @otg_timer._entry.14, section ".printk_index", align 4
@dsps_check_status.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.18, ptr @.str.4, ptr @.str.19, i8 0, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"musb_dsps\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dsps_check_status\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Poll devctl %02x (%s)\0A\00", [41 x i8] zeroinitializer }, align 32
@dsps_interrupt.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.20, ptr @.str.4, ptr @.str.21, i8 0, i8 86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dsps_interrupt\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"usbintr (%x) epintr(%x)\0A\00", [39 x i8] zeroinitializer }, align 32
@dsps_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.4, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014%s %d: VBUS error workaround (delay coming)\0A\00", [49 x i8] zeroinitializer }, align 32
@dsps_interrupt._entry_ptr = internal global ptr @dsps_interrupt._entry, section ".printk_index", align 4
@dsps_interrupt.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.20, ptr @.str.4, ptr @.str.23, i8 0, i8 96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"VBUS %s (%s)%s, devctl %02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" ERROR\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s.dsps\00", [24 x i8] zeroinitializer }, align 32
@usb_debug_root = external dso_local local_unnamed_addr global ptr, align 4
@dsps_musb_regs = internal constant { [15 x %struct.debugfs_reg32], [40 x i8] } { [15 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.30, i32 0 }, %struct.debugfs_reg32 { ptr @.str.8, i32 20 }, %struct.debugfs_reg32 { ptr @.str.31, i32 24 }, %struct.debugfs_reg32 { ptr @.str.32, i32 36 }, %struct.debugfs_reg32 { ptr @.str.33, i32 48 }, %struct.debugfs_reg32 { ptr @.str.34, i32 52 }, %struct.debugfs_reg32 { ptr @.str.35, i32 56 }, %struct.debugfs_reg32 { ptr @.str.36, i32 60 }, %struct.debugfs_reg32 { ptr @.str.37, i32 112 }, %struct.debugfs_reg32 { ptr @.str.38, i32 116 }, %struct.debugfs_reg32 { ptr @.str.39, i32 208 }, %struct.debugfs_reg32 { ptr @.str.40, i32 212 }, %struct.debugfs_reg32 { ptr @.str.41, i32 216 }, %struct.debugfs_reg32 { ptr @.str.42, i32 224 }, %struct.debugfs_reg32 { ptr @.str.43, i32 232 }], [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"regdump\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"revision\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"eoi\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"intr0_stat\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"intr1_stat\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"intr0_set\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"intr1_set\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"txmode\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rxmode\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"autoreq\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"srpfixtime\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tdown\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"phy_utmi\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@dsps_musb_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.4, i32 551, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unsupported mode %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dsps_musb_set_mode\00", [45 x i8] zeroinitializer }, align 32
@dsps_musb_set_mode._entry_ptr = internal global ptr @dsps_musb_set_mode._entry, section ".printk_index", align 4
@dsps_sw_babble_control.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.46, ptr @.str.4, ptr @.str.47, i8 0, i8 -115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dsps_sw_babble_control\00", [41 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"babble: MUSB_BABBLE_CTL value %x\0A\00", [62 x i8] zeroinitializer }, align 32
@dsps_sw_babble_control.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.46, ptr @.str.4, ptr @.str.48, i8 0, i8 -114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"STUCK_J is %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"set\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@dsps_sw_babble_control.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.46, ptr @.str.4, ptr @.str.51, i8 0, i8 -110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Set TXIDLE, wait J to clear\0A\00", [35 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dsps_sw_babble_control.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.46, ptr @.str.4, ptr @.str.52, i8 0, i8 -107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"J not cleared, misc (%x)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"mc\00", [29 x i8] zeroinitializer }, align 32
@dsps_create_musb_pdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.4, i32 738, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to get memory.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dsps_create_musb_pdev\00", [42 x i8] zeroinitializer }, align 32
@dsps_create_musb_pdev._entry_ptr = internal global ptr @dsps_create_musb_pdev._entry, section ".printk_index", align 4
@dsps_create_musb_pdev._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.4, i32 756, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to allocate musb device\0A\00", [32 x i8] zeroinitializer }, align 32
@dsps_create_musb_pdev._entry_ptr.58 = internal global ptr @dsps_create_musb_pdev._entry.56, section ".printk_index", align 4
@musb_dmamask = internal global { i64, [24 x i8] } { i64 4294967295, [24 x i8] zeroinitializer }, align 32
@dsps_create_musb_pdev._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.55, ptr @.str.4, i32 770, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to add resources\0A\00", [39 x i8] zeroinitializer }, align 32
@dsps_create_musb_pdev._entry_ptr.61 = internal global ptr @dsps_create_musb_pdev._entry.59, section ".printk_index", align 4
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mentor,num-eps\00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mentor,ram-bits\00", [16 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mentor,power\00", [19 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mentor,multipoint\00", [46 x i8] zeroinitializer }, align 32
@dsps_create_musb_pdev._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.55, ptr @.str.4, i32 800, ptr @.str.68, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"ignore incorrect maximum_speed (super-speed) setting in dts\00", [36 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dsps_create_musb_pdev._entry_ptr.69 = internal global ptr @dsps_create_musb_pdev._entry.66, section ".printk_index", align 4
@dsps_create_musb_pdev._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.55, ptr @.str.4, i32 808, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to add platform_data\0A\00", [35 x i8] zeroinitializer }, align 32
@dsps_create_musb_pdev._entry_ptr.72 = internal global ptr @dsps_create_musb_pdev._entry.70, section ".printk_index", align 4
@dsps_create_musb_pdev._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.55, ptr @.str.4, i32 814, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to register musb device\0A\00", [32 x i8] zeroinitializer }, align 32
@dsps_create_musb_pdev._entry_ptr.75 = internal global ptr @dsps_create_musb_pdev._entry.73, section ".printk_index", align 4
@.str.76 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbus\00", [27 x i8] zeroinitializer }, align 32
@dsps_setup_optional_vbus_irq.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.77, ptr @.str.4, ptr @.str.78, i8 0, i8 -41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dsps_setup_optional_vbus_irq\00", [35 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"VBUS irq %i configured\0A\00", [40 x i8] zeroinitializer }, align 32
@dsps_vbus_threaded_irq.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.79, ptr @.str.4, ptr @.str.80, i8 0, i8 -48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dsps_vbus_threaded_irq\00", [41 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"VBUS interrupt\0A\00", [16 x i8] zeroinitializer }, align 32
@am33xx_driver_data = internal constant { { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i8, i8, i32, i32, i8, i32, i32, i8, i8, i32 }, [60 x i8] } { { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i8, i8, i32, i32, i8, i32, i32, i8, i8, i32 } { i16 0, i16 20, i16 24, i16 56, i16 64, i16 48, i16 60, i16 68, i16 52, i16 224, i16 232, i16 112, i16 116, i8 0, i8 0, i32 511, i32 511, i8 64, i8 0, i32 65535, i32 65535, i8 -128, i32 65534, i32 -131072, i8 -86, i8 14, i32 2000 }, [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 5]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.84 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 6, i64 7, i64 8, i64 12]
@___asan_gen_.85 = private unnamed_addr constant [18 x i8] c"dsps_usbss_driver\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1037, i32 31 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1041, i32 13 }
@___asan_gen_.91 = private unnamed_addr constant [19 x i8] c"musb_dsps_of_match\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 961, i32 34 }
@___asan_gen_.94 = private unnamed_addr constant [12 x i8] c"dsps_pm_ops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1035, i32 8 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 872, i32 26 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 877, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 882, i32 49 }
@___asan_gen_.121 = private unnamed_addr constant [9 x i8] c"dsps_ops\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 693, i32 33 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 437, i32 59 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 444, i32 57 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 448, i32 40 }
@___asan_gen_.133 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 468, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 289, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 298, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 226, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 345, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 370, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 382, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 414, i32 15 }
@___asan_gen_.193 = private unnamed_addr constant [15 x i8] c"dsps_musb_regs\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 117, i32 35 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 422, i32 26 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 118, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 120, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 121, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 122, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 123, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 124, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 125, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 126, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 127, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 128, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 129, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 130, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 131, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 132, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 551, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 564, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 570, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 585, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 598, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 736, i32 61 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 738, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 756, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant [13 x i8] c"musb_dmamask\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 710, i32 12 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 770, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 782, i32 37 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 783, i32 38 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 787, i32 33 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 789, i32 33 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 799, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 808, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 814, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 843, i32 49 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 860, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 832, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant [19 x i8] c"am33xx_driver_data\00", align 1
@___asan_gen_.347 = private constant [32 x i8] c"../drivers/usb/musb/musb_dsps.c\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 930, i32 39 }
@llvm.compiler.used = appending global [107 x ptr] [ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_author306, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file307, ptr @__UNIQUE_ID_license308, ptr @__exitcall_dsps_usbss_driver_exit, ptr @__initcall__kmod_musb_dsps__309_1052_dsps_usbss_driver_init6, ptr @dsps_create_musb_pdev._entry, ptr @dsps_create_musb_pdev._entry.56, ptr @dsps_create_musb_pdev._entry.59, ptr @dsps_create_musb_pdev._entry.66, ptr @dsps_create_musb_pdev._entry.70, ptr @dsps_create_musb_pdev._entry.73, ptr @dsps_create_musb_pdev._entry_ptr, ptr @dsps_create_musb_pdev._entry_ptr.58, ptr @dsps_create_musb_pdev._entry_ptr.61, ptr @dsps_create_musb_pdev._entry_ptr.69, ptr @dsps_create_musb_pdev._entry_ptr.72, ptr @dsps_create_musb_pdev._entry_ptr.75, ptr @dsps_interrupt._entry, ptr @dsps_interrupt._entry_ptr, ptr @dsps_musb_set_mode._entry, ptr @dsps_musb_set_mode._entry_ptr, ptr @dsps_probe._entry, ptr @dsps_probe._entry_ptr, ptr @dsps_usbss_driver_exit, ptr @otg_timer._entry, ptr @otg_timer._entry.14, ptr @otg_timer._entry_ptr, ptr @otg_timer._entry_ptr.16, ptr @dsps_usbss_driver, ptr @.str, ptr @musb_dsps_of_match, ptr @dsps_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @dsps_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @dsps_musb_init.__key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @dsps_musb_regs, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @musb_dmamask, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @am33xx_driver_data], section "llvm.metadata"
@0 = internal global [88 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsps_usbss_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @musb_dsps_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsps_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsps_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsps_ops to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsps_musb_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otg_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otg_timer._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsps_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsps_musb_regs to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsps_musb_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsps_create_musb_pdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsps_create_musb_pdev._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @musb_dmamask to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsps_create_musb_pdev._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsps_create_musb_pdev._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsps_create_musb_pdev._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsps_create_musb_pdev._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_driver_data to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dsps_usbss_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dsps_usbss_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dsps_usbss_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @dsps_usbss_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsps_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i138.i = alloca i32, align 4
  %val.i132.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  %pdata.i = alloca %struct.musb_hdrc_platform_data, align 4
  %resources.i = alloca [2 x %struct.resource], align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %call = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(10) @.str.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call1 = tail call ptr @of_match_node(ptr noundef nonnull @musb_dsps_of_match, ptr noundef %3) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %call1, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call8 = tail call i32 @of_device_is_compatible(ptr noundef %7, ptr noundef nonnull @.str.7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end5.if.end11_crit_edge, label %if.then10

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  store ptr @dsps_read_fifo32, ptr getelementptr inbounds (%struct.musb_platform_ops, ptr @dsps_ops, i32 0, i32 16), align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end5.if.end11_crit_edge
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 76, i32 noundef 3520) #8
  %tobool14.not = icmp eq ptr %call.i, null
  br i1 %tobool14.not, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %call.i, align 4
  %wrp19 = getelementptr inbounds %struct.dsps_glue, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %wrp19 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %5, ptr %wrp19, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %of_node21 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %of_node21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node21, align 8
  %call22 = tail call ptr @of_iomap(ptr noundef %13, i32 noundef 0) #8
  %usbss_base = getelementptr inbounds %struct.dsps_glue, ptr %call.i, i32 0, i32 6
  %14 = ptrtoint ptr %usbss_base to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call22, ptr %usbss_base, align 4
  %tobool24.not = icmp eq ptr %call22, null
  br i1 %tobool24.not, label %if.end16.cleanup_crit_edge, label %if.end26

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %if.end16
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pdata.i) #8
  %16 = call ptr @memset(ptr %pdata.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %resources.i) #8
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %19 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %val.i, align 4, !annotation !185
  %20 = getelementptr inbounds i8, ptr %resources.i, i32 48
  %21 = call ptr @memset(ptr %20, i32 0, i32 16)
  %call.i69 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.53) #8
  %tobool.not.i = icmp eq ptr %call.i69, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.54) #12
  br label %dsps_create_musb_pdev.exit.thread

if.end.i:                                         ; preds = %if.end26
  %22 = call ptr @memcpy(ptr %resources.i, ptr %call.i69, i32 32)
  %call3.i = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.53) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %if.end.i.dsps_create_musb_pdev.exit.thread_crit_edge, label %if.end5.i

if.end.i.dsps_create_musb_pdev.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsps_create_musb_pdev.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %arrayidx6.i = getelementptr inbounds [2 x %struct.resource], ptr %resources.i, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call3.i, ptr %arrayidx6.i, align 4
  %end.i = getelementptr inbounds [2 x %struct.resource], ptr %resources.i, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call3.i, ptr %end.i, align 4
  %call.i.i = tail call ptr @irq_get_irq_data(i32 noundef %call3.i) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end5.i.irq_get_trigger_type.exit.i_crit_edge, label %cond.true.i.i

if.end5.i.irq_get_trigger_type.exit.i_crit_edge:  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %irq_get_trigger_type.exit.i

cond.true.i.i:                                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %common.i.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %common.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %common.i.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %and.i.i.i = and i32 %28, 15
  %phi.bo.i = or i32 %and.i.i.i, 1024
  br label %irq_get_trigger_type.exit.i

irq_get_trigger_type.exit.i:                      ; preds = %cond.true.i.i, %if.end5.i.irq_get_trigger_type.exit.i_crit_edge
  %cond.i.i = phi i32 [ %phi.bo.i, %cond.true.i.i ], [ 1024, %if.end5.i.irq_get_trigger_type.exit.i_crit_edge ]
  %flags.i = getelementptr inbounds [2 x %struct.resource], ptr %resources.i, i32 0, i32 1, i32 3
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cond.i.i, ptr %flags.i, align 4
  %name.i = getelementptr inbounds [2 x %struct.resource], ptr %resources.i, i32 0, i32 1, i32 2
  %30 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str.53, ptr %name.i, align 4
  %31 = ptrtoint ptr %resources.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %resources.i, align 4
  %and.i = and i32 %32, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %and.i)
  %cmp13.i = icmp ne i32 %and.i, 1024
  %cond.i = zext i1 %cmp13.i to i32
  %call14.i = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str.1, i32 noundef %cond.i) #8
  %tobool15.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool15.not.i, label %do.end19.i, label %if.end20.i

do.end19.i:                                       ; preds = %irq_get_trigger_type.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.57) #12
  br label %dsps_create_musb_pdev.exit.thread

if.end20.i:                                       ; preds = %irq_get_trigger_type.exit.i
  %dev21.i = getelementptr inbounds %struct.platform_device, ptr %call14.i, i32 0, i32 3
  %parent22.i = getelementptr inbounds %struct.platform_device, ptr %call14.i, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %parent22.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %dev, ptr %parent22.i, align 8
  %dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %call14.i, i32 0, i32 3, i32 18
  %34 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @musb_dmamask, ptr %dma_mask.i, align 8
  %35 = load i64, ptr @musb_dmamask, align 8
  %coherent_dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %call14.i, i32 0, i32 3, i32 19
  %36 = ptrtoint ptr %coherent_dma_mask.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %coherent_dma_mask.i, align 8
  tail call void @device_set_of_node_from_dev(ptr noundef %dev21.i, ptr noundef %dev) #8
  %musb27.i = getelementptr inbounds %struct.dsps_glue, ptr %call.i, i32 0, i32 1
  %37 = ptrtoint ptr %musb27.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call14.i, ptr %musb27.i, align 4
  %call29.i = call i32 @platform_device_add_resources(ptr noundef nonnull %call14.i, ptr noundef nonnull %resources.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end35.i, label %if.end20.i.err.sink.split.i_crit_edge

if.end20.i.err.sink.split.i_crit_edge:            ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err.sink.split.i

if.end35.i:                                       ; preds = %if.end20.i
  %call.i130.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #8
  %tobool38.not.i = icmp eq ptr %call.i130.i, null
  br i1 %tobool38.not.i, label %if.end35.i.err.i_crit_edge, label %if.end40.i

if.end35.i.err.i_crit_edge:                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err.i

if.end40.i:                                       ; preds = %if.end35.i
  %config41.i = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %pdata.i, i32 0, i32 8
  %38 = ptrtoint ptr %config41.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i130.i, ptr %config41.i, align 4
  %platform_ops.i = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %pdata.i, i32 0, i32 10
  %39 = ptrtoint ptr %platform_ops.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @dsps_ops, ptr %platform_ops.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #8
  %40 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %val.i.i, align 4, !annotation !185
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %18, ptr noundef nonnull @.str.62, ptr noundef nonnull %val.i.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %tobool.not.i131.i = icmp sgt i32 %call.i.i.i.i, -1
  br i1 %tobool.not.i131.i, label %if.end.i.i, label %if.end40.i.get_int_prop.exit.i_crit_edge

if.end40.i.get_int_prop.exit.i_crit_edge:         ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_int_prop.exit.i

if.end.i.i:                                       ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val.i.i, align 4
  %phi.cast.i = trunc i32 %42 to i8
  br label %get_int_prop.exit.i

get_int_prop.exit.i:                              ; preds = %if.end.i.i, %if.end40.i.get_int_prop.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ %phi.cast.i, %if.end.i.i ], [ 0, %if.end40.i.get_int_prop.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #8
  %num_eps.i = getelementptr inbounds %struct.musb_hdrc_config, ptr %call.i130.i, i32 0, i32 3
  %43 = ptrtoint ptr %num_eps.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %retval.0.i.i, ptr %num_eps.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i132.i) #8
  %44 = ptrtoint ptr %val.i132.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %val.i132.i, align 4, !annotation !185
  %call.i.i.i133.i = call i32 @of_property_read_variable_u32_array(ptr noundef %18, ptr noundef nonnull @.str.63, ptr noundef nonnull %val.i132.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i133.i)
  %tobool.not.i134.i = icmp sgt i32 %call.i.i.i133.i, -1
  br i1 %tobool.not.i134.i, label %if.end.i135.i, label %get_int_prop.exit.i.get_int_prop.exit137.i_crit_edge

get_int_prop.exit.i.get_int_prop.exit137.i_crit_edge: ; preds = %get_int_prop.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_int_prop.exit137.i

if.end.i135.i:                                    ; preds = %get_int_prop.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %val.i132.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val.i132.i, align 4
  %phi.cast144.i = trunc i32 %46 to i8
  br label %get_int_prop.exit137.i

get_int_prop.exit137.i:                           ; preds = %if.end.i135.i, %get_int_prop.exit.i.get_int_prop.exit137.i_crit_edge
  %retval.0.i136.i = phi i8 [ %phi.cast144.i, %if.end.i135.i ], [ 0, %get_int_prop.exit.i.get_int_prop.exit137.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i132.i) #8
  %ram_bits.i = getelementptr inbounds %struct.musb_hdrc_config, ptr %call.i130.i, i32 0, i32 4
  %47 = ptrtoint ptr %ram_bits.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %retval.0.i136.i, ptr %ram_bits.i, align 2
  %host_port_deassert_reset_at_resume.i = getelementptr inbounds %struct.musb_hdrc_config, ptr %call.i130.i, i32 0, i32 2
  %48 = ptrtoint ptr %host_port_deassert_reset_at_resume.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load.i = load i8, ptr %host_port_deassert_reset_at_resume.i, align 4
  %bf.set.i = or i8 %bf.load.i, 32
  store i8 %bf.set.i, ptr %host_port_deassert_reset_at_resume.i, align 4
  %call45.i = call i32 @musb_get_mode(ptr noundef %dev) #8
  %conv46.i = trunc i32 %call45.i to i8
  %49 = ptrtoint ptr %pdata.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv46.i, ptr %pdata.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i138.i) #8
  %50 = ptrtoint ptr %val.i138.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %val.i138.i, align 4, !annotation !185
  %call.i.i.i139.i = call i32 @of_property_read_variable_u32_array(ptr noundef %18, ptr noundef nonnull @.str.64, ptr noundef nonnull %val.i138.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i139.i)
  %tobool.not.i140.i = icmp sgt i32 %call.i.i.i139.i, -1
  br i1 %tobool.not.i140.i, label %if.end.i141.i, label %get_int_prop.exit137.i.get_int_prop.exit143.i_crit_edge

get_int_prop.exit137.i.get_int_prop.exit143.i_crit_edge: ; preds = %get_int_prop.exit137.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_int_prop.exit143.i

if.end.i141.i:                                    ; preds = %get_int_prop.exit137.i
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %val.i138.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %val.i138.i, align 4
  %phi.bo145.i = sdiv i32 %52, 2
  %phi.cast146.i = trunc i32 %phi.bo145.i to i8
  br label %get_int_prop.exit143.i

get_int_prop.exit143.i:                           ; preds = %if.end.i141.i, %get_int_prop.exit137.i.get_int_prop.exit143.i_crit_edge
  %retval.0.i142.i = phi i8 [ %phi.cast146.i, %if.end.i141.i ], [ 0, %get_int_prop.exit137.i.get_int_prop.exit143.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i138.i) #8
  %power.i = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %pdata.i, i32 0, i32 3
  %53 = ptrtoint ptr %power.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %retval.0.i142.i, ptr %power.i, align 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %18, ptr noundef nonnull @.str.65, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool50.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool50.not.i, label %land.lhs.true.i, label %get_int_prop.exit143.i.if.end56.i_crit_edge

get_int_prop.exit143.i.if.end56.i_crit_edge:      ; preds = %get_int_prop.exit143.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56.i

land.lhs.true.i:                                  ; preds = %get_int_prop.exit143.i
  %54 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool51.not.i = icmp eq i32 %55, 0
  br i1 %tobool51.not.i, label %land.lhs.true.i.if.end56.i_crit_edge, label %if.then52.i

land.lhs.true.i.if.end56.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56.i

if.then52.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %host_port_deassert_reset_at_resume.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load53.i = load i8, ptr %host_port_deassert_reset_at_resume.i, align 4
  %bf.set55.i = or i8 %bf.load53.i, -128
  store i8 %bf.set55.i, ptr %host_port_deassert_reset_at_resume.i, align 4
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then52.i, %land.lhs.true.i.if.end56.i_crit_edge, %get_int_prop.exit143.i.if.end56.i_crit_edge
  %call58.i = call i32 @usb_get_maximum_speed(ptr noundef %dev) #8
  %maximum_speed.i = getelementptr inbounds %struct.musb_hdrc_config, ptr %call.i130.i, i32 0, i32 5
  %57 = ptrtoint ptr %maximum_speed.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call58.i, ptr %maximum_speed.i, align 4
  %58 = zext i32 %call58.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call58.i, label %if.end56.i.sw.default.i_crit_edge [
    i32 1, label %if.end56.i.sw.epilog.i_crit_edge
    i32 2, label %if.end56.i.sw.epilog.i_crit_edge84
    i32 5, label %do.end63.i
  ]

if.end56.i.sw.epilog.i_crit_edge84:               ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.end56.i.sw.epilog.i_crit_edge:                 ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.end56.i.sw.default.i_crit_edge:                ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default.i

do.end63.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.67) #12
  br label %sw.default.i

sw.default.i:                                     ; preds = %do.end63.i, %if.end56.i.sw.default.i_crit_edge
  %59 = ptrtoint ptr %maximum_speed.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 3, ptr %maximum_speed.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %if.end56.i.sw.epilog.i_crit_edge, %if.end56.i.sw.epilog.i_crit_edge84
  %call65.i = call i32 @platform_device_add_data(ptr noundef nonnull %call14.i, ptr noundef nonnull %pdata.i, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %tobool66.not.i = icmp eq i32 %call65.i, 0
  br i1 %tobool66.not.i, label %if.end71.i, label %sw.epilog.i.err.sink.split.i_crit_edge

sw.epilog.i.err.sink.split.i_crit_edge:           ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err.sink.split.i

if.end71.i:                                       ; preds = %sw.epilog.i
  %call72.i = call i32 @platform_device_add(ptr noundef nonnull %call14.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i)
  %tobool73.not.i = icmp eq i32 %call72.i, 0
  br i1 %tobool73.not.i, label %if.end31, label %if.end71.i.err.sink.split.i_crit_edge

if.end71.i.err.sink.split.i_crit_edge:            ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err.sink.split.i

err.sink.split.i:                                 ; preds = %if.end71.i.err.sink.split.i_crit_edge, %sw.epilog.i.err.sink.split.i_crit_edge, %if.end20.i.err.sink.split.i_crit_edge
  %.str.74.sink.i = phi ptr [ @.str.60, %if.end20.i.err.sink.split.i_crit_edge ], [ @.str.71, %sw.epilog.i.err.sink.split.i_crit_edge ], [ @.str.74, %if.end71.i.err.sink.split.i_crit_edge ]
  %ret.0.ph.i = phi i32 [ %call29.i, %if.end20.i.err.sink.split.i_crit_edge ], [ %call65.i, %sw.epilog.i.err.sink.split.i_crit_edge ], [ %call72.i, %if.end71.i.err.sink.split.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.74.sink.i) #12
  br label %err.i

err.i:                                            ; preds = %err.sink.split.i, %if.end35.i.err.i_crit_edge
  %ret.0.i = phi i32 [ -12, %if.end35.i.err.i_crit_edge ], [ %ret.0.ph.i, %err.sink.split.i ]
  call void @platform_device_put(ptr noundef nonnull %call14.i) #8
  br label %dsps_create_musb_pdev.exit.thread

dsps_create_musb_pdev.exit.thread:                ; preds = %err.i, %do.end19.i, %if.end.i.dsps_create_musb_pdev.exit.thread_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ %call3.i, %if.end.i.dsps_create_musb_pdev.exit.thread_crit_edge ], [ -22, %do.end.i ], [ -12, %do.end19.i ], [ %ret.0.i, %err.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %resources.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pdata.i) #8
  br label %err

if.end31:                                         ; preds = %if.end71.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %resources.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pdata.i) #8
  %call33 = call i32 @usb_get_dr_mode(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call33)
  %cmp = icmp eq i32 %call33, 2
  br i1 %cmp, label %if.then34, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then34:                                        ; preds = %if.end31
  %call.i70 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.76) #8
  %vbus_irq.i = getelementptr inbounds %struct.dsps_glue, ptr %call.i, i32 0, i32 3
  %60 = ptrtoint ptr %vbus_irq.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %call.i70, ptr %vbus_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call.i70)
  %cmp.i71 = icmp eq i32 %call.i70, -517
  br i1 %cmp.i71, label %if.then34.unregister_pdev_crit_edge, label %if.end.i72

if.then34.unregister_pdev_crit_edge:              ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %unregister_pdev

if.end.i72:                                       ; preds = %if.then34
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i70)
  %cmp3.i = icmp slt i32 %call.i70, 1
  br i1 %cmp3.i, label %if.then4.i, label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %vbus_irq.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %vbus_irq.i, align 4
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i72
  %62 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call.i, align 4
  %call8.i = call i32 @devm_request_threaded_irq(ptr noundef %63, i32 noundef %call.i70, ptr noundef null, ptr noundef nonnull @dsps_vbus_threaded_irq, i32 noundef 8192, ptr noundef nonnull @.str.76, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i73 = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i73, label %do.body.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %vbus_irq.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %vbus_irq.i, align 4
  br label %unregister_pdev

do.body.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dsps_setup_optional_vbus_irq.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dsps_probe, %if.then16.i)) #8
          to label %cleanup [label %if.then16.i], !srcloc !186

if.then16.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %call.i, align 4
  %67 = ptrtoint ptr %vbus_irq.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %vbus_irq.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dsps_setup_optional_vbus_irq.__UNIQUE_ID_ddebug303, ptr noundef %66, ptr noundef nonnull @.str.78, i32 noundef %68) #8
  br label %cleanup

unregister_pdev:                                  ; preds = %if.then9.i, %if.then34.unregister_pdev_crit_edge
  %retval.0.i74.ph = phi i32 [ -517, %if.then34.unregister_pdev_crit_edge ], [ %call8.i, %if.then9.i ]
  %69 = ptrtoint ptr %musb27.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %musb27.i, align 4
  call void @platform_device_unregister(ptr noundef %70) #8
  br label %err

err:                                              ; preds = %unregister_pdev, %dsps_create_musb_pdev.exit.thread
  %ret.0 = phi i32 [ %retval.0.i74.ph, %unregister_pdev ], [ %retval.0.i.ph, %dsps_create_musb_pdev.exit.thread ]
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  %71 = ptrtoint ptr %usbss_base to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %usbss_base, align 4
  call void @iounmap(ptr noundef %72) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then16.i, %do.body.i, %if.then4.i, %if.end31.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ -22, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end11.cleanup_crit_edge ], [ -6, %if.end16.cleanup_crit_edge ], [ 0, %if.end31.cleanup_crit_edge ], [ 0, %do.body.i ], [ 0, %if.then4.i ], [ 0, %if.then16.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsps_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %musb = getelementptr inbounds %struct.dsps_glue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %musb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %musb, align 4
  tail call void @platform_device_unregister(ptr noundef %3) #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  %usbss_base = getelementptr inbounds %struct.dsps_glue, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %usbss_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usbss_base, align 4
  tail call void @iounmap(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsps_read_fifo32(ptr nocapture noundef readonly %hw_ep, i16 noundef zeroext %len, ptr noundef %dst) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fifo1 = getelementptr inbounds %struct.musb_hw_ep, ptr %hw_ep, i32 0, i32 1
  %0 = ptrtoint ptr %fifo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifo1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %len)
  %cmp = icmp ugt i16 %len, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i16 %len to i32
  %2 = lshr i32 %conv, 2
  tail call void @__raw_readsl(ptr noundef %1, ptr noundef %dst, i32 noundef %2) #8
  %and = and i32 %conv, 65532
  %add.ptr = getelementptr i8, ptr %dst, i32 %and
  %and6 = and i16 %len, 3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %len.addr.0 = phi i16 [ %and6, %if.then ], [ %len, %entry.if.end_crit_edge ]
  %dst.addr.0 = phi ptr [ %add.ptr, %if.then ], [ %dst, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %len.addr.0)
  %cmp9.not = icmp eq i16 %len.addr.0, 0
  br i1 %cmp9.not, label %if.end.if.end13_crit_edge, label %if.then11

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv8 = zext i16 %len.addr.0 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val)
  %call = tail call i32 @musb_readl(ptr noundef %1, i32 noundef 0) #8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call, ptr %val, align 4
  %4 = call ptr @memcpy(ptr %dst.addr.0, ptr %val, i32 %conv8)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end.if.end13_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_dr_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_readl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsps_musb_init(ptr noundef %musb) #2 align 64 {
entry:
  %buf.i = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
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
  %add.ptr = getelementptr i8, ptr %3, i32 -16
  %wrp3 = getelementptr inbounds %struct.dsps_glue, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %wrp3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wrp3, align 4
  %call4 = tail call ptr @platform_get_resource_byname(ptr noundef %add.ptr, i32 noundef 512, ptr noundef nonnull @.str.8) #8
  %call5 = tail call ptr @devm_ioremap_resource(ptr noundef %1, ptr noundef %call4) #8
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctrl_base = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 26
  %9 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5, ptr %ctrl_base, align 4
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %call9 = tail call ptr @devm_usb_get_phy_by_phandle(ptr noundef %11, ptr noundef nonnull @.str.9, i8 noundef zeroext 0) #8
  %xceiv = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 35
  %12 = ptrtoint ptr %xceiv to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9, ptr %xceiv, align 8
  %cmp.i105 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i105, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent, align 8
  %call17 = tail call ptr @devm_phy_get(ptr noundef %15, ptr noundef nonnull @.str.10) #8
  %phy = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 36
  %16 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call17, ptr %phy, align 4
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %7, align 4
  %conv = zext i16 %18 to i32
  %call18 = tail call i32 @musb_readl(ptr noundef %call5, i32 noundef %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %if.end15.cleanup_crit_edge, label %if.end20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %19 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phy, align 4
  %cmp.i106 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i106, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %phy, align 4
  br label %do.body

if.else:                                          ; preds = %if.end20
  %call26 = tail call i32 @phy_init(ptr noundef %20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp = icmp slt i32 %call26, 0
  br i1 %cmp, label %if.else.cleanup_crit_edge, label %if.end29

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29:                                         ; preds = %if.else
  %22 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy, align 4
  %call31 = tail call i32 @phy_power_on(ptr noundef %23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end29.do.body_crit_edge, label %if.then33

if.end29.do.body_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %phy, align 4
  %call35 = tail call i32 @phy_exit(ptr noundef %25) #8
  br label %cleanup

do.body:                                          ; preds = %if.end29.do.body_crit_edge, %if.then23
  %dev_timer = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 22
  tail call void @init_timer_key(ptr noundef %dev_timer, ptr noundef nonnull @otg_timer, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull @dsps_musb_init.__key) #8
  %control = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %7, i32 0, i32 1
  %26 = ptrtoint ptr %control to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %control, align 2
  %conv38 = zext i16 %27 to i32
  %reset = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %7, i32 0, i32 13
  %28 = ptrtoint ptr %reset to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load = load i16, ptr %reset, align 2
  %bf.lshr = lshr i16 %bf.load, 11
  %bf.cast = zext i16 %bf.lshr to i32
  %shl = shl nuw i32 1, %bf.cast
  tail call void @musb_writel(ptr noundef %call5, i32 noundef %conv38, i32 noundef %shl) #8
  %isr = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 5
  %29 = ptrtoint ptr %isr to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @dsps_interrupt, ptr %isr, align 4
  %phy_utmi = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %7, i32 0, i32 9
  %30 = ptrtoint ptr %phy_utmi to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %phy_utmi, align 2
  %conv39 = zext i16 %31 to i32
  %call40 = tail call i32 @musb_readl(ptr noundef %call5, i32 noundef %conv39) #8
  %otg_disable = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %7, i32 0, i32 22
  %32 = ptrtoint ptr %otg_disable to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load41 = load i16, ptr %otg_disable, align 4
  %bf.lshr42 = lshr i16 %bf.load41, 11
  %bf.cast43 = zext i16 %bf.lshr42 to i32
  %shl44 = shl nuw i32 1, %bf.cast43
  %neg = xor i32 %shl44, -1
  %and = and i32 %call40, %neg
  %33 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctrl_base, align 4
  %35 = ptrtoint ptr %phy_utmi to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %phy_utmi, align 2
  %conv47 = zext i16 %36 to i32
  tail call void @musb_writel(ptr noundef %34, i32 noundef %conv47, i32 noundef %and) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %37 = load ptr, ptr @musb_readb, align 4
  %mregs = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 27
  %38 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mregs, align 8
  %call48 = tail call zeroext i8 %37(ptr noundef %39, i32 noundef 97) #8
  %40 = and i8 %call48, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool51.not = icmp eq i8 %40, 0
  br i1 %tobool51.not, label %do.body.if.end55_crit_edge, label %if.then52

do.body.if.end55_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then52:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %sw_babble_enabled = getelementptr inbounds %struct.dsps_glue, ptr %5, i32 0, i32 5
  %41 = ptrtoint ptr %sw_babble_enabled to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %sw_babble_enabled, align 4
  %or = or i8 %call48, 64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %42 = load ptr, ptr @musb_writeb, align 4
  %43 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mregs, align 8
  tail call void %42(ptr noundef %44, i32 noundef 97, i8 noundef zeroext %or) #8
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %do.body.if.end55_crit_edge
  %musb1.i = getelementptr inbounds %struct.dsps_glue, ptr %5, i32 0, i32 1
  %45 = ptrtoint ptr %musb1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %musb1.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %46, i32 0, i32 3, i32 8
  %47 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %driver_data.i.i.i, align 4
  %49 = ptrtoint ptr %wrp3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %wrp3, align 4
  %poll_timeout.i = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %50, i32 0, i32 23
  %51 = ptrtoint ptr %poll_timeout.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %poll_timeout.i, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %52) #8
  %dev_timer.i = getelementptr inbounds %struct.musb, ptr %48, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %53, %call2.i.i
  %call4.i = tail call i32 @mod_timer(ptr noundef %dev_timer.i, i32 noundef %add.i) #8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buf.i) #8
  %54 = call ptr @memset(ptr %buf.i, i32 255, i32 128)
  %55 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %controller, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %58, null
  br i1 %tobool.not.i.i, label %if.end.i.i107, label %if.end55.dsps_musb_dbg_init.exit_crit_edge

if.end55.dsps_musb_dbg_init.exit_crit_edge:       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsps_musb_dbg_init.exit

if.end.i.i107:                                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %56, align 4
  br label %dsps_musb_dbg_init.exit

dsps_musb_dbg_init.exit:                          ; preds = %if.end.i.i107, %if.end55.dsps_musb_dbg_init.exit_crit_edge
  %retval.0.i.i = phi ptr [ %60, %if.end.i.i107 ], [ %58, %if.end55.dsps_musb_dbg_init.exit_crit_edge ]
  %call1.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf.i, ptr noundef nonnull @.str.28, ptr noundef %retval.0.i.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usb_debug_root to i32))
  %61 = load ptr, ptr @usb_debug_root, align 4
  %call3.i = call ptr @debugfs_create_dir(ptr noundef nonnull %buf.i, ptr noundef %61) #8
  %dbgfs_root.i = getelementptr inbounds %struct.dsps_glue, ptr %5, i32 0, i32 9
  %62 = ptrtoint ptr %dbgfs_root.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call3.i, ptr %dbgfs_root.i, align 4
  %regset.i = getelementptr inbounds %struct.dsps_glue, ptr %5, i32 0, i32 8
  %63 = ptrtoint ptr %regset.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @dsps_musb_regs, ptr %regset.i, align 4
  %nregs.i = getelementptr inbounds %struct.dsps_glue, ptr %5, i32 0, i32 8, i32 1
  %64 = ptrtoint ptr %nregs.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 15, ptr %nregs.i, align 4
  %65 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ctrl_base, align 4
  %base.i = getelementptr inbounds %struct.dsps_glue, ptr %5, i32 0, i32 8, i32 2
  %67 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %base.i, align 4
  call void @debugfs_create_regset32(ptr noundef nonnull @.str.29, i16 noundef zeroext 292, ptr noundef %call3.i, ptr noundef %regset.i) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf.i) #8
  br label %cleanup

cleanup:                                          ; preds = %dsps_musb_dbg_init.exit, %if.then33, %if.else.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.then12, %if.then
  %retval.0 = phi i32 [ %8, %if.then ], [ %13, %if.then12 ], [ 0, %dsps_musb_dbg_init.exit ], [ %call31, %if.then33 ], [ -19, %if.end15.cleanup_crit_edge ], [ %call26, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsps_musb_exit(ptr noundef %musb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %dev_timer = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 22
  %call1 = tail call i32 @del_timer_sync(ptr noundef %dev_timer) #8
  %phy = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 36
  %6 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy, align 4
  %call2 = tail call i32 @phy_power_off(ptr noundef %7) #8
  %8 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy, align 4
  %call4 = tail call i32 @phy_exit(ptr noundef %9) #8
  %dbgfs_root = getelementptr inbounds %struct.dsps_glue, ptr %5, i32 0, i32 9
  %10 = ptrtoint ptr %dbgfs_root to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dbgfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %11) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsps_musb_enable(ptr nocapture noundef readonly %musb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %wrp1 = getelementptr inbounds %struct.dsps_glue, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %wrp1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wrp1, align 4
  %ctrl_base = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 26
  %8 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctrl_base, align 4
  %epmask2 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 41
  %10 = ptrtoint ptr %epmask2 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %epmask2, align 2
  %conv = zext i16 %11 to i32
  %txep_mask = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %7, i32 0, i32 17
  %12 = ptrtoint ptr %txep_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %txep_mask, align 4
  %and = and i32 %13, %conv
  %txep_shift = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %7, i32 0, i32 16
  %14 = ptrtoint ptr %txep_shift to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load = load i16, ptr %txep_shift, align 4
  %bf.lshr = lshr i16 %bf.load, 6
  %bf.clear = and i16 %bf.lshr, 31
  %bf.cast = zext i16 %bf.clear to i32
  %shl = shl i32 %and, %bf.cast
  %rxep_mask = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %7, i32 0, i32 20
  %15 = ptrtoint ptr %rxep_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rxep_mask, align 4
  %and5 = and i32 %16, %conv
  %rxep_shift = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %7, i32 0, i32 19
  %17 = ptrtoint ptr %rxep_shift to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load6 = load i8, ptr %rxep_shift, align 4
  %bf.lshr7 = lshr i8 %bf.load6, 3
  %bf.cast8 = zext i8 %bf.lshr7 to i32
  %shl9 = shl i32 %and5, %bf.cast8
  %or = or i32 %shl9, %shl
  %usb_bitmap = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %7, i32 0, i32 15
  %18 = ptrtoint ptr %usb_bitmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %usb_bitmap, align 4
  %and10 = and i32 %19, -9
  %epintr_set = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %7, i32 0, i32 3
  %20 = ptrtoint ptr %epintr_set to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %epintr_set, align 2
  %conv11 = zext i16 %21 to i32
  tail call void @musb_writel(ptr noundef %9, i32 noundef %conv11, i32 noundef %or) #8
  %coreintr_set = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %7, i32 0, i32 6
  %22 = ptrtoint ptr %coreintr_set to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %coreintr_set, align 4
  %conv12 = zext i16 %23 to i32
  tail call void @musb_writel(ptr noundef %9, i32 noundef %conv12, i32 noundef %and10) #8
  %xceiv = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 35
  %24 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %xceiv, align 8
  %otg = getelementptr inbounds %struct.usb_phy, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp = icmp eq i32 %29, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %musb1.i = getelementptr inbounds %struct.dsps_glue, ptr %5, i32 0, i32 1
  %30 = ptrtoint ptr %musb1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %musb1.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3, i32 8
  %32 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %driver_data.i.i.i, align 4
  %34 = ptrtoint ptr %wrp1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wrp1, align 4
  %poll_timeout.i = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %35, i32 0, i32 23
  %36 = ptrtoint ptr %poll_timeout.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %poll_timeout.i, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %37) #8
  %dev_timer.i = getelementptr inbounds %struct.musb, ptr %33, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %38, %call2.i.i
  %call4.i = tail call i32 @mod_timer(ptr noundef %dev_timer.i, i32 noundef %add.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsps_musb_disable(ptr noundef %musb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %wrp1 = getelementptr inbounds %struct.dsps_glue, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %wrp1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wrp1, align 4
  %ctrl_base = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 26
  %8 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctrl_base, align 4
  %coreintr_clear = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %7, i32 0, i32 7
  %10 = ptrtoint ptr %coreintr_clear to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %coreintr_clear, align 2
  %conv = zext i16 %11 to i32
  %usb_bitmap = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %7, i32 0, i32 15
  %12 = ptrtoint ptr %usb_bitmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %usb_bitmap, align 4
  tail call void @musb_writel(ptr noundef %9, i32 noundef %conv, i32 noundef %13) #8
  %epintr_clear = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %7, i32 0, i32 4
  %14 = ptrtoint ptr %epintr_clear to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %epintr_clear, align 4
  %conv2 = zext i16 %15 to i32
  %txep_bitmap = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %7, i32 0, i32 18
  %16 = ptrtoint ptr %txep_bitmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %txep_bitmap, align 4
  %rxep_bitmap = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %7, i32 0, i32 21
  %18 = ptrtoint ptr %rxep_bitmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rxep_bitmap, align 4
  %or = or i32 %19, %17
  tail call void @musb_writel(ptr noundef %9, i32 noundef %conv2, i32 noundef %or) #8
  %dev_timer = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 22
  %call3 = tail call i32 @del_timer_sync(ptr noundef %dev_timer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsps_musb_set_mode(ptr nocapture noundef readonly %musb, i8 noundef zeroext %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %wrp1 = getelementptr inbounds %struct.dsps_glue, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %wrp1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wrp1, align 4
  %ctrl_base2 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 26
  %8 = ptrtoint ptr %ctrl_base2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctrl_base2, align 4
  %mode3 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %7, i32 0, i32 10
  %10 = ptrtoint ptr %mode3 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mode3, align 4
  %conv = zext i16 %11 to i32
  %call4 = tail call i32 @musb_readl(ptr noundef %9, i32 noundef %conv) #8
  %12 = zext i8 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %mode, label %do.end [
    i8 1, label %sw.bb
    i8 2, label %sw.bb14
    i8 3, label %sw.bb31
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %iddig = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %7, i32 0, i32 22
  %13 = ptrtoint ptr %iddig to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load = load i16, ptr %iddig, align 4
  %bf.lshr = lshr i16 %bf.load, 6
  %bf.clear = and i16 %bf.lshr, 31
  %bf.cast = zext i16 %bf.clear to i32
  %shl = shl nuw i32 1, %bf.cast
  %neg = xor i32 %shl, -1
  %and = and i32 %call4, %neg
  %bf.lshr7 = lshr i16 %bf.load, 1
  %bf.clear8 = and i16 %bf.lshr7, 31
  %bf.cast9 = zext i16 %bf.clear8 to i32
  %shl10 = shl nuw i32 1, %bf.cast9
  %or = or i32 %and, %shl10
  %14 = ptrtoint ptr %mode3 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %mode3, align 4
  %conv12 = zext i16 %15 to i32
  tail call void @musb_writel(ptr noundef %9, i32 noundef %conv12, i32 noundef %or) #8
  %phy_utmi = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %7, i32 0, i32 9
  %16 = ptrtoint ptr %phy_utmi to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %phy_utmi, align 2
  %conv13 = zext i16 %17 to i32
  tail call void @musb_writel(ptr noundef %9, i32 noundef %conv13, i32 noundef 2) #8
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %iddig15 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %7, i32 0, i32 22
  %18 = ptrtoint ptr %iddig15 to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load16 = load i16, ptr %iddig15, align 4
  %bf.lshr17 = lshr i16 %bf.load16, 6
  %bf.clear18 = and i16 %bf.lshr17, 31
  %bf.cast19 = zext i16 %bf.clear18 to i32
  %shl20 = shl nuw i32 1, %bf.cast19
  %or21 = or i32 %shl20, %call4
  %bf.lshr24 = lshr i16 %bf.load16, 1
  %bf.clear25 = and i16 %bf.lshr24, 31
  %bf.cast26 = zext i16 %bf.clear25 to i32
  %shl27 = shl nuw i32 1, %bf.cast26
  %or28 = or i32 %or21, %shl27
  %19 = ptrtoint ptr %mode3 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %mode3, align 4
  %conv30 = zext i16 %20 to i32
  tail call void @musb_writel(ptr noundef %9, i32 noundef %conv30, i32 noundef %or28) #8
  br label %cleanup

sw.bb31:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %phy_utmi32 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %7, i32 0, i32 9
  %21 = ptrtoint ptr %phy_utmi32 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %phy_utmi32, align 2
  %conv33 = zext i16 %22 to i32
  tail call void @musb_writel(ptr noundef %9, i32 noundef %conv33, i32 noundef 2) #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv5 = zext i8 %mode to i32
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.44, i32 noundef %conv5) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb31, %sw.bb14, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb31 ], [ 0, %sw.bb14 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsps_musb_recover(ptr nocapture noundef readonly %musb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %sw_babble_enabled = getelementptr inbounds %struct.dsps_glue, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %sw_babble_enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sw_babble_enabled, align 4, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call fastcc zeroext i1 @dsps_sw_babble_control(ptr noundef %musb)
  %phi.sel = select i1 %call1, i32 0, i32 -32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %session_restart.0 = phi i32 [ %phi.sel, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %session_restart.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsps_musb_clear_ep_rxintr(ptr nocapture noundef readonly %musb, i32 noundef %epnum) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %wrp1 = getelementptr inbounds %struct.dsps_glue, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %wrp1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wrp1, align 4
  %shl = shl nuw i32 1, %epnum
  %rxep_shift = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %rxep_shift to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %rxep_shift, align 4
  %bf.lshr = lshr i8 %bf.load, 3
  %bf.cast = zext i8 %bf.lshr to i32
  %shl2 = shl i32 %shl, %bf.cast
  %ctrl_base = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 26
  %9 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctrl_base, align 4
  %epintr_status = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %7, i32 0, i32 5
  %11 = ptrtoint ptr %epintr_status to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %epintr_status, align 2
  %conv = zext i16 %12 to i32
  tail call void @musb_writel(ptr noundef %10, i32 noundef %conv, i32 noundef %shl2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_usb_get_phy_by_phandle(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @otg_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1032
  %controller = getelementptr i8, ptr %t, i32 64
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call.i)
  %cmp.not = icmp ne i32 %call.i, -115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1 = icmp slt i32 %call.i, 0
  %or.cond = and i1 %cmp.not, %cmp1
  br i1 %or.cond, label %do.end, label %do.body3

do.end:                                           ; preds = %entry
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef %call.i) #12
  %usage_count.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !189
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %do.end.cleanup_crit_edge, label %do.end11.i.i.i.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !190
  br label %cleanup

do.body3:                                         ; preds = %entry
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #8
  %call12 = tail call i32 @musb_queue_resume_work(ptr noundef %add.ptr, ptr noundef nonnull @dsps_check_status, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.end18, label %do.body3.if.end19_crit_edge

do.body3.if.end19_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

do.end18:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, i32 noundef %call12) #12
  br label %if.end19

if.end19:                                         ; preds = %do.end18, %do.body3.if.end19_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call7) #8
  %call.i37 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 22
  %3 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store volatile i64 %call.i37, ptr %last_busy.i, align 8
  %call.i38 = tail call i32 @__pm_runtime_suspend(ptr noundef %1, i32 noundef 13) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end11.i.i.i.i, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_writel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsps_interrupt(i32 noundef %irq, ptr noundef %hci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_base = getelementptr inbounds %struct.musb, ptr %hci, i32 0, i32 26
  %0 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_base, align 4
  %controller = getelementptr inbounds %struct.musb, ptr %hci, i32 0, i32 25
  %2 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller, align 8
  %parent = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %wrp1 = getelementptr inbounds %struct.dsps_glue, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %wrp1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wrp1, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hci) #8
  %epintr_status = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %epintr_status to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %epintr_status, align 2
  %conv7 = zext i16 %11 to i32
  %call8 = tail call i32 @musb_readl(ptr noundef %1, i32 noundef %conv7) #8
  %rxep_bitmap = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %9, i32 0, i32 21
  %12 = ptrtoint ptr %rxep_bitmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rxep_bitmap, align 4
  %and = and i32 %13, %call8
  %rxep_shift = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %9, i32 0, i32 19
  %14 = ptrtoint ptr %rxep_shift to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %rxep_shift, align 4
  %bf.lshr = lshr i8 %bf.load, 3
  %bf.cast = zext i8 %bf.lshr to i32
  %shr = lshr i32 %and, %bf.cast
  %conv9 = trunc i32 %shr to i16
  %int_rx = getelementptr inbounds %struct.musb, ptr %hci, i32 0, i32 33
  %15 = ptrtoint ptr %int_rx to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv9, ptr %int_rx, align 2
  %txep_bitmap = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %9, i32 0, i32 18
  %16 = ptrtoint ptr %txep_bitmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %txep_bitmap, align 4
  %and10 = and i32 %17, %call8
  %txep_shift = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %9, i32 0, i32 16
  %18 = ptrtoint ptr %txep_shift to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load11 = load i16, ptr %txep_shift, align 4
  %bf.lshr12 = lshr i16 %bf.load11, 6
  %bf.clear = and i16 %bf.lshr12, 31
  %bf.cast13 = zext i16 %bf.clear to i32
  %shr14 = lshr i32 %and10, %bf.cast13
  %conv15 = trunc i32 %shr14 to i16
  %int_tx = getelementptr inbounds %struct.musb, ptr %hci, i32 0, i32 34
  %19 = ptrtoint ptr %int_tx to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv15, ptr %int_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %epintr_status to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %epintr_status, align 2
  %conv17 = zext i16 %21 to i32
  tail call void @musb_writel(ptr noundef %1, i32 noundef %conv17, i32 noundef %call8) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %coreintr_status = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %9, i32 0, i32 8
  %22 = ptrtoint ptr %coreintr_status to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %coreintr_status, align 4
  %conv18 = zext i16 %23 to i32
  %call19 = tail call i32 @musb_readl(ptr noundef %1, i32 noundef %conv18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  %24 = select i1 %tobool20.not, i1 %tobool.not, i1 false
  br i1 %24, label %if.end.out_crit_edge, label %if.end23

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end23:                                         ; preds = %if.end
  %usb_bitmap = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %9, i32 0, i32 15
  %25 = ptrtoint ptr %usb_bitmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %usb_bitmap, align 4
  %and24 = and i32 %26, %call19
  %usb_shift = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %9, i32 0, i32 13
  %27 = ptrtoint ptr %usb_shift to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load25 = load i16, ptr %usb_shift, align 2
  %bf.lshr26 = lshr i16 %bf.load25, 6
  %bf.clear27 = and i16 %bf.lshr26, 31
  %bf.cast28 = zext i16 %bf.clear27 to i32
  %shr29 = lshr i32 %and24, %bf.cast28
  %conv30 = trunc i32 %shr29 to i8
  %int_usb = getelementptr inbounds %struct.musb, ptr %hci, i32 0, i32 32
  %28 = ptrtoint ptr %int_usb to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv30, ptr %int_usb, align 1
  br i1 %tobool20.not, label %if.end23.do.body36_crit_edge, label %if.then32

if.end23.do.body36_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body36

if.then32:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %coreintr_status to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %coreintr_status, align 4
  %conv34 = zext i16 %30 to i32
  tail call void @musb_writel(ptr noundef %1, i32 noundef %conv34, i32 noundef %call19) #8
  br label %do.body36

do.body36:                                        ; preds = %if.then32, %if.end23.do.body36_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dsps_interrupt.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dsps_interrupt, %if.then42)) #8
          to label %do.end46 [label %if.then42], !srcloc !186

if.then42:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %controller, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dsps_interrupt.__UNIQUE_ID_ddebug296, ptr noundef %32, ptr noundef nonnull @.str.21, i32 noundef %call19, i32 noundef %call8) #8
  br label %do.end46

do.end46:                                         ; preds = %if.then42, %do.body36
  %33 = ptrtoint ptr %txep_shift to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load47 = load i16, ptr %txep_shift, align 4
  %bf.lshr48 = lshr i16 %bf.load47, 11
  %bf.cast49 = zext i16 %bf.lshr48 to i32
  %shl = shl nuw i32 1, %bf.cast49
  %34 = ptrtoint ptr %usb_shift to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load51 = load i16, ptr %usb_shift, align 2
  %bf.lshr52 = lshr i16 %bf.load51, 6
  %bf.clear53 = and i16 %bf.lshr52, 31
  %bf.cast54 = zext i16 %bf.clear53 to i32
  %shl55 = shl i32 %shl, %bf.cast54
  %and56 = and i32 %shl55, %call19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %do.end46.if.end120_crit_edge, label %if.then58

do.end46.if.end120_crit_edge:                     ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end120

if.then58:                                        ; preds = %do.end46
  %status = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %9, i32 0, i32 2
  %35 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %status, align 4
  %conv60 = zext i16 %36 to i32
  %call61 = tail call i32 @musb_readl(ptr noundef %1, i32 noundef %conv60) #8
  %mregs62 = getelementptr inbounds %struct.musb, ptr %hci, i32 0, i32 27
  %37 = ptrtoint ptr %mregs62 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mregs62, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %39 = load ptr, ptr @musb_readb, align 4
  %call63 = tail call zeroext i8 %39(ptr noundef %38, i32 noundef 96) #8
  %40 = ptrtoint ptr %int_usb to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %int_usb, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %41)
  %tobool67.not = icmp sgt i8 %41, -1
  br i1 %tobool67.not, label %if.else, label %if.then68

if.then68:                                        ; preds = %if.then58
  %and71 = and i8 %41, 127
  %42 = ptrtoint ptr %int_usb to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %and71, ptr %int_usb, align 1
  %xceiv = getelementptr inbounds %struct.musb, ptr %hci, i32 0, i32 35
  %43 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %xceiv, align 8
  %otg = getelementptr inbounds %struct.usb_phy, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 12, ptr %state, align 4
  %vbus_irq.i = getelementptr inbounds %struct.dsps_glue, ptr %7, i32 0, i32 3
  %48 = ptrtoint ptr %vbus_irq.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %vbus_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i = icmp eq i32 %49, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then68.dsps_mod_timer_optional.exit_crit_edge

if.then68.dsps_mod_timer_optional.exit_crit_edge: ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsps_mod_timer_optional.exit

if.end.i:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  %musb1.i.i = getelementptr inbounds %struct.dsps_glue, ptr %7, i32 0, i32 1
  %50 = ptrtoint ptr %musb1.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %musb1.i.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %51, i32 0, i32 3, i32 8
  %52 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %54 = ptrtoint ptr %wrp1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %wrp1, align 4
  %poll_timeout.i.i = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %55, i32 0, i32 23
  %56 = ptrtoint ptr %poll_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %poll_timeout.i.i, align 4
  %call2.i.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %57) #8
  %dev_timer.i.i = getelementptr inbounds %struct.musb, ptr %53, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %58 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %58, %call2.i.i.i
  %call4.i.i = tail call i32 @mod_timer(ptr noundef %dev_timer.i.i, i32 noundef %add.i.i) #8
  br label %dsps_mod_timer_optional.exit

dsps_mod_timer_optional.exit:                     ; preds = %if.end.i, %if.then68.dsps_mod_timer_optional.exit_crit_edge
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20, i32 noundef 370) #12
  br label %do.body95

if.else:                                          ; preds = %if.then58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool81.not = icmp eq i32 %call61, 0
  br i1 %tobool81.not, label %if.else86, label %if.then82

if.then82:                                        ; preds = %if.else
  %is_host = getelementptr inbounds %struct.musb, ptr %hci, i32 0, i32 48
  %59 = ptrtoint ptr %is_host to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %is_host, align 4
  %xceiv83 = getelementptr inbounds %struct.musb, ptr %hci, i32 0, i32 35
  %60 = ptrtoint ptr %xceiv83 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %xceiv83, align 8
  %otg84 = getelementptr inbounds %struct.usb_phy, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %otg84 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %otg84, align 4
  %state85 = getelementptr inbounds %struct.usb_otg, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %state85 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 7, ptr %state85, align 4
  %vbus_irq.i196 = getelementptr inbounds %struct.dsps_glue, ptr %7, i32 0, i32 3
  %65 = ptrtoint ptr %vbus_irq.i196 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %vbus_irq.i196, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i197 = icmp eq i32 %66, 0
  br i1 %tobool.not.i197, label %if.end.i202, label %if.then82.do.body95_crit_edge

if.then82.do.body95_crit_edge:                    ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body95

if.end.i202:                                      ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #10
  %musb1.i.i198 = getelementptr inbounds %struct.dsps_glue, ptr %7, i32 0, i32 1
  %67 = ptrtoint ptr %musb1.i.i198 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %musb1.i.i198, align 4
  %driver_data.i.i.i.i199 = getelementptr inbounds %struct.platform_device, ptr %68, i32 0, i32 3, i32 8
  %69 = ptrtoint ptr %driver_data.i.i.i.i199 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %driver_data.i.i.i.i199, align 4
  %71 = ptrtoint ptr %wrp1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %wrp1, align 4
  %poll_timeout.i.i201 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %72, i32 0, i32 23
  %73 = ptrtoint ptr %poll_timeout.i.i201 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %poll_timeout.i.i201, align 4
  %call2.i.i.i208 = tail call i32 @__msecs_to_jiffies(i32 noundef %74) #8
  %dev_timer.i.i211 = getelementptr inbounds %struct.musb, ptr %70, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %75 = load volatile i32, ptr @jiffies, align 128
  %add.i.i212 = add i32 %75, %call2.i.i.i208
  %call4.i.i213 = tail call i32 @mod_timer(ptr noundef %dev_timer.i.i211, i32 noundef %add.i.i212) #8
  br label %do.body95

if.else86:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %is_active = getelementptr inbounds %struct.musb, ptr %hci, i32 0, i32 51
  %76 = ptrtoint ptr %is_active to i32
  call void @__asan_loadN_noabort(i32 %76, i32 3)
  %bf.load87 = load i24, ptr %is_active, align 8
  %bf.clear88 = and i24 %bf.load87, -2097153
  store i24 %bf.clear88, ptr %is_active, align 8
  %is_host89 = getelementptr inbounds %struct.musb, ptr %hci, i32 0, i32 48
  %77 = ptrtoint ptr %is_host89 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %is_host89, align 4
  %xceiv90 = getelementptr inbounds %struct.musb, ptr %hci, i32 0, i32 35
  %78 = ptrtoint ptr %xceiv90 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %xceiv90, align 8
  %otg91 = getelementptr inbounds %struct.usb_phy, ptr %79, i32 0, i32 5
  %80 = ptrtoint ptr %otg91 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %otg91, align 4
  %state92 = getelementptr inbounds %struct.usb_otg, ptr %81, i32 0, i32 5
  %82 = ptrtoint ptr %state92 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %state92, align 4
  br label %do.body95

do.body95:                                        ; preds = %if.else86, %if.end.i202, %if.then82.do.body95_crit_edge, %dsps_mod_timer_optional.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dsps_interrupt.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dsps_interrupt, %if.then107)) #8
          to label %if.end120 [label %if.then107], !srcloc !186

if.then107:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %controller, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool109.not = icmp eq i32 %call61, 0
  %cond = select i1 %tobool109.not, ptr @.str.25, ptr @.str.24
  %xceiv110 = getelementptr inbounds %struct.musb, ptr %hci, i32 0, i32 35
  %85 = ptrtoint ptr %xceiv110 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %xceiv110, align 8
  %otg111 = getelementptr inbounds %struct.usb_phy, ptr %86, i32 0, i32 5
  %87 = ptrtoint ptr %otg111 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %otg111, align 4
  %state112 = getelementptr inbounds %struct.usb_otg, ptr %88, i32 0, i32 5
  %89 = ptrtoint ptr %state112 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %state112, align 4
  %call113 = tail call ptr @usb_otg_state_string(i32 noundef %90) #8
  %cond115 = select i1 %tobool67.not, ptr @.str.27, ptr @.str.26
  %conv116 = zext i8 %call63 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dsps_interrupt.__UNIQUE_ID_ddebug297, ptr noundef %84, ptr noundef nonnull @.str.23, ptr noundef nonnull %cond, ptr noundef %call113, ptr noundef nonnull %cond115, i32 noundef %conv116) #8
  br label %if.end120

if.end120:                                        ; preds = %if.then107, %do.body95, %do.end46.if.end120_crit_edge
  %ret.0 = phi i32 [ 0, %do.end46.if.end120_crit_edge ], [ 1, %if.then107 ], [ 1, %do.body95 ]
  %91 = ptrtoint ptr %int_tx to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %int_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %92)
  %tobool123.not = icmp eq i16 %92, 0
  br i1 %tobool123.not, label %lor.lhs.false, label %if.end120.if.then131_crit_edge

if.end120.if.then131_crit_edge:                   ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then131

lor.lhs.false:                                    ; preds = %if.end120
  %93 = ptrtoint ptr %int_rx to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %int_rx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %94)
  %tobool126.not = icmp eq i16 %94, 0
  br i1 %tobool126.not, label %lor.lhs.false127, label %lor.lhs.false.if.then131_crit_edge

lor.lhs.false.if.then131_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then131

lor.lhs.false127:                                 ; preds = %lor.lhs.false
  %95 = ptrtoint ptr %int_usb to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %int_usb, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool130.not = icmp eq i8 %96, 0
  br i1 %tobool130.not, label %lor.lhs.false127.if.end133_crit_edge, label %lor.lhs.false127.if.then131_crit_edge

lor.lhs.false127.if.then131_crit_edge:            ; preds = %lor.lhs.false127
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then131

lor.lhs.false127.if.end133_crit_edge:             ; preds = %lor.lhs.false127
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end133

if.then131:                                       ; preds = %lor.lhs.false127.if.then131_crit_edge, %lor.lhs.false.if.then131_crit_edge, %if.end120.if.then131_crit_edge
  %call132 = tail call i32 @musb_interrupt(ptr noundef %hci) #8
  %or = or i32 %call132, %ret.0
  br label %if.end133

if.end133:                                        ; preds = %if.then131, %lor.lhs.false127.if.end133_crit_edge
  %ret.1 = phi i32 [ %or, %if.then131 ], [ %ret.0, %lor.lhs.false127.if.end133_crit_edge ]
  %xceiv134 = getelementptr inbounds %struct.musb, ptr %hci, i32 0, i32 35
  %97 = ptrtoint ptr %xceiv134 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %xceiv134, align 8
  %otg135 = getelementptr inbounds %struct.usb_phy, ptr %98, i32 0, i32 5
  %99 = ptrtoint ptr %otg135 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %otg135, align 4
  %state136 = getelementptr inbounds %struct.usb_otg, ptr %100, i32 0, i32 5
  %101 = ptrtoint ptr %state136 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %state136, align 4
  %103 = zext i32 %102 to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %102, label %if.end133.out_crit_edge [
    i32 1, label %if.end133.sw.bb_crit_edge
    i32 8, label %if.end133.sw.bb_crit_edge238
  ]

if.end133.sw.bb_crit_edge238:                     ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end133.sw.bb_crit_edge:                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end133.out_crit_edge:                          ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

sw.bb:                                            ; preds = %if.end133.sw.bb_crit_edge, %if.end133.sw.bb_crit_edge238
  %vbus_irq.i216 = getelementptr inbounds %struct.dsps_glue, ptr %7, i32 0, i32 3
  %104 = ptrtoint ptr %vbus_irq.i216 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %vbus_irq.i216, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool.not.i217 = icmp eq i32 %105, 0
  br i1 %tobool.not.i217, label %if.end.i222, label %sw.bb.out_crit_edge

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end.i222:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %musb1.i.i218 = getelementptr inbounds %struct.dsps_glue, ptr %7, i32 0, i32 1
  %106 = ptrtoint ptr %musb1.i.i218 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %musb1.i.i218, align 4
  %driver_data.i.i.i.i219 = getelementptr inbounds %struct.platform_device, ptr %107, i32 0, i32 3, i32 8
  %108 = ptrtoint ptr %driver_data.i.i.i.i219 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %driver_data.i.i.i.i219, align 4
  %110 = ptrtoint ptr %wrp1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %wrp1, align 4
  %poll_timeout.i.i221 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %111, i32 0, i32 23
  %112 = ptrtoint ptr %poll_timeout.i.i221 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %poll_timeout.i.i221, align 4
  %call2.i.i.i228 = tail call i32 @__msecs_to_jiffies(i32 noundef %113) #8
  %dev_timer.i.i231 = getelementptr inbounds %struct.musb, ptr %109, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %114 = load volatile i32, ptr @jiffies, align 128
  %add.i.i232 = add i32 %114, %call2.i.i.i228
  %call4.i.i233 = tail call i32 @mod_timer(ptr noundef %dev_timer.i.i231, i32 noundef %add.i.i232) #8
  br label %out

out:                                              ; preds = %if.end.i222, %sw.bb.out_crit_edge, %if.end133.out_crit_edge, %if.end.out_crit_edge
  %ret.2 = phi i32 [ %ret.1, %if.end133.out_crit_edge ], [ 0, %if.end.out_crit_edge ], [ %ret.1, %sw.bb.out_crit_edge ], [ %ret.1, %if.end.i222 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hci, i32 noundef %call4) #8
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_queue_resume_work(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsps_check_status(ptr noundef %musb, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mregs1 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 27
  %0 = ptrtoint ptr %mregs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mregs1, align 8
  %controller = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %2 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller, align 8
  %parent = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %wrp2 = getelementptr inbounds %struct.dsps_glue, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %wrp2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wrp2, align 4
  %vbus_irq = getelementptr inbounds %struct.dsps_glue, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %vbus_irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vbus_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev_timer = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 22
  %call3 = tail call i32 @del_timer(ptr noundef %dev_timer) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %12 = load ptr, ptr @musb_readb, align 4
  %call4 = tail call zeroext i8 %12(ptr noundef %1, i32 noundef 96) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dsps_check_status.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dsps_check_status, %if.then9)) #8
          to label %do.end [label %if.then9], !srcloc !186

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %controller, align 8
  %conv = zext i8 %call4 to i32
  %xceiv = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 35
  %15 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %xceiv, align 8
  %otg = getelementptr inbounds %struct.usb_phy, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state, align 4
  %call11 = tail call ptr @usb_otg_state_string(i32 noundef %20) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dsps_check_status.__UNIQUE_ID_ddebug295, ptr noundef %14, ptr noundef nonnull @.str.19, i32 noundef %conv, ptr noundef %call11) #8
  br label %do.end

do.end:                                           ; preds = %if.then9, %if.end
  %xceiv13 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 35
  %21 = ptrtoint ptr %xceiv13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %xceiv13, align 8
  %otg14 = getelementptr inbounds %struct.usb_phy, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %otg14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %otg14, align 4
  %state15 = getelementptr inbounds %struct.usb_otg, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %state15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state15, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %26, label %do.end.sw.epilog_crit_edge [
    i32 7, label %sw.bb
    i32 8, label %do.end.sw.bb22_crit_edge
    i32 6, label %do.end.sw.bb29_crit_edge
    i32 1, label %do.end.sw.bb29_crit_edge131
    i32 12, label %sw.bb56
  ]

do.end.sw.bb29_crit_edge131:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb29

do.end.sw.bb29_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb29

do.end.sw.bb22_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb22

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  %port_mode = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 45
  %28 = ptrtoint ptr %port_mode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp = icmp eq i32 %29, 1
  br i1 %cmp, label %if.then17, label %sw.bb.sw.bb22_crit_edge

sw.bb.sw.bb22_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb22

if.then17:                                        ; preds = %sw.bb
  %30 = ptrtoint ptr %state15 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 8, ptr %state15, align 4
  %31 = ptrtoint ptr %vbus_irq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vbus_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then17.sw.epilog_crit_edge

if.then17.sw.epilog_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %musb1.i.i = getelementptr inbounds %struct.dsps_glue, ptr %7, i32 0, i32 1
  %33 = ptrtoint ptr %musb1.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %musb1.i.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %34, i32 0, i32 3, i32 8
  %35 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %37 = ptrtoint ptr %wrp2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wrp2, align 4
  %poll_timeout.i.i = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %38, i32 0, i32 23
  %39 = ptrtoint ptr %poll_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %poll_timeout.i.i, align 4
  %call2.i.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %40) #8
  %dev_timer.i.i = getelementptr inbounds %struct.musb, ptr %36, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %41, %call2.i.i.i
  %call4.i.i = tail call i32 @mod_timer(ptr noundef %dev_timer.i.i, i32 noundef %add.i.i) #8
  br label %sw.epilog

sw.bb22:                                          ; preds = %sw.bb.sw.bb22_crit_edge, %do.end.sw.bb22_crit_edge
  %port_mode23 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 45
  %42 = ptrtoint ptr %port_mode23 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port_mode23, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp24 = icmp eq i32 %43, 1
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %sw.bb22
  %44 = ptrtoint ptr %vbus_irq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vbus_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i87 = icmp eq i32 %45, 0
  br i1 %tobool.not.i87, label %if.end.i92, label %if.then26.sw.epilog_crit_edge

if.then26.sw.epilog_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i92:                                       ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %musb1.i.i88 = getelementptr inbounds %struct.dsps_glue, ptr %7, i32 0, i32 1
  %46 = ptrtoint ptr %musb1.i.i88 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %musb1.i.i88, align 4
  %driver_data.i.i.i.i89 = getelementptr inbounds %struct.platform_device, ptr %47, i32 0, i32 3, i32 8
  %48 = ptrtoint ptr %driver_data.i.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %driver_data.i.i.i.i89, align 4
  %50 = ptrtoint ptr %wrp2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %wrp2, align 4
  %poll_timeout.i.i91 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %51, i32 0, i32 23
  %52 = ptrtoint ptr %poll_timeout.i.i91 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %poll_timeout.i.i91, align 4
  %call2.i.i.i98 = tail call i32 @__msecs_to_jiffies(i32 noundef %53) #8
  %dev_timer.i.i101 = getelementptr inbounds %struct.musb, ptr %49, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %54 = load volatile i32, ptr @jiffies, align 128
  %add.i.i102 = add i32 %54, %call2.i.i.i98
  %call4.i.i103 = tail call i32 @mod_timer(ptr noundef %dev_timer.i.i101, i32 noundef %add.i.i102) #8
  br label %sw.epilog

if.end27:                                         ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %55 = load ptr, ptr @musb_writeb, align 4
  %56 = ptrtoint ptr %mregs1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mregs1, align 8
  tail call void %55(ptr noundef %57, i32 noundef 96, i8 noundef zeroext 0) #8
  br label %sw.bb29

sw.bb29:                                          ; preds = %if.end27, %do.end.sw.bb29_crit_edge, %do.end.sw.bb29_crit_edge131
  %tobool52.not128 = phi i1 [ true, %do.end.sw.bb29_crit_edge ], [ true, %do.end.sw.bb29_crit_edge131 ], [ false, %if.end27 ]
  %58 = ptrtoint ptr %vbus_irq to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %vbus_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool31.not = icmp eq i32 %59, 0
  br i1 %tobool31.not, label %if.then32, label %sw.bb29.sw.epilog_crit_edge

sw.bb29.sw.epilog_crit_edge:                      ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then32:                                        ; preds = %sw.bb29
  %conv33 = zext i8 %call4 to i32
  %and = and i32 %conv33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  %60 = ptrtoint ptr %xceiv13 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %xceiv13, align 8
  %otg40 = getelementptr inbounds %struct.usb_phy, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %otg40 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %otg40, align 4
  %state41 = getelementptr inbounds %struct.usb_otg, ptr %63, i32 0, i32 5
  %. = select i1 %tobool34.not, i32 6, i32 1
  %64 = xor i8 %call4, -1
  %65 = lshr i8 %64, 7
  %66 = ptrtoint ptr %state41 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %., ptr %state41, align 4
  %67 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 48
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %65, ptr %67, align 4
  %port_mode44 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 45
  %69 = ptrtoint ptr %port_mode44 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %port_mode44, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %70)
  %cmp45 = icmp ne i32 %70, 2
  %and50 = and i32 %conv33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %tobool52.not = and i1 %tobool52.not128, %cmp45
  %or.cond = select i1 %tobool51.not, i1 %tobool52.not, i1 false
  br i1 %or.cond, label %if.then53, label %if.then32.if.end55_crit_edge

if.then32.if.end55_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then53:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %71 = load ptr, ptr @musb_writeb, align 4
  tail call void %71(ptr noundef %1, i32 noundef 96, i8 noundef zeroext 1) #8
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.then32.if.end55_crit_edge
  %72 = ptrtoint ptr %vbus_irq to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pr = load i32, ptr %vbus_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not.i107 = icmp eq i32 %.pr, 0
  br i1 %tobool.not.i107, label %if.end.i112, label %if.end55.sw.epilog_crit_edge

if.end55.sw.epilog_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i112:                                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %musb1.i.i108 = getelementptr inbounds %struct.dsps_glue, ptr %7, i32 0, i32 1
  %73 = ptrtoint ptr %musb1.i.i108 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %musb1.i.i108, align 4
  %driver_data.i.i.i.i109 = getelementptr inbounds %struct.platform_device, ptr %74, i32 0, i32 3, i32 8
  %75 = ptrtoint ptr %driver_data.i.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %driver_data.i.i.i.i109, align 4
  %77 = ptrtoint ptr %wrp2 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %wrp2, align 4
  %poll_timeout.i.i111 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %78, i32 0, i32 23
  %79 = ptrtoint ptr %poll_timeout.i.i111 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %poll_timeout.i.i111, align 4
  %call2.i.i.i118 = tail call i32 @__msecs_to_jiffies(i32 noundef %80) #8
  %dev_timer.i.i121 = getelementptr inbounds %struct.musb, ptr %76, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %81 = load volatile i32, ptr @jiffies, align 128
  %add.i.i122 = add i32 %81, %call2.i.i.i118
  %call4.i.i123 = tail call i32 @mod_timer(ptr noundef %dev_timer.i.i121, i32 noundef %add.i.i122) #8
  br label %sw.epilog

sw.bb56:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %state15 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 7, ptr %state15, align 4
  %ctrl_base = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 26
  %83 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ctrl_base, align 4
  %coreintr_set = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %9, i32 0, i32 6
  %85 = ptrtoint ptr %coreintr_set to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %coreintr_set, align 4
  %conv60 = zext i16 %86 to i32
  %usb_shift = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %9, i32 0, i32 13
  %87 = ptrtoint ptr %usb_shift to i32
  call void @__asan_load2_noabort(i32 %87)
  %bf.load = load i16, ptr %usb_shift, align 2
  %bf.lshr = lshr i16 %bf.load, 6
  %bf.clear = and i16 %bf.lshr, 31
  %bf.cast = zext i16 %bf.clear to i32
  %shl = shl i32 128, %bf.cast
  tail call void @musb_writel(ptr noundef %84, i32 noundef %conv60, i32 noundef %shl) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb56, %if.end.i112, %if.end55.sw.epilog_crit_edge, %sw.bb29.sw.epilog_crit_edge, %if.end.i92, %if.then26.sw.epilog_crit_edge, %if.end.i, %if.then17.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_otg_state_string(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_interrupt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_regset32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @dsps_sw_babble_control(ptr nocapture noundef readonly %musb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %0 = load ptr, ptr @musb_readb, align 4
  %mregs = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 27
  %1 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mregs, align 8
  %call = tail call zeroext i8 %0(ptr noundef %2, i32 noundef 97) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dsps_sw_babble_control.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dsps_sw_babble_control, %if.then)) #8
          to label %do.body4 [label %if.then], !srcloc !186

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %controller = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %3 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %controller, align 8
  %conv = zext i8 %call to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dsps_sw_babble_control.__UNIQUE_ID_ddebug298, ptr noundef %4, ptr noundef nonnull @.str.47, i32 noundef %conv) #8
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dsps_sw_babble_control.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dsps_sw_babble_control, %if.then16)) #8
          to label %do.end22 [label %if.then16], !srcloc !186

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  %controller17 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %5 = ptrtoint ptr %controller17 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %controller17, align 8
  %7 = and i8 %call, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool19.not = icmp eq i8 %7, 0
  %cond = select i1 %tobool19.not, ptr @.str.50, ptr @.str.49
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dsps_sw_babble_control.__UNIQUE_ID_ddebug299, ptr noundef %6, ptr noundef nonnull @.str.48, ptr noundef nonnull %cond) #8
  br label %do.end22

do.end22:                                         ; preds = %if.then16, %do.body4
  %8 = and i8 %call, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool25.not = icmp eq i8 %8, 0
  br i1 %tobool25.not, label %do.end22.if.end81_crit_edge, label %if.then26

do.end22.if.end81_crit_edge:                      ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

if.then26:                                        ; preds = %do.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %9 = load ptr, ptr @musb_readb, align 4
  %10 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mregs, align 8
  %call28 = tail call zeroext i8 %9(ptr noundef %11, i32 noundef 97) #8
  %12 = or i8 %call28, -128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %13 = load ptr, ptr @musb_writeb, align 4
  %14 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mregs, align 8
  tail call void %13(ptr noundef %15, i32 noundef 97, i8 noundef zeroext %12) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dsps_sw_babble_control.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dsps_sw_babble_control, %if.then44)) #8
          to label %do.body49 [label %if.then44], !srcloc !186

if.then44:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %controller45 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %16 = ptrtoint ptr %controller45 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %controller45, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dsps_sw_babble_control.__UNIQUE_ID_ddebug300, ptr noundef %17, ptr noundef nonnull @.str.51) #8
  br label %do.body49

do.body49:                                        ; preds = %do.body49.do.body49_crit_edge, %if.then44, %if.then26
  %timeout.0 = phi i32 [ %dec, %do.body49.do.body49_crit_edge ], [ 10, %if.then26 ], [ 10, %if.then44 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %18 = load ptr, ptr @musb_readb, align 4
  %19 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mregs, align 8
  %call51 = tail call zeroext i8 %18(ptr noundef %20, i32 noundef 97) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #8
  %conv53 = zext i8 %call51 to i32
  %and54 = and i32 %conv53, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not110 = icmp eq i32 %and54, 0
  %dec = add nsw i32 %timeout.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0)
  %tobool56.not = icmp eq i32 %timeout.0, 0
  %or.cond = select i1 %tobool55.not110, i1 true, i1 %tobool56.not
  br i1 %or.cond, label %do.end57, label %do.body49.do.body49_crit_edge

do.body49.do.body49_crit_edge:                    ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body49

do.end57:                                         ; preds = %do.body49
  br i1 %tobool55.not110, label %do.end57.if.end81_crit_edge, label %do.body62

do.end57.if.end81_crit_edge:                      ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

do.body62:                                        ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dsps_sw_babble_control.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dsps_sw_babble_control, %if.then74)) #8
          to label %if.end81 [label %if.then74], !srcloc !186

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #10
  %controller75 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %22 = ptrtoint ptr %controller75 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %controller75, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dsps_sw_babble_control.__UNIQUE_ID_ddebug301, ptr noundef %23, ptr noundef nonnull @.str.52, i32 noundef %conv53) #8
  br label %if.end81

if.end81:                                         ; preds = %if.then74, %do.body62, %do.end57.if.end81_crit_edge, %do.end22.if.end81_crit_edge
  %session_restart.1.off0 = phi i1 [ true, %if.then74 ], [ false, %do.end57.if.end81_crit_edge ], [ true, %do.end22.if.end81_crit_edge ], [ true, %do.body62 ]
  ret i1 %session_restart.1.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_of_node_from_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_resources(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_get_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_maximum_speed(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsps_vbus_threaded_irq(i32 noundef %irq, ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %musb1 = getelementptr inbounds %struct.dsps_glue, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %musb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %musb1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dsps_vbus_threaded_irq.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dsps_vbus_threaded_irq, %if.then6)) #8
          to label %do.end [label %if.then6], !srcloc !186

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dsps_vbus_threaded_irq.__UNIQUE_ID_ddebug302, ptr noundef %5, ptr noundef nonnull @.str.80) #8
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %6 = ptrtoint ptr %musb1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %musb1, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %dev_timer.i = getelementptr inbounds %struct.musb, ptr %9, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %call4.i = tail call i32 @mod_timer(ptr noundef %dev_timer.i, i32 noundef %10) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsps_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %wrp1 = getelementptr inbounds %struct.dsps_glue, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %wrp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wrp1, align 4
  %musb2 = getelementptr inbounds %struct.dsps_glue, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %musb2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %musb2, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %usage_count.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !189
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then5.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !190
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev_timer = getelementptr inbounds %struct.musb, ptr %7, i32 0, i32 22
  %call7 = tail call i32 @del_timer_sync(ptr noundef %dev_timer) #8
  %ctrl_base = getelementptr inbounds %struct.musb, ptr %7, i32 0, i32 26
  %9 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctrl_base, align 4
  %control = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %control to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %control, align 2
  %conv = zext i16 %12 to i32
  %call8 = tail call i32 @musb_readl(ptr noundef %10, i32 noundef %conv) #8
  %context = getelementptr inbounds %struct.dsps_glue, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call8, ptr %context, align 4
  %epintr_set = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %epintr_set to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %epintr_set, align 2
  %conv10 = zext i16 %15 to i32
  %call11 = tail call i32 @musb_readl(ptr noundef %10, i32 noundef %conv10) #8
  %epintr = getelementptr inbounds %struct.dsps_glue, ptr %1, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %epintr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call11, ptr %epintr, align 4
  %coreintr_set = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %3, i32 0, i32 6
  %17 = ptrtoint ptr %coreintr_set to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %coreintr_set, align 4
  %conv13 = zext i16 %18 to i32
  %call14 = tail call i32 @musb_readl(ptr noundef %10, i32 noundef %conv13) #8
  %coreintr = getelementptr inbounds %struct.dsps_glue, ptr %1, i32 0, i32 7, i32 2
  %19 = ptrtoint ptr %coreintr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call14, ptr %coreintr, align 4
  %phy_utmi = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %3, i32 0, i32 9
  %20 = ptrtoint ptr %phy_utmi to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %phy_utmi, align 2
  %conv16 = zext i16 %21 to i32
  %call17 = tail call i32 @musb_readl(ptr noundef %10, i32 noundef %conv16) #8
  %phy_utmi19 = getelementptr inbounds %struct.dsps_glue, ptr %1, i32 0, i32 7, i32 3
  %22 = ptrtoint ptr %phy_utmi19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call17, ptr %phy_utmi19, align 4
  %mode = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %3, i32 0, i32 10
  %23 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %mode, align 4
  %conv20 = zext i16 %24 to i32
  %call21 = tail call i32 @musb_readl(ptr noundef %10, i32 noundef %conv20) #8
  %mode23 = getelementptr inbounds %struct.dsps_glue, ptr %1, i32 0, i32 7, i32 4
  %25 = ptrtoint ptr %mode23 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call21, ptr %mode23, align 4
  %tx_mode = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %3, i32 0, i32 11
  %26 = ptrtoint ptr %tx_mode to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %tx_mode, align 2
  %conv24 = zext i16 %27 to i32
  %call25 = tail call i32 @musb_readl(ptr noundef %10, i32 noundef %conv24) #8
  %tx_mode27 = getelementptr inbounds %struct.dsps_glue, ptr %1, i32 0, i32 7, i32 5
  %28 = ptrtoint ptr %tx_mode27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call25, ptr %tx_mode27, align 4
  %rx_mode = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %3, i32 0, i32 12
  %29 = ptrtoint ptr %rx_mode to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %rx_mode, align 4
  %conv28 = zext i16 %30 to i32
  %call29 = tail call i32 @musb_readl(ptr noundef %10, i32 noundef %conv28) #8
  %rx_mode31 = getelementptr inbounds %struct.dsps_glue, ptr %1, i32 0, i32 7, i32 6
  %31 = ptrtoint ptr %rx_mode31 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call29, ptr %rx_mode31, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end11.i.i.i.i, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.then5.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsps_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %wrp1 = getelementptr inbounds %struct.dsps_glue, ptr %1, i32 0, i32 2
  %musb2 = getelementptr inbounds %struct.dsps_glue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %musb2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %musb2, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %wrp1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wrp1, align 4
  %ctrl_base = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 26
  %8 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctrl_base, align 4
  %control = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %control to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %control, align 2
  %conv = zext i16 %11 to i32
  %context = getelementptr inbounds %struct.dsps_glue, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %context, align 4
  tail call void @musb_writel(ptr noundef %9, i32 noundef %conv, i32 noundef %13) #8
  %epintr_set = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %7, i32 0, i32 3
  %14 = ptrtoint ptr %epintr_set to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %epintr_set, align 2
  %conv5 = zext i16 %15 to i32
  %epintr = getelementptr inbounds %struct.dsps_glue, ptr %1, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %epintr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %epintr, align 4
  tail call void @musb_writel(ptr noundef %9, i32 noundef %conv5, i32 noundef %17) #8
  %coreintr_set = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %7, i32 0, i32 6
  %18 = ptrtoint ptr %coreintr_set to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %coreintr_set, align 4
  %conv7 = zext i16 %19 to i32
  %coreintr = getelementptr inbounds %struct.dsps_glue, ptr %1, i32 0, i32 7, i32 2
  %20 = ptrtoint ptr %coreintr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %coreintr, align 4
  tail call void @musb_writel(ptr noundef %9, i32 noundef %conv7, i32 noundef %21) #8
  %phy_utmi = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %7, i32 0, i32 9
  %22 = ptrtoint ptr %phy_utmi to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %phy_utmi, align 2
  %conv9 = zext i16 %23 to i32
  %phy_utmi11 = getelementptr inbounds %struct.dsps_glue, ptr %1, i32 0, i32 7, i32 3
  %24 = ptrtoint ptr %phy_utmi11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %phy_utmi11, align 4
  tail call void @musb_writel(ptr noundef %9, i32 noundef %conv9, i32 noundef %25) #8
  %mode = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %7, i32 0, i32 10
  %26 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %mode, align 4
  %conv12 = zext i16 %27 to i32
  %mode14 = getelementptr inbounds %struct.dsps_glue, ptr %1, i32 0, i32 7, i32 4
  %28 = ptrtoint ptr %mode14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mode14, align 4
  tail call void @musb_writel(ptr noundef %9, i32 noundef %conv12, i32 noundef %29) #8
  %tx_mode = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %7, i32 0, i32 11
  %30 = ptrtoint ptr %tx_mode to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %tx_mode, align 2
  %conv15 = zext i16 %31 to i32
  %tx_mode17 = getelementptr inbounds %struct.dsps_glue, ptr %1, i32 0, i32 7, i32 5
  %32 = ptrtoint ptr %tx_mode17 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_mode17, align 4
  tail call void @musb_writel(ptr noundef %9, i32 noundef %conv15, i32 noundef %33) #8
  %rx_mode = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %7, i32 0, i32 12
  %34 = ptrtoint ptr %rx_mode to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %rx_mode, align 4
  %conv18 = zext i16 %35 to i32
  %rx_mode20 = getelementptr inbounds %struct.dsps_glue, ptr %1, i32 0, i32 7, i32 6
  %36 = ptrtoint ptr %rx_mode20 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rx_mode20, align 4
  tail call void @musb_writel(ptr noundef %9, i32 noundef %conv18, i32 noundef %37) #8
  %xceiv = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 35
  %38 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %xceiv, align 8
  %otg = getelementptr inbounds %struct.usb_phy, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp = icmp eq i32 %43, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end25_crit_edge

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end
  %port_mode = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 45
  %44 = ptrtoint ptr %port_mode to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %port_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %45)
  %cmp22 = icmp eq i32 %45, 3
  br i1 %cmp22, label %if.then24, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %musb2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %musb2, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %47, i32 0, i32 3, i32 8
  %48 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %driver_data.i.i.i, align 4
  %50 = ptrtoint ptr %wrp1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %wrp1, align 4
  %poll_timeout.i = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %51, i32 0, i32 23
  %52 = ptrtoint ptr %poll_timeout.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %poll_timeout.i, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %53) #8
  %dev_timer.i = getelementptr inbounds %struct.musb, ptr %49, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %54 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %54, %call2.i.i
  %call4.i = tail call i32 @mod_timer(ptr noundef %dev_timer.i, i32 noundef %add.i) #8
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %land.lhs.true.if.end25_crit_edge, %if.end.if.end25_crit_edge
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !34, !36, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !67, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !116, !118, !119, !121, !122, !124, !126, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !141, !143, !145, !147, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !162, !164, !165, !166, !168, !169, !170, !172, !174}
!llvm.module.flags = !{!176, !177, !178, !179, !180, !181, !182, !183}
!llvm.ident = !{!184}

!0 = !{ptr @__UNIQUE_ID_description304, !1, !"__UNIQUE_ID_description304", i1 false, i1 false}
!1 = !{!"../drivers/usb/musb/musb_dsps.c", i32 1047, i32 1}
!2 = !{ptr @__UNIQUE_ID_author305, !3, !"__UNIQUE_ID_author305", i1 false, i1 false}
!3 = !{!"../drivers/usb/musb/musb_dsps.c", i32 1048, i32 1}
!4 = !{ptr @__UNIQUE_ID_author306, !5, !"__UNIQUE_ID_author306", i1 false, i1 false}
!5 = !{!"../drivers/usb/musb/musb_dsps.c", i32 1049, i32 1}
!6 = !{ptr @__UNIQUE_ID_file307, !7, !"__UNIQUE_ID_file307", i1 false, i1 false}
!7 = !{!"../drivers/usb/musb/musb_dsps.c", i32 1050, i32 1}
!8 = !{ptr @__UNIQUE_ID_license308, !7, !"__UNIQUE_ID_license308", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_musb_dsps__309_1052_dsps_usbss_driver_init6, !10, !"__initcall__kmod_musb_dsps__309_1052_dsps_usbss_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/usb/musb/musb_dsps.c", i32 1052, i32 1}
!11 = !{ptr @__exitcall_dsps_usbss_driver_exit, !10, !"__exitcall_dsps_usbss_driver_exit", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/musb/musb_dsps.c", i32 1041, i32 13}
!14 = !{ptr @dsps_usbss_driver, !15, !"dsps_usbss_driver", i1 false, i1 false}
!15 = !{!"../drivers/usb/musb/musb_dsps.c", i32 1037, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/musb/musb_dsps.c", i32 872, i32 26}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/musb/musb_dsps.c", i32 877, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @dsps_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @dsps_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/musb/musb_dsps.c", i32 882, i32 49}
!28 = !{ptr @dsps_ops, !29, !"dsps_ops", i1 false, i1 false}
!29 = !{!"../drivers/usb/musb/musb_dsps.c", i32 693, i32 33}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/musb/musb_dsps.c", i32 437, i32 59}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/musb/musb_dsps.c", i32 444, i32 57}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/musb/musb_dsps.c", i32 448, i32 40}
!36 = !{ptr @dsps_musb_init.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/usb/musb/musb_dsps.c", i32 468, i32 2}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/musb/musb_dsps.c", i32 289, i32 3}
!41 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @otg_timer._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @otg_timer._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/musb/musb_dsps.c", i32 298, i32 3}
!46 = !{ptr @otg_timer._entry.14, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @otg_timer._entry_ptr.16, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/musb/musb_dsps.c", i32 226, i32 2}
!50 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @dsps_check_status.__UNIQUE_ID_ddebug295, !49, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/musb/musb_dsps.c", i32 345, i32 2}
!55 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @dsps_interrupt.__UNIQUE_ID_ddebug296, !54, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/musb/musb_dsps.c", i32 370, i32 4}
!59 = !{ptr @dsps_interrupt._entry, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @dsps_interrupt._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/musb/musb_dsps.c", i32 382, i32 3}
!63 = !{ptr @dsps_interrupt.__UNIQUE_ID_ddebug297, !62, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!64 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/musb/musb_dsps.c", i32 414, i32 15}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/musb/musb_dsps.c", i32 422, i32 26}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/musb/musb_dsps.c", i32 118, i32 4}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/musb/musb_dsps.c", i32 120, i32 4}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/musb/musb_dsps.c", i32 121, i32 4}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/musb/musb_dsps.c", i32 122, i32 4}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/musb/musb_dsps.c", i32 123, i32 4}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/musb/musb_dsps.c", i32 124, i32 4}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/musb/musb_dsps.c", i32 125, i32 4}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/musb/musb_dsps.c", i32 126, i32 4}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/musb/musb_dsps.c", i32 127, i32 4}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/musb/musb_dsps.c", i32 128, i32 4}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/musb/musb_dsps.c", i32 129, i32 4}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/musb/musb_dsps.c", i32 130, i32 4}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/musb/musb_dsps.c", i32 131, i32 4}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/musb/musb_dsps.c", i32 132, i32 4}
!100 = !{ptr @dsps_musb_regs, !101, !"dsps_musb_regs", i1 false, i1 false}
!101 = !{!"../drivers/usb/musb/musb_dsps.c", i32 117, i32 35}
!102 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/musb/musb_dsps.c", i32 551, i32 3}
!104 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @dsps_musb_set_mode._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @dsps_musb_set_mode._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/usb/musb/musb_dsps.c", i32 564, i32 2}
!109 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @dsps_sw_babble_control.__UNIQUE_ID_ddebug298, !108, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!111 = !{ptr @.str.48, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/usb/musb/musb_dsps.c", i32 570, i32 2}
!113 = !{ptr @dsps_sw_babble_control.__UNIQUE_ID_ddebug299, !112, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!114 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.51, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/musb/musb_dsps.c", i32 585, i32 3}
!118 = !{ptr @dsps_sw_babble_control.__UNIQUE_ID_ddebug300, !117, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!119 = !{ptr @.str.52, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/usb/musb/musb_dsps.c", i32 598, i32 4}
!121 = !{ptr @dsps_sw_babble_control.__UNIQUE_ID_ddebug301, !120, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!122 = !{ptr @.str.53, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/usb/musb/musb_dsps.c", i32 736, i32 61}
!124 = !{ptr @.str.54, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/usb/musb/musb_dsps.c", i32 738, i32 3}
!126 = !{ptr @.str.55, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @dsps_create_musb_pdev._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @dsps_create_musb_pdev._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.57, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/musb/musb_dsps.c", i32 756, i32 3}
!131 = !{ptr @dsps_create_musb_pdev._entry.56, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @dsps_create_musb_pdev._entry_ptr.58, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/usb/musb/musb_dsps.c", i32 770, i32 3}
!135 = !{ptr @dsps_create_musb_pdev._entry.59, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @dsps_create_musb_pdev._entry_ptr.61, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.62, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/musb/musb_dsps.c", i32 782, i32 37}
!139 = !{ptr @.str.63, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/usb/musb/musb_dsps.c", i32 783, i32 38}
!141 = !{ptr @.str.64, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/usb/musb/musb_dsps.c", i32 787, i32 33}
!143 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/usb/musb/musb_dsps.c", i32 789, i32 33}
!145 = !{ptr @.str.67, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/usb/musb/musb_dsps.c", i32 799, i32 3}
!147 = !{ptr @.str.68, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @dsps_create_musb_pdev._entry.66, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @dsps_create_musb_pdev._entry_ptr.69, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.71, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/usb/musb/musb_dsps.c", i32 808, i32 3}
!152 = !{ptr @dsps_create_musb_pdev._entry.70, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @dsps_create_musb_pdev._entry_ptr.72, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.74, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/usb/musb/musb_dsps.c", i32 814, i32 3}
!156 = !{ptr @dsps_create_musb_pdev._entry.73, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @dsps_create_musb_pdev._entry_ptr.75, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @musb_dmamask, !159, !"musb_dmamask", i1 false, i1 false}
!159 = !{!"../drivers/usb/musb/musb_dsps.c", i32 710, i32 12}
!160 = !{ptr @.str.76, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/usb/musb/musb_dsps.c", i32 843, i32 49}
!162 = !{ptr @.str.77, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/usb/musb/musb_dsps.c", i32 860, i32 2}
!164 = !{ptr @.str.78, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @dsps_setup_optional_vbus_irq.__UNIQUE_ID_ddebug303, !163, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!166 = !{ptr @.str.79, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/usb/musb/musb_dsps.c", i32 832, i32 2}
!168 = !{ptr @.str.80, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @dsps_vbus_threaded_irq.__UNIQUE_ID_ddebug302, !167, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!170 = !{ptr @musb_dsps_of_match, !171, !"musb_dsps_of_match", i1 false, i1 false}
!171 = !{!"../drivers/usb/musb/musb_dsps.c", i32 961, i32 34}
!172 = !{ptr @am33xx_driver_data, !173, !"am33xx_driver_data", i1 false, i1 false}
!173 = !{!"../drivers/usb/musb/musb_dsps.c", i32 930, i32 39}
!174 = !{ptr @dsps_pm_ops, !175, !"dsps_pm_ops", i1 false, i1 false}
!175 = !{!"../drivers/usb/musb/musb_dsps.c", i32 1035, i32 8}
!176 = !{i32 1, !"wchar_size", i32 2}
!177 = !{i32 1, !"min_enum_size", i32 4}
!178 = !{i32 8, !"branch-target-enforcement", i32 0}
!179 = !{i32 8, !"sign-return-address", i32 0}
!180 = !{i32 8, !"sign-return-address-all", i32 0}
!181 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!182 = !{i32 7, !"uwtable", i32 1}
!183 = !{i32 7, !"frame-pointer", i32 2}
!184 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!185 = !{!"auto-init"}
!186 = !{i64 2148177001, i64 2148177006, i64 2148177019, i64 2148177063, i64 2148177097, i64 2148177118}
!187 = !{i8 0, i8 2}
!188 = !{i64 2148445341}
!189 = !{i64 931941, i64 931966, i64 931988, i64 932004, i64 932016, i64 932036, i64 932060, i64 932076, i64 932088}
!190 = !{i64 2148445529}
