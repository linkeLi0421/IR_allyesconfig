; ModuleID = '/llk/IR_all_yes/drivers/usb/host/ehci-fsl.c_pt.bc'
source_filename = "../drivers/usb/host/ehci-fsl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ehci_driver_overrides = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.84, i32 }
%union.anon.84 = type { ptr }
%struct.ehci_regs = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, [6 x i32], i32, %union.anon.85, %union.anon.87, [2 x i32], i32 }
%union.anon.85 = type { [15 x i32] }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, [15 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.fsl_usb2_platform_data = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_ehci_fsl__295_741_ehci_fsl_init6 = internal global ptr @ehci_fsl_init, section ".initcall6.init", align 4
@ehci_fsl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fsl_ehci_drv_probe, ptr @fsl_ehci_drv_remove, ptr @usb_hcd_platform_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.17, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ehci_fsl_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ehci_fsl_cleanup = internal global ptr @ehci_fsl_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_description296 = internal constant [59 x i8] c"ehci_fsl.description=Freescale EHCI Host controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [40 x i8] c"ehci_fsl.file=drivers/usb/host/ehci-fsl\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [21 x i8] c"ehci_fsl.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias299 = internal constant [33 x i8] c"ehci_fsl.alias=platform:ehci-fsl\00", section ".modinfo", align 1
@ehci_fsl_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 730, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016ehci-fsl: Freescale EHCI Host controller driver\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ehci_fsl_init\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/usb/host/ehci-fsl.c\00", [36 x i8] zeroinitializer }, align 32
@ehci_fsl_init._entry_ptr = internal global ptr @ehci_fsl_init._entry, section ".printk_index", align 4
@fsl_ehci_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 4
@ehci_fsl_overrides = internal constant %struct.ehci_driver_overrides { i32 688, ptr @ehci_fsl_setup, ptr null }, section ".init.rodata", align 4
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Freescale On-Chip EHCI Host Controller\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fsl,mpc5121-usb2-dr\00", [44 x i8] zeroinitializer }, align 32
@ehci_fsl_setup_phy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 208, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Could not get controller version\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ehci_fsl_setup_phy\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ehci_fsl_setup_phy._entry_ptr = internal global ptr @ehci_fsl_setup_phy._entry, section ".printk_index", align 4
@ehci_fsl_setup_phy._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.6, ptr @.str.2, i32 244, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"USB PHY clock invalid\0A\00", [41 x i8] zeroinitializer }, align 32
@ehci_fsl_setup_phy._entry_ptr.11 = internal global ptr @ehci_fsl_setup_phy._entry.9, section ".printk_index", align 4
@ehci_fsl_setup_phy._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.6, ptr @.str.2, i32 255, ptr @.str.13, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ehci_fsl_setup_phy._entry_ptr.14 = internal global ptr @ehci_fsl_setup_phy._entry.12, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ehci_fsl_setup_phy._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.6, ptr @.str.2, i32 285, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@ehci_fsl_setup_phy._entry_ptr.16 = internal global ptr @ehci_fsl_setup_phy._entry.15, section ".printk_index", align 4
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fsl-ehci\00", [23 x i8] zeroinitializer }, align 32
@ehci_fsl_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ehci_fsl_drv_suspend, ptr @ehci_fsl_drv_resume, ptr null, ptr null, ptr null, ptr @ehci_fsl_drv_restore, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@fsl_ehci_drv_probe.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ehci_fsl\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fsl_ehci_drv_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"initializing FSL-SOC USB Controller\0A\00", [59 x i8] zeroinitializer }, align 32
@fsl_ehci_drv_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 62, ptr @.str.13, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No platform data for %s.\0A\00", [38 x i8] zeroinitializer }, align 32
@fsl_ehci_drv_probe._entry_ptr = internal global ptr @fsl_ehci_drv_probe._entry, section ".printk_index", align 4
@fsl_ehci_drv_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.19, ptr @.str.2, i32 75, ptr @.str.13, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Non Host Mode configured for %s. Wrong driver linked.\0A\00", [41 x i8] zeroinitializer }, align 32
@fsl_ehci_drv_probe._entry_ptr.24 = internal global ptr @fsl_ehci_drv_probe._entry.22, section ".printk_index", align 4
@fsl_ehci_drv_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.19, ptr @.str.2, i32 83, ptr @.str.13, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Found HC with no IRQ. Check %s setup!\0A\00", [57 x i8] zeroinitializer }, align 32
@fsl_ehci_drv_probe._entry_ptr.27 = internal global ptr @fsl_ehci_drv_probe._entry.25, section ".printk_index", align 4
@fsl_ehci_drv_probe.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.2, ptr @.str.28, i8 0, i8 39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"hcd=0x%p  ehci=0x%p, phy=0x%p\0A\00", [33 x i8] zeroinitializer }, align 32
@fsl_ehci_drv_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.19, ptr @.str.2, i32 167, ptr @.str.13, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"can't find phy\0A\00", [16 x i8] zeroinitializer }, align 32
@fsl_ehci_drv_probe._entry_ptr.31 = internal global ptr @fsl_ehci_drv_probe._entry.29, section ".printk_index", align 4
@fsl_ehci_drv_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.19, ptr @.str.2, i32 180, ptr @.str.13, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"init %s fail, %d\0A\00", [46 x i8] zeroinitializer }, align 32
@fsl_ehci_drv_probe._entry_ptr.34 = internal global ptr @fsl_ehci_drv_probe._entry.32, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.35 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@___asan_gen_.37 = private unnamed_addr constant [16 x i8] c"ehci_fsl_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 715, i32 31 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 730, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 735, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 406, i32 9 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 208, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 244, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 255, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 285, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 720, i32 11 }
@___asan_gen_.91 = private unnamed_addr constant [16 x i8] c"ehci_fsl_pm_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 637, i32 32 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 56, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 61, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 73, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 81, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 156, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 167, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.134 = private constant [31 x i8] c"../drivers/usb/host/ehci-fsl.c\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 180, i32 2 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_alias299, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_ehci_fsl_cleanup, ptr @__initcall__kmod_ehci_fsl__295_741_ehci_fsl_init6, ptr @ehci_fsl_cleanup, ptr @ehci_fsl_init._entry, ptr @ehci_fsl_init._entry_ptr, ptr @ehci_fsl_setup_phy._entry, ptr @ehci_fsl_setup_phy._entry.12, ptr @ehci_fsl_setup_phy._entry.15, ptr @ehci_fsl_setup_phy._entry.9, ptr @ehci_fsl_setup_phy._entry_ptr, ptr @ehci_fsl_setup_phy._entry_ptr.11, ptr @ehci_fsl_setup_phy._entry_ptr.14, ptr @ehci_fsl_setup_phy._entry_ptr.16, ptr @fsl_ehci_drv_probe._entry, ptr @fsl_ehci_drv_probe._entry.22, ptr @fsl_ehci_drv_probe._entry.25, ptr @fsl_ehci_drv_probe._entry.29, ptr @fsl_ehci_drv_probe._entry.32, ptr @fsl_ehci_drv_probe._entry_ptr, ptr @fsl_ehci_drv_probe._entry_ptr.24, ptr @fsl_ehci_drv_probe._entry_ptr.27, ptr @fsl_ehci_drv_probe._entry_ptr.31, ptr @fsl_ehci_drv_probe._entry_ptr.34, ptr @ehci_fsl_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.17, ptr @ehci_fsl_pm_ops, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.33], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_fsl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_fsl_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_fsl_setup_phy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_fsl_setup_phy._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_fsl_setup_phy._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_fsl_setup_phy._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_fsl_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ehci_drv_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ehci_drv_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ehci_drv_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ehci_drv_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ehci_drv_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ehci_fsl_init() #0 section ".init.text" align 64 {
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
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  tail call void @ehci_init_driver(ptr noundef nonnull @fsl_ehci_hc_driver, ptr noundef nonnull @ehci_fsl_overrides) #5
  store ptr @.str.3, ptr getelementptr inbounds (%struct.hc_driver, ptr @fsl_ehci_hc_driver, i32 0, i32 1), align 4
  store ptr @ehci_start_port_reset, ptr getelementptr inbounds (%struct.hc_driver, ptr @fsl_ehci_hc_driver, i32 0, i32 22), align 4
  %call2 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ehci_fsl_driver, ptr noundef null) #5
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ehci_fsl_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @ehci_fsl_driver) #5
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ehci_start_port_reset(ptr nocapture noundef readonly %hcd, i32 noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port)
  %tobool.not = icmp eq i32 %port, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dec = add i32 %port, -1
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %2 = getelementptr inbounds %struct.ehci_regs, ptr %1, i32 0, i32 11
  %arrayidx = getelementptr [15 x i32], ptr %2, i32 0, i32 %dec
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #5, !srcloc !86
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %has_tt = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 14
  %5 = ptrtoint ptr %has_tt to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %has_tt, align 4
  %6 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool7.not = icmp eq i16 %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool7.not, label %do.body12, label %do.body

