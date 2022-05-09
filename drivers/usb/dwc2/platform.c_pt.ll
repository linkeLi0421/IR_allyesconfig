; ModuleID = '/llk/IR_all_yes/drivers/usb/dwc2/platform.c_pt.bc'
source_filename = "../drivers/usb/dwc2/platform.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dwc2_hsotg = type { ptr, ptr, %struct.dwc2_hw_params, %struct.dwc2_core_params, i32, i32, ptr, i32, i8, i8, i8, i16, ptr, ptr, ptr, [2 x %struct.regulator_bulk_data], ptr, ptr, %struct.spinlock, ptr, i32, ptr, ptr, ptr, i8, ptr, %struct.work_struct, %struct.timer_list, i32, %struct.dwc2_gregs_backup, %struct.dwc2_dregs_backup, %struct.dwc2_hregs_backup, ptr, ptr, i8, %union.dwc2_hcd_internal_flags, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i16, [25 x i32], i16, i8, i16, ptr, ptr, i32, i32, %struct.list_head, i32, i32, i32, [16 x ptr], ptr, i32, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, i8, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i8, i8, i32, ptr, ptr, ptr, ptr, i32, i8, i8, [2 x i32], [2 x ptr], i32, ptr, i32, ptr, %struct.usb_gadget, i8, [16 x ptr], [16 x ptr] }
%struct.dwc2_hw_params = type <{ i24, i64, i32, i32, i32, i32, i32, [16 x i32] }>
%struct.dwc2_core_params = type { %struct.usb_otg_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i8, i8, i32, i32, [16 x i32], i8 }
%struct.usb_otg_caps = type { i16, i8, i8, i8 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dwc2_gregs_backup = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.dwc2_dregs_backup = type { i32, i32, i32, i32, i32, [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], i8 }
%struct.dwc2_hregs_backup = type { i32, i32, [16 x i32], i32, i32, i32, i8 }
%union.dwc2_hcd_internal_flags = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.dwc2_hsotg_plat = type { i32, i8, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@dwc2_check_core_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 415, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Bad value for GSNPSID: 0x%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dwc2_check_core_version\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/usb/dwc2/platform.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dwc2_check_core_version._entry_ptr = internal global ptr @dwc2_check_core_version._entry, section ".printk_index", align 4
@dwc2_check_core_version.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 105, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dwc2\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Core Release: %1x.%1x%1x%1x (snpsid=%x)\0A\00", [55 x i8] zeroinitializer }, align 32
@__initcall__kmod_dwc2__298_762_dwc2_platform_driver_init6 = internal global ptr @dwc2_platform_driver_init, section ".initcall6.init", align 4
@dwc2_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dwc2_driver_probe, ptr @dwc2_driver_remove, ptr @dwc2_driver_shutdown, ptr null, ptr null, %struct.device_driver { ptr @dwc2_driver_name, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dwc2_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dwc2_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dwc2_platform_driver_exit = internal global ptr @dwc2_platform_driver_exit, section ".exitcall.exit", align 4
@dwc2_driver_name = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dwc2\00", [27 x i8] zeroinitializer }, align 32
@dwc2_of_match_table = external dso_local constant [0 x %struct.of_device_id], align 4
@dwc2_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @dwc2_suspend, ptr @dwc2_resume, ptr @dwc2_suspend, ptr @dwc2_resume, ptr @dwc2_suspend, ptr @dwc2_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@dwc2_driver_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 456, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"can't set coherent DMA mask: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dwc2_driver_probe\00", [46 x i8] zeroinitializer }, align 32
@dwc2_driver_probe._entry_ptr = internal global ptr @dwc2_driver_probe._entry, section ".printk_index", align 4
@dwc2_driver_probe.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 116, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mapped PA %08lx to VA %p\0A\00", [38 x i8] zeroinitializer }, align 32
@dwc2_driver_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&hsotg->lock\00", [19 x i8] zeroinitializer }, align 32
@dwc2_driver_probe.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.8, ptr @.str.2, ptr @.str.11, i8 0, i8 119, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"registering common handler for irq%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbus\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snps,need-phy-for-wake\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usb33d\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to request usb33d supply\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enable usb33d supply\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to initialize dual-role\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snps,reset-phy-on-wake\00", [41 x i8] zeroinitializer }, align 32
@dwc2_driver_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.8, ptr @.str.2, i32 589, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Quirk reset-phy-on-wake only supports generic PHYs\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dwc2_driver_probe._entry_ptr.22 = internal global ptr @dwc2_driver_probe._entry.19, section ".printk_index", align 4
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error getting reset control\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dwc2-ecc\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error getting reset control for ecc\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb2-phy\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"error getting phy\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"error getting usb phy\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"otg\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cannot get otg clock\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to request supplies\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vusb_d\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vusb_a\00", [25 x i8] zeroinitializer }, align 32
@dwc2_get_dr_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 116, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Configuration mismatch. dr_mode forced to %s\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dwc2_get_dr_mode\00", [47 x i8] zeroinitializer }, align 32
@dwc2_get_dr_mode._entry_ptr = internal global ptr @dwc2_get_dr_mode._entry, section ".printk_index", align 4
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"host\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"device\00", [25 x i8] zeroinitializer }, align 32
@dwc2_driver_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 317, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"exit hibernation failed.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dwc2_driver_remove\00", [45 x i8] zeroinitializer }, align 32
@dwc2_driver_remove._entry_ptr = internal global ptr @dwc2_driver_remove._entry, section ".printk_index", align 4
@dwc2_driver_remove._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 325, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"exit partial_power_down failed\0A\00", [32 x i8] zeroinitializer }, align 32
@dwc2_driver_remove._entry_ptr.42 = internal global ptr @dwc2_driver_remove._entry.40, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1330905088, i64 1429274624, i64 1429340160]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 4294967258, i64 4294967277]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 4294967277, i64 4294967290]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 1330905088, i64 1429274624, i64 1429340160]
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 414, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 419, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [21 x i8] c"dwc2_platform_driver\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 750, i32 31 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"dwc2_driver_name\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 57, i32 19 }
@___asan_gen_.76 = private unnamed_addr constant [16 x i8] c"dwc2_dev_pm_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 746, i32 32 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 456, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 464, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 471, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 477, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 485, i32 63 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 505, i32 11 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 542, i32 50 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 545, i32 38 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 550, i32 38 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 565, i32 37 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 586, i32 11 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 588, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 227, i32 10 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 231, i32 65 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 234, i32 10 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 242, i32 40 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 251, i32 42 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 265, i32 43 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 273, i32 49 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 275, i32 57 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 284, i32 41 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 74, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant [27 x i8] c"../drivers/usb/dwc2/core.h\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 75, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 114, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 316, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.191 = private constant [31 x i8] c"../drivers/usb/dwc2/platform.c\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 324, i32 4 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__exitcall_dwc2_platform_driver_exit, ptr @__initcall__kmod_dwc2__298_762_dwc2_platform_driver_init6, ptr @dwc2_check_core_version._entry, ptr @dwc2_check_core_version._entry_ptr, ptr @dwc2_driver_probe._entry, ptr @dwc2_driver_probe._entry.19, ptr @dwc2_driver_probe._entry_ptr, ptr @dwc2_driver_probe._entry_ptr.22, ptr @dwc2_driver_remove._entry, ptr @dwc2_driver_remove._entry.40, ptr @dwc2_driver_remove._entry_ptr, ptr @dwc2_driver_remove._entry_ptr.42, ptr @dwc2_get_dr_mode._entry, ptr @dwc2_get_dr_mode._entry_ptr, ptr @dwc2_platform_driver_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @dwc2_platform_driver, ptr @dwc2_driver_name, ptr @dwc2_dev_pm_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @dwc2_driver_probe.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_check_core_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_driver_name to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_driver_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_driver_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_driver_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_get_dr_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_driver_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_driver_remove._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwc2_lowlevel_hw_enable(ptr noundef %hsotg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__dwc2_lowlevel_hw_enable(ptr noundef %hsotg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ll_hw_enabled = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 8
  %0 = ptrtoint ptr %ll_hw_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %ll_hw_enabled, align 8
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %ll_hw_enabled, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__dwc2_lowlevel_hw_enable(ptr noundef %hsotg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hsotg, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %supplies = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 15
  %call = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @devm_add_action(ptr noundef %1, ptr noundef nonnull @__dwc2_disable_regulators, ptr noundef %hsotg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end5, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %clk = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 21
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 8
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %if.end5.if.end13_crit_edge, label %if.then7

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then7:                                         ; preds = %if.end5
  %call.i58 = tail call i32 @clk_prepare(ptr noundef nonnull %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %tobool.not.i59 = icmp eq i32 %call.i58, 0
  br i1 %tobool.not.i59, label %if.end.i, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then7
  %call1.i = tail call i32 @clk_enable(ptr noundef nonnull %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end13_crit_edge, label %if.then3.i

if.end.i.if.end13_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef nonnull %3) #7
  br label %cleanup

if.end13:                                         ; preds = %if.end.i.if.end13_crit_edge, %if.end5.if.end13_crit_edge
  %uphy = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 13
  %4 = ptrtoint ptr %uphy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uphy, align 4
  %tobool14.not = icmp eq ptr %5, null
  br i1 %tobool14.not, label %if.else, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end13
  %init.i = getelementptr inbounds %struct.usb_phy, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then.i62

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i62:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i61 = tail call i32 %7(ptr noundef nonnull %5) #7
  br label %cleanup

if.else:                                          ; preds = %if.end13
  %plat = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 14
  %8 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %plat, align 8
  %tobool18.not = icmp eq ptr %9, null
  br i1 %tobool18.not, label %if.else.if.else26_crit_edge, label %land.lhs.true

if.else.if.else26_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else26

land.lhs.true:                                    ; preds = %if.else
  %phy_init = getelementptr inbounds %struct.dwc2_hsotg_plat, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %phy_init to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy_init, align 4
  %tobool20.not = icmp eq ptr %11, null
  br i1 %tobool20.not, label %land.lhs.true.if.else26_crit_edge, label %if.then21

land.lhs.true.if.else26_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else26

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %phy_type = getelementptr inbounds %struct.dwc2_hsotg_plat, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %phy_type, align 4
  %call25 = tail call i32 %11(ptr noundef %add.ptr, i32 noundef %13) #7
  br label %cleanup

if.else26:                                        ; preds = %land.lhs.true.if.else26_crit_edge, %if.else.if.else26_crit_edge
  %phy = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 12
  %14 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy, align 8
  %call27 = tail call i32 @phy_power_on(ptr noundef %15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp = icmp eq i32 %call27, 0
  br i1 %cmp, label %if.then28, label %if.else26.cleanup_crit_edge

if.else26.cleanup_crit_edge:                      ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then28:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy, align 8
  %call30 = tail call i32 @phy_init(ptr noundef %17) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.else26.cleanup_crit_edge, %if.then21, %if.then.i62, %land.lhs.true.i.cleanup_crit_edge, %if.then3.i, %if.then7.cleanup_crit_edge, %devm_add_action_or_reset.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit ], [ %call25, %if.then21 ], [ %call30, %if.then28 ], [ %call27, %if.else26.cleanup_crit_edge ], [ %call.i61, %if.then.i62 ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i58, %if.then7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwc2_lowlevel_hw_disable(ptr nocapture noundef %hsotg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__dwc2_lowlevel_hw_disable(ptr noundef %hsotg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ll_hw_enabled = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 8
  %0 = ptrtoint ptr %ll_hw_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %ll_hw_enabled, align 8
  %bf.clear = and i8 %bf.load, -33
  store i8 %bf.clear, ptr %ll_hw_enabled, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__dwc2_lowlevel_hw_disable(ptr nocapture noundef readonly %hsotg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hsotg, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %uphy = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 13
  %2 = ptrtoint ptr %uphy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uphy, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %entry
  %shutdown.i = getelementptr inbounds %struct.usb_phy, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %shutdown.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shutdown.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end18_crit_edge, label %if.then.i

land.lhs.true.i.if.end18_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %5(ptr noundef nonnull %3) #7
  br label %if.end18

if.else:                                          ; preds = %entry
  %plat = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 14
  %6 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %plat, align 8
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.else.if.else9_crit_edge, label %land.lhs.true

if.else.if.else9_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else9

land.lhs.true:                                    ; preds = %if.else
  %phy_exit = getelementptr inbounds %struct.dwc2_hsotg_plat, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %phy_exit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_exit, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %land.lhs.true.if.else9_crit_edge, label %if.then5

land.lhs.true.if.else9_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else9

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %phy_type = getelementptr inbounds %struct.dwc2_hsotg_plat, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %phy_type, align 4
  %call = tail call i32 %9(ptr noundef %add.ptr, i32 noundef %11) #7
  br label %if.end15

if.else9:                                         ; preds = %land.lhs.true.if.else9_crit_edge, %if.else.if.else9_crit_edge
  %phy = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 12
  %12 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy, align 8
  %call10 = tail call i32 @phy_exit(ptr noundef %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp eq i32 %call10, 0
  br i1 %cmp, label %if.then11, label %if.else9.cleanup_crit_edge

if.else9.cleanup_crit_edge:                       ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy, align 8
  %call13 = tail call i32 @phy_power_off(ptr noundef %15) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.then5
  %ret.0 = phi i32 [ %call, %if.then5 ], [ %call13, %if.then11 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool16.not = icmp eq i32 %ret.0, 0
  br i1 %tobool16.not, label %if.end15.if.end18_crit_edge, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15.if.end18_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.end18:                                         ; preds = %if.end15.if.end18_crit_edge, %if.then.i, %land.lhs.true.i.if.end18_crit_edge
  %clk = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 21
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk, align 8
  %tobool19.not = icmp eq ptr %17, null
  br i1 %tobool19.not, label %if.end18.cleanup_crit_edge, label %if.then20

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_disable(ptr noundef nonnull %17) #7
  tail call void @clk_unprepare(ptr noundef nonnull %17) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end18.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.else9.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end15.cleanup_crit_edge ], [ 0, %if.then20 ], [ 0, %if.end18.cleanup_crit_edge ], [ %call10, %if.else9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwc2_check_core_version(ptr nocapture noundef %hsotg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 64
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %3 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %needs_byte_swap.i, align 8, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  %5 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  %retval.0.i43 = select i1 %tobool.not.i, i32 %5, i32 %2
  %snpsid = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 2, i32 5
  %6 = ptrtoint ptr %snpsid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %retval.0.i43, ptr %snpsid, align 4
  %and = and i32 %retval.0.i43, -65536
  %7 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %do.end [
    i32 1330905088, label %entry.do.body10_crit_edge
    i32 1429274624, label %entry.do.body10_crit_edge45
    i32 1429340160, label %entry.do.body10_crit_edge46
  ]

entry.do.body10_crit_edge46:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body10

entry.do.body10_crit_edge45:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body10

entry.do.body10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str, i32 noundef %retval.0.i43) #10
  br label %cleanup

do.body10:                                        ; preds = %entry.do.body10_crit_edge, %entry.do.body10_crit_edge45, %entry.do.body10_crit_edge46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_check_core_version.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_check_core_version, %cleanup)) #7
          to label %if.then15 [label %cleanup], !srcloc !106

if.then15:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hsotg, align 8
  %12 = ptrtoint ptr %snpsid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %snpsid, align 4
  %shr = lshr i32 %13, 12
  %and18 = and i32 %shr, 15
  %shr20 = lshr i32 %13, 8
  %and21 = and i32 %shr20, 15
  %shr23 = lshr i32 %13, 4
  %and24 = and i32 %shr23, 15
  %and26 = and i32 %13, 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_check_core_version.__UNIQUE_ID_ddebug295, ptr noundef %11, ptr noundef nonnull @.str.6, i32 noundef %and18, i32 noundef %and21, i32 noundef %and24, i32 noundef %and26, i32 noundef %13) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %do.body10, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.then15 ], [ 0, %do.body10 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc2_platform_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dwc2_platform_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dwc2_platform_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @dwc2_platform_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__dwc2_disable_regulators(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %supplies = getelementptr inbounds %struct.dwc2_hsotg, ptr %data, i32 0, i32 15
  %call = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc2_driver_probe(ptr noundef %dev) #0 align 64 {
entry:
  %res = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #7
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %res, align 4, !annotation !107
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef 2928, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup256_crit_edge, label %if.end

entry.cleanup256_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup256

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev2, ptr %call.i, align 8
  %dma_mask = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 18
  %2 = ptrtoint ptr %dma_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_mask, align 8
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %if.then7, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %coherent_dma_mask = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 19
  %4 = ptrtoint ptr %dma_mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %coherent_dma_mask, ptr %dma_mask, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end.if.end11_crit_edge
  %call13 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev2, i64 noundef 4294967295) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end17, label %do.end

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.7, i32 noundef %call13) #10
  br label %cleanup256

if.end17:                                         ; preds = %if.end11
  %call18 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %res) #7
  %regs = getelementptr inbounds %struct.dwc2_hsotg, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call18, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then21, label %do.body25

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call18 to i32
  br label %cleanup256

do.body25:                                        ; preds = %if.end17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_driver_probe.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_driver_probe, %do.end36)) #7
          to label %if.then31 [label %do.end36], !srcloc !106

if.then31:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %res, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_driver_probe.__UNIQUE_ID_ddebug296, ptr noundef %dev2, ptr noundef nonnull @.str.9, i32 noundef %10, ptr noundef %12) #7
  br label %do.end36

do.end36:                                         ; preds = %if.then31, %do.body25
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 8
  %call.i.i.i = call ptr @__devm_reset_control_get(ptr noundef %14, ptr noundef nonnull @.str.5, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #7
  %reset.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %call.i, i32 0, i32 22
  %15 = ptrtoint ptr %reset.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.i.i, ptr %reset.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 8
  %18 = ptrtoint ptr %call.i.i.i to i32
  %call6.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %17, i32 noundef %18, ptr noundef nonnull @.str.23) #7
  br label %dwc2_lowlevel_hw_init.exit

if.end.i:                                         ; preds = %do.end36
  %call8.i = call i32 @reset_control_deassert(ptr noundef %call.i.i.i) #7
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 8
  %call.i.i114.i = call ptr @__devm_reset_control_get(ptr noundef %20, ptr noundef nonnull @.str.24, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #7
  %reset_ecc.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %call.i, i32 0, i32 23
  %21 = ptrtoint ptr %reset_ecc.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i.i114.i, ptr %reset_ecc.i, align 8
  %cmp.i115.i = icmp ugt ptr %call.i.i114.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i115.i, label %if.then13.i, label %if.end18.i

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 8
  %24 = ptrtoint ptr %call.i.i114.i to i32
  %call17.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %23, i32 noundef %24, ptr noundef nonnull @.str.25) #7
  br label %dwc2_lowlevel_hw_init.exit

if.end18.i:                                       ; preds = %if.end.i
  %call20.i = call i32 @reset_control_deassert(ptr noundef %call.i.i114.i) #7
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 8
  %call22.i = call ptr @devm_phy_get(ptr noundef %26, ptr noundef nonnull @.str.26) #7
  %phy.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %call.i, i32 0, i32 12
  %27 = ptrtoint ptr %phy.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call22.i, ptr %phy.i, align 8
  %cmp.i116.i = icmp ugt ptr %call22.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116.i, label %if.then25.i, label %if.end31.i

if.then25.i:                                      ; preds = %if.end18.i
  %28 = ptrtoint ptr %call22.i to i32
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %28, label %sw.default.i [
    i32 -19, label %if.then25.i.if.end31.thread.i_crit_edge
    i32 -38, label %if.then25.i.if.end31.thread.i_crit_edge416
  ]

if.then25.i.if.end31.thread.i_crit_edge416:       ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.thread.i

if.then25.i.if.end31.thread.i_crit_edge:          ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.thread.i

if.end31.thread.i:                                ; preds = %if.then25.i.if.end31.thread.i_crit_edge, %if.then25.i.if.end31.thread.i_crit_edge416
  %30 = ptrtoint ptr %phy.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %phy.i, align 8
  br label %if.then33.i

sw.default.i:                                     ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 8
  %call30.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %32, i32 noundef %28, ptr noundef nonnull @.str.27) #7
  br label %dwc2_lowlevel_hw_init.exit

