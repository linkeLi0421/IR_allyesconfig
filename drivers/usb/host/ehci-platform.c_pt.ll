; ModuleID = '/llk/IR_all_yes/drivers/usb/host/ehci-platform.c_pt.bc'
source_filename = "../drivers/usb/host/ehci-platform.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ehci_driver_overrides = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.usb_ehci_pdata = type { i32, i8, ptr, ptr, ptr, ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
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
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.84, i32 }
%union.anon.84 = type { ptr }
%struct.ehci_regs = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, [6 x i32], i32, %union.anon.85, %union.anon.87, [2 x i32], i32 }
%union.anon.85 = type { [15 x i32] }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, [15 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ehci_platform_priv = type { [4 x ptr], ptr, i8, i8, %struct.timer_list, %struct.delayed_work }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_ehci_platform__296_535_ehci_platform_init6 = internal global ptr @ehci_platform_init, section ".initcall6.init", align 4
@ehci_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ehci_platform_probe, ptr @ehci_platform_remove, ptr @usb_hcd_platform_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.4, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @vt8500_ehci_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ehci_platform_pm_ops, ptr null, ptr null }, ptr @ehci_platform_table, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ehci_platform_cleanup = internal global ptr @ehci_platform_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_description297 = internal constant [55 x i8] c"ehci_platform.description=EHCI generic platform driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author298 = internal constant [36 x i8] c"ehci_platform.author=Hauke Mehrtens\00", section ".modinfo", align 1
@__UNIQUE_ID_author299 = internal constant [32 x i8] c"ehci_platform.author=Alan Stern\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [50 x i8] c"ehci_platform.file=drivers/usb/host/ehci-platform\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [26 x i8] c"ehci_platform.license=GPL\00", section ".modinfo", align 1
@ehci_platform_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 530, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s: EHCI generic platform driver\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ehci_platform_init\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/usb/host/ehci-platform.c\00", [63 x i8] zeroinitializer }, align 32
@ehci_platform_init._entry_ptr = internal global ptr @ehci_platform_init._entry, section ".printk_index", align 4
@hcd_name = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ehci-platform\00", [18 x i8] zeroinitializer }, align 32
@ehci_platform_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 4
@platform_overrides = internal constant %struct.ehci_driver_overrides { i32 172, ptr @ehci_platform_reset, ptr null }, section ".init.rodata", align 4
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"brcm,xgs-iproc-ehci\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ehci-platform\00", [18 x i8] zeroinitializer }, align 32
@vt8500_ehci_ids = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"via,vt8500-ehci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wm,prizm-ehci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"generic-ehci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cavium,octeon-6335-ehci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@ehci_platform_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ehci_platform_suspend, ptr @ehci_platform_resume, ptr @ehci_platform_suspend, ptr @ehci_platform_resume, ptr @ehci_platform_suspend, ptr @ehci_platform_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ehci_platform_table = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"ehci-platform\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ehci_platform_defaults = internal global { %struct.usb_ehci_pdata, [40 x i8] } { %struct.usb_ehci_pdata { i32 0, i8 0, ptr @ehci_platform_power_on, ptr @ehci_platform_power_off, ptr @ehci_platform_power_off, ptr null }, [40 x i8] zeroinitializer }, align 32
@ehci_platform_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 261, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Error: DMA mask configuration failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ehci_platform_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ehci_platform_probe._entry_ptr = internal global ptr @ehci_platform_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"big-endian-regs\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"big-endian-desc\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"big-endian\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spurious-oc\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"needs-reset-on-resume\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"has-transaction-translator\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"aspeed,ast2500-ehci\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"aspeed,ast2600-ehci\00", [44 x i8] zeroinitializer }, align 32
@quirk_poll_match = internal constant { [2 x %struct.soc_device_attribute], [40 x i8] } { [2 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr @.str.23, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], [40 x i8] zeroinitializer }, align 32
@ehci_platform_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.6, ptr @.str.2, i32 345, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Error: CONFIG_USB_EHCI_BIG_ENDIAN_MMIO not set\0A\00", [48 x i8] zeroinitializer }, align 32
@ehci_platform_probe._entry_ptr.19 = internal global ptr @ehci_platform_probe._entry.17, section ".printk_index", align 4
@ehci_platform_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.6, ptr @.str.2, i32 353, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Error: CONFIG_USB_EHCI_BIG_ENDIAN_DESC not set\0A\00", [48 x i8] zeroinitializer }, align 32
@ehci_platform_probe._entry_ptr.22 = internal global ptr @ehci_platform_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"R-Car Gen3\00", [21 x i8] zeroinitializer }, align 32
@quirk_poll_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&(&priv->poll_work)->work)\00", [51 x i8] zeroinitializer }, align 32
@quirk_poll_init.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&priv->poll_work)->timer\00", [37 x i8] zeroinitializer }, align 32
@quirk_poll_init.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"(&priv->poll_timer)\00", [44 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@quirk_poll_work.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 0, i8 49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ehci_platform\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"quirk_poll_work\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: detected getting stuck. rebind now!\0A\00", [55 x i8] zeroinitializer }, align 32
@quirk_poll_rebind_companion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 178, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: failed\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"quirk_poll_rebind_companion\00", [36 x i8] zeroinitializer }, align 32
@quirk_poll_rebind_companion._entry_ptr = internal global ptr @quirk_poll_rebind_companion._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.34 = private unnamed_addr constant [21 x i8] c"ehci_platform_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 512, i32 31 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 530, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [9 x i8] c"hcd_name\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 57, i32 19 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 82, i32 49 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 518, i32 11 }
@___asan_gen_.58 = private unnamed_addr constant [16 x i8] c"vt8500_ehci_ids\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 486, i32 34 }
@___asan_gen_.61 = private unnamed_addr constant [21 x i8] c"ehci_platform_pm_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 509, i32 8 }
@___asan_gen_.64 = private unnamed_addr constant [20 x i8] c"ehci_platform_table\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 503, i32 40 }
@___asan_gen_.67 = private unnamed_addr constant [23 x i8] c"ehci_platform_defaults\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 128, i32 30 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 261, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 280, i32 47 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 283, i32 47 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 286, i32 47 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 289, i32 47 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 293, i32 8 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 297, i32 8 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 301, i32 10 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 303, i32 10 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"quirk_poll_match\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 234, i32 42 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 344, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 352, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 235, i32 14 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 223, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 224, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 198, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.161 = private constant [36 x i8] c"../drivers/usb/host/ehci-platform.c\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 178, i32 3 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__exitcall_ehci_platform_cleanup, ptr @__initcall__kmod_ehci_platform__296_535_ehci_platform_init6, ptr @ehci_platform_cleanup, ptr @ehci_platform_init._entry, ptr @ehci_platform_init._entry_ptr, ptr @ehci_platform_probe._entry, ptr @ehci_platform_probe._entry.17, ptr @ehci_platform_probe._entry.20, ptr @ehci_platform_probe._entry_ptr, ptr @ehci_platform_probe._entry_ptr.19, ptr @ehci_platform_probe._entry_ptr.22, ptr @quirk_poll_rebind_companion._entry, ptr @quirk_poll_rebind_companion._entry_ptr, ptr @ehci_platform_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @hcd_name, ptr @.str.3, ptr @.str.4, ptr @vt8500_ehci_ids, ptr @ehci_platform_pm_ops, ptr @ehci_platform_table, ptr @ehci_platform_defaults, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @quirk_poll_match, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @quirk_poll_init.__key, ptr @.str.24, ptr @quirk_poll_init.__key.25, ptr @.str.26, ptr @quirk_poll_init.__key.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_platform_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hcd_name to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500_ehci_ids to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_platform_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_platform_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_platform_defaults to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_platform_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @quirk_poll_match to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_platform_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_platform_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @quirk_poll_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @quirk_poll_init.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @quirk_poll_init.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @quirk_poll_rebind_companion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ehci_platform_init() #0 section ".init.text" align 64 {
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
  tail call void @ehci_init_driver(ptr noundef nonnull @ehci_platform_hc_driver, ptr noundef nonnull @platform_overrides) #5
  %call2 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ehci_platform_driver, ptr noundef null) #5
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ehci_platform_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @ehci_platform_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ehci_init_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ehci_platform_reset(ptr noundef %hcd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 8
  %platform_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %has_synopsys_hc_bug = getelementptr inbounds %struct.usb_ehci_pdata, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %has_synopsys_hc_bug to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %has_synopsys_hc_bug, align 4
  %bf.lshr = lshr i8 %bf.load, 6
  %has_synopsys_hc_bug3 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 21, i32 1, i32 0, i32 0, i32 4, i32 1, i32 1
  %5 = ptrtoint ptr %has_synopsys_hc_bug3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load4 = load i32, ptr %has_synopsys_hc_bug3, align 4
  %6 = and i8 %bf.lshr, 1
  %bf.value = zext i8 %6 to i32
  %bf.shl = shl nuw nsw i32 %bf.value, 20
  %bf.clear5 = and i32 %bf.load4, -1048577
  %bf.set = or i32 %bf.shl, %bf.clear5
  store i32 %bf.set, ptr %has_synopsys_hc_bug3, align 4
  %pre_setup = getelementptr inbounds %struct.usb_ehci_pdata, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %pre_setup to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pre_setup, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then:                                          ; preds = %entry
  %call7 = tail call i32 %8(ptr noundef %hcd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.then.if.end9_crit_edge, %entry.if.end9_crit_edge
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 16
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %3, align 4
  %add.ptr10 = getelementptr i8, ptr %10, i32 %12
  %caps = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 18
  %13 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr10, ptr %caps, align 4
  %call11 = tail call i32 @ehci_setup(ptr noundef %hcd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %14 = ptrtoint ptr %has_synopsys_hc_bug to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load15 = load i8, ptr %has_synopsys_hc_bug, align 4
  %15 = and i8 %bf.load15, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool19.not = icmp eq i8 %15, 0
  br i1 %tobool19.not, label %if.end14.if.end24_crit_edge, label %if.then20

if.end14.if.end24_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %has_synopsys_hc_bug3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load21 = load i32, ptr %has_synopsys_hc_bug3, align 4
  %bf.clear22 = and i32 %bf.load21, -8388609
  store i32 %bf.clear22, ptr %has_synopsys_hc_bug3, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.end14.if.end24_crit_edge
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %call26 = tail call i32 @of_device_is_compatible(ptr noundef %18, ptr noundef nonnull @.str.3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end24.cleanup_crit_edge, label %if.then28

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then28:                                        ; preds = %if.end24
  %19 = ptrtoint ptr %has_synopsys_hc_bug3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load.i = load i32, ptr %has_synopsys_hc_bug3, align 4
  %20 = and i32 %bf.load.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.then28.cleanup_crit_edge

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body.i:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  %regs29 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 1
  %21 = ptrtoint ptr %regs29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs29, align 8
  %hostpc = getelementptr inbounds %struct.ehci_regs, ptr %22, i32 0, i32 12, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %hostpc, i32 1073774592) #5, !srcloc !102
  br label %cleanup

cleanup:                                          ; preds = %do.body.i, %if.then28.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then.cleanup_crit_edge ], [ %call11, %if.end9.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ], [ 0, %if.then28.cleanup_crit_edge ], [ 0, %do.body.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ehci_platform_probe(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call2 = tail call i32 @usb_disabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq ptr %1, null
  %spec.store.select = select i1 %tobool3.not, ptr @ehci_platform_defaults, ptr %1
  %dma_mask_64 = getelementptr inbounds %struct.usb_ehci_pdata, ptr %spec.store.select, i32 0, i32 1
  %2 = ptrtoint ptr %dma_mask_64 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %dma_mask_64, align 4
  %3 = and i8 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool7.not = icmp eq i8 %3, 0
  %cond = select i1 %tobool7.not, i64 4294967295, i64 -1
  %coherent_dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 19
  %dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 18
  %4 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %coherent_dma_mask.i, ptr %dma_mask.i, align 8
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef %cond) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end12, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5) #8
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef %cond) #5
  %call13 = tail call i32 @platform_get_irq(ptr noundef %dev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %if.end12.cleanup_crit_edge, label %if.end15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end15.dev_name.exit_crit_edge

if.end15.dev_name.exit_crit_edge:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end15.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %8, %if.end.i ], [ %6, %if.end15.dev_name.exit_crit_edge ]
  %call19 = tail call ptr @usb_create_hcd(ptr noundef nonnull @ehci_platform_hc_driver, ptr noundef %dev1, ptr noundef %retval.0.i) #5
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %dev_name.exit.cleanup_crit_edge, label %if.end22

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end22:                                         ; preds = %dev_name.exit
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call19, ptr %driver_data.i.i, align 4
  %10 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %spec.store.select, ptr %platform_data.i, align 8
  %priv25 = getelementptr inbounds %struct.usb_hcd, ptr %call19, i32 2, i32 0, i32 9, i32 3
  %cmp27 = icmp eq ptr %spec.store.select, @ehci_platform_defaults
  br i1 %cmp27, label %land.lhs.true, label %if.end22.if.end114_crit_edge

if.end22.if.end114_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end114

land.lhs.true:                                    ; preds = %if.end22
  %of_node = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 27
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %tobool29.not = icmp eq ptr %12, null
  br i1 %tobool29.not, label %land.lhs.true.if.end114_crit_edge, label %if.then30

land.lhs.true.if.end114_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end114

if.then30:                                        ; preds = %land.lhs.true
  %call.i = tail call ptr @of_find_property(ptr noundef nonnull %12, ptr noundef nonnull @.str.9, ptr noundef null) #5
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %if.then30.if.end37_crit_edge, label %if.then34

if.then30.if.end37_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then34:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  %big_endian_mmio = getelementptr inbounds %struct.usb_hcd, ptr %call19, i32 1, i32 21, i32 1, i32 0, i32 0, i32 4, i32 1, i32 1
  %13 = ptrtoint ptr %big_endian_mmio to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load35 = load i32, ptr %big_endian_mmio, align 4
  %bf.set = or i32 %bf.load35, 134217728
  store i32 %bf.set, ptr %big_endian_mmio, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.then30.if.end37_crit_edge
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %call.i355 = tail call ptr @of_find_property(ptr noundef %15, ptr noundef nonnull @.str.10, ptr noundef null) #5
  %tobool.i356.not = icmp eq ptr %call.i355, null
  br i1 %tobool.i356.not, label %if.end37.if.end45_crit_edge, label %if.then41

if.end37.if.end45_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  %big_endian_desc = getelementptr inbounds %struct.usb_hcd, ptr %call19, i32 1, i32 21, i32 1, i32 0, i32 0, i32 4, i32 1, i32 1
  %16 = ptrtoint ptr %big_endian_desc to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load42 = load i32, ptr %big_endian_desc, align 4
  %bf.set44 = or i32 %bf.load42, 67108864
  store i32 %bf.set44, ptr %big_endian_desc, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %if.end37.if.end45_crit_edge
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %call.i357 = tail call ptr @of_find_property(ptr noundef %18, ptr noundef nonnull @.str.11, ptr noundef null) #5
  %tobool.i358.not = icmp eq ptr %call.i357, null
  br i1 %tobool.i358.not, label %if.end45.if.end58_crit_edge, label %if.then49

if.end45.if.end58_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  %big_endian_desc50 = getelementptr inbounds %struct.usb_hcd, ptr %call19, i32 1, i32 21, i32 1, i32 0, i32 0, i32 4, i32 1, i32 1
  %19 = ptrtoint ptr %big_endian_desc50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load51 = load i32, ptr %big_endian_desc50, align 4
  %bf.set57 = or i32 %bf.load51, 201326592
  store i32 %bf.set57, ptr %big_endian_desc50, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then49, %if.end45.if.end58_crit_edge
  %20 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node, align 8
  %call.i359 = tail call ptr @of_find_property(ptr noundef %21, ptr noundef nonnull @.str.12, ptr noundef null) #5
  %tobool.i360.not = icmp eq ptr %call.i359, null
  br i1 %tobool.i360.not, label %if.end58.if.end66_crit_edge, label %if.then62

if.end58.if.end66_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  %spurious_oc = getelementptr inbounds %struct.usb_hcd, ptr %call19, i32 1, i32 21, i32 1, i32 0, i32 0, i32 4, i32 1, i32 1
  %22 = ptrtoint ptr %spurious_oc to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load63 = load i32, ptr %spurious_oc, align 4
  %bf.set65 = or i32 %bf.load63, 65536
  store i32 %bf.set65, ptr %spurious_oc, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then62, %if.end58.if.end66_crit_edge
  %23 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node, align 8
  %call.i361 = tail call ptr @of_find_property(ptr noundef %24, ptr noundef nonnull @.str.13, ptr noundef null) #5
  %tobool.i362.not = icmp eq ptr %call.i361, null
  br i1 %tobool.i362.not, label %if.end66.if.end71_crit_edge, label %if.then70

if.end66.if.end71_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71

if.then70:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  %reset_on_resume = getelementptr inbounds %struct.usb_hcd, ptr %call19, i32 2, i32 0, i32 9, i32 5, i32 1, i32 1
  %25 = ptrtoint ptr %reset_on_resume to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %reset_on_resume, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %if.end66.if.end71_crit_edge
  %26 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %of_node, align 8
  %call.i363 = tail call ptr @of_find_property(ptr noundef %27, ptr noundef nonnull @.str.14, ptr noundef null) #5
  %tobool.i364.not = icmp eq ptr %call.i363, null
  br i1 %tobool.i364.not, label %if.end71.if.end79_crit_edge, label %if.then75

if.end71.if.end79_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end79

if.then75:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  %has_tt = getelementptr inbounds %struct.usb_hcd, ptr %call19, i32 0, i32 14
  %28 = ptrtoint ptr %has_tt to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load76 = load i16, ptr %has_tt, align 4
  %bf.set78 = or i16 %bf.load76, 256
  store i16 %bf.set78, ptr %has_tt, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then75, %if.end71.if.end79_crit_edge
  %29 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %of_node, align 8
  %call82 = tail call i32 @of_device_is_compatible(ptr noundef %30, ptr noundef nonnull @.str.15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %lor.lhs.false, label %if.end79.if.then88_crit_edge

if.end79.if.then88_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then88

lor.lhs.false:                                    ; preds = %if.end79
  %31 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %of_node, align 8
  %call86 = tail call i32 @of_device_is_compatible(ptr noundef %32, ptr noundef nonnull @.str.16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %lor.lhs.false.if.end92_crit_edge, label %lor.lhs.false.if.then88_crit_edge

lor.lhs.false.if.then88_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then88

lor.lhs.false.if.end92_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end92

if.then88:                                        ; preds = %lor.lhs.false.if.then88_crit_edge, %if.end79.if.then88_crit_edge
  %is_aspeed = getelementptr inbounds %struct.usb_hcd, ptr %call19, i32 1, i32 21, i32 1, i32 0, i32 0, i32 4, i32 1, i32 1
  %33 = ptrtoint ptr %is_aspeed to i32
  call void @__asan_load4_noabort(i32 %33)
  %bf.load89 = load i32, ptr %is_aspeed, align 4
  %bf.set91 = or i32 %bf.load89, 32768
  store i32 %bf.set91, ptr %is_aspeed, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.then88, %lor.lhs.false.if.end92_crit_edge
  %call93 = tail call ptr @soc_device_match(ptr noundef nonnull @quirk_poll_match) #5
  %tobool94.not = icmp eq ptr %call93, null
  br i1 %tobool94.not, label %if.end92.if.end96_crit_edge, label %if.then95

if.end92.if.end96_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end96

if.then95:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #7
  %quirk_poll = getelementptr inbounds %struct.ehci_platform_priv, ptr %priv25, i32 0, i32 3
  %34 = ptrtoint ptr %quirk_poll to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %quirk_poll, align 1
  br label %if.end96

if.end96:                                         ; preds = %if.then95, %if.end92.if.end96_crit_edge
  %35 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %of_node, align 8
  %call100 = tail call ptr @of_clk_get(ptr noundef %36, i32 noundef 0) #5
  %37 = ptrtoint ptr %priv25 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call100, ptr %priv25, align 4
  %cmp.i = icmp ugt ptr %call100, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end96.if.then104_crit_edge, label %for.inc

if.end96.if.then104_crit_edge:                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then104

if.then104:                                       ; preds = %for.inc.2.if.then104_crit_edge, %for.inc.1.if.then104_crit_edge, %for.inc.if.then104_crit_edge, %if.end96.if.then104_crit_edge
  %clk.0372.lcssa = phi i32 [ 0, %if.end96.if.then104_crit_edge ], [ 1, %for.inc.if.then104_crit_edge ], [ 2, %for.inc.1.if.then104_crit_edge ], [ 3, %for.inc.2.if.then104_crit_edge ]
  %call100.lcssa = phi ptr [ %call100, %if.end96.if.then104_crit_edge ], [ %call100.1, %for.inc.if.then104_crit_edge ], [ %call100.2, %for.inc.1.if.then104_crit_edge ], [ %call100.3, %for.inc.2.if.then104_crit_edge ]
  %cmp108 = icmp eq ptr %call100.lcssa, inttoptr (i32 -517 to ptr)
  br i1 %cmp108, label %if.then104.err_put_clks_crit_edge, label %if.end110

if.then104.err_put_clks_crit_edge:                ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_put_clks

if.end110:                                        ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.le = getelementptr [4 x ptr], ptr %priv25, i32 0, i32 %clk.0372.lcssa
  %38 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %arrayidx.le, align 4
  br label %if.end114

for.inc:                                          ; preds = %if.end96
  %39 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %of_node, align 8
  %call100.1 = tail call ptr @of_clk_get(ptr noundef %40, i32 noundef 1) #5
  %arrayidx.1 = getelementptr %struct.usb_hcd, ptr %call19, i32 2, i32 0, i32 9, i32 3, i32 1
  %41 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call100.1, ptr %arrayidx.1, align 4
  %cmp.i.1 = icmp ugt ptr %call100.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %for.inc.if.then104_crit_edge, label %for.inc.1

for.inc.if.then104_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then104

for.inc.1:                                        ; preds = %for.inc
  %42 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %of_node, align 8
  %call100.2 = tail call ptr @of_clk_get(ptr noundef %43, i32 noundef 2) #5
  %arrayidx.2 = getelementptr %struct.usb_hcd, ptr %call19, i32 2, i32 0, i32 9, i32 4
  %44 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call100.2, ptr %arrayidx.2, align 4
  %cmp.i.2 = icmp ugt ptr %call100.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2, label %for.inc.1.if.then104_crit_edge, label %for.inc.2

for.inc.1.if.then104_crit_edge:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then104

for.inc.2:                                        ; preds = %for.inc.1
  %45 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %of_node, align 8
  %call100.3 = tail call ptr @of_clk_get(ptr noundef %46, i32 noundef 3) #5
  %arrayidx.3 = getelementptr %struct.usb_hcd, ptr %call19, i32 2, i32 0, i32 9, i32 5
  %47 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call100.3, ptr %arrayidx.3, align 4
  %cmp.i.3 = icmp ugt ptr %call100.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3, label %for.inc.2.if.then104_crit_edge, label %for.inc.2.if.end114_crit_edge

for.inc.2.if.end114_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end114

for.inc.2.if.then104_crit_edge:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then104

if.end114:                                        ; preds = %for.inc.2.if.end114_crit_edge, %if.end110, %land.lhs.true.if.end114_crit_edge, %if.end22.if.end114_crit_edge
  %clk.1 = phi i32 [ %clk.0372.lcssa, %if.end110 ], [ 0, %land.lhs.true.if.end114_crit_edge ], [ 0, %if.end22.if.end114_crit_edge ], [ 4, %for.inc.2.if.end114_crit_edge ]
  %call.i365 = tail call ptr @devm_reset_control_array_get(ptr noundef %dev1, i1 noundef zeroext true, i1 noundef zeroext true) #5
  %rsts = getelementptr inbounds %struct.usb_hcd, ptr %call19, i32 2, i32 0, i32 9, i32 5, i32 1
  %48 = ptrtoint ptr %rsts to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i365, ptr %rsts, align 4
  %cmp.i366 = icmp ugt ptr %call.i365, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i366, label %if.then119, label %if.end122

if.then119:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %call.i365 to i32
  br label %err_put_clks

if.end122:                                        ; preds = %if.end114
  %call124 = tail call i32 @reset_control_deassert(ptr noundef %call.i365) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end127, label %if.end122.err_put_clks_crit_edge

if.end122.err_put_clks_crit_edge:                 ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_put_clks

if.end127:                                        ; preds = %if.end122
  %50 = ptrtoint ptr %dma_mask_64 to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load129 = load i8, ptr %dma_mask_64, align 4
  %51 = and i8 %bf.load129, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool133.not = icmp eq i8 %51, 0
  br i1 %tobool133.not, label %if.end127.if.end139_crit_edge, label %if.then134

if.end127.if.end139_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end139

if.then134:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #7
  %big_endian_desc135 = getelementptr inbounds %struct.usb_hcd, ptr %call19, i32 1, i32 21, i32 1, i32 0, i32 0, i32 4, i32 1, i32 1
  %52 = ptrtoint ptr %big_endian_desc135 to i32
  call void @__asan_load4_noabort(i32 %52)
  %bf.load136 = load i32, ptr %big_endian_desc135, align 4
  %bf.set138 = or i32 %bf.load136, 67108864
  store i32 %bf.set138, ptr %big_endian_desc135, align 4
  br label %if.end139

if.end139:                                        ; preds = %if.then134, %if.end127.if.end139_crit_edge
  %53 = ptrtoint ptr %dma_mask_64 to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load141 = load i8, ptr %dma_mask_64, align 4
  %54 = and i8 %bf.load141, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool145.not = icmp eq i8 %54, 0
  br i1 %tobool145.not, label %if.end139.if.end151_crit_edge, label %if.then146

if.end139.if.end151_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end151

if.then146:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #7
  %big_endian_mmio147 = getelementptr inbounds %struct.usb_hcd, ptr %call19, i32 1, i32 21, i32 1, i32 0, i32 0, i32 4, i32 1, i32 1
  %55 = ptrtoint ptr %big_endian_mmio147 to i32
  call void @__asan_load4_noabort(i32 %55)
  %bf.load148 = load i32, ptr %big_endian_mmio147, align 4
  %bf.set150 = or i32 %bf.load148, 134217728
  store i32 %bf.set150, ptr %big_endian_mmio147, align 4
  %56 = ptrtoint ptr %dma_mask_64 to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load153.pr = load i8, ptr %dma_mask_64, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.then146, %if.end139.if.end151_crit_edge
  %bf.load153 = phi i8 [ %bf.load153.pr, %if.then146 ], [ %bf.load141, %if.end139.if.end151_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load153)
  %tobool156.not = icmp sgt i8 %bf.load153, -1
  br i1 %tobool156.not, label %if.end151.if.end162_crit_edge, label %if.then157

if.end151.if.end162_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end162

if.then157:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #7
  %has_tt158 = getelementptr inbounds %struct.usb_hcd, ptr %call19, i32 0, i32 14
  %57 = ptrtoint ptr %has_tt158 to i32
  call void @__asan_load2_noabort(i32 %57)
  %bf.load159 = load i16, ptr %has_tt158, align 4
  %bf.set161 = or i16 %bf.load159, 256
  store i16 %bf.set161, ptr %has_tt158, align 4
  br label %if.end162

if.end162:                                        ; preds = %if.then157, %if.end151.if.end162_crit_edge
  %58 = ptrtoint ptr %dma_mask_64 to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load164 = load i8, ptr %dma_mask_64, align 4
  %59 = and i8 %bf.load164, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool168.not = icmp eq i8 %59, 0
  br i1 %tobool168.not, label %if.end162.if.end171_crit_edge, label %if.then169

if.end162.if.end171_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end171

if.then169:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #7
  %reset_on_resume170 = getelementptr inbounds %struct.usb_hcd, ptr %call19, i32 2, i32 0, i32 9, i32 5, i32 1, i32 1
  %60 = ptrtoint ptr %reset_on_resume170 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %reset_on_resume170, align 4
  br label %if.end171

if.end171:                                        ; preds = %if.then169, %if.end162.if.end171_crit_edge
  %61 = ptrtoint ptr %dma_mask_64 to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load173 = load i8, ptr %dma_mask_64, align 4
  %bf.clear174 = and i8 %bf.load173, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear174)
  %tobool176.not = icmp eq i8 %bf.clear174, 0
  br i1 %tobool176.not, label %if.end171.if.end182_crit_edge, label %if.then177

if.end171.if.end182_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end182

if.then177:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #7
  %spurious_oc178 = getelementptr inbounds %struct.usb_hcd, ptr %call19, i32 1, i32 21, i32 1, i32 0, i32 0, i32 4, i32 1, i32 1
  %62 = ptrtoint ptr %spurious_oc178 to i32
  call void @__asan_load4_noabort(i32 %62)
  %bf.load179 = load i32, ptr %spurious_oc178, align 4
  %bf.set181 = or i32 %bf.load179, 65536
  store i32 %bf.set181, ptr %spurious_oc178, align 4
  br label %if.end182

if.end182:                                        ; preds = %if.then177, %if.end171.if.end182_crit_edge
  %big_endian_mmio183 = getelementptr inbounds %struct.usb_hcd, ptr %call19, i32 1, i32 21, i32 1, i32 0, i32 0, i32 4, i32 1, i32 1
  %63 = ptrtoint ptr %big_endian_mmio183 to i32
  call void @__asan_load4_noabort(i32 %63)
  %bf.load184 = load i32, ptr %big_endian_mmio183, align 4
  %64 = and i32 %bf.load184, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool187.not = icmp eq i32 %64, 0
  br i1 %tobool187.not, label %if.end193, label %do.end191

do.end191:                                        ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #8
  br label %err_reset

if.end193:                                        ; preds = %if.end182
  %65 = and i32 %bf.load184, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool198.not = icmp eq i32 %65, 0
  br i1 %tobool198.not, label %if.end204, label %do.end202

do.end202:                                        ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21) #8
  br label %err_reset

if.end204:                                        ; preds = %if.end193
  %power_on = getelementptr inbounds %struct.usb_ehci_pdata, ptr %spec.store.select, i32 0, i32 2
  %66 = ptrtoint ptr %power_on to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %power_on, align 4
  %tobool205.not = icmp eq ptr %67, null
  br i1 %tobool205.not, label %if.end204.if.end212_crit_edge, label %if.then206

if.end204.if.end212_crit_edge:                    ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end212

if.then206:                                       ; preds = %if.end204
  %call208 = tail call i32 %67(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call208)
  %cmp209 = icmp slt i32 %call208, 0
  br i1 %cmp209, label %if.then206.err_reset_crit_edge, label %if.then206.if.end212_crit_edge

if.then206.if.end212_crit_edge:                   ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end212

if.then206.err_reset_crit_edge:                   ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_reset

if.end212:                                        ; preds = %if.then206.if.end212_crit_edge, %if.end204.if.end212_crit_edge
  %call213 = tail call ptr @platform_get_resource(ptr noundef %dev, i32 noundef 512, i32 noundef 0) #5
  %call215 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call213) #5
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %call19, i32 0, i32 16
  %68 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call215, ptr %regs, align 4
  %cmp.i367 = icmp ugt ptr %call215, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i367, label %if.then218, label %if.end221