do.body:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %and9 = and i32 %4, -299
  %or = or i32 %and9, 256
  %7 = tail call i32 @llvm.bswap.i32(i32 %or)
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 8
  %10 = getelementptr inbounds %struct.ehci_regs, ptr %9, i32 0, i32 11
  %arrayidx11 = getelementptr [15 x i32], ptr %10, i32 0, i32 %dec
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx11, i32 %7) #5, !srcloc !88
  br label %cleanup

do.body12:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 8
  %13 = getelementptr inbounds %struct.ehci_regs, ptr %12, i32 0, i32 11
  %arrayidx16 = getelementptr [15 x i32], ptr %13, i32 0, i32 %dec
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx16, i32 65536) #5, !srcloc !88
  br label %cleanup

cleanup:                                          ; preds = %do.body12, %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ 0, %do.body12 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ehci_fsl_setup(ptr noundef %hcd) #3 align 64 {
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
  %big_endian_desc = getelementptr inbounds %struct.fsl_usb2_platform_data, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %big_endian_desc to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %big_endian_desc, align 4
  %bf.lshr = lshr i16 %bf.load, 14
  %big_endian_desc5 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 21, i32 1, i32 0, i32 0, i32 4, i32 1, i32 1
  %5 = ptrtoint ptr %big_endian_desc5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load6 = load i32, ptr %big_endian_desc5, align 4
  %6 = and i16 %bf.lshr, 1
  %bf.value = zext i16 %6 to i32
  %bf.shl = shl nuw nsw i32 %bf.value, 26
  %bf.clear7 = and i32 %bf.load6, -67108865
  %bf.set = or i32 %bf.shl, %bf.clear7
  store i32 %bf.set, ptr %big_endian_desc5, align 4
  %bf.load8 = load i16, ptr %big_endian_desc, align 4
  %bf.lshr9 = lshr i16 %bf.load8, 15
  %bf.cast10 = zext i16 %bf.lshr9 to i32
  %bf.shl14 = shl nuw nsw i32 %bf.cast10, 27
  %bf.clear15 = and i32 %bf.set, -134217729
  %bf.set16 = or i32 %bf.clear15, %bf.shl14
  store i32 %bf.set16, ptr %big_endian_desc5, align 4
  %regs = getelementptr %struct.usb_hcd, ptr %hcd, i32 0, i32 16
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 256
  %caps = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 18
  %9 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr, ptr %caps, align 4
  %has_tt = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 14
  %10 = ptrtoint ptr %has_tt to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load17 = load i16, ptr %has_tt, align 4
  %bf.set19 = or i16 %bf.load17, 256
  store i16 %bf.set19, ptr %has_tt, align 4
  %call20 = tail call i32 @ehci_setup(ptr noundef %hcd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 27
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  %call21 = tail call i32 @of_device_is_compatible(ptr noundef %14, ptr noundef nonnull @.str.4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end.if.end26_crit_edge, label %if.then23

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then23:                                        ; preds = %if.end
  %15 = ptrtoint ptr %big_endian_desc5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load.i = load i32, ptr %big_endian_desc5, align 4
  %16 = and i32 %bf.load.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.then23.if.end26_crit_edge

if.then23.if.end26_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

do.body.i:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  %add.ptr25 = getelementptr i8, ptr %18, i32 144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 33554432) #5, !srcloc !88
  br label %if.end26

if.end26:                                         ; preds = %do.body.i, %if.then23.if.end26_crit_edge, %if.end.if.end26_crit_edge
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %21 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hcd, align 8
  %platform_data.i.i.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %platform_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %platform_data.i.i.i, align 8
  %have_sysif_regs.i.i = getelementptr inbounds %struct.fsl_usb2_platform_data, ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %have_sysif_regs.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load.i.i = load i16, ptr %have_sysif_regs.i.i, align 4
  %26 = and i16 %bf.load.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool.not.i.i = icmp eq i16 %26, 0
  br i1 %tobool.not.i.i, label %if.end26.if.end.i.i_crit_edge, label %do.body.i.i

if.end26.if.end.i.i_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

do.body.i.i:                                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  tail call void @arm_heavy_mb() #5
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 30) #5, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  tail call void @arm_heavy_mb() #5
  %add.ptr5.i.i = getelementptr i8, ptr %20, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 -2147483618) #5, !srcloc !88
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.body.i.i, %if.end26.if.end.i.i_crit_edge
  %27 = ptrtoint ptr %have_sysif_regs.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load6.i.i = load i16, ptr %have_sysif_regs.i.i, align 4
  %28 = and i16 %bf.load6.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp.not.i.i = icmp eq i16 %28, 0
  br i1 %cmp.not.i.i, label %if.end.i.i.if.end13.i.i_crit_edge, label %if.then10.i.i

if.end.i.i.if.end13.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i.i

if.then10.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %big_endian_desc5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %bf.load11.i.i = load i32, ptr %big_endian_desc5, align 4
  %bf.set.i.i = or i32 %bf.load11.i.i, 536870912
  store i32 %bf.set.i.i, ptr %big_endian_desc5, align 4
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then10.i.i, %if.end.i.i.if.end13.i.i_crit_edge
  %30 = ptrtoint ptr %have_sysif_regs.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load14.i.i = load i16, ptr %have_sysif_regs.i.i, align 4
  %31 = and i16 %bf.load14.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp18.not.i.i = icmp eq i16 %31, 0
  br i1 %cmp18.not.i.i, label %if.end13.i.i.if.end23.i.i_crit_edge, label %if.then19.i.i

if.end13.i.i.if.end23.i.i_crit_edge:              ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23.i.i