if.end31.i:                                       ; preds = %if.end18.i
  %tobool.not.i = icmp eq ptr %call22.i, null
  br i1 %tobool.not.i, label %if.end31.i.if.then33.i_crit_edge, label %if.end31.i.if.end48.i_crit_edge

if.end31.i.if.end48.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i

if.end31.i.if.then33.i_crit_edge:                 ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then33.i

if.then33.i:                                      ; preds = %if.end31.i.if.then33.i_crit_edge, %if.end31.thread.i
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 8
  %call35.i = call ptr @devm_usb_get_phy(ptr noundef %34, i32 noundef 1) #7
  %uphy.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %call.i, i32 0, i32 13
  %35 = ptrtoint ptr %uphy.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call35.i, ptr %uphy.i, align 4
  %cmp.i117.i = icmp ugt ptr %call35.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i117.i, label %if.then38.i, label %if.then33.i.if.end48.i_crit_edge

if.then33.i.if.end48.i_crit_edge:                 ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i

if.then38.i:                                      ; preds = %if.then33.i
  %36 = ptrtoint ptr %call35.i to i32
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %36, label %sw.default43.i [
    i32 -19, label %if.then38.i.sw.bb41.i_crit_edge
    i32 -6, label %if.then38.i.sw.bb41.i_crit_edge417
  ]