if.then218:                                       ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #7
  %69 = ptrtoint ptr %call215 to i32
  br label %err_power

if.end221:                                        ; preds = %if.end212
  %70 = ptrtoint ptr %call213 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %call213, align 4
  %rsrc_start = getelementptr inbounds %struct.usb_hcd, ptr %call19, i32 0, i32 17
  %72 = ptrtoint ptr %rsrc_start to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %rsrc_start, align 8
  %end.i = getelementptr inbounds %struct.resource, ptr %call213, i32 0, i32 1
  %73 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %end.i, align 4
  %75 = load i32, ptr %call213, align 4
  %sub.i = add i32 %74, 1
  %add.i = sub i32 %sub.i, %75
  %rsrc_len = getelementptr inbounds %struct.usb_hcd, ptr %call19, i32 0, i32 18
  %76 = ptrtoint ptr %rsrc_len to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %add.i, ptr %rsrc_len, align 4
  %call223 = tail call i32 @usb_add_hcd(ptr noundef nonnull %call19, i32 noundef %call13, i32 noundef 128) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call223)
  %tobool224.not = icmp eq i32 %call223, 0
  br i1 %tobool224.not, label %if.end226, label %if.end221.err_power_crit_edge

if.end221.err_power_crit_edge:                    ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_power

if.end226:                                        ; preds = %if.end221
  %77 = ptrtoint ptr %call19 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %call19, align 8
  %call227 = tail call i32 @device_wakeup_enable(ptr noundef %78) #5
  %79 = ptrtoint ptr %call19 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %call19, align 8
  %is_prepared.i = getelementptr inbounds %struct.device, ptr %80, i32 0, i32 12, i32 1
  %81 = ptrtoint ptr %is_prepared.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %bf.load.i = load i16, ptr %is_prepared.i, align 4
  %82 = and i16 %bf.load.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %bf.cast.not.i = icmp eq i16 %82, 0
  br i1 %bf.cast.not.i, label %if.then.i, label %if.end226.device_enable_async_suspend.exit_crit_edge