if.then19.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %big_endian_desc5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load20.i.i = load i32, ptr %big_endian_desc5, align 4
  %bf.set22.i.i = or i32 %bf.load20.i.i, 268435456
  store i32 %bf.set22.i.i, ptr %big_endian_desc5, align 4
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.then19.i.i, %if.end13.i.i.if.end23.i.i_crit_edge
  %operating_mode.i.i = getelementptr inbounds %struct.fsl_usb2_platform_data, ptr %24, i32 0, i32 1
  %33 = ptrtoint ptr %operating_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %operating_mode.i.i, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %34, label %if.end23.i.i.if.end32.i.i_crit_edge [
    i32 1, label %if.end23.i.i.if.then27.i.i_crit_edge
    i32 3, label %if.end23.i.i.if.then27.i.i_crit_edge44
  ]

if.end23.i.i.if.then27.i.i_crit_edge44:           ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then27.i.i

if.end23.i.i.if.then27.i.i_crit_edge:             ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then27.i.i

if.end23.i.i.if.end32.i.i_crit_edge:              ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32.i.i

if.then27.i.i:                                    ; preds = %if.end23.i.i.if.then27.i.i_crit_edge, %if.end23.i.i.if.then27.i.i_crit_edge44
  %phy_mode.i.i = getelementptr inbounds %struct.fsl_usb2_platform_data, ptr %24, i32 0, i32 2
  %36 = ptrtoint ptr %phy_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %phy_mode.i.i, align 4
  %call28.i.i = tail call fastcc i32 @ehci_fsl_setup_phy(ptr noundef %hcd, i32 noundef %37, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.i)
  %tobool29.not.i.i = icmp eq i32 %call28.i.i, 0
  br i1 %tobool29.not.i.i, label %if.end32thread-pre-split.i.i, label %if.then27.i.i.cleanup_crit_edge

if.then27.i.i.cleanup_crit_edge:                  ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end32thread-pre-split.i.i:                     ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %operating_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr.i.i = load i32, ptr %operating_mode.i.i, align 4
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %if.end32thread-pre-split.i.i, %if.end23.i.i.if.end32.i.i_crit_edge
  %39 = phi i32 [ %.pr.i.i, %if.end32thread-pre-split.i.i ], [ %34, %if.end23.i.i.if.end32.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp34.i.i = icmp eq i32 %39, 0
  br i1 %cmp34.i.i, label %if.then35.i.i, label %if.end32.i.i.if.end64.i.i_crit_edge

if.end32.i.i.if.end64.i.i_crit_edge:              ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64.i.i

if.then35.i.i:                                    ; preds = %if.end32.i.i
  %40 = ptrtoint ptr %have_sysif_regs.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load36.i.i = load i16, ptr %have_sysif_regs.i.i, align 4
  %41 = and i16 %bf.load36.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %cmp40.not.i.i = icmp eq i16 %41, 0
  br i1 %cmp40.not.i.i, label %if.then35.i.i.if.end45.i.i_crit_edge, label %if.then41.i.i

if.then35.i.i.if.end45.i.i_crit_edge:             ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45.i.i

if.then41.i.i:                                    ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %big_endian_desc5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %bf.load42.i.i = load i32, ptr %big_endian_desc5, align 4
  %bf.set44.i.i = or i32 %bf.load42.i.i, 1073741824
  store i32 %bf.set44.i.i, ptr %big_endian_desc5, align 4
  br label %if.end45.i.i

if.end45.i.i:                                     ; preds = %if.then41.i.i, %if.then35.i.i.if.end45.i.i_crit_edge
  %port_enables.i.i = getelementptr inbounds %struct.fsl_usb2_platform_data, ptr %24, i32 0, i32 3
  %43 = ptrtoint ptr %port_enables.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %port_enables.i.i, align 4
  %and.i.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool46.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool46.not.i.i, label %if.end45.i.i.if.end53.i.i_crit_edge, label %if.then47.i.i

if.end45.i.i.if.end53.i.i_crit_edge:              ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53.i.i

if.then47.i.i:                                    ; preds = %if.end45.i.i
  %phy_mode48.i.i = getelementptr inbounds %struct.fsl_usb2_platform_data, ptr %24, i32 0, i32 2
  %45 = ptrtoint ptr %phy_mode48.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %phy_mode48.i.i, align 4
  %call49.i.i = tail call fastcc i32 @ehci_fsl_setup_phy(ptr noundef %hcd, i32 noundef %46, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i.i)
  %tobool50.not.i.i = icmp eq i32 %call49.i.i, 0
  br i1 %tobool50.not.i.i, label %if.then47.i.i.if.end53.i.i_crit_edge, label %if.then47.i.i.cleanup_crit_edge

if.then47.i.i.cleanup_crit_edge:                  ; preds = %if.then47.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then47.i.i.if.end53.i.i_crit_edge:             ; preds = %if.then47.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53.i.i

if.end53.i.i:                                     ; preds = %if.then47.i.i.if.end53.i.i_crit_edge, %if.end45.i.i.if.end53.i.i_crit_edge
  %47 = ptrtoint ptr %port_enables.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %port_enables.i.i, align 4
  %and55.i.i = and i32 %48, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i.i)
  %tobool56.not.i.i = icmp eq i32 %and55.i.i, 0
  br i1 %tobool56.not.i.i, label %if.end53.i.i.if.end64.i.i_crit_edge, label %if.then57.i.i

if.end53.i.i.if.end64.i.i_crit_edge:              ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64.i.i

if.then57.i.i:                                    ; preds = %if.end53.i.i
  %phy_mode58.i.i = getelementptr inbounds %struct.fsl_usb2_platform_data, ptr %24, i32 0, i32 2
  %49 = ptrtoint ptr %phy_mode58.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %phy_mode58.i.i, align 4
  %call59.i.i = tail call fastcc i32 @ehci_fsl_setup_phy(ptr noundef %hcd, i32 noundef %50, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i.i)
  %tobool60.not.i.i = icmp eq i32 %call59.i.i, 0
  br i1 %tobool60.not.i.i, label %if.then57.i.i.if.end64.i.i_crit_edge, label %if.then57.i.i.cleanup_crit_edge

if.then57.i.i.cleanup_crit_edge:                  ; preds = %if.then57.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then57.i.i.if.end64.i.i_crit_edge:             ; preds = %if.then57.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64.i.i

if.end64.i.i:                                     ; preds = %if.then57.i.i.if.end64.i.i_crit_edge, %if.end53.i.i.if.end64.i.i_crit_edge, %if.end32.i.i.if.end64.i.i_crit_edge
  %51 = ptrtoint ptr %have_sysif_regs.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %bf.load66.i.i = load i16, ptr %have_sysif_regs.i.i, align 4
  %52 = and i16 %bf.load66.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool70.not.i.i = icmp eq i16 %52, 0
  br i1 %tobool70.not.i.i, label %if.end64.i.i.cleanup_crit_edge, label %do.body72.i.i

if.end64.i.i.cleanup_crit_edge:                   ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body72.i.i:                                    ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  tail call void @arm_heavy_mb() #5
  %add.ptr75.i.i = getelementptr i8, ptr %20, i32 1036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75.i.i, i32 12) #5, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  tail call void @arm_heavy_mb() #5
  %add.ptr79.i.i = getelementptr i8, ptr %20, i32 1032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79.i.i, i32 64) #5, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void @arm_heavy_mb() #5
  %add.ptr83.i.i = getelementptr i8, ptr %20, i32 1040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83.i.i, i32 1) #5, !srcloc !88
  br label %cleanup