if.then38.i.sw.bb41.i_crit_edge417:               ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb41.i

if.then38.i.sw.bb41.i_crit_edge:                  ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb41.i

sw.bb41.i:                                        ; preds = %if.then38.i.sw.bb41.i_crit_edge, %if.then38.i.sw.bb41.i_crit_edge417
  %38 = ptrtoint ptr %uphy.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %uphy.i, align 4
  br label %if.end48.i

sw.default43.i:                                   ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 8
  %call45.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %40, i32 noundef %36, ptr noundef nonnull @.str.28) #7
  br label %dwc2_lowlevel_hw_init.exit

if.end48.i:                                       ; preds = %sw.bb41.i, %if.then33.i.if.end48.i_crit_edge, %if.end31.i.if.end48.i_crit_edge
  %41 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call.i, align 8
  %platform_data.i.i = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 7
  %43 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %platform_data.i.i, align 8
  %plat.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %call.i, i32 0, i32 14
  %45 = ptrtoint ptr %plat.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %plat.i, align 8
  %call52.i = call ptr @devm_clk_get_optional(ptr noundef %42, ptr noundef nonnull @.str.29) #7
  %clk.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %call.i, i32 0, i32 21
  %46 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call52.i, ptr %clk.i, align 8
  %cmp.i118.i = icmp ugt ptr %call52.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i118.i, label %if.then55.i, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.end48.i
  %arrayidx61.i = getelementptr %struct.dwc2_hsotg, ptr %call.i, i32 0, i32 15, i32 0
  %47 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.32, ptr %arrayidx61.i, align 4
  %arrayidx61.1.i = getelementptr %struct.dwc2_hsotg, ptr %call.i, i32 0, i32 15, i32 1
  %48 = ptrtoint ptr %arrayidx61.1.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @.str.33, ptr %arrayidx61.1.i, align 4
  %49 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call.i, align 8
  %call64.i = call i32 @devm_regulator_bulk_get(ptr noundef %50, i32 noundef 2, ptr noundef %arrayidx61.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i)
  %tobool65.not.i = icmp eq i32 %call64.i, 0
  br i1 %tobool65.not.i, label %for.body.preheader.i.do.body41_crit_edge, label %if.then66.i

for.body.preheader.i.do.body41_crit_edge:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body41

if.then55.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call.i, align 8
  %53 = ptrtoint ptr %call52.i to i32
  %call59.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %52, i32 noundef %53, ptr noundef nonnull @.str.30) #7
  br label %dwc2_lowlevel_hw_init.exit

if.then66.i:                                      ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call.i, align 8
  %call68.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %55, i32 noundef %call64.i, ptr noundef nonnull @.str.31) #7
  br label %dwc2_lowlevel_hw_init.exit

dwc2_lowlevel_hw_init.exit:                       ; preds = %if.then66.i, %if.then55.i, %sw.default43.i, %sw.default.i, %if.then13.i, %if.then.i
  %retval.0.i376 = phi i32 [ %call6.i, %if.then.i ], [ %call17.i, %if.then13.i ], [ %call30.i, %sw.default.i ], [ %call59.i, %if.then55.i ], [ %call68.i, %if.then66.i ], [ %call45.i, %sw.default43.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i376)
  %tobool38.not = icmp eq i32 %retval.0.i376, 0
  br i1 %tobool38.not, label %dwc2_lowlevel_hw_init.exit.do.body41_crit_edge, label %dwc2_lowlevel_hw_init.exit.cleanup256_crit_edge

dwc2_lowlevel_hw_init.exit.cleanup256_crit_edge:  ; preds = %dwc2_lowlevel_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup256

dwc2_lowlevel_hw_init.exit.do.body41_crit_edge:   ; preds = %dwc2_lowlevel_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body41

do.body41:                                        ; preds = %dwc2_lowlevel_hw_init.exit.do.body41_crit_edge, %for.body.preheader.i.do.body41_crit_edge
  %lock = getelementptr inbounds %struct.dwc2_hsotg, ptr %call.i, i32 0, i32 18
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @dwc2_driver_probe.__key, i16 noundef signext 3) #7
  %call45 = call i32 @platform_get_irq(ptr noundef %dev, i32 noundef 0) #7
  %irq = getelementptr inbounds %struct.dwc2_hsotg, ptr %call.i, i32 0, i32 20
  %56 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call45, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp = icmp slt i32 %call45, 0
  br i1 %cmp, label %do.body41.cleanup256_crit_edge, label %do.body50

do.body41.cleanup256_crit_edge:                   ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup256

do.body50:                                        ; preds = %do.body41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_driver_probe.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_driver_probe, %do.end69)) #7
          to label %if.then64 [label %do.end69], !srcloc !106