if.end226.device_enable_async_suspend.exit_crit_edge: ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #7
  br label %device_enable_async_suspend.exit

if.then.i:                                        ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #7
  %bf.set.i = or i16 %bf.load.i, 16384
  %83 = ptrtoint ptr %is_prepared.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %bf.set.i, ptr %is_prepared.i, align 4
  br label %device_enable_async_suspend.exit

device_enable_async_suspend.exit:                 ; preds = %if.then.i, %if.end226.device_enable_async_suspend.exit_crit_edge
  %84 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call19, ptr %driver_data.i.i, align 4
  %quirk_poll230 = getelementptr inbounds %struct.ehci_platform_priv, ptr %priv25, i32 0, i32 3
  %85 = ptrtoint ptr %quirk_poll230 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %quirk_poll230, align 1, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool231.not = icmp eq i8 %86, 0
  br i1 %tobool231.not, label %device_enable_async_suspend.exit.cleanup_crit_edge, label %if.then232

device_enable_async_suspend.exit.cleanup_crit_edge: ; preds = %device_enable_async_suspend.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then232:                                       ; preds = %device_enable_async_suspend.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @quirk_poll_init(ptr noundef %priv25)
  br label %cleanup

err_power:                                        ; preds = %if.end221.err_power_crit_edge, %if.then218
  %err.0 = phi i32 [ %69, %if.then218 ], [ %call223, %if.end221.err_power_crit_edge ]
  %power_off = getelementptr inbounds %struct.usb_ehci_pdata, ptr %spec.store.select, i32 0, i32 3
  %87 = ptrtoint ptr %power_off to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %power_off, align 4
  %tobool234.not = icmp eq ptr %88, null
  br i1 %tobool234.not, label %err_power.err_reset_crit_edge, label %if.then235