cleanup:                                          ; preds = %do.body72.i.i, %if.end64.i.i.cleanup_crit_edge, %if.then57.i.i.cleanup_crit_edge, %if.then47.i.i.cleanup_crit_edge, %if.then27.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %entry.cleanup_crit_edge ], [ 0, %do.body72.i.i ], [ 0, %if.end64.i.i.cleanup_crit_edge ], [ -22, %if.then27.i.i.cleanup_crit_edge ], [ -22, %if.then47.i.i.cleanup_crit_edge ], [ -22, %if.then57.i.i.cleanup_crit_edge ]
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
define internal fastcc i32 @ehci_fsl_setup_phy(ptr nocapture noundef readonly %hcd, i32 noundef %phy_mode, i32 noundef %port_offset) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 16
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %2 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hcd, align 8
  %platform_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.5) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %regs4 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 1
  %8 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs4, align 8
  %10 = getelementptr inbounds %struct.ehci_regs, ptr %9, i32 0, i32 11
  %arrayidx = getelementptr [15 x i32], ptr %10, i32 0, i32 %port_offset
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #5, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !95
  %12 = and i32 %11, -209
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = zext i32 %phy_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %phy_mode, label %if.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %sw.bb27
    i32 3, label %sw.bb29
    i32 2, label %if.end.sw.bb31_crit_edge
    i32 5, label %if.end.sw.bb42_crit_edge
  ]

if.end.sw.bb42_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb42

if.end.sw.bb31_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb31

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %have_sysif_regs = getelementptr inbounds %struct.fsl_usb2_platform_data, ptr %5, i32 0, i32 10
  %15 = ptrtoint ptr %have_sysif_regs to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load = load i16, ptr %have_sysif_regs, align 4
  %16 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.not = icmp eq i16 %16, 0
  br i1 %tobool.not, label %sw.bb.if.end25_crit_edge, label %land.lhs.true

sw.bb.if.end25_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

land.lhs.true:                                    ; preds = %sw.bb
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool7.not = icmp eq i32 %18, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end25_crit_edge, label %if.then8

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %1, i32 1280
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !96
  %and11 = and i32 %19, -131585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %and11) #5, !srcloc !88
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  %and20 = and i32 %20, -132101
  %or = or i32 %and20, 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %or) #5, !srcloc !88
  br label %if.end25

if.end25:                                         ; preds = %if.then8, %land.lhs.true.if.end25_crit_edge, %sw.bb.if.end25_crit_edge
  %or26 = or i32 %13, -2147483648
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %or28 = or i32 %13, -1073741824
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %or30 = or i32 %13, 268435456
  br label %sw.bb31

sw.bb31:                                          ; preds = %sw.bb29, %if.end.sw.bb31_crit_edge
  %portsc.0 = phi i32 [ %13, %if.end.sw.bb31_crit_edge ], [ %or30, %sw.bb29 ]
  %has_fsl_erratum_a006918 = getelementptr inbounds %struct.fsl_usb2_platform_data, ptr %5, i32 0, i32 10
  %21 = ptrtoint ptr %has_fsl_erratum_a006918 to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load32 = load i16, ptr %has_fsl_erratum_a006918, align 4
  %22 = and i16 %bf.load32, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool36.not = icmp eq i16 %22, 0
  br i1 %tobool36.not, label %sw.bb31.sw.bb42_crit_edge, label %do.end40

sw.bb31.sw.bb42_crit_edge:                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb42

do.end40:                                         ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.10) #8
  br label %cleanup

sw.bb42:                                          ; preds = %sw.bb31.sw.bb42_crit_edge, %if.end.sw.bb42_crit_edge
  %portsc.1 = phi i32 [ %13, %if.end.sw.bb42_crit_edge ], [ %portsc.0, %sw.bb31.sw.bb42_crit_edge ]
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp44 = icmp sgt i32 %24, 3
  br i1 %cmp44, label %land.lhs.true45, label %sw.bb42.if.end58_crit_edge

sw.bb42.if.end58_crit_edge:                       ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

land.lhs.true45:                                  ; preds = %sw.bb42
  %have_sysif_regs46 = getelementptr inbounds %struct.fsl_usb2_platform_data, ptr %5, i32 0, i32 10
  %25 = ptrtoint ptr %have_sysif_regs46 to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load47 = load i16, ptr %have_sysif_regs46, align 4
  %26 = and i16 %bf.load47, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool51.not = icmp eq i16 %26, 0
  br i1 %tobool51.not, label %land.lhs.true45.if.end58_crit_edge, label %land.lhs.true52

land.lhs.true45.if.end58_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

land.lhs.true52:                                  ; preds = %land.lhs.true45
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 1280
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  %and.i = and i32 %29, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %do.end57, label %land.lhs.true52.if.end58_crit_edge

land.lhs.true52.if.end58_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

do.end57:                                         ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10) #8
  br label %cleanup

if.end58:                                         ; preds = %land.lhs.true52.if.end58_crit_edge, %land.lhs.true45.if.end58_crit_edge, %sw.bb42.if.end58_crit_edge
  %have_sysif_regs59 = getelementptr inbounds %struct.fsl_usb2_platform_data, ptr %5, i32 0, i32 10
  %30 = ptrtoint ptr %have_sysif_regs59 to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load60 = load i16, ptr %have_sysif_regs59, align 4
  %31 = and i16 %bf.load60, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool64.not = icmp eq i16 %31, 0
  br i1 %tobool64.not, label %if.end58.if.end80_crit_edge, label %land.lhs.true65

if.end58.if.end80_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

land.lhs.true65:                                  ; preds = %if.end58
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool67.not = icmp eq i32 %33, 0
  br i1 %tobool67.not, label %land.lhs.true65.if.end80_crit_edge, label %if.then68

land.lhs.true65.if.end80_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

if.then68:                                        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr70 = getelementptr i8, ptr %1, i32 1280
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr70) #5, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  %and73 = and i32 %34, -131585
  %or74 = or i32 %and73, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 %or74) #5, !srcloc !88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #5
  br label %if.end80

if.end80:                                         ; preds = %if.then68, %land.lhs.true65.if.end80_crit_edge, %if.end58.if.end80_crit_edge
  %45 = ptrtoint ptr %have_sysif_regs59 to i32
  call void @__asan_load2_noabort(i32 %45)
  %bf.load82 = load i16, ptr %have_sysif_regs59, align 4
  %46 = and i16 %bf.load82, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool86.not = icmp eq i16 %46, 0
  br i1 %tobool86.not, label %if.end80.sw.epilog_crit_edge, label %if.then87

if.end80.sw.epilog_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then87:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr89 = getelementptr i8, ptr %1, i32 1280
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr89) #5, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  %and92 = and i32 %47, -131585
  %or93 = or i32 %and92, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89, i32 %or93) #5, !srcloc !88
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then87, %if.end80.sw.epilog_crit_edge, %sw.bb27, %if.end25, %if.end.sw.epilog_crit_edge
  %portsc.2 = phi i32 [ %13, %if.end.sw.epilog_crit_edge ], [ %or28, %sw.bb27 ], [ %or26, %if.end25 ], [ %portsc.1, %if.then87 ], [ %portsc.1, %if.end80.sw.epilog_crit_edge ]
  %have_sysif_regs100 = getelementptr inbounds %struct.fsl_usb2_platform_data, ptr %5, i32 0, i32 10
  %48 = ptrtoint ptr %have_sysif_regs100 to i32
  call void @__asan_load2_noabort(i32 %48)
  %bf.load101 = load i16, ptr %have_sysif_regs100, align 4
  %49 = and i16 %bf.load101, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool105.not = icmp eq i16 %49, 0
  br i1 %tobool105.not, label %sw.epilog.if.end117_crit_edge, label %land.lhs.true106