if.then64:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call.i, align 8
  %59 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_driver_probe.__UNIQUE_ID_ddebug297, ptr noundef %58, ptr noundef nonnull @.str.11, i32 noundef %60) #7
  br label %do.end69

do.end69:                                         ; preds = %if.then64, %do.body50
  %61 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %call.i, align 8
  %63 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %62, i32 0, i32 3
  %65 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i377 = icmp eq ptr %66, null
  br i1 %tobool.not.i377, label %if.end.i378, label %do.end69.dev_name.exit_crit_edge

do.end69.dev_name.exit_crit_edge:                 ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i378:                                      ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %62, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i378, %do.end69.dev_name.exit_crit_edge
  %retval.0.i379 = phi ptr [ %68, %if.end.i378 ], [ %66, %do.end69.dev_name.exit_crit_edge ]
  %call.i380 = call i32 @devm_request_threaded_irq(ptr noundef %62, i32 noundef %64, ptr noundef nonnull @dwc2_handle_common_intr, ptr noundef null, i32 noundef 128, ptr noundef %retval.0.i379, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i380)
  %tobool75.not = icmp eq i32 %call.i380, 0
  br i1 %tobool75.not, label %if.end77, label %dev_name.exit.cleanup256_crit_edge

dev_name.exit.cleanup256_crit_edge:               ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup256

if.end77:                                         ; preds = %dev_name.exit
  %69 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %call.i, align 8
  %call79 = call ptr @devm_regulator_get_optional(ptr noundef %70, ptr noundef nonnull @.str.12) #7
  %vbus_supply = getelementptr inbounds %struct.dwc2_hsotg, ptr %call.i, i32 0, i32 16
  %71 = ptrtoint ptr %vbus_supply to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call79, ptr %vbus_supply, align 4
  %cmp.i381 = icmp ugt ptr %call79, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i381, label %if.then82, label %if.end77.if.end89_crit_edge

if.end77.if.end89_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

if.then82:                                        ; preds = %if.end77
  %72 = ptrtoint ptr %call79 to i32
  %73 = ptrtoint ptr %vbus_supply to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %vbus_supply, align 4
  %cmp86.not = icmp eq ptr %call79, inttoptr (i32 -19 to ptr)
  br i1 %cmp86.not, label %if.then82.if.end89_crit_edge, label %if.then82.cleanup256_crit_edge

if.then82.cleanup256_crit_edge:                   ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup256

if.then82.if.end89_crit_edge:                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

if.end89:                                         ; preds = %if.then82.if.end89_crit_edge, %if.end77.if.end89_crit_edge
  %call.i382 = call fastcc i32 @__dwc2_lowlevel_hw_enable(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i382)
  %cmp.i383 = icmp eq i32 %call.i382, 0
  br i1 %cmp.i383, label %if.end93, label %if.end89.cleanup256_crit_edge

if.end89.cleanup256_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup256

if.end93:                                         ; preds = %if.end89
  %ll_hw_enabled.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %call.i, i32 0, i32 8
  %74 = ptrtoint ptr %ll_hw_enabled.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load.i = load i8, ptr %ll_hw_enabled.i, align 8
  %bf.set.i = or i8 %bf.load.i, 32
  store i8 %bf.set.i, ptr %ll_hw_enabled.i, align 8
  %75 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %76, i32 64
  %77 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !108
  %78 = and i32 %77, 65535
  %79 = call i32 @llvm.bswap.i32(i32 %78) #7
  %80 = zext i32 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %79, label %if.end.i386 [
    i32 1330905088, label %if.end93.dwc2_check_core_endianness.exit_crit_edge
    i32 1429274624, label %if.end93.dwc2_check_core_endianness.exit_crit_edge418
    i32 1429340160, label %if.end93.dwc2_check_core_endianness.exit_crit_edge419
  ]

if.end93.dwc2_check_core_endianness.exit_crit_edge419: ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwc2_check_core_endianness.exit

if.end93.dwc2_check_core_endianness.exit_crit_edge418: ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwc2_check_core_endianness.exit

if.end93.dwc2_check_core_endianness.exit_crit_edge: ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwc2_check_core_endianness.exit

if.end.i386:                                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwc2_check_core_endianness.exit

dwc2_check_core_endianness.exit:                  ; preds = %if.end.i386, %if.end93.dwc2_check_core_endianness.exit_crit_edge, %if.end93.dwc2_check_core_endianness.exit_crit_edge418, %if.end93.dwc2_check_core_endianness.exit_crit_edge419
  %retval.0.i387 = phi i1 [ true, %if.end.i386 ], [ false, %if.end93.dwc2_check_core_endianness.exit_crit_edge ], [ false, %if.end93.dwc2_check_core_endianness.exit_crit_edge418 ], [ false, %if.end93.dwc2_check_core_endianness.exit_crit_edge419 ]
  %needs_byte_swap = getelementptr inbounds %struct.dwc2_hsotg, ptr %call.i, i32 0, i32 34
  %frombool95 = zext i1 %retval.0.i387 to i8
  %81 = ptrtoint ptr %needs_byte_swap to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %frombool95, ptr %needs_byte_swap, align 8
  call fastcc void @dwc2_get_dr_mode(ptr noundef nonnull %call.i)
  %of_node = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 27
  %82 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %of_node, align 8
  %call.i388 = call ptr @of_find_property(ptr noundef %83, ptr noundef nonnull @.str.13, ptr noundef null) #7
  %tobool.i.not = icmp eq ptr %call.i388, null
  %need_phy_for_wake = getelementptr inbounds %struct.dwc2_hsotg, ptr %call.i, i32 0, i32 10
  %84 = ptrtoint ptr %need_phy_for_wake to i32
  call void @__asan_load1_noabort(i32 %84)
  %bf.load = load i8, ptr %need_phy_for_wake, align 2
  %bf.shl = select i1 %tobool.i.not, i8 0, i8 64
  %bf.clear = and i8 %bf.load, -65
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %need_phy_for_wake, align 2
  %call102 = call i32 @dwc2_check_core_version(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end105, label %dwc2_check_core_endianness.exit.error_crit_edge

dwc2_check_core_endianness.exit.error_crit_edge:  ; preds = %dwc2_check_core_endianness.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end105:                                        ; preds = %dwc2_check_core_endianness.exit
  %call106 = call i32 @dwc2_core_reset(ptr noundef nonnull %call.i, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end109, label %if.end105.error_crit_edge

if.end105.error_crit_edge:                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end109:                                        ; preds = %if.end105
  %call110 = call i32 @dwc2_get_hwparams(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end113, label %if.end109.error_crit_edge

if.end109.error_crit_edge:                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end113:                                        ; preds = %if.end109
  call void @dwc2_force_dr_mode(ptr noundef nonnull %call.i) #7
  %call114 = call i32 @dwc2_init_params(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end117, label %if.end113.error_crit_edge

if.end113.error_crit_edge:                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end117:                                        ; preds = %if.end113
  %activate_stm_id_vb_detection = getelementptr inbounds %struct.dwc2_hsotg, ptr %call.i, i32 0, i32 3, i32 24
  %85 = ptrtoint ptr %activate_stm_id_vb_detection to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %activate_stm_id_vb_detection, align 8, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool118.not = icmp eq i8 %86, 0
  br i1 %tobool118.not, label %if.end117.if.end139_crit_edge, label %if.then119

if.end117.if.end139_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end139

if.then119:                                       ; preds = %if.end117
  %87 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %call.i, align 8
  %call121 = call ptr @devm_regulator_get(ptr noundef %88, ptr noundef nonnull @.str.14) #7
  %usb33d = getelementptr inbounds %struct.dwc2_hsotg, ptr %call.i, i32 0, i32 17
  %89 = ptrtoint ptr %usb33d to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call121, ptr %usb33d, align 8
  %cmp.i389 = icmp ugt ptr %call121, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i389, label %if.then124, label %if.end129

if.then124:                                       ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #9
  %90 = ptrtoint ptr %call121 to i32
  %91 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %call.i, align 8
  %call128 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %92, i32 noundef %90, ptr noundef nonnull @.str.15) #7
  br label %error

if.end129:                                        ; preds = %if.then119
  %call131 = call i32 @regulator_enable(ptr noundef %call121) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %cleanup, label %if.then133

if.then133:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  %93 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %call.i, align 8
  %call135 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %94, i32 noundef %call131, ptr noundef nonnull @.str.16) #7
  br label %error

cleanup:                                          ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  %95 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs, align 4
  %add.ptr.i391 = getelementptr i8, ptr %96, i32 56
  %97 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i391) #7, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  %98 = ptrtoint ptr %needs_byte_swap to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %needs_byte_swap, align 8, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool.not.i392 = icmp eq i8 %99, 0
  %100 = call i32 @llvm.bswap.i32(i32 %97) #7
  %retval.0.i393 = select i1 %tobool.not.i392, i32 %100, i32 %97
  %or138 = or i32 %retval.0.i393, 6291456
  call fastcc void @dwc2_writel(ptr noundef nonnull %call.i, i32 noundef %or138, i32 noundef 56)
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 7000, i32 noundef 2) #7
  br label %if.end139