err_power.err_reset_crit_edge:                    ; preds = %err_power
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_reset

if.then235:                                       ; preds = %err_power
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %88(ptr noundef %dev) #5
  br label %err_reset

err_reset:                                        ; preds = %if.then235, %err_power.err_reset_crit_edge, %if.then206.err_reset_crit_edge, %do.end202, %do.end191
  %err.1 = phi i32 [ -22, %do.end191 ], [ -22, %do.end202 ], [ %call208, %if.then206.err_reset_crit_edge ], [ %err.0, %if.then235 ], [ %err.0, %err_power.err_reset_crit_edge ]
  %89 = ptrtoint ptr %rsts to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rsts, align 4
  %call239 = tail call i32 @reset_control_assert(ptr noundef %90) #5
  br label %err_put_clks

err_put_clks:                                     ; preds = %err_reset, %if.end122.err_put_clks_crit_edge, %if.then119, %if.then104.err_put_clks_crit_edge
  %err.2 = phi i32 [ -517, %if.then104.err_put_clks_crit_edge ], [ %49, %if.then119 ], [ %call124, %if.end122.err_put_clks_crit_edge ], [ %err.1, %err_reset ]
  %clk.2 = phi i32 [ %clk.0372.lcssa, %if.then104.err_put_clks_crit_edge ], [ %clk.1, %if.then119 ], [ %clk.1, %if.end122.err_put_clks_crit_edge ], [ %clk.1, %err_reset ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clk.2)
  %cmp240374.not = icmp eq i32 %clk.2, 0
  br i1 %cmp240374.not, label %err_put_clks.while.end_crit_edge, label %while.body