sw.epilog.if.end117_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end117

land.lhs.true106:                                 ; preds = %sw.epilog
  %50 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %51)
  %cmp108 = icmp sgt i32 %51, 1
  br i1 %cmp108, label %land.lhs.true109, label %land.lhs.true106.if.end117_crit_edge

land.lhs.true106.if.end117_crit_edge:             ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end117

land.lhs.true109:                                 ; preds = %land.lhs.true106
  %52 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs, align 4
  %add.ptr.i197 = getelementptr i8, ptr %53, i32 1280
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i197) #5, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  %and.i198 = and i32 %54, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i198)
  %tobool.not.i199.not = icmp eq i32 %and.i198, 0
  br i1 %tobool.not.i199.not, label %do.end114, label %land.lhs.true109.if.end117_crit_edge

land.lhs.true109.if.end117_crit_edge:             ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end117

do.end114:                                        ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %56, ptr noundef nonnull @.str.10) #8
  br label %cleanup

if.end117:                                        ; preds = %land.lhs.true109.if.end117_crit_edge, %land.lhs.true106.if.end117_crit_edge, %sw.epilog.if.end117_crit_edge
  %imx28_write_fix.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 21, i32 1, i32 0, i32 0, i32 4, i32 1, i32 1
  %57 = ptrtoint ptr %imx28_write_fix.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %bf.load.i = load i32, ptr %imx28_write_fix.i, align 4
  %58 = and i32 %bf.load.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i200 = icmp eq i32 %58, 0
  br i1 %tobool.not.i200, label %do.body.i, label %if.end117.ehci_writel.exit_crit_edge

if.end117.ehci_writel.exit_crit_edge:             ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  br label %ehci_writel.exit

do.body.i:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs4, align 8
  %61 = getelementptr inbounds %struct.ehci_regs, ptr %60, i32 0, i32 11
  %arrayidx119 = getelementptr [15 x i32], ptr %61, i32 0, i32 %port_offset
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  %62 = tail call i32 @llvm.bswap.i32(i32 %portsc.2) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx119, i32 %62) #5, !srcloc !88
  br label %ehci_writel.exit

ehci_writel.exit:                                 ; preds = %do.body.i, %if.end117.ehci_writel.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %phy_mode)
  %cmp120.not = icmp eq i32 %phy_mode, 1
  br i1 %cmp120.not, label %ehci_writel.exit.cleanup_crit_edge, label %land.lhs.true121

ehci_writel.exit.cleanup_crit_edge:               ; preds = %ehci_writel.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true121:                                 ; preds = %ehci_writel.exit
  %63 = ptrtoint ptr %have_sysif_regs100 to i32
  call void @__asan_load2_noabort(i32 %63)
  %bf.load123 = load i16, ptr %have_sysif_regs100, align 4
  %64 = and i16 %bf.load123, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool127.not = icmp eq i16 %64, 0
  br i1 %tobool127.not, label %land.lhs.true121.cleanup_crit_edge, label %if.then128

land.lhs.true121.cleanup_crit_edge:               ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then128:                                       ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr130 = getelementptr i8, ptr %1, i32 1280
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr130) #5, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  %and133 = and i32 %65, -131077
  %or134 = or i32 %and133, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr130, i32 %or134) #5, !srcloc !88
  br label %cleanup

cleanup:                                          ; preds = %if.then128, %land.lhs.true121.cleanup_crit_edge, %ehci_writel.exit.cleanup_crit_edge, %do.end114, %do.end57, %do.end40, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -22, %do.end114 ], [ -22, %do.end57 ], [ -22, %do.end40 ], [ 0, %if.then128 ], [ 0, %land.lhs.true121.cleanup_crit_edge ], [ 0, %ehci_writel.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_ehci_drv_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_ehci_drv_probe.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_ehci_drv_probe, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !107

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fsl_ehci_drv_probe.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.20) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool6.not = icmp eq ptr %1, null
  br i1 %tobool6.not, label %do.end10, label %if.end14

do.end10:                                         ; preds = %do.end
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end10.dev_name.exit_crit_edge

do.end10.dev_name.exit_crit_edge:                 ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end10.dev_name.exit_crit_edge
  %retval.0.i259 = phi ptr [ %5, %if.end.i ], [ %3, %do.end10.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef %retval.0.i259) #8
  br label %cleanup175

if.end14:                                         ; preds = %do.end
  %operating_mode = getelementptr inbounds %struct.fsl_usb2_platform_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %operating_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %operating_mode, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %7, label %do.end23 [
    i32 1, label %if.end14.if.end27_crit_edge
    i32 0, label %if.end14.if.end27_crit_edge292
    i32 3, label %if.end14.if.end27_crit_edge293
  ]

if.end14.if.end27_crit_edge293:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.end14.if.end27_crit_edge292:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.end14.if.end27_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

do.end23:                                         ; preds = %if.end14
  %init_name.i260 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %init_name.i260 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i260, align 8
  %tobool.not.i261 = icmp eq ptr %10, null
  br i1 %tobool.not.i261, label %if.end.i262, label %do.end23.dev_name.exit264_crit_edge

do.end23.dev_name.exit264_crit_edge:              ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit264

if.end.i262:                                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  br label %dev_name.exit264

dev_name.exit264:                                 ; preds = %if.end.i262, %do.end23.dev_name.exit264_crit_edge
  %retval.0.i263 = phi ptr [ %12, %if.end.i262 ], [ %10, %do.end23.dev_name.exit264_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef %retval.0.i263) #8
  br label %cleanup175

if.end27:                                         ; preds = %if.end14.if.end27_crit_edge, %if.end14.if.end27_crit_edge292, %if.end14.if.end27_crit_edge293
  %call28 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #5
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %do.end33, label %if.end37

do.end33:                                         ; preds = %if.end27
  %init_name.i265 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %init_name.i265 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i265, align 8
  %tobool.not.i266 = icmp eq ptr %14, null
  br i1 %tobool.not.i266, label %if.end.i267, label %do.end33.dev_name.exit269_crit_edge

do.end33.dev_name.exit269_crit_edge:              ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit269

if.end.i267:                                      ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  br label %dev_name.exit269

dev_name.exit269:                                 ; preds = %if.end.i267, %do.end33.dev_name.exit269_crit_edge
  %retval.0.i268 = phi ptr [ %16, %if.end.i267 ], [ %14, %do.end33.dev_name.exit269_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, ptr noundef %retval.0.i268) #8
  br label %cleanup175

if.end37:                                         ; preds = %if.end27
  %17 = ptrtoint ptr %call28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call28, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent, align 8
  %init_name.i270 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %21 = ptrtoint ptr %init_name.i270 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i270, align 8
  %tobool.not.i271 = icmp eq ptr %22, null
  br i1 %tobool.not.i271, label %if.end.i272, label %if.end37.dev_name.exit274_crit_edge

if.end37.dev_name.exit274_crit_edge:              ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit274

if.end.i272:                                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  br label %dev_name.exit274

dev_name.exit274:                                 ; preds = %if.end.i272, %if.end37.dev_name.exit274_crit_edge
  %retval.0.i273 = phi ptr [ %24, %if.end.i272 ], [ %22, %if.end37.dev_name.exit274_crit_edge ]
  %call42 = tail call ptr @__usb_create_hcd(ptr noundef nonnull @fsl_ehci_hc_driver, ptr noundef %20, ptr noundef %dev, ptr noundef %retval.0.i273, ptr noundef null) #5
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %dev_name.exit274.do.end167_crit_edge, label %if.end45