if.end139:                                        ; preds = %cleanup, %if.end117.if.end139_crit_edge
  %call140 = call i32 @dwc2_drd_init(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.end145, label %if.then142

if.then142:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #9
  %101 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %call.i, align 8
  %call144 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %102, i32 noundef %call140, ptr noundef nonnull @.str.17) #7
  br label %error_init

if.end145:                                        ; preds = %if.end139
  %dr_mode = getelementptr inbounds %struct.dwc2_hsotg, ptr %call.i, i32 0, i32 5
  %103 = ptrtoint ptr %dr_mode to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %dr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %104)
  %cmp146.not = icmp eq i32 %104, 1
  br i1 %cmp146.not, label %if.end145.if.end156_crit_edge, label %if.then148

if.end145.if.end156_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end156

if.then148:                                       ; preds = %if.end145
  %call149 = call i32 @dwc2_gadget_init(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.end152, label %if.then148.error_drd_crit_edge

if.then148.error_drd_crit_edge:                   ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_drd

if.end152:                                        ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #9
  %105 = ptrtoint ptr %ll_hw_enabled.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %bf.load153 = load i8, ptr %ll_hw_enabled.i, align 8
  %bf.set155 = or i8 %bf.load153, 64
  store i8 %bf.set155, ptr %ll_hw_enabled.i, align 8
  br label %if.end156

if.end156:                                        ; preds = %if.end152, %if.end145.if.end156_crit_edge
  %106 = ptrtoint ptr %need_phy_for_wake to i32
  call void @__asan_load1_noabort(i32 %106)
  %bf.load158 = load i8, ptr %need_phy_for_wake, align 2
  %107 = and i8 %bf.load158, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool160.not = icmp eq i8 %107, 0
  br i1 %tobool160.not, label %if.end156.if.end163_crit_edge, label %if.then161

if.end156.if.end163_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end163

if.then161:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #9
  call void @device_set_wakeup_capable(ptr noundef %dev2, i1 noundef zeroext true) #7
  br label %if.end163

if.end163:                                        ; preds = %if.then161, %if.end156.if.end163_crit_edge
  %108 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %of_node, align 8
  %call.i394 = call ptr @of_find_property(ptr noundef %109, ptr noundef nonnull @.str.18, ptr noundef null) #7
  %tobool.i395.not = icmp eq ptr %call.i394, null
  %110 = ptrtoint ptr %need_phy_for_wake to i32
  call void @__asan_load1_noabort(i32 %110)
  %bf.load168 = load i8, ptr %need_phy_for_wake, align 2
  %bf.shl170 = select i1 %tobool.i395.not, i8 0, i8 -128
  %bf.clear171 = and i8 %bf.load168, 127
  %bf.set172 = or i8 %bf.clear171, %bf.shl170
  store i8 %bf.set172, ptr %need_phy_for_wake, align 2
  br i1 %tobool.i395.not, label %if.end163.if.end189_crit_edge, label %land.lhs.true

if.end163.if.end189_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end189

land.lhs.true:                                    ; preds = %if.end163
  %phy = getelementptr inbounds %struct.dwc2_hsotg, ptr %call.i, i32 0, i32 12
  %111 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %phy, align 8
  %tobool179.not = icmp eq ptr %112, null
  br i1 %tobool179.not, label %do.end183, label %land.lhs.true.if.end189_crit_edge

land.lhs.true.if.end189_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end189

do.end183:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %113 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %114, ptr noundef nonnull @.str.20) #10
  %115 = ptrtoint ptr %need_phy_for_wake to i32
  call void @__asan_load1_noabort(i32 %115)
  %bf.load186 = load i8, ptr %need_phy_for_wake, align 2
  %bf.clear187 = and i8 %bf.load186, 127
  store i8 %bf.clear187, ptr %need_phy_for_wake, align 2
  br label %if.end189

if.end189:                                        ; preds = %do.end183, %land.lhs.true.if.end189_crit_edge, %if.end163.if.end189_crit_edge
  %116 = ptrtoint ptr %dr_mode to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %dr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %117)
  %cmp191.not = icmp eq i32 %117, 2
  br i1 %cmp191.not, label %if.end189.if.end210_crit_edge, label %if.then193

if.end189.if.end210_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end210

if.then193:                                       ; preds = %if.end189
  %call194 = call i32 @dwc2_hcd_init(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %tobool195.not = icmp eq i32 %call194, 0
  %118 = ptrtoint ptr %ll_hw_enabled.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %bf.load207 = load i8, ptr %ll_hw_enabled.i, align 8
  br i1 %tobool195.not, label %if.end206, label %if.then196

if.then196:                                       ; preds = %if.then193
  %119 = and i8 %bf.load207, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool202.not = icmp eq i8 %119, 0
  br i1 %tobool202.not, label %if.then196.error_drd_crit_edge, label %if.then203

if.then196.error_drd_crit_edge:                   ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_drd

if.then203:                                       ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #9
  %call204 = call i32 @dwc2_hsotg_remove(ptr noundef nonnull %call.i) #7
  br label %error_drd

if.end206:                                        ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #9
  %bf.set209 = or i8 %bf.load207, -128
  %120 = ptrtoint ptr %ll_hw_enabled.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %bf.set209, ptr %ll_hw_enabled.i, align 8
  br label %if.end210

if.end210:                                        ; preds = %if.end206, %if.end189.if.end210_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %121 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %122 = ptrtoint ptr %ll_hw_enabled.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %bf.load211 = load i8, ptr %ll_hw_enabled.i, align 8
  %bf.clear212 = and i8 %bf.load211, -17
  store i8 %bf.clear212, ptr %ll_hw_enabled.i, align 8
  %call214 = call i32 @dwc2_debugfs_init(ptr noundef nonnull %call.i) #7
  %123 = ptrtoint ptr %dr_mode to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %dr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %124)
  %cmp216 = icmp eq i32 %124, 2
  br i1 %cmp216, label %if.then218, label %if.end210.if.end220_crit_edge

if.end210.if.end220_crit_edge:                    ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end220

if.then218:                                       ; preds = %if.end210
  %call.i396 = call fastcc i32 @__dwc2_lowlevel_hw_disable(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i396)
  %cmp.i397 = icmp eq i32 %call.i396, 0
  br i1 %cmp.i397, label %if.then.i400, label %if.then218.if.end220_crit_edge

if.then218.if.end220_crit_edge:                   ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end220

if.then.i400:                                     ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #9
  %125 = ptrtoint ptr %ll_hw_enabled.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %bf.load.i399 = load i8, ptr %ll_hw_enabled.i, align 8
  %bf.clear.i = and i8 %bf.load.i399, -33
  store i8 %bf.clear.i, ptr %ll_hw_enabled.i, align 8
  br label %if.end220

if.end220:                                        ; preds = %if.then.i400, %if.then218.if.end220_crit_edge, %if.end210.if.end220_crit_edge
  %126 = ptrtoint ptr %ll_hw_enabled.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %bf.load222 = load i8, ptr %ll_hw_enabled.i, align 8
  %127 = and i8 %bf.load222, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool226.not = icmp eq i8 %127, 0
  br i1 %tobool226.not, label %if.end220.cleanup256_crit_edge, label %if.then227

if.end220.cleanup256_crit_edge:                   ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup256

if.then227:                                       ; preds = %if.end220
  %128 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %call.i, align 8
  %gadget = getelementptr inbounds %struct.dwc2_hsotg, ptr %call.i, i32 0, i32 89
  %call229 = call i32 @usb_add_gadget_udc(ptr noundef %129, ptr noundef %gadget) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call229)
  %tobool230.not = icmp eq i32 %call229, 0
  br i1 %tobool230.not, label %if.then227.cleanup256_crit_edge, label %if.then231

if.then227.cleanup256_crit_edge:                  ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup256

if.then231:                                       ; preds = %if.then227
  %udc = getelementptr inbounds %struct.dwc2_hsotg, ptr %call.i, i32 0, i32 89, i32 1
  %130 = ptrtoint ptr %udc to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr null, ptr %udc, align 4
  %call233 = call i32 @dwc2_hsotg_remove(ptr noundef nonnull %call.i) #7
  call void @dwc2_debugfs_exit(ptr noundef nonnull %call.i) #7
  %131 = ptrtoint ptr %ll_hw_enabled.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %bf.load237 = load i8, ptr %ll_hw_enabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load237)
  %tobool240.not = icmp sgt i8 %bf.load237, -1
  br i1 %tobool240.not, label %if.then231.error_drd_crit_edge, label %if.then241

if.then231.error_drd_crit_edge:                   ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_drd

if.then241:                                       ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #9
  call void @dwc2_hcd_remove(ptr noundef nonnull %call.i) #7
  br label %error_drd