err_put_clks.while.end_crit_edge:                 ; preds = %err_put_clks
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %err_put_clks
  %dec375 = add nsw i32 %clk.2, -1
  %arrayidx242 = getelementptr [4 x ptr], ptr %priv25, i32 0, i32 %dec375
  %91 = ptrtoint ptr %arrayidx242 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx242, align 4
  tail call void @clk_put(ptr noundef %92) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %clk.2)
  %cmp240 = icmp ugt i32 %clk.2, 1
  br i1 %cmp240, label %while.body.1, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.1:                                     ; preds = %while.body
  %dec375.1 = add nsw i32 %clk.2, -2
  %arrayidx242.1 = getelementptr [4 x ptr], ptr %priv25, i32 0, i32 %dec375.1
  %93 = ptrtoint ptr %arrayidx242.1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx242.1, align 4
  tail call void @clk_put(ptr noundef %94) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec375)
  %cmp240.1 = icmp ugt i32 %dec375, 1
  br i1 %cmp240.1, label %while.body.2, label %while.body.1.while.end_crit_edge

while.body.1.while.end_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.2:                                     ; preds = %while.body.1
  %dec375.2 = add nsw i32 %clk.2, -3
  %arrayidx242.2 = getelementptr [4 x ptr], ptr %priv25, i32 0, i32 %dec375.2
  %95 = ptrtoint ptr %arrayidx242.2 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx242.2, align 4
  tail call void @clk_put(ptr noundef %96) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec375.1)
  %cmp240.2 = icmp ugt i32 %dec375.1, 1
  br i1 %cmp240.2, label %while.body.3, label %while.body.2.while.end_crit_edge

while.body.2.while.end_crit_edge:                 ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.3:                                     ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #7
  %dec375.3 = add nsw i32 %clk.2, -4
  %arrayidx242.3 = getelementptr [4 x ptr], ptr %priv25, i32 0, i32 %dec375.3
  %97 = ptrtoint ptr %arrayidx242.3 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx242.3, align 4
  tail call void @clk_put(ptr noundef %98) #5
  br label %while.end

while.end:                                        ; preds = %while.body.3, %while.body.2.while.end_crit_edge, %while.body.1.while.end_crit_edge, %while.body.while.end_crit_edge, %err_put_clks.while.end_crit_edge
  br i1 %cmp27, label %if.then244, label %while.end.if.end247_crit_edge

while.end.if.end247_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end247

if.then244:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %99 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %platform_data.i, align 8
  br label %if.end247