dev_name.exit274.do.end167_crit_edge:             ; preds = %dev_name.exit274
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end167

if.end45:                                         ; preds = %dev_name.exit274
  %call46 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %call48 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call46) #5
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %call42, i32 0, i32 16
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call48, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then51, label %if.end54

if.then51:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %call48 to i32
  br label %err2

if.end54:                                         ; preds = %if.end45
  %27 = ptrtoint ptr %call46 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %call46, align 4
  %rsrc_start = getelementptr inbounds %struct.usb_hcd, ptr %call42, i32 0, i32 17
  %29 = ptrtoint ptr %rsrc_start to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %rsrc_start, align 8
  %end.i = getelementptr inbounds %struct.resource, ptr %call46, i32 0, i32 1
  %30 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %end.i, align 4
  %32 = load i32, ptr %call46, align 4
  %sub.i = add i32 %31, 1
  %add.i = sub i32 %sub.i, %32
  %rsrc_len = getelementptr inbounds %struct.usb_hcd, ptr %call42, i32 0, i32 18
  %33 = ptrtoint ptr %rsrc_len to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add.i, ptr %rsrc_len, align 4
  %regs58 = getelementptr inbounds %struct.fsl_usb2_platform_data, ptr %1, i32 0, i32 7
  %34 = ptrtoint ptr %regs58 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call48, ptr %regs58, align 4
  %power_budget = getelementptr inbounds %struct.fsl_usb2_platform_data, ptr %1, i32 0, i32 9
  %35 = ptrtoint ptr %power_budget to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %power_budget, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool59.not = icmp eq i32 %36, 0
  br i1 %tobool59.not, label %if.end54.if.end63_crit_edge, label %if.then60

if.end54.if.end63_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63

if.then60:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  %power_budget62 = getelementptr inbounds %struct.usb_hcd, ptr %call42, i32 0, i32 19
  %37 = ptrtoint ptr %power_budget62 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %power_budget62, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %if.end54.if.end63_crit_edge
  %init = getelementptr inbounds %struct.fsl_usb2_platform_data, ptr %1, i32 0, i32 5
  %38 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %init, align 4
  %tobool64.not = icmp eq ptr %39, null
  br i1 %tobool64.not, label %if.end63.if.end69_crit_edge, label %land.lhs.true

if.end63.if.end69_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

land.lhs.true:                                    ; preds = %if.end63
  %call66 = tail call i32 %39(ptr noundef %pdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %land.lhs.true.if.end69_crit_edge, label %land.lhs.true.err2_crit_edge

land.lhs.true.err2_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %err2

land.lhs.true.if.end69_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.end69:                                         ; preds = %land.lhs.true.if.end69_crit_edge, %if.end63.if.end69_crit_edge
  %have_sysif_regs = getelementptr inbounds %struct.fsl_usb2_platform_data, ptr %1, i32 0, i32 10
  %40 = ptrtoint ptr %have_sysif_regs to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load = load i16, ptr %have_sysif_regs, align 4
  %41 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool70.not = icmp eq i16 %41, 0
  br i1 %tobool70.not, label %if.end69.if.end82thread-pre-split_crit_edge, label %land.lhs.true71

if.end69.if.end82thread-pre-split_crit_edge:      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82thread-pre-split

land.lhs.true71:                                  ; preds = %if.end69
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp72 = icmp slt i32 %43, 1
  br i1 %cmp72, label %if.then73, label %land.lhs.true71.if.end82_crit_edge

land.lhs.true71.if.end82_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82

if.then73:                                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %45, i32 1280
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  %and = and i32 %46, -131077
  %or = or i32 %and, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !109
  tail call void @arm_heavy_mb() #5
  %47 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs, align 4
  %add.ptr81 = getelementptr i8, ptr %48, i32 1280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81, i32 %or) #5, !srcloc !88
  br label %if.end82thread-pre-split

if.end82thread-pre-split:                         ; preds = %if.then73, %if.end69.if.end82thread-pre-split_crit_edge
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pr = load i32, ptr %1, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.end82thread-pre-split, %land.lhs.true71.if.end82_crit_edge
  %50 = phi i32 [ %.pr, %if.end82thread-pre-split ], [ %43, %land.lhs.true71.if.end82_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %50)
  %cmp84 = icmp eq i32 %50, 4
  br i1 %cmp84, label %land.lhs.true85, label %if.end82.if.end93_crit_edge

if.end82.if.end93_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end93

land.lhs.true85:                                  ; preds = %if.end82
  %phy_mode = getelementptr inbounds %struct.fsl_usb2_platform_data, ptr %1, i32 0, i32 2
  %51 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %phy_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp86 = icmp eq i32 %52, 1
  br i1 %cmp86, label %do.body88, label %land.lhs.true85.if.end93_crit_edge

land.lhs.true85.if.end93_crit_edge:               ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end93

do.body88:                                        ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !110
  tail call void @arm_heavy_mb() #5
  %53 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs, align 4
  %add.ptr92 = getelementptr i8, ptr %54, i32 1280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92, i32 4) #5, !srcloc !88
  br label %if.end93

if.end93:                                         ; preds = %do.body88, %land.lhs.true85.if.end93_crit_edge, %if.end82.if.end93_crit_edge
  %55 = ptrtoint ptr %have_sysif_regs to i32
  call void @__asan_load2_noabort(i32 %55)
  %bf.load94 = load i16, ptr %have_sysif_regs, align 4
  %56 = and i16 %bf.load94, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool98.not = icmp eq i16 %56, 0
  br i1 %tobool98.not, label %if.end93.if.end117_crit_edge, label %if.then99

if.end93.if.end117_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end117

if.then99:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs, align 4
  %add.ptr102 = getelementptr i8, ptr %58, i32 1280
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr102) #5, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  %and105 = and i32 %59, -131585
  %or106 = or i32 %and105, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  tail call void @arm_heavy_mb() #5
  %60 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs, align 4
  %add.ptr111 = getelementptr i8, ptr %61, i32 1280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111, i32 %or106) #5, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  tail call void @arm_heavy_mb() #5
  %62 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs, align 4
  %add.ptr116 = getelementptr i8, ptr %63, i32 388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr116, i32 0) #5, !srcloc !88
  br label %if.end117

if.end117:                                        ; preds = %if.then99, %if.end93.if.end117_crit_edge
  %call118 = tail call i32 @usb_add_hcd(ptr noundef nonnull %call42, i32 noundef %18, i32 noundef 128) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %cmp119.not = icmp eq i32 %call118, 0
  br i1 %cmp119.not, label %if.end121, label %if.end117.err2_crit_edge

if.end117.err2_crit_edge:                         ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  br label %err2

if.end121:                                        ; preds = %if.end117
  %64 = ptrtoint ptr %call42 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call42, align 8
  %call122 = tail call i32 @device_wakeup_enable(ptr noundef %65) #5
  %66 = ptrtoint ptr %operating_mode to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %operating_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %67)
  %cmp124 = icmp eq i32 %67, 3
  br i1 %cmp124, label %if.then125, label %if.end121.cleanup175_crit_edge

if.end121.cleanup175_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup175