error_drd:                                        ; preds = %if.then241, %if.then231.error_drd_crit_edge, %if.then203, %if.then196.error_drd_crit_edge, %if.then148.error_drd_crit_edge
  %retval1.1 = phi i32 [ %call149, %if.then148.error_drd_crit_edge ], [ %call194, %if.then203 ], [ %call194, %if.then196.error_drd_crit_edge ], [ %call229, %if.then241 ], [ %call229, %if.then231.error_drd_crit_edge ]
  call void @dwc2_drd_exit(ptr noundef nonnull %call.i) #7
  br label %error_init

error_init:                                       ; preds = %error_drd, %if.then142
  %retval1.2 = phi i32 [ %call140, %if.then142 ], [ %retval1.1, %error_drd ]
  %132 = ptrtoint ptr %activate_stm_id_vb_detection to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %activate_stm_id_vb_detection, align 8, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool245.not = icmp eq i8 %133, 0
  br i1 %tobool245.not, label %error_init.error_crit_edge, label %if.then246

error_init.error_crit_edge:                       ; preds = %error_init
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.then246:                                       ; preds = %error_init
  call void @__sanitizer_cov_trace_pc() #9
  %usb33d247 = getelementptr inbounds %struct.dwc2_hsotg, ptr %call.i, i32 0, i32 17
  %134 = ptrtoint ptr %usb33d247 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %usb33d247, align 8
  %call248 = call i32 @regulator_disable(ptr noundef %135) #7
  br label %error

error:                                            ; preds = %if.then246, %error_init.error_crit_edge, %if.then133, %if.then124, %if.end113.error_crit_edge, %if.end109.error_crit_edge, %if.end105.error_crit_edge, %dwc2_check_core_endianness.exit.error_crit_edge
  %retval1.3 = phi i32 [ %call102, %dwc2_check_core_endianness.exit.error_crit_edge ], [ %call106, %if.end105.error_crit_edge ], [ %call110, %if.end109.error_crit_edge ], [ %call114, %if.end113.error_crit_edge ], [ %retval1.2, %if.then246 ], [ %retval1.2, %error_init.error_crit_edge ], [ %call131, %if.then133 ], [ %90, %if.then124 ]
  %dr_mode250 = getelementptr inbounds %struct.dwc2_hsotg, ptr %call.i, i32 0, i32 5
  %136 = ptrtoint ptr %dr_mode250 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %dr_mode250, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %137)
  %cmp251.not = icmp eq i32 %137, 2
  br i1 %cmp251.not, label %error.cleanup256_crit_edge, label %if.then253

error.cleanup256_crit_edge:                       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup256

if.then253:                                       ; preds = %error
  %call.i402 = call fastcc i32 @__dwc2_lowlevel_hw_disable(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i402)
  %cmp.i403 = icmp eq i32 %call.i402, 0
  br i1 %cmp.i403, label %if.then.i407, label %if.then253.cleanup256_crit_edge

if.then253.cleanup256_crit_edge:                  ; preds = %if.then253
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup256

if.then.i407:                                     ; preds = %if.then253
  call void @__sanitizer_cov_trace_pc() #9
  %138 = ptrtoint ptr %ll_hw_enabled.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %bf.load.i405 = load i8, ptr %ll_hw_enabled.i, align 8
  %bf.clear.i406 = and i8 %bf.load.i405, -33
  store i8 %bf.clear.i406, ptr %ll_hw_enabled.i, align 8
  br label %cleanup256

cleanup256:                                       ; preds = %if.then.i407, %if.then253.cleanup256_crit_edge, %error.cleanup256_crit_edge, %if.then227.cleanup256_crit_edge, %if.end220.cleanup256_crit_edge, %if.end89.cleanup256_crit_edge, %if.then82.cleanup256_crit_edge, %dev_name.exit.cleanup256_crit_edge, %do.body41.cleanup256_crit_edge, %dwc2_lowlevel_hw_init.exit.cleanup256_crit_edge, %if.then21, %do.end, %entry.cleanup256_crit_edge
  %retval.0 = phi i32 [ %call13, %do.end ], [ %6, %if.then21 ], [ -12, %entry.cleanup256_crit_edge ], [ %retval.0.i376, %dwc2_lowlevel_hw_init.exit.cleanup256_crit_edge ], [ %call45, %do.body41.cleanup256_crit_edge ], [ %call.i380, %dev_name.exit.cleanup256_crit_edge ], [ %72, %if.then82.cleanup256_crit_edge ], [ 0, %if.then227.cleanup256_crit_edge ], [ 0, %if.end220.cleanup256_crit_edge ], [ %retval1.3, %error.cleanup256_crit_edge ], [ %call.i382, %if.end89.cleanup256_crit_edge ], [ %retval1.3, %if.then253.cleanup256_crit_edge ], [ %retval1.3, %if.then.i407 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc2_driver_remove(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hibernated = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %hibernated to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %hibernated, align 8
  %3 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then:                                          ; preds = %entry
  %gr_backup = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 29
  %4 = ptrtoint ptr %gr_backup to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gr_backup, align 4
  %and = lshr i32 %5, 21
  %and.lobit = and i32 %and, 1
  %call4 = tail call i32 @dwc2_exit_hibernation(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef %and.lobit) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then.if.end9_crit_edge, label %do.end

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.38) #10
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.then.if.end9_crit_edge, %entry.if.end9_crit_edge
  %ret.1 = phi i32 [ %call4, %do.end ], [ 0, %if.then.if.end9_crit_edge ], [ 0, %entry.if.end9_crit_edge ]
  %8 = ptrtoint ptr %hibernated to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load10 = load i8, ptr %hibernated, align 8
  %9 = and i8 %bf.load10, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool14.not = icmp eq i8 %9, 0
  br i1 %tobool14.not, label %if.end9.if.end24_crit_edge, label %if.then15

if.end9.if.end24_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then15:                                        ; preds = %if.end9
  %call16 = tail call i32 @dwc2_exit_partial_power_down(ptr noundef %1, i32 noundef 0, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then15.if.end24_crit_edge, label %do.end21

if.then15.if.end24_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

do.end21:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.41) #10
  br label %if.end24

if.end24:                                         ; preds = %do.end21, %if.then15.if.end24_crit_edge, %if.end9.if.end24_crit_edge
  %ret.2 = phi i32 [ %call16, %do.end21 ], [ 0, %if.then15.if.end24_crit_edge ], [ %ret.1, %if.end9.if.end24_crit_edge ]
  %power_down = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 3, i32 15
  %12 = ptrtoint ptr %power_down to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %power_down, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %land.lhs.true, label %if.end24.if.end32_crit_edge

if.end24.if.end32_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end24
  %bus_suspended = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %bus_suspended to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bus_suspended, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool25.not = icmp eq i8 %15, 0
  br i1 %tobool25.not, label %land.lhs.true.if.end32_crit_edge, label %if.then26

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then26:                                        ; preds = %land.lhs.true
  %regs.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 20
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  %needs_byte_swap.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 34
  %19 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.i = icmp eq i8 %20, 0
  %21 = lshr i32 %18, 24
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %21, i32 %18
  %and.i = and i32 %retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool28.not.not = icmp eq i32 %and.i, 0
  br i1 %tobool28.not.not, label %if.then29, label %if.else30

if.then29:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dwc2_gadget_exit_clock_gating(ptr noundef %1, i32 noundef 0) #7
  br label %if.end32

if.else30:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dwc2_host_exit_clock_gating(ptr noundef %1, i32 noundef 0) #7
  br label %if.end32

if.end32:                                         ; preds = %if.else30, %if.then29, %land.lhs.true.if.end32_crit_edge, %if.end24.if.end32_crit_edge
  tail call void @dwc2_debugfs_exit(ptr noundef %1) #7
  %22 = ptrtoint ptr %hibernated to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load33 = load i8, ptr %hibernated, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load33)
  %tobool36.not = icmp sgt i8 %bf.load33, -1
  br i1 %tobool36.not, label %if.end32.if.end38_crit_edge, label %if.then37

if.end32.if.end38_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dwc2_hcd_remove(ptr noundef %1) #7
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end32.if.end38_crit_edge
  %23 = ptrtoint ptr %hibernated to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load39 = load i8, ptr %hibernated, align 8
  %24 = and i8 %bf.load39, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool43.not = icmp eq i8 %24, 0
  br i1 %tobool43.not, label %if.end38.if.end46_crit_edge, label %if.then44

if.end38.if.end46_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then44:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %call45 = tail call i32 @dwc2_hsotg_remove(ptr noundef %1) #7
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.end38.if.end46_crit_edge
  tail call void @dwc2_drd_exit(ptr noundef %1) #7
  %activate_stm_id_vb_detection = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 3, i32 24
  %25 = ptrtoint ptr %activate_stm_id_vb_detection to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %activate_stm_id_vb_detection, align 8, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool48.not = icmp eq i8 %26, 0
  br i1 %tobool48.not, label %if.end46.if.end51_crit_edge, label %if.then49