if.end247:                                        ; preds = %if.then244, %while.end.if.end247_crit_edge
  tail call void @usb_put_hcd(ptr noundef nonnull %call19) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end247, %if.then232, %device_enable_async_suspend.exit.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ %err.2, %if.end247 ], [ -19, %entry.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ -12, %dev_name.exit.cleanup_crit_edge ], [ 0, %if.then232 ], [ 0, %device_enable_async_suspend.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ehci_platform_remove(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %priv4 = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 3
  %quirk_poll = getelementptr inbounds %struct.ehci_platform_priv, ptr %priv4, i32 0, i32 3
  %4 = ptrtoint ptr %quirk_poll to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %quirk_poll, align 1, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %poll_timer.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 5, i32 2
  %call.i = tail call i32 @del_timer_sync(ptr noundef %poll_timer.i) #5
  %poll_work.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 15
  %call1.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %poll_work.i) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @usb_remove_hcd(ptr noundef %1) #5
  %power_off = getelementptr inbounds %struct.usb_ehci_pdata, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %power_off to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %power_off, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %7(ptr noundef %dev) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %rsts = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 5, i32 1
  %8 = ptrtoint ptr %rsts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rsts, align 4
  %call9 = tail call i32 @reset_control_assert(ptr noundef %9) #5
  %10 = ptrtoint ptr %priv4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv4, align 4
  %tobool10.not = icmp eq ptr %11, null
  br i1 %tobool10.not, label %if.end8.for.end_crit_edge, label %for.body

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %if.end8
  tail call void @clk_put(ptr noundef nonnull %11) #5
  %arrayidx.1 = getelementptr %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 3, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.1, align 4
  %tobool10.not.1 = icmp eq ptr %13, null
  br i1 %tobool10.not.1, label %for.body.for.end_crit_edge, label %for.body.1

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.1:                                       ; preds = %for.body
  tail call void @clk_put(ptr noundef nonnull %13) #5
  %arrayidx.2 = getelementptr %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 4
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.2, align 4
  %tobool10.not.2 = icmp eq ptr %15, null
  br i1 %tobool10.not.2, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  tail call void @clk_put(ptr noundef nonnull %15) #5
  %arrayidx.3 = getelementptr %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 5
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.3, align 4
  %tobool10.not.3 = icmp eq ptr %17, null
  br i1 %tobool10.not.3, label %for.body.2.for.end_crit_edge, label %for.body.3

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_put(ptr noundef nonnull %17) #5
  br label %for.end

for.end:                                          ; preds = %for.body.3, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end8.for.end_crit_edge
  tail call void @usb_put_hcd(ptr noundef %1) #5
  %cmp13 = icmp eq ptr %3, @ehci_platform_defaults
  br i1 %cmp13, label %if.then14, label %for.end.if.end16_crit_edge

for.end.if.end16_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then14:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %platform_data.i, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %for.end.if.end16_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_platform_shutdown(ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @quirk_poll_init(ptr noundef %priv) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %poll_work = getelementptr inbounds %struct.ehci_platform_priv, ptr %priv, i32 0, i32 5
  tail call void @__init_work(ptr noundef %poll_work, i32 noundef 0) #5
  %0 = ptrtoint ptr %poll_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %poll_work, align 4
  %lockdep_map = getelementptr inbounds %struct.ehci_platform_priv, ptr %priv, i32 0, i32 5, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.24, ptr noundef nonnull @quirk_poll_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry8 = getelementptr inbounds %struct.ehci_platform_priv, ptr %priv, i32 0, i32 5, i32 0, i32 1
  %1 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry8, ptr %entry8, align 4
  %prev.i = getelementptr inbounds %struct.ehci_platform_priv, ptr %priv, i32 0, i32 5, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry8, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ehci_platform_priv, ptr %priv, i32 0, i32 5, i32 0, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @quirk_poll_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.ehci_platform_priv, ptr %priv, i32 0, i32 5, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.26, ptr noundef nonnull @quirk_poll_init.__key.25) #5
  %poll_timer = getelementptr inbounds %struct.ehci_platform_priv, ptr %priv, i32 0, i32 4
  tail call void @init_timer_key(ptr noundef %poll_timer, ptr noundef nonnull @quirk_poll_timer, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef nonnull @quirk_poll_init.__key.27) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %4, 100
  %call = tail call i32 @mod_timer(ptr noundef %poll_timer, i32 noundef %add) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ehci_platform_power_on(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv2 = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 3
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef nonnull %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %for.body
  %call1.i = tail call i32 @clk_enable(ptr noundef nonnull %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.inc, label %clk_prepare_enable.exit

clk_prepare_enable.exit.thread50:                 ; preds = %if.end.i.3.clk_prepare_enable.exit.thread50_crit_edge, %if.end.i.2.clk_prepare_enable.exit.thread50_crit_edge, %if.end.i.1.clk_prepare_enable.exit.thread50_crit_edge
  %clk.029.lcssa38.ph = phi i32 [ 3, %if.end.i.3.clk_prepare_enable.exit.thread50_crit_edge ], [ 2, %if.end.i.2.clk_prepare_enable.exit.thread50_crit_edge ], [ 1, %if.end.i.1.clk_prepare_enable.exit.thread50_crit_edge ]
  %.lcssa36.ph = phi ptr [ %9, %if.end.i.3.clk_prepare_enable.exit.thread50_crit_edge ], [ %7, %if.end.i.2.clk_prepare_enable.exit.thread50_crit_edge ], [ %5, %if.end.i.1.clk_prepare_enable.exit.thread50_crit_edge ]
  %call1.i.lcssa.ph = phi i32 [ %call1.i.3, %if.end.i.3.clk_prepare_enable.exit.thread50_crit_edge ], [ %call1.i.2, %if.end.i.2.clk_prepare_enable.exit.thread50_crit_edge ], [ %call1.i.1, %if.end.i.1.clk_prepare_enable.exit.thread50_crit_edge ]
  tail call void @clk_unprepare(ptr noundef nonnull %.lcssa36.ph) #5
  br label %while.body

clk_prepare_enable.exit:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef nonnull %3) #5
  br label %cleanup

for.inc:                                          ; preds = %if.end.i
  %arrayidx.1 = getelementptr %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 3, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %5, null
  br i1 %tobool.not.1, label %for.inc.cleanup_crit_edge, label %for.body.1

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.1:                                       ; preds = %for.inc
  %call.i.1 = tail call i32 @clk_prepare(ptr noundef nonnull %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.i.1, label %if.end.i.1, label %for.body.1.while.body_crit_edge

for.body.1.while.body_crit_edge:                  ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end.i.1:                                       ; preds = %for.body.1
  %call1.i.1 = tail call i32 @clk_enable(ptr noundef nonnull %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.1)
  %tobool2.not.i.1 = icmp eq i32 %call1.i.1, 0
  br i1 %tobool2.not.i.1, label %for.inc.1, label %if.end.i.1.clk_prepare_enable.exit.thread50_crit_edge

if.end.i.1.clk_prepare_enable.exit.thread50_crit_edge: ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit.thread50

for.inc.1:                                        ; preds = %if.end.i.1
  %arrayidx.2 = getelementptr %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 4
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %7, null
  br i1 %tobool.not.2, label %for.inc.1.cleanup_crit_edge, label %for.body.2

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.2:                                       ; preds = %for.inc.1
  %call.i.2 = tail call i32 @clk_prepare(ptr noundef nonnull %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool.not.i.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool.not.i.2, label %if.end.i.2, label %for.body.2.while.body_crit_edge

for.body.2.while.body_crit_edge:                  ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end.i.2:                                       ; preds = %for.body.2
  %call1.i.2 = tail call i32 @clk_enable(ptr noundef nonnull %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.2)
  %tobool2.not.i.2 = icmp eq i32 %call1.i.2, 0
  br i1 %tobool2.not.i.2, label %for.inc.2, label %if.end.i.2.clk_prepare_enable.exit.thread50_crit_edge

if.end.i.2.clk_prepare_enable.exit.thread50_crit_edge: ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit.thread50

for.inc.2:                                        ; preds = %if.end.i.2
  %arrayidx.3 = getelementptr %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 5
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %9, null
  br i1 %tobool.not.3, label %for.inc.2.cleanup_crit_edge, label %for.body.3

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.3:                                       ; preds = %for.inc.2
  %call.i.3 = tail call i32 @clk_prepare(ptr noundef nonnull %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %tobool.not.i.3 = icmp eq i32 %call.i.3, 0
  br i1 %tobool.not.i.3, label %if.end.i.3, label %for.body.3.while.body_crit_edge

for.body.3.while.body_crit_edge:                  ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end.i.3:                                       ; preds = %for.body.3
  %call1.i.3 = tail call i32 @clk_enable(ptr noundef nonnull %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.3)
  %tobool2.not.i.3 = icmp eq i32 %call1.i.3, 0
  br i1 %tobool2.not.i.3, label %if.end.i.3.cleanup_crit_edge, label %if.end.i.3.clk_prepare_enable.exit.thread50_crit_edge

if.end.i.3.clk_prepare_enable.exit.thread50_crit_edge: ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit.thread50

if.end.i.3.cleanup_crit_edge:                     ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body:                                       ; preds = %for.body.3.while.body_crit_edge, %for.body.2.while.body_crit_edge, %for.body.1.while.body_crit_edge, %clk_prepare_enable.exit.thread50
  %retval.0.i44 = phi i32 [ %call1.i.lcssa.ph, %clk_prepare_enable.exit.thread50 ], [ %call.i.3, %for.body.3.while.body_crit_edge ], [ %call.i.2, %for.body.2.while.body_crit_edge ], [ %call.i.1, %for.body.1.while.body_crit_edge ]
  %clk.0293943 = phi i32 [ %clk.029.lcssa38.ph, %clk_prepare_enable.exit.thread50 ], [ 3, %for.body.3.while.body_crit_edge ], [ 2, %for.body.2.while.body_crit_edge ], [ 1, %for.body.1.while.body_crit_edge ]
  %dec32 = add nsw i32 %clk.0293943, -1
  %arrayidx9 = getelementptr [4 x ptr], ptr %priv2, i32 0, i32 %dec32
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx9, align 4
  tail call void @clk_disable(ptr noundef %11) #5
  tail call void @clk_unprepare(ptr noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %clk.0293943)
  %cmp7 = icmp ugt i32 %clk.0293943, 1
  br i1 %cmp7, label %while.body.1, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.1:                                     ; preds = %while.body
  %dec32.1 = add nsw i32 %clk.0293943, -2
  %arrayidx9.1 = getelementptr [4 x ptr], ptr %priv2, i32 0, i32 %dec32.1
  %12 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx9.1, align 4
  tail call void @clk_disable(ptr noundef %13) #5
  tail call void @clk_unprepare(ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec32)
  %cmp7.1 = icmp ugt i32 %dec32, 1
  br i1 %cmp7.1, label %while.body.2, label %while.body.1.cleanup_crit_edge

while.body.1.cleanup_crit_edge:                   ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.2:                                     ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #7
  %dec32.2 = add nsw i32 %clk.0293943, -3
  %arrayidx9.2 = getelementptr [4 x ptr], ptr %priv2, i32 0, i32 %dec32.2
  %14 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx9.2, align 4
  tail call void @clk_disable(ptr noundef %15) #5
  tail call void @clk_unprepare(ptr noundef %15) #5
  br label %cleanup

cleanup:                                          ; preds = %while.body.2, %while.body.1.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.end.i.3.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %clk_prepare_enable.exit, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %clk_prepare_enable.exit ], [ 0, %if.end.i.3.cleanup_crit_edge ], [ 0, %for.inc.2.cleanup_crit_edge ], [ 0, %for.inc.1.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %for.body.cleanup_crit_edge ], [ %retval.0.i44, %while.body.2 ], [ %retval.0.i44, %while.body.1.cleanup_crit_edge ], [ %retval.0.i44, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ehci_platform_power_off(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv2 = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 3
  %arrayidx = getelementptr %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 5
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_disable(ptr noundef nonnull %3) #5
  tail call void @clk_unprepare(ptr noundef nonnull %3) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 4
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %5, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_disable(ptr noundef nonnull %5) #5
  tail call void @clk_unprepare(ptr noundef nonnull %5) #5
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 3, i32 1
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %7, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_disable(ptr noundef nonnull %7) #5
  tail call void @clk_unprepare(ptr noundef nonnull %7) #5
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %8 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv2, align 4
  %tobool.not.3 = icmp eq ptr %9, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_disable(ptr noundef nonnull %9) #5
  tail call void @clk_unprepare(ptr noundef nonnull %9) #5
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_reset_control_array_get(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @quirk_poll_work(ptr nocapture noundef readonly %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr i8, ptr %work, i32 -584
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %2 = getelementptr inbounds %struct.ehci_regs, ptr %1, i32 0, i32 11
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #5, !srcloc !104
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  %5 = and i32 %4, 12289
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %5)
  %6 = icmp eq i32 %5, 4096
  %and7.i = and i32 %4, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp ne i32 %and7.i, 0
  %not.or.cond14.i = and i1 %6, %tobool8.not.i
  br i1 %not.or.cond14.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 2147480) #5
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 8
  %10 = getelementptr inbounds %struct.ehci_regs, ptr %9, i32 0, i32 11
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !104
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  %13 = and i32 %12, 12289
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %13)
  %14 = icmp eq i32 %13, 4096
  %and7.i20 = and i32 %12, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i20)
  %tobool8.not.i21 = icmp ne i32 %and7.i20, 0
  %not.or.cond14.i22 = and i1 %14, %tobool8.not.i21
  br i1 %not.or.cond14.i22, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @quirk_poll_work.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@quirk_poll_work, %if.then12)) #5
          to label %do.end [label %if.then12], !srcloc !106

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %work, i32 -1352
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @quirk_poll_work.__UNIQUE_ID_ddebug295, ptr noundef %16, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30) #5
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  %add.ptr.i.i = getelementptr i8, ptr %work, i32 -1352
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i.i, align 8
  %call1.i = tail call ptr @usb_of_get_companion_dev(ptr noundef %18) #5
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %do.end.cleanup_crit_edge, label %if.end.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %do.end
  tail call void @device_release_driver(ptr noundef nonnull %call1.i) #5
  %call2.i = tail call i32 @device_attach(ptr noundef nonnull %call1.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #8
  br label %if.end7.i

if.end7.i:                                        ; preds = %do.end.i, %if.end.i.if.end7.i_crit_edge
  tail call void @put_device(ptr noundef nonnull %call1.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end7.i, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @quirk_poll_timer(ptr noundef %t) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr i8, ptr %t, i32 -536
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %2 = getelementptr inbounds %struct.ehci_regs, ptr %1, i32 0, i32 11
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #5, !srcloc !104
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  %5 = and i32 %4, 12289
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %5)
  %6 = icmp eq i32 %5, 4096
  %and7.i = and i32 %4, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp ne i32 %and7.i, 0
  %not.or.cond14.i = and i1 %6, %tobool8.not.i
  br i1 %not.or.cond14.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %poll_work = getelementptr i8, ptr %t, i32 48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %poll_work, i32 noundef 1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %8, 100
  %call6 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_of_get_companion_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_release_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ehci_platform_suspend(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %priv3 = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 3
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.device_may_wakeup.exit_crit_edge, label %land.rhs.i

entry.device_may_wakeup.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %device_may_wakeup.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i = icmp ne ptr %6, null
  br label %device_may_wakeup.exit

device_may_wakeup.exit:                           ; preds = %land.rhs.i, %entry.device_may_wakeup.exit_crit_edge
  %7 = phi i1 [ false, %entry.device_may_wakeup.exit_crit_edge ], [ %tobool2.i, %land.rhs.i ]
  %quirk_poll = getelementptr inbounds %struct.ehci_platform_priv, ptr %priv3, i32 0, i32 3
  %8 = ptrtoint ptr %quirk_poll to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %quirk_poll, align 1, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  %poll_timer.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 5, i32 2
  %call.i = tail call i32 @del_timer_sync(ptr noundef %poll_timer.i) #5
  %poll_work.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 15
  %call1.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %poll_work.i) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge
  %call6 = tail call i32 @ehci_suspend(ptr noundef %1, i1 noundef zeroext %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %power_suspend = getelementptr inbounds %struct.usb_ehci_pdata, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %power_suspend to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %power_suspend, align 4
  %tobool10.not = icmp eq ptr %11, null
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.then11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %11(ptr noundef %add.ptr) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ehci_platform_resume(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %priv3 = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 3
  %power_on = getelementptr inbounds %struct.usb_ehci_pdata, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %power_on to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %power_on, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %call5 = tail call i32 %5(ptr noundef %add.ptr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.then.cleanup21_crit_edge, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then.cleanup21_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup21

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call8 = tail call ptr @usb_of_get_companion_dev(ptr noundef %7) #5
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end7.if.end14_crit_edge, label %if.then10

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %call13 = tail call i32 @device_pm_wait_for_dev(ptr noundef %9, ptr noundef nonnull %call8) #5
  tail call void @put_device(ptr noundef nonnull %call8) #5
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end7.if.end14_crit_edge
  %reset_on_resume = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 5, i32 1, i32 1
  %10 = ptrtoint ptr %reset_on_resume to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %reset_on_resume, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool15 = icmp ne i8 %11, 0
  %call16 = tail call i32 @ehci_resume(ptr noundef %1, i1 noundef zeroext %tobool15) #5
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #5
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #5
  tail call void @pm_runtime_enable(ptr noundef %dev) #5
  %quirk_poll = getelementptr inbounds %struct.ehci_platform_priv, ptr %priv3, i32 0, i32 3
  %12 = ptrtoint ptr %quirk_poll to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %quirk_poll, align 1, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool18.not = icmp eq i8 %13, 0
  br i1 %tobool18.not, label %if.end14.cleanup21_crit_edge, label %if.then19

if.end14.cleanup21_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup21

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %poll_work.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 15
  tail call void @__init_work(ptr noundef %poll_work.i, i32 noundef 0) #5
  %14 = ptrtoint ptr %poll_work.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -64, ptr %poll_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @quirk_poll_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry8.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 16
  %15 = ptrtoint ptr %entry8.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %entry8.i, ptr %entry8.i, align 4
  %prev.i.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 17
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %entry8.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 18
  %17 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @quirk_poll_work, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 4, i32 16
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.26, ptr noundef nonnull @quirk_poll_init.__key.25) #5
  %poll_timer.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 2, i32 0, i32 9, i32 5, i32 2
  tail call void @init_timer_key(ptr noundef %poll_timer.i, ptr noundef nonnull @quirk_poll_timer, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef nonnull @quirk_poll_init.__key.27) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %18, 100
  %call.i40 = tail call i32 @mod_timer(ptr noundef %poll_timer.i, i32 noundef %add.i) #5
  br label %cleanup21

cleanup21:                                        ; preds = %if.then19, %if.end14.cleanup21_crit_edge, %if.then.cleanup21_crit_edge
  %retval.1 = phi i32 [ %call5, %if.then.cleanup21_crit_edge ], [ 0, %if.then19 ], [ 0, %if.end14.cleanup21_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_pm_wait_for_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_resume(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !16, !17, !18, !19, !21, !23, !25, !27, !29, !31, !33, !34, !35, !36, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !58, !60, !61, !62, !64, !66, !68, !70, !71, !72, !73, !75, !76, !78, !79, !80, !81, !83, !84, !85, !86, !88, !90}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @__initcall__kmod_ehci_platform__296_535_ehci_platform_init6, !1, !"__initcall__kmod_ehci_platform__296_535_ehci_platform_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/host/ehci-platform.c", i32 535, i32 1}
!2 = !{ptr @__exitcall_ehci_platform_cleanup, !3, !"__exitcall_ehci_platform_cleanup", i1 false, i1 false}
!3 = !{!"../drivers/usb/host/ehci-platform.c", i32 541, i32 1}
!4 = !{ptr @__UNIQUE_ID_description297, !5, !"__UNIQUE_ID_description297", i1 false, i1 false}
!5 = !{!"../drivers/usb/host/ehci-platform.c", i32 543, i32 1}
!6 = !{ptr @__UNIQUE_ID_author298, !7, !"__UNIQUE_ID_author298", i1 false, i1 false}
!7 = !{!"../drivers/usb/host/ehci-platform.c", i32 544, i32 1}
!8 = !{ptr @__UNIQUE_ID_author299, !9, !"__UNIQUE_ID_author299", i1 false, i1 false}
!9 = !{!"../drivers/usb/host/ehci-platform.c", i32 545, i32 1}
!10 = !{ptr @__UNIQUE_ID_file300, !11, !"__UNIQUE_ID_file300", i1 false, i1 false}
!11 = !{!"../drivers/usb/host/ehci-platform.c", i32 546, i32 1}
!12 = !{ptr @__UNIQUE_ID_license301, !11, !"__UNIQUE_ID_license301", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/usb/host/ehci-platform.c", i32 530, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ehci_platform_init._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @ehci_platform_init._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @hcd_name, !20, !"hcd_name", i1 false, i1 false}
!20 = !{!"../drivers/usb/host/ehci-platform.c", i32 57, i32 19}
!21 = !{ptr @ehci_platform_hc_driver, !22, !"ehci_platform_hc_driver", i1 false, i1 false}
!22 = !{!"../drivers/usb/host/ehci-platform.c", i32 121, i32 39}
!23 = !{ptr @platform_overrides, !24, !"platform_overrides", i1 false, i1 false}
!24 = !{!"../drivers/usb/host/ehci-platform.c", i32 123, i32 43}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/host/ehci-platform.c", i32 82, i32 49}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/host/ehci-platform.c", i32 518, i32 11}
!29 = !{ptr @ehci_platform_driver, !30, !"ehci_platform_driver", i1 false, i1 false}
!30 = !{!"../drivers/usb/host/ehci-platform.c", i32 512, i32 31}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/host/ehci-platform.c", i32 261, i32 3}
!33 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ehci_platform_probe._entry, !32, !"_entry", i1 false, i1 false}
!37 = !{ptr @ehci_platform_probe._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/host/ehci-platform.c", i32 280, i32 47}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/host/ehci-platform.c", i32 283, i32 47}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/host/ehci-platform.c", i32 286, i32 47}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/host/ehci-platform.c", i32 289, i32 47}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/host/ehci-platform.c", i32 293, i32 8}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/host/ehci-platform.c", i32 297, i32 8}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/host/ehci-platform.c", i32 301, i32 10}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/host/ehci-platform.c", i32 303, i32 10}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/host/ehci-platform.c", i32 344, i32 3}
!56 = !{ptr @ehci_platform_probe._entry.17, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @ehci_platform_probe._entry_ptr.19, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/host/ehci-platform.c", i32 352, i32 3}
!60 = !{ptr @ehci_platform_probe._entry.20, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @ehci_platform_probe._entry_ptr.22, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @ehci_platform_defaults, !63, !"ehci_platform_defaults", i1 false, i1 false}
!63 = !{!"../drivers/usb/host/ehci-platform.c", i32 128, i32 30}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/host/ehci-platform.c", i32 235, i32 14}
!66 = !{ptr @quirk_poll_match, !67, !"quirk_poll_match", i1 false, i1 false}
!67 = !{!"../drivers/usb/host/ehci-platform.c", i32 234, i32 42}
!68 = !{ptr @quirk_poll_init.__key, !69, !"__key", i1 false, i1 false}
!69 = !{!"../drivers/usb/host/ehci-platform.c", i32 223, i32 2}
!70 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @quirk_poll_init.__key.25, !69, !"__key", i1 false, i1 false}
!72 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @quirk_poll_init.__key.27, !74, !"__key", i1 false, i1 false}
!74 = !{!"../drivers/usb/host/ehci-platform.c", i32 224, i32 2}
!75 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/host/ehci-platform.c", i32 198, i32 2}
!78 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @quirk_poll_work.__UNIQUE_ID_ddebug295, !77, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/usb/host/ehci-platform.c", i32 178, i32 3}
!83 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @quirk_poll_rebind_companion._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @quirk_poll_rebind_companion._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @vt8500_ehci_ids, !87, !"vt8500_ehci_ids", i1 false, i1 false}
!87 = !{!"../drivers/usb/host/ehci-platform.c", i32 486, i32 34}
!88 = !{ptr @ehci_platform_pm_ops, !89, !"ehci_platform_pm_ops", i1 false, i1 false}
!89 = !{!"../drivers/usb/host/ehci-platform.c", i32 509, i32 8}
!90 = !{ptr @ehci_platform_table, !91, !"ehci_platform_table", i1 false, i1 false}
!91 = !{!"../drivers/usb/host/ehci-platform.c", i32 503, i32 40}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{i64 2155934588}
!102 = !{i64 6914729}
!103 = !{i8 0, i8 2}
!104 = !{i64 6915147}
!105 = !{i64 2155934049}
!106 = !{i64 2148959869, i64 2148959874, i64 2148959887, i64 2148959931, i64 2148959965, i64 2148959986}