if.then125:                                       ; preds = %if.end121
  %call127 = tail call ptr @usb_get_phy(i32 noundef 1) #5
  %usb_phy = getelementptr inbounds %struct.usb_hcd, ptr %call42, i32 0, i32 10
  %68 = ptrtoint ptr %usb_phy to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call127, ptr %usb_phy, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_ehci_drv_probe.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_ehci_drv_probe, %if.then140)) #5
          to label %do.end145 [label %if.then140], !srcloc !107

if.then140:                                       ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #7
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %call42, i32 0, i32 30
  %69 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %usb_phy, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_ehci_drv_probe.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef nonnull %call42, ptr noundef %hcd_priv.i, ptr noundef %70) #5
  br label %do.end145

do.end145:                                        ; preds = %if.then140, %if.then125
  %71 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %usb_phy, align 4
  %tobool.not.i275 = icmp eq ptr %72, null
  %cmp.i276 = icmp ugt ptr %72, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i275, %cmp.i276
  br i1 %spec.select.i, label %do.end159, label %if.then148

if.then148:                                       ; preds = %do.end145
  %otg = getelementptr inbounds %struct.usb_phy, ptr %72, i32 0, i32 5
  %73 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %otg, align 4
  %tobool.not.i277 = icmp eq ptr %74, null
  br i1 %tobool.not.i277, label %if.then148.if.then154_crit_edge, label %land.lhs.true.i

if.then148.if.then154_crit_edge:                  ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then154

land.lhs.true.i:                                  ; preds = %if.then148
  %set_host.i = getelementptr inbounds %struct.usb_otg, ptr %74, i32 0, i32 6
  %75 = ptrtoint ptr %set_host.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %set_host.i, align 4
  %tobool1.not.i = icmp eq ptr %76, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.then154_crit_edge, label %otg_set_host.exit

land.lhs.true.i.if.then154_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then154

otg_set_host.exit:                                ; preds = %land.lhs.true.i
  %call.i = tail call i32 %76(ptr noundef nonnull %74, ptr noundef nonnull %call42) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool153.not = icmp eq i32 %call.i, 0
  br i1 %tobool153.not, label %cleanup, label %otg_set_host.exit.if.then154_crit_edge

otg_set_host.exit.if.then154_crit_edge:           ; preds = %otg_set_host.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then154

if.then154:                                       ; preds = %otg_set_host.exit.if.then154_crit_edge, %land.lhs.true.i.if.then154_crit_edge, %if.then148.if.then154_crit_edge
  %retval.0.i278288 = phi i32 [ %call.i, %otg_set_host.exit.if.then154_crit_edge ], [ -524, %land.lhs.true.i.if.then154_crit_edge ], [ -524, %if.then148.if.then154_crit_edge ]
  %77 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %usb_phy, align 4
  tail call void @usb_put_phy(ptr noundef %78) #5
  br label %err2

do.end159:                                        ; preds = %do.end145
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #8
  br label %err2

cleanup:                                          ; preds = %otg_set_host.exit
  call void @__sanitizer_cov_trace_pc() #7
  %skip_phy_initialization = getelementptr inbounds %struct.usb_hcd, ptr %call42, i32 0, i32 14
  %79 = ptrtoint ptr %skip_phy_initialization to i32
  call void @__asan_load2_noabort(i32 %79)
  %bf.load162 = load i16, ptr %skip_phy_initialization, align 4
  %bf.set = or i16 %bf.load162, 2048
  store i16 %bf.set, ptr %skip_phy_initialization, align 4
  br label %cleanup175

err2:                                             ; preds = %do.end159, %if.then154, %if.end117.err2_crit_edge, %land.lhs.true.err2_crit_edge, %if.then51
  %retval1.2 = phi i32 [ %26, %if.then51 ], [ %call118, %if.end117.err2_crit_edge ], [ -19, %land.lhs.true.err2_crit_edge ], [ %retval.0.i278288, %if.then154 ], [ -19, %do.end159 ]
  tail call void @usb_put_hcd(ptr noundef nonnull %call42) #5
  br label %do.end167

do.end167:                                        ; preds = %err2, %dev_name.exit274.do.end167_crit_edge
  %retval1.3 = phi i32 [ %retval1.2, %err2 ], [ -12, %dev_name.exit274.do.end167_crit_edge ]
  %80 = ptrtoint ptr %init_name.i270 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %init_name.i270, align 8
  %tobool.not.i280 = icmp eq ptr %81, null
  br i1 %tobool.not.i280, label %if.end.i281, label %do.end167.dev_name.exit283_crit_edge

do.end167.dev_name.exit283_crit_edge:             ; preds = %do.end167
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit283

if.end.i281:                                      ; preds = %do.end167
  call void @__sanitizer_cov_trace_pc() #7
  %82 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev, align 4
  br label %dev_name.exit283

dev_name.exit283:                                 ; preds = %if.end.i281, %do.end167.dev_name.exit283_crit_edge
  %retval.0.i282 = phi ptr [ %83, %if.end.i281 ], [ %81, %do.end167.dev_name.exit283_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, ptr noundef %retval.0.i282, i32 noundef %retval1.3) #8
  %exit = getelementptr inbounds %struct.fsl_usb2_platform_data, ptr %1, i32 0, i32 6
  %84 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %exit, align 4
  %tobool171.not = icmp eq ptr %85, null
  br i1 %tobool171.not, label %dev_name.exit283.cleanup175_crit_edge, label %if.then172

dev_name.exit283.cleanup175_crit_edge:            ; preds = %dev_name.exit283
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup175

if.then172:                                       ; preds = %dev_name.exit283
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %85(ptr noundef %pdev) #5
  br label %cleanup175