if.end46.if.end51_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %usb33d = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 17
  %27 = ptrtoint ptr %usb33d to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %usb33d, align 8
  %call50 = tail call i32 @regulator_disable(ptr noundef %28) #7
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end46.if.end51_crit_edge
  %29 = ptrtoint ptr %hibernated to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load52 = load i8, ptr %hibernated, align 8
  %30 = and i8 %bf.load52, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool56.not = icmp eq i8 %30, 0
  br i1 %tobool56.not, label %if.end51.if.end59_crit_edge, label %if.then57

if.end51.if.end59_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then57:                                        ; preds = %if.end51
  %call.i = tail call fastcc i32 @__dwc2_lowlevel_hw_disable(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.then57.if.end59_crit_edge

if.then57.if.end59_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then.i:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %hibernated to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load.i = load i8, ptr %hibernated, align 8
  %bf.clear.i = and i8 %bf.load.i, -33
  store i8 %bf.clear.i, ptr %hibernated, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.then.i, %if.then57.if.end59_crit_edge, %if.end51.if.end59_crit_edge
  %reset = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 22
  %32 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reset, align 4
  %call60 = tail call i32 @reset_control_assert(ptr noundef %33) #7
  %reset_ecc = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 23
  %34 = ptrtoint ptr %reset_ecc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reset_ecc, align 8
  %call61 = tail call i32 @reset_control_assert(ptr noundef %35) #7
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwc2_driver_shutdown(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @dwc2_disable_global_interrupts(ptr noundef %1) #7
  %irq = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @synchronize_irq(i32 noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_handle_common_intr(i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_get_dr_mode(ptr noundef %hsotg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hsotg, align 8
  %call = tail call i32 @usb_get_dr_mode(ptr noundef %1) #7
  %dr_mode = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %spec.select = select i1 %cmp, i32 3, i32 %call
  %2 = ptrtoint ptr %dr_mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %spec.select, ptr %dr_mode, align 4
  %call4 = tail call zeroext i1 @dwc2_hw_is_device(ptr noundef %hsotg) #7
  br i1 %call4, label %entry.if.end10_crit_edge, label %if.else

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call zeroext i1 @dwc2_hw_is_host(ptr noundef %hsotg) #7
  %spec.select1 = select i1 %call6, i32 1, i32 %spec.select
  br label %if.end10

if.end10:                                         ; preds = %if.else, %entry.if.end10_crit_edge
  %mode.0 = phi i32 [ 2, %entry.if.end10_crit_edge ], [ %spec.select1, %if.else ]
  %3 = ptrtoint ptr %dr_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dr_mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mode.0, i32 %4)
  %cmp12.not = icmp eq i32 %mode.0, %4
  br i1 %cmp12.not, label %if.end10.if.end17_crit_edge, label %do.end

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hsotg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode.0)
  %cmp15 = icmp eq i32 %mode.0, 1
  %cond = select i1 %cmp15, ptr @.str.36, ptr @.str.37
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.34, ptr noundef nonnull %cond) #10
  %7 = ptrtoint ptr %dr_mode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mode.0, ptr %dr_mode, align 4
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.end10.if.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_core_reset(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_get_hwparams(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_force_dr_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_init_params(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_writel(ptr nocapture noundef readonly %hsotg, i32 noundef %value, i32 noundef %offset) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %needs_byte_swap = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %0 = ptrtoint ptr %needs_byte_swap to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %needs_byte_swap, align 8, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not, label %do.body1, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %regs = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %offset
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %value) #7, !srcloc !109
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = tail call i32 @llvm.bswap.i32(i32 %value)
  %regs3 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %5 = ptrtoint ptr %regs3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs3, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 %offset
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %4) #7, !srcloc !109
  br label %if.end

if.end:                                           ; preds = %do.body1, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_drd_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_gadget_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_hcd_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_hsotg_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_debugfs_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_gadget_udc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_debugfs_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hcd_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_drd_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_usb_get_phy(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_dr_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dwc2_hw_is_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dwc2_hw_is_host(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_exit_hibernation(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_exit_partial_power_down(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_gadget_exit_clock_gating(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_host_exit_clock_gating(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_disable_global_interrupts(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc2_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regs.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  %needs_byte_swap.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 34
  %5 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.i = icmp eq i8 %6, 0
  %7 = lshr i32 %4, 24
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %7, i32 %4
  %and.i = and i32 %retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp ne i32 %and.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 @dwc2_hsotg_suspend(ptr noundef %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @dwc2_drd_suspend(ptr noundef %1) #7
  %activate_stm_id_vb_detection = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 3, i32 24
  %8 = ptrtoint ptr %activate_stm_id_vb_detection to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %activate_stm_id_vb_detection, align 8, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %if.end.if.end28_crit_edge, label %if.then5

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then5:                                         ; preds = %if.end
  tail call void @dwc2_force_mode(ptr noundef %1, i1 noundef zeroext %tobool.not) #7
  %lock = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 18
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %10 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i.i, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  %13 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  %15 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  %retval.0.i = select i1 %tobool.not.i, i32 %15, i32 %12
  %and = and i32 %retval.0.i, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  %spec.select.v = select i1 %tobool14.not, i32 32848, i32 32880
  %and18 = lshr i32 %retval.0.i, 12
  %16 = and i32 %and18, 128
  %spec.select = or i32 %16, %retval.0.i
  %17 = or i32 %spec.select, %spec.select.v
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #7, !srcloc !109
  br label %dwc2_writel.exit

do.body1.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %20 = tail call i32 @llvm.bswap.i32(i32 %17) #7
  %21 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #7, !srcloc !109
  br label %dwc2_writel.exit

dwc2_writel.exit:                                 ; preds = %do.body1.i, %do.body.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #7
  %23 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 56
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  %26 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i69 = icmp eq i8 %27, 0
  %28 = tail call i32 @llvm.bswap.i32(i32 %25) #7
  %retval.0.i70 = select i1 %tobool.not.i69, i32 %28, i32 %25
  %and26 = and i32 %retval.0.i70, -6291457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i69, label %do.body1.i77, label %do.body.i75

do.body.i75:                                      ; preds = %dwc2_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i74 = getelementptr i8, ptr %30, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74, i32 %and26) #7, !srcloc !109
  br label %dwc2_writel.exit78

do.body1.i77:                                     ; preds = %dwc2_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  %31 = tail call i32 @llvm.bswap.i32(i32 %and26) #7
  %32 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %33, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %31) #7, !srcloc !109
  br label %dwc2_writel.exit78

dwc2_writel.exit78:                               ; preds = %do.body1.i77, %do.body.i75
  %usb33d = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 17
  %34 = ptrtoint ptr %usb33d to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %usb33d, align 8
  %call27 = tail call i32 @regulator_disable(ptr noundef %35) #7
  br label %if.end28

if.end28:                                         ; preds = %dwc2_writel.exit78, %if.end.if.end28_crit_edge
  %ll_hw_enabled = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 8
  %36 = ptrtoint ptr %ll_hw_enabled to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load = load i8, ptr %ll_hw_enabled, align 8
  %37 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool29.not = icmp eq i8 %37, 0
  br i1 %tobool29.not, label %if.end28.if.end38_crit_edge, label %land.lhs.true

if.end28.if.end38_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

land.lhs.true:                                    ; preds = %if.end28
  br i1 %tobool.not, label %lor.lhs.false, label %land.lhs.true.if.then34_crit_edge

land.lhs.true.if.then34_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call32 = tail call zeroext i1 @dwc2_host_can_poweroff_phy(ptr noundef %1) #7
  br i1 %call32, label %lor.lhs.false.if.then34_crit_edge, label %lor.lhs.false.if.end38_crit_edge

lor.lhs.false.if.end38_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

lor.lhs.false.if.then34_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34

if.then34:                                        ; preds = %lor.lhs.false.if.then34_crit_edge, %land.lhs.true.if.then34_crit_edge
  %call35 = tail call fastcc i32 @__dwc2_lowlevel_hw_disable(ptr noundef %1)
  %phy_off_for_suspend = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 10
  %38 = ptrtoint ptr %phy_off_for_suspend to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load36 = load i8, ptr %phy_off_for_suspend, align 2
  %bf.set = or i8 %bf.load36, 32
  store i8 %bf.set, ptr %phy_off_for_suspend, align 2
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %lor.lhs.false.if.end38_crit_edge, %if.end28.if.end38_crit_edge
  %ret.0 = phi i32 [ %call35, %if.then34 ], [ 0, %lor.lhs.false.if.end38_crit_edge ], [ 0, %if.end28.if.end38_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc2_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %phy_off_for_suspend = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %phy_off_for_suspend to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %phy_off_for_suspend, align 2
  %3 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %land.lhs.true

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

land.lhs.true:                                    ; preds = %entry
  %ll_hw_enabled = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %ll_hw_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load1 = load i8, ptr %ll_hw_enabled, align 8
  %5 = and i8 %bf.load1, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end9_crit_edge, label %if.then

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then:                                          ; preds = %land.lhs.true
  %call6 = tail call fastcc i32 @__dwc2_lowlevel_hw_enable(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then.if.end9_crit_edge, label %if.then.cleanup40_crit_edge

if.then.cleanup40_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup40

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end9:                                          ; preds = %if.then.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge, %entry.if.end9_crit_edge
  %6 = ptrtoint ptr %phy_off_for_suspend to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load11 = load i8, ptr %phy_off_for_suspend, align 2
  %bf.clear12 = and i8 %bf.load11, -33
  store i8 %bf.clear12, ptr %phy_off_for_suspend, align 2
  %activate_stm_id_vb_detection = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 3, i32 24
  %7 = ptrtoint ptr %activate_stm_id_vb_detection to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %activate_stm_id_vb_detection, align 8, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool13.not = icmp eq i8 %8, 0
  br i1 %tobool13.not, label %if.end9.if.end31_crit_edge, label %if.then14

if.end9.if.end31_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then14:                                        ; preds = %if.end9
  %usb33d = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 17
  %9 = ptrtoint ptr %usb33d to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usb33d, align 8
  %call15 = tail call i32 @regulator_enable(ptr noundef %10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.then14.cleanup40_crit_edge

if.then14.cleanup40_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup40

if.end18:                                         ; preds = %if.then14
  %regs.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 56
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 34
  %14 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %needs_byte_swap.i, align 8, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  %16 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  %retval.0.i = select i1 %tobool.not.i, i32 %16, i32 %13
  %or20 = or i32 %retval.0.i, 6291456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr.i69 = getelementptr i8, ptr %18, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 %or20) #7, !srcloc !109
  br label %dwc2_writel.exit

do.body1.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %19 = tail call i32 @llvm.bswap.i32(i32 %or20) #7
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %21, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %19) #7, !srcloc !109
  br label %dwc2_writel.exit

dwc2_writel.exit:                                 ; preds = %do.body1.i, %do.body.i
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 7000, i32 noundef 2) #7
  %lock = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 18
  %call23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  %25 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %needs_byte_swap.i, align 8, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i72 = icmp eq i8 %26, 0
  %27 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  %retval.0.i73 = select i1 %tobool.not.i72, i32 %27, i32 %24
  %and27 = and i32 %retval.0.i73, -33009
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i72, label %do.body1.i79, label %do.body.i77

do.body.i77:                                      ; preds = %dwc2_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %and27) #7, !srcloc !109
  br label %dwc2_writel.exit80

do.body1.i79:                                     ; preds = %dwc2_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  %30 = tail call i32 @llvm.bswap.i32(i32 %and27) #7
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #7, !srcloc !109
  br label %dwc2_writel.exit80

dwc2_writel.exit80:                               ; preds = %do.body1.i79, %do.body.i77
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call23) #7
  br label %if.end31

if.end31:                                         ; preds = %dwc2_writel.exit80, %if.end9.if.end31_crit_edge
  %role_sw = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 6
  %33 = ptrtoint ptr %role_sw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %role_sw, align 8
  %tobool32.not = icmp eq ptr %34, null
  br i1 %tobool32.not, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dwc2_force_dr_mode(ptr noundef %1) #7
  br label %if.end34

if.else:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dwc2_drd_resume(ptr noundef %1) #7
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then33
  %regs.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 20
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  %needs_byte_swap.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 34
  %38 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i.i = icmp eq i8 %39, 0
  %40 = lshr i32 %37, 24
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %40, i32 %37
  %and.i = and i32 %retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool36.not.not = icmp eq i32 %and.i, 0
  br i1 %tobool36.not.not, label %if.then37, label %if.end34.cleanup40_crit_edge

if.end34.cleanup40_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup40

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %call38 = tail call i32 @dwc2_hsotg_resume(ptr noundef %1) #7
  br label %cleanup40

cleanup40:                                        ; preds = %if.then37, %if.end34.cleanup40_crit_edge, %if.then14.cleanup40_crit_edge, %if.then.cleanup40_crit_edge
  %retval.1 = phi i32 [ %call6, %if.then.cleanup40_crit_edge ], [ %call38, %if.then37 ], [ 0, %if.end34.cleanup40_crit_edge ], [ %call15, %if.then14.cleanup40_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_hsotg_suspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_drd_suspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_force_mode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dwc2_host_can_poweroff_phy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_drd_resume(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_hsotg_resume(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !17, !19, !20, !21, !22, !24, !25, !27, !28, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !48, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !77, !78, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !92}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/dwc2/platform.c", i32 414, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @dwc2_check_core_version._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @dwc2_check_core_version._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/usb/dwc2/platform.c", i32 419, i32 2}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @dwc2_check_core_version.__UNIQUE_ID_ddebug295, !9, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!12 = !{ptr @__initcall__kmod_dwc2__298_762_dwc2_platform_driver_init6, !13, !"__initcall__kmod_dwc2__298_762_dwc2_platform_driver_init6", i1 false, i1 false}
!13 = !{!"../drivers/usb/dwc2/platform.c", i32 762, i32 1}
!14 = !{ptr @__exitcall_dwc2_platform_driver_exit, !13, !"__exitcall_dwc2_platform_driver_exit", i1 false, i1 false}
!15 = !{ptr @dwc2_platform_driver, !16, !"dwc2_platform_driver", i1 false, i1 false}
!16 = !{!"../drivers/usb/dwc2/platform.c", i32 750, i32 31}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/dwc2/platform.c", i32 456, i32 3}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @dwc2_driver_probe._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @dwc2_driver_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/dwc2/platform.c", i32 464, i32 2}
!24 = !{ptr @dwc2_driver_probe.__UNIQUE_ID_ddebug296, !23, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!25 = !{ptr @dwc2_driver_probe.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/usb/dwc2/platform.c", i32 471, i32 2}
!27 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/dwc2/platform.c", i32 477, i32 2}
!30 = !{ptr @dwc2_driver_probe.__UNIQUE_ID_ddebug297, !29, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/dwc2/platform.c", i32 485, i32 63}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/dwc2/platform.c", i32 505, i32 11}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/dwc2/platform.c", i32 542, i32 50}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/dwc2/platform.c", i32 545, i32 38}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/dwc2/platform.c", i32 550, i32 38}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/dwc2/platform.c", i32 565, i32 37}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/dwc2/platform.c", i32 586, i32 11}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/dwc2/platform.c", i32 588, i32 3}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @dwc2_driver_probe._entry.19, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @dwc2_driver_probe._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/dwc2/platform.c", i32 227, i32 10}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/dwc2/platform.c", i32 231, i32 65}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/dwc2/platform.c", i32 234, i32 10}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/dwc2/platform.c", i32 242, i32 40}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/dwc2/platform.c", i32 251, i32 42}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/dwc2/platform.c", i32 265, i32 43}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/dwc2/platform.c", i32 273, i32 49}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/dwc2/platform.c", i32 275, i32 57}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/dwc2/platform.c", i32 284, i32 41}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/dwc2/core.h", i32 74, i32 2}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/dwc2/core.h", i32 75, i32 2}
!72 = distinct !{null, !73, !"dwc2_hsotg_supply_names", i1 false, i1 false}
!73 = !{!"../drivers/usb/dwc2/core.h", i32 73, i32 27}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/dwc2/platform.c", i32 114, i32 3}
!76 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @dwc2_get_dr_mode._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @dwc2_get_dr_mode._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/usb/dwc2/platform.c", i32 316, i32 4}
!83 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @dwc2_driver_remove._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @dwc2_driver_remove._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/dwc2/platform.c", i32 324, i32 4}
!88 = !{ptr @dwc2_driver_remove._entry.40, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @dwc2_driver_remove._entry_ptr.42, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @dwc2_driver_name, !91, !"dwc2_driver_name", i1 false, i1 false}
!91 = !{!"../drivers/usb/dwc2/platform.c", i32 57, i32 19}
!92 = !{ptr @dwc2_dev_pm_ops, !93, !"dwc2_dev_pm_ops", i1 false, i1 false}
!93 = !{!"../drivers/usb/dwc2/platform.c", i32 746, i32 32}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{i64 6308798}
!104 = !{i64 2156029984}
!105 = !{i8 0, i8 2}
!106 = !{i64 2148710244, i64 2148710249, i64 2148710262, i64 2148710306, i64 2148710340, i64 2148710361}
!107 = !{!"auto-init"}
!108 = !{i64 2153849147}
!109 = !{i64 6308380}