cleanup175:                                       ; preds = %if.then172, %dev_name.exit283.cleanup175_crit_edge, %cleanup, %if.end121.cleanup175_crit_edge, %dev_name.exit269, %dev_name.exit264, %dev_name.exit
  %retval.0 = phi i32 [ -19, %dev_name.exit269 ], [ -19, %dev_name.exit264 ], [ -19, %dev_name.exit ], [ 0, %cleanup ], [ 0, %if.end121.cleanup175_crit_edge ], [ %retval1.3, %if.then172 ], [ %retval1.3, %dev_name.exit283.cleanup175_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_ehci_drv_remove(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %usb_phy = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_phy, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %otg = getelementptr inbounds %struct.usb_phy, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %otg, align 4
  %tobool.not.i16 = icmp eq ptr %7, null
  br i1 %tobool.not.i16, label %if.then.otg_set_host.exit_crit_edge, label %land.lhs.true.i

if.then.otg_set_host.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %otg_set_host.exit

land.lhs.true.i:                                  ; preds = %if.then
  %set_host.i = getelementptr inbounds %struct.usb_otg, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %set_host.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_host.i, align 4
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.otg_set_host.exit_crit_edge, label %if.then.i

land.lhs.true.i.otg_set_host.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otg_set_host.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 %9(ptr noundef nonnull %7, ptr noundef null) #5
  br label %otg_set_host.exit

otg_set_host.exit:                                ; preds = %if.then.i, %land.lhs.true.i.otg_set_host.exit_crit_edge, %if.then.otg_set_host.exit_crit_edge
  %10 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb_phy, align 4
  tail call void @usb_put_phy(ptr noundef %11) #5
  br label %if.end

if.end:                                           ; preds = %otg_set_host.exit, %entry.if.end_crit_edge
  tail call void @usb_remove_hcd(ptr noundef %3) #5
  %exit = getelementptr inbounds %struct.fsl_usb2_platform_data, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %exit, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %13(ptr noundef %pdev) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  tail call void @usb_put_hcd(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_platform_shutdown(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__usb_create_hcd(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_phy(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_phy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ehci_fsl_drv_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call2 = tail call i32 @of_device_is_compatible(ptr noundef %5, ptr noundef nonnull @.str.4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 30
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %6 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.device_may_wakeup.exit_crit_edge, label %land.rhs.i

if.end.device_may_wakeup.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %device_may_wakeup.exit

land.rhs.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %7 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i = icmp ne ptr %8, null
  br label %device_may_wakeup.exit

device_may_wakeup.exit:                           ; preds = %land.rhs.i, %if.end.device_may_wakeup.exit_crit_edge
  %9 = phi i1 [ false, %if.end.device_may_wakeup.exit_crit_edge ], [ %tobool2.i, %land.rhs.i ]
  tail call void @ehci_adjust_port_wakeup_flags(ptr noundef %hcd_priv.i, i1 noundef zeroext true, i1 noundef zeroext %9) #5
  br label %cleanup

cleanup:                                          ; preds = %device_may_wakeup.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ehci_fsl_drv_resume(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call3 = tail call i32 @of_device_is_compatible(ptr noundef %5, ptr noundef nonnull @.str.4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 30
  tail call void @ehci_adjust_port_wakeup_flags(ptr noundef %hcd_priv.i, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ehci_fsl_drv_restore(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %root_hub = getelementptr inbounds %struct.usb_bus, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %root_hub to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root_hub, align 8
  tail call void @usb_root_hub_lost_power(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ehci_adjust_port_wakeup_flags(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_root_hub_lost_power(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !15, !16, !17, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !45, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !69, !70, !71, !73, !74, !75}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__initcall__kmod_ehci_fsl__295_741_ehci_fsl_init6, !1, !"__initcall__kmod_ehci_fsl__295_741_ehci_fsl_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/host/ehci-fsl.c", i32 741, i32 1}
!2 = !{ptr @__exitcall_ehci_fsl_cleanup, !3, !"__exitcall_ehci_fsl_cleanup", i1 false, i1 false}
!3 = !{!"../drivers/usb/host/ehci-fsl.c", i32 747, i32 1}
!4 = !{ptr @__UNIQUE_ID_description296, !5, !"__UNIQUE_ID_description296", i1 false, i1 false}
!5 = !{!"../drivers/usb/host/ehci-fsl.c", i32 749, i32 1}
!6 = !{ptr @__UNIQUE_ID_file297, !7, !"__UNIQUE_ID_file297", i1 false, i1 false}
!7 = !{!"../drivers/usb/host/ehci-fsl.c", i32 750, i32 1}
!8 = !{ptr @__UNIQUE_ID_license298, !7, !"__UNIQUE_ID_license298", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_alias299, !10, !"__UNIQUE_ID_alias299", i1 false, i1 false}
!10 = !{!"../drivers/usb/host/ehci-fsl.c", i32 751, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/usb/host/ehci-fsl.c", i32 730, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ehci_fsl_init._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @ehci_fsl_init._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/host/ehci-fsl.c", i32 735, i32 4}
!19 = !{ptr @fsl_ehci_hc_driver, !20, !"fsl_ehci_hc_driver", i1 false, i1 false}
!20 = !{!"../drivers/usb/host/ehci-fsl.c", i32 34, i32 39}
!21 = !{ptr @ehci_fsl_overrides, !22, !"ehci_fsl_overrides", i1 false, i1 false}
!22 = !{!"../drivers/usb/host/ehci-fsl.c", i32 679, i32 43}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/host/ehci-fsl.c", i32 406, i32 9}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/host/ehci-fsl.c", i32 208, i32 3}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @ehci_fsl_setup_phy._entry, !26, !"_entry", i1 false, i1 false}
!31 = !{ptr @ehci_fsl_setup_phy._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/host/ehci-fsl.c", i32 244, i32 4}
!34 = !{ptr @ehci_fsl_setup_phy._entry.9, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ehci_fsl_setup_phy._entry_ptr.11, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/host/ehci-fsl.c", i32 255, i32 4}
!38 = !{ptr @ehci_fsl_setup_phy._entry.12, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @ehci_fsl_setup_phy._entry_ptr.14, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @ehci_fsl_setup_phy._entry.15, !41, !"_entry", i1 false, i1 false}
!41 = !{!"../drivers/usb/host/ehci-fsl.c", i32 285, i32 3}
!42 = !{ptr @ehci_fsl_setup_phy._entry_ptr.16, !41, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/host/ehci-fsl.c", i32 720, i32 11}
!45 = !{ptr @ehci_fsl_driver, !46, !"ehci_fsl_driver", i1 false, i1 false}
!46 = !{!"../drivers/usb/host/ehci-fsl.c", i32 715, i32 31}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/host/ehci-fsl.c", i32 56, i32 2}
!49 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @fsl_ehci_drv_probe.__UNIQUE_ID_ddebug293, !48, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/host/ehci-fsl.c", i32 61, i32 3}
!54 = !{ptr @fsl_ehci_drv_probe._entry, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @fsl_ehci_drv_probe._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/host/ehci-fsl.c", i32 73, i32 3}
!58 = !{ptr @fsl_ehci_drv_probe._entry.22, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @fsl_ehci_drv_probe._entry_ptr.24, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/host/ehci-fsl.c", i32 81, i32 3}
!62 = !{ptr @fsl_ehci_drv_probe._entry.25, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @fsl_ehci_drv_probe._entry_ptr.27, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/host/ehci-fsl.c", i32 156, i32 3}
!66 = !{ptr @fsl_ehci_drv_probe.__UNIQUE_ID_ddebug294, !65, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/host/ehci-fsl.c", i32 167, i32 4}
!69 = !{ptr @fsl_ehci_drv_probe._entry.29, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @fsl_ehci_drv_probe._entry_ptr.31, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/host/ehci-fsl.c", i32 180, i32 2}
!73 = !{ptr @fsl_ehci_drv_probe._entry.32, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @fsl_ehci_drv_probe._entry_ptr.34, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @ehci_fsl_pm_ops, !76, !"ehci_fsl_pm_ops", i1 false, i1 false}
!76 = !{!"../drivers/usb/host/ehci-fsl.c", i32 637, i32 32}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{i64 4832238}
!87 = !{i64 2155378591}
!88 = !{i64 4831820}
!89 = !{i64 2155344239}
!90 = !{i64 2155374375}
!91 = !{i64 2155374707}
!92 = !{i64 2155375065}
!93 = !{i64 2155375385}
!94 = !{i64 2155375705}
!95 = !{i64 2155343700}
!96 = !{i64 2155365103}
!97 = !{i64 2155365367}
!98 = !{i64 2155365731}
!99 = !{i64 2155366003}
!100 = !{i64 2155363061}
!101 = !{i64 2155369613}
!102 = !{i64 2155369877}
!103 = !{i64 2155371542}
!104 = !{i64 2155371806}
!105 = !{i64 2155373793}
!106 = !{i64 2155374057}
!107 = !{i64 2148709694, i64 2148709699, i64 2148709712, i64 2148709756, i64 2148709790, i64 2148709811}
!108 = !{i64 2155355515}
!109 = !{i64 2155355773}
!110 = !{i64 2155356090}
!111 = !{i64 2155356459}
!112 = !{i64 2155356724}
!113 = !{i64 2155357016}
