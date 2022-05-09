; ModuleID = '/llk/IR_all_yes/drivers/phy/ti/phy-omap-usb2.c_pt.bc'
source_filename = "../drivers/phy/ti/phy-omap-usb2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+omap_usb2_set_comparator\22, \22a\22\09"
module asm "\09.weak\09__crc_omap_usb2_set_comparator\09\09\09\09"
module asm "\09.long\09__crc_omap_usb2_set_comparator\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_usb2_set_comparator:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_usb2_set_comparator\22\09\09\09\09\09"
module asm "__kstrtabns_omap_usb2_set_comparator:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_phy_data = type { ptr, i8, i32, i32, i32 }
%struct.omap_usb = type { %struct.usb_phy, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, i32, i32, i32, i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.phy_companion = type { ptr, ptr }

@__kstrtab_omap_usb2_set_comparator = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_usb2_set_comparator = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_usb2_set_comparator = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_usb2_set_comparator to i32), ptr @__kstrtab_omap_usb2_set_comparator, ptr @__kstrtabns_omap_usb2_set_comparator }, section "___ksymtab_gpl+omap_usb2_set_comparator", align 4
@__initcall__kmod_phy_omap_usb2__296_528_omap_usb2_driver_init6 = internal global ptr @omap_usb2_driver_init, section ".initcall6.init", align 4
@omap_usb2_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @omap_usb2_probe, ptr @omap_usb2_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_usb2_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_omap_usb2_driver_exit = internal global ptr @omap_usb2_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias297 = internal constant [39 x i8] c"phy_omap_usb2.alias=platform:omap_usb2\00", section ".modinfo", align 1
@__UNIQUE_ID_author298 = internal constant [44 x i8] c"phy_omap_usb2.author=Texas Instruments Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description299 = internal constant [47 x i8] c"phy_omap_usb2.description=OMAP USB2 phy driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [48 x i8] c"phy_omap_usb2.file=drivers/phy/ti/phy-omap-usb2\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [29 x i8] c"phy_omap_usb2.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"omap-usb2\00", [22 x i8] zeroinitializer }, align 32
@omap_usb2_id_table = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap-usb2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap_usb2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap5-usb2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap5_usb2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7x-usb2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dra7x_usb2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7x-usb2-phy2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dra7x_usb2_phy2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am437x-usb2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am437x_usb2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am654-usb2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am654_usb2_data }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"syscon-phy-power\00", [47 x i8] zeroinitializer }, align 32
@omap_usb2_probe.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"phy_omap_usb2\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"omap_usb2_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/phy/ti/phy-omap-usb2.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"can't get syscon-phy-power, using control device\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ctrl-module\00", [20 x i8] zeroinitializer }, align 32
@omap_usb2_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str.4, i32 419, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to get control device phandle\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap_usb2_probe._entry_ptr = internal global ptr @omap_usb2_probe._entry, section ".printk_index", align 4
@omap_usb2_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 425, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get control device\0A\00", [34 x i8] zeroinitializer }, align 32
@omap_usb2_probe._entry_ptr.12 = internal global ptr @omap_usb2_probe._entry.10, section ".printk_index", align 4
@omap_usb2_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 434, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"couldn't get power reg. offset\0A\00", [32 x i8] zeroinitializer }, align 32
@omap_usb2_probe._entry_ptr.15 = internal global ptr @omap_usb2_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wkupclk\00", [24 x i8] zeroinitializer }, align 32
@omap_usb2_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 445, ptr @.str.19, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"unable to get wkupclk %ld, trying old name\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@omap_usb2_probe._entry_ptr.20 = internal global ptr @omap_usb2_probe._entry.17, section ".printk_index", align 4
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"usb_phy_cm_clk32k\00", [46 x i8] zeroinitializer }, align 32
@omap_usb2_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 450, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to get usb_phy_cm_clk32k\0A\00", [63 x i8] zeroinitializer }, align 32
@omap_usb2_probe._entry_ptr.24 = internal global ptr @omap_usb2_probe._entry.22, section ".printk_index", align 4
@omap_usb2_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 455, ptr @.str.19, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"found usb_phy_cm_clk32k, please fix DTS\0A\00", [55 x i8] zeroinitializer }, align 32
@omap_usb2_probe._entry_ptr.27 = internal global ptr @omap_usb2_probe._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"refclk\00", [25 x i8] zeroinitializer }, align 32
@omap_usb2_probe.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.29, i8 0, i8 115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unable to get refclk, trying old name\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usb_otg_ss_refclk960m\00", [42 x i8] zeroinitializer }, align 32
@omap_usb2_probe.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.31, i8 0, i8 117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unable to get usb_otg_ss_refclk960m\0A\00", [59 x i8] zeroinitializer }, align 32
@omap_usb2_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.3, ptr @.str.4, i32 473, ptr @.str.19, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"found usb_otg_ss_refclk960m, please fix DTS\0A\00", [51 x i8] zeroinitializer }, align 32
@omap_usb2_probe._entry_ptr.34 = internal global ptr @omap_usb2_probe._entry.32, section ".printk_index", align 4
@ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @omap_usb_init, ptr @omap_usb_exit, ptr @omap_usb_power_on, ptr @omap_usb_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@omap_usb2_init_errata.am65x_sr10_soc_devices = internal constant { [2 x %struct.soc_device_attribute], [40 x i8] } { [2 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr @.str.35, ptr @.str.36, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AM65X\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SR1.0\00", [26 x i8] zeroinitializer }, align 32
@omap_usb2_enable_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 203, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to enable wkupclk %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"omap_usb2_enable_clocks\00", [40 x i8] zeroinitializer }, align 32
@omap_usb2_enable_clocks._entry_ptr = internal global ptr @omap_usb2_enable_clocks._entry, section ".printk_index", align 4
@omap_usb2_enable_clocks._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.4, i32 210, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to enable optclk %d\0A\00", [36 x i8] zeroinitializer }, align 32
@omap_usb2_enable_clocks._entry_ptr.41 = internal global ptr @omap_usb2_enable_clocks._entry.39, section ".printk_index", align 4
@omap_usb2_data = internal constant { %struct.usb_phy_data, [44 x i8] } { %struct.usb_phy_data { ptr @.str.42, i8 3, i32 1, i32 0, i32 1 }, [44 x i8] zeroinitializer }, align 32
@omap5_usb2_data = internal constant { %struct.usb_phy_data, [44 x i8] } { %struct.usb_phy_data { ptr @.str.43, i8 0, i32 1, i32 0, i32 1 }, [44 x i8] zeroinitializer }, align 32
@dra7x_usb2_data = internal constant { %struct.usb_phy_data, [44 x i8] } { %struct.usb_phy_data { ptr @.str.44, i8 4, i32 1, i32 0, i32 1 }, [44 x i8] zeroinitializer }, align 32
@dra7x_usb2_phy2_data = internal constant { %struct.usb_phy_data, [44 x i8] } { %struct.usb_phy_data { ptr @.str.45, i8 4, i32 268435456, i32 0, i32 268435456 }, [44 x i8] zeroinitializer }, align 32
@am437x_usb2_data = internal constant { %struct.usb_phy_data, [44 x i8] } { %struct.usb_phy_data { ptr @.str.46, i8 0, i32 1572867, i32 1572864, i32 3 }, [44 x i8] zeroinitializer }, align 32
@am654_usb2_data = internal constant { %struct.usb_phy_data, [44 x i8] } { %struct.usb_phy_data { ptr @.str.47, i8 4, i32 304, i32 48, i32 256 }, [44 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"omap_usb2\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"omap5_usb2\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dra7x_usb2\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dra7x_usb2_phy2\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"am437x_usb2\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"am654_usb2\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"omap_usb2_driver\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 519, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 523, i32 11 }
@___asan_gen_.54 = private unnamed_addr constant [19 x i8] c"omap_usb2_id_table\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 316, i32 34 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 410, i32 9 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 412, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 416, i32 41 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 418, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 425, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 433, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 439, i32 40 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 444, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 446, i32 41 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 450, i32 5 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 454, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 458, i32 39 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 463, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 464, i32 40 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 468, i32 5 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 472, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 262, i32 29 }
@___asan_gen_.147 = private unnamed_addr constant [23 x i8] c"am65x_sr10_soc_devices\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 347, i32 43 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 348, i32 15 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 348, i32 36 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 203, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 210, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant [15 x i8] c"omap_usb2_data\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 270, i32 34 }
@___asan_gen_.174 = private unnamed_addr constant [16 x i8] c"omap5_usb2_data\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 277, i32 34 }
@___asan_gen_.177 = private unnamed_addr constant [16 x i8] c"dra7x_usb2_data\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 284, i32 34 }
@___asan_gen_.180 = private unnamed_addr constant [21 x i8] c"dra7x_usb2_phy2_data\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 291, i32 34 }
@___asan_gen_.183 = private unnamed_addr constant [17 x i8] c"am437x_usb2_data\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 298, i32 34 }
@___asan_gen_.186 = private unnamed_addr constant [16 x i8] c"am654_usb2_data\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 307, i32 34 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 271, i32 11 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 278, i32 11 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 285, i32 11 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 292, i32 11 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 299, i32 11 }
@___asan_gen_.204 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.205 = private constant [34 x i8] c"../drivers/phy/ti/phy-omap-usb2.c\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 308, i32 11 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @__UNIQUE_ID_alias297, ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_description299, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__exitcall_omap_usb2_driver_exit, ptr @__initcall__kmod_phy_omap_usb2__296_528_omap_usb2_driver_init6, ptr @__ksymtab_omap_usb2_set_comparator, ptr @omap_usb2_driver_exit, ptr @omap_usb2_enable_clocks._entry, ptr @omap_usb2_enable_clocks._entry.39, ptr @omap_usb2_enable_clocks._entry_ptr, ptr @omap_usb2_enable_clocks._entry_ptr.41, ptr @omap_usb2_probe._entry, ptr @omap_usb2_probe._entry.10, ptr @omap_usb2_probe._entry.13, ptr @omap_usb2_probe._entry.17, ptr @omap_usb2_probe._entry.22, ptr @omap_usb2_probe._entry.25, ptr @omap_usb2_probe._entry.32, ptr @omap_usb2_probe._entry_ptr, ptr @omap_usb2_probe._entry_ptr.12, ptr @omap_usb2_probe._entry_ptr.15, ptr @omap_usb2_probe._entry_ptr.20, ptr @omap_usb2_probe._entry_ptr.24, ptr @omap_usb2_probe._entry_ptr.27, ptr @omap_usb2_probe._entry_ptr.34, ptr @omap_usb2_driver, ptr @.str, ptr @omap_usb2_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @ops, ptr @omap_usb2_init_errata.am65x_sr10_soc_devices, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @omap_usb2_data, ptr @omap5_usb2_data, ptr @dra7x_usb2_data, ptr @dra7x_usb2_phy2_data, ptr @am437x_usb2_data, ptr @am654_usb2_data, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_usb2_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_usb2_id_table to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_usb2_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_usb2_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_usb2_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_usb2_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_usb2_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_usb2_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_usb2_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_usb2_init_errata.am65x_sr10_soc_devices to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_usb2_enable_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_usb2_enable_clocks._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_usb2_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap5_usb2_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7x_usb2_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7x_usb2_phy2_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am437x_usb2_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am654_usb2_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_usb2_set_comparator(ptr noundef %comparator) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usb_get_phy(i32 noundef 1) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %comparator2 = getelementptr inbounds %struct.omap_usb, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %comparator2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %comparator, ptr %comparator2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_phy(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_usb2_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap_usb2_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @omap_usb2_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap_usb2_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_usb2_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_match_device(ptr noundef nonnull @omap_usb2_id_table, ptr noundef %dev) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 312, i32 noundef 3520) #6
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call.i297 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #6
  %tobool9.not = icmp eq ptr %call.i297, null
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %dev13 = getelementptr inbounds %struct.omap_usb, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %dev13 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %dev13, align 4
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %call.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %label18 = getelementptr inbounds %struct.usb_phy, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %label18 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %label18, align 4
  %otg20 = getelementptr inbounds %struct.usb_phy, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %otg20 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i297, ptr %otg20, align 4
  %type = getelementptr inbounds %struct.usb_phy, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %type, align 4
  %mask = getelementptr inbounds %struct.usb_phy_data, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mask, align 4
  %mask22 = getelementptr inbounds %struct.omap_usb, ptr %call.i, i32 0, i32 11
  %13 = ptrtoint ptr %mask22 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %mask22, align 4
  %power_on = getelementptr inbounds %struct.usb_phy_data, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %power_on to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %power_on, align 4
  %power_on23 = getelementptr inbounds %struct.omap_usb, ptr %call.i, i32 0, i32 12
  %16 = ptrtoint ptr %power_on23 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %power_on23, align 4
  %power_off = getelementptr inbounds %struct.usb_phy_data, ptr %3, i32 0, i32 4
  %17 = ptrtoint ptr %power_off to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %power_off, align 4
  %power_off24 = getelementptr inbounds %struct.omap_usb, ptr %call.i, i32 0, i32 13
  %19 = ptrtoint ptr %power_off24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %power_off24, align 4
  %flags = getelementptr inbounds %struct.usb_phy_data, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %flags, align 4
  %flags25 = getelementptr inbounds %struct.omap_usb, ptr %call.i, i32 0, i32 8
  %22 = ptrtoint ptr %flags25 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %flags25, align 4
  %call.i298 = tail call ptr @soc_device_match(ptr noundef nonnull @omap_usb2_init_errata.am65x_sr10_soc_devices) #6
  %tobool.not.i = icmp eq ptr %call.i298, null
  br i1 %tobool.not.i, label %if.end11.omap_usb2_init_errata.exit_crit_edge, label %if.then.i

if.end11.omap_usb2_init_errata.exit_crit_edge:    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %omap_usb2_init_errata.exit

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %flags25 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %flags25, align 4
  %25 = or i8 %24, 8
  store i8 %25, ptr %flags25, align 4
  br label %omap_usb2_init_errata.exit

omap_usb2_init_errata.exit:                       ; preds = %if.then.i, %if.end11.omap_usb2_init_errata.exit_crit_edge
  %call26 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %phy_base = getelementptr inbounds %struct.omap_usb, ptr %call.i, i32 0, i32 3
  %26 = ptrtoint ptr %phy_base to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call26, ptr %phy_base, align 4
  %cmp.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then29, label %if.end32

if.then29:                                        ; preds = %omap_usb2_init_errata.exit
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %call26 to i32
  br label %cleanup

if.end32:                                         ; preds = %omap_usb2_init_errata.exit
  %call33 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %1, ptr noundef nonnull @.str.1) #6
  %syscon_phy_power = getelementptr inbounds %struct.omap_usb, ptr %call.i, i32 0, i32 9
  %28 = ptrtoint ptr %syscon_phy_power to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call33, ptr %syscon_phy_power, align 4
  %cmp.i299 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i299, label %do.body, label %if.else

do.body:                                          ; preds = %if.end32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_usb2_probe.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_usb2_probe, %if.then41)) #6
          to label %do.end [label %if.then41], !srcloc !125

if.then41:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_usb2_probe.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.5) #6
  br label %do.end

do.end:                                           ; preds = %if.then41, %do.body
  %29 = ptrtoint ptr %syscon_phy_power to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %syscon_phy_power, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #6
  %30 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i300 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i300)
  %tobool.not.i301 = icmp eq i32 %call.i300, 0
  br i1 %tobool.not.i301, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  br label %do.end50

of_parse_phandle.exit:                            ; preds = %do.end
  %31 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  %tobool46.not = icmp eq ptr %32, null
  br i1 %tobool46.not, label %of_parse_phandle.exit.do.end50_crit_edge, label %if.end52

of_parse_phandle.exit.do.end50_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end50

do.end50:                                         ; preds = %of_parse_phandle.exit.do.end50_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end52:                                         ; preds = %of_parse_phandle.exit
  %call53 = call ptr @of_find_device_by_node(ptr noundef nonnull %32) #6
  %tobool54.not = icmp eq ptr %call53, null
  br i1 %tobool54.not, label %do.end58, label %if.end60

do.end58:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end60:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %dev61 = getelementptr inbounds %struct.platform_device, ptr %call53, i32 0, i32 3
  %control_dev = getelementptr inbounds %struct.omap_usb, ptr %call.i, i32 0, i32 5
  %33 = ptrtoint ptr %control_dev to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %dev61, ptr %control_dev, align 4
  br label %if.end70

if.else:                                          ; preds = %if.end32
  %power_reg = getelementptr inbounds %struct.omap_usb, ptr %call.i, i32 0, i32 10
  %call62 = tail call i32 @of_property_read_u32_index(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef 1, ptr noundef %power_reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.else.if.end70_crit_edge, label %do.end67

if.else.if.end70_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

do.end67:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #9
  br label %cleanup

if.end70:                                         ; preds = %if.else.if.end70_crit_edge, %if.end60
  %34 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev13, align 4
  %call72 = call ptr @devm_clk_get(ptr noundef %35, ptr noundef nonnull @.str.16) #6
  %wkupclk = getelementptr inbounds %struct.omap_usb, ptr %call.i, i32 0, i32 6
  %36 = ptrtoint ptr %wkupclk to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call72, ptr %wkupclk, align 4
  %cmp.i303 = icmp ugt ptr %call72, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i303, label %if.then75, label %if.end70.if.end108_crit_edge

if.end70.if.end108_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end108

if.then75:                                        ; preds = %if.end70
  %cmp = icmp eq ptr %call72, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %if.then75.cleanup_crit_edge, label %do.end82

if.then75.cleanup_crit_edge:                      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end82:                                         ; preds = %if.then75
  %37 = ptrtoint ptr %call72 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %37) #9
  %38 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev13, align 4
  %call87 = call ptr @devm_clk_get(ptr noundef %39, ptr noundef nonnull @.str.21) #6
  %40 = ptrtoint ptr %wkupclk to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call87, ptr %wkupclk, align 4
  %cmp.i304 = icmp ugt ptr %call87, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i304, label %if.then91, label %do.end106

if.then91:                                        ; preds = %do.end82
  %cmp94.not = icmp eq ptr %call87, inttoptr (i32 -517 to ptr)
  br i1 %cmp94.not, label %if.then91.if.end100_crit_edge, label %do.end98

if.then91.if.end100_crit_edge:                    ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

do.end98:                                         ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #9
  br label %if.end100

if.end100:                                        ; preds = %do.end98, %if.then91.if.end100_crit_edge
  %41 = ptrtoint ptr %wkupclk to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wkupclk, align 4
  %43 = ptrtoint ptr %42 to i32
  br label %cleanup

do.end106:                                        ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.26) #9
  br label %if.end108

if.end108:                                        ; preds = %do.end106, %if.end70.if.end108_crit_edge
  %44 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev13, align 4
  %call110 = call ptr @devm_clk_get(ptr noundef %45, ptr noundef nonnull @.str.28) #6
  %optclk = getelementptr inbounds %struct.omap_usb, ptr %call.i, i32 0, i32 7
  %46 = ptrtoint ptr %optclk to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call110, ptr %optclk, align 4
  %cmp.i305 = icmp ugt ptr %call110, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i305, label %if.then113, label %if.end108.if.end170_crit_edge

if.end108.if.end170_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end170

if.then113:                                       ; preds = %if.end108
  %cmp116 = icmp eq ptr %call110, inttoptr (i32 -517 to ptr)
  br i1 %cmp116, label %if.then113.cleanup_crit_edge, label %do.body119

if.then113.cleanup_crit_edge:                     ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body119:                                       ; preds = %if.then113
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_usb2_probe.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_usb2_probe, %if.then131)) #6
          to label %do.end135 [label %if.then131], !srcloc !125

if.then131:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_usb2_probe.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.29) #6
  br label %do.end135

do.end135:                                        ; preds = %if.then131, %do.body119
  %47 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev13, align 4
  %call137 = call ptr @devm_clk_get(ptr noundef %48, ptr noundef nonnull @.str.30) #6
  %49 = ptrtoint ptr %optclk to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call137, ptr %optclk, align 4
  %cmp.i306 = icmp ugt ptr %call137, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i306, label %if.then141, label %do.end167

if.then141:                                       ; preds = %do.end135
  %cmp144.not = icmp eq ptr %call137, inttoptr (i32 -517 to ptr)
  br i1 %cmp144.not, label %if.then141.if.end170_crit_edge, label %do.body146

if.then141.if.end170_crit_edge:                   ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end170

do.body146:                                       ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_usb2_probe.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_usb2_probe, %if.then158)) #6
          to label %if.end170 [label %if.then158], !srcloc !125

if.then158:                                       ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_usb2_probe.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.31) #6
  br label %if.end170

do.end167:                                        ; preds = %do.end135
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.33) #9
  br label %if.end170

if.end170:                                        ; preds = %do.end167, %if.then158, %do.body146, %if.then141.if.end170_crit_edge, %if.end108.if.end170_crit_edge
  %set_host = getelementptr inbounds %struct.usb_otg, ptr %call.i297, i32 0, i32 6
  %50 = ptrtoint ptr %set_host to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @omap_usb_set_host, ptr %set_host, align 4
  %set_peripheral = getelementptr inbounds %struct.usb_otg, ptr %call.i297, i32 0, i32 7
  %51 = ptrtoint ptr %set_peripheral to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @omap_usb_set_peripheral, ptr %set_peripheral, align 4
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %flags, align 4
  %54 = and i8 %53, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool172.not = icmp eq i8 %54, 0
  br i1 %tobool172.not, label %if.end170.if.end174_crit_edge, label %if.then173

if.end170.if.end174_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end174

if.then173:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #8
  %set_vbus = getelementptr inbounds %struct.usb_otg, ptr %call.i297, i32 0, i32 8
  %55 = ptrtoint ptr %set_vbus to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @omap_usb_set_vbus, ptr %set_vbus, align 4
  br label %if.end174

if.end174:                                        ; preds = %if.then173, %if.end170.if.end174_crit_edge
  %56 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %flags, align 4
  %58 = and i8 %57, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool178.not = icmp eq i8 %58, 0
  br i1 %tobool178.not, label %if.end174.if.end180_crit_edge, label %if.then179

if.end174.if.end180_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end180

if.then179:                                       ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #8
  %start_srp = getelementptr inbounds %struct.usb_otg, ptr %call.i297, i32 0, i32 9
  %59 = ptrtoint ptr %start_srp to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @omap_usb_start_srp, ptr %start_srp, align 4
  br label %if.end180

if.end180:                                        ; preds = %if.then179, %if.end174.if.end180_crit_edge
  %usb_phy = getelementptr inbounds %struct.usb_otg, ptr %call.i297, i32 0, i32 2
  %60 = ptrtoint ptr %usb_phy to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i, ptr %usb_phy, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %61 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %62 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev13, align 4
  call void @pm_runtime_enable(ptr noundef %63) #6
  %64 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev13, align 4
  %call184 = call ptr @devm_phy_create(ptr noundef %65, ptr noundef null, ptr noundef nonnull @ops) #6
  %cmp.i307 = icmp ugt ptr %call184, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i307, label %if.then186, label %if.end189

if.then186:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev13, align 4
  call void @__pm_runtime_disable(ptr noundef %67, i1 noundef zeroext true) #6
  %68 = ptrtoint ptr %call184 to i32
  br label %cleanup

if.end189:                                        ; preds = %if.end180
  %driver_data.i.i308 = getelementptr inbounds %struct.device, ptr %call184, i32 0, i32 8
  %69 = ptrtoint ptr %driver_data.i.i308 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call.i, ptr %driver_data.i.i308, align 4
  %70 = ptrtoint ptr %syscon_phy_power to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %syscon_phy_power, align 4
  %tobool.not.i.i = icmp eq ptr %71, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #8
  %control_dev.i.i = getelementptr inbounds %struct.omap_usb, ptr %call.i, i32 0, i32 5
  %72 = ptrtoint ptr %control_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %control_dev.i.i, align 4
  call void @omap_control_phy_power(ptr noundef %73, i32 noundef 0) #6
  br label %omap_usb_power_off.exit

if.end.i.i:                                       ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %power_off24 to i32
  call void @__asan_load4_noabort(i32 %74)
  %val.0.i.i = load i32, ptr %power_off24, align 4
  %power_reg.i.i = getelementptr inbounds %struct.omap_usb, ptr %call.i, i32 0, i32 10
  %75 = ptrtoint ptr %power_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %power_reg.i.i, align 4
  %77 = ptrtoint ptr %mask22 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %mask22, align 4
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef nonnull %71, i32 noundef %76, i32 noundef %78, i32 noundef %val.0.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %omap_usb_power_off.exit

omap_usb_power_off.exit:                          ; preds = %if.end.i.i, %if.then.i.i
  %79 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev13, align 4
  %call192 = call ptr @__devm_of_phy_provider_register(ptr noundef %80, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #6
  %cmp.i309 = icmp ugt ptr %call192, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i309, label %if.then194, label %if.end197

if.then194:                                       ; preds = %omap_usb_power_off.exit
  call void @__sanitizer_cov_trace_pc() #8
  %81 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev13, align 4
  call void @__pm_runtime_disable(ptr noundef %82, i1 noundef zeroext true) #6
  %83 = ptrtoint ptr %call192 to i32
  br label %cleanup

if.end197:                                        ; preds = %omap_usb_power_off.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call199 = call i32 @usb_add_phy_dev(ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end197, %if.then194, %if.then186, %if.then113.cleanup_crit_edge, %if.end100, %if.then75.cleanup_crit_edge, %do.end67, %do.end58, %do.end50, %if.then29, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %27, %if.then29 ], [ %43, %if.end100 ], [ %68, %if.then186 ], [ %83, %if.then194 ], [ 0, %if.end197 ], [ -22, %do.end58 ], [ -22, %do.end50 ], [ -22, %do.end67 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ -517, %if.then75.cleanup_crit_edge ], [ -517, %if.then113.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_usb2_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @usb_remove_phy(ptr noundef %1) #6
  %dev = getelementptr inbounds %struct.omap_usb, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @omap_usb_set_host(ptr nocapture noundef writeonly %otg, ptr noundef %host) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host1 = getelementptr inbounds %struct.usb_otg, ptr %otg, i32 0, i32 3
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %host, ptr %host1, align 4
  %tobool.not = icmp eq ptr %host, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %state = getelementptr inbounds %struct.usb_otg, ptr %otg, i32 0, i32 5
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @omap_usb_set_peripheral(ptr nocapture noundef writeonly %otg, ptr noundef %gadget) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gadget1 = getelementptr inbounds %struct.usb_otg, ptr %otg, i32 0, i32 4
  %0 = ptrtoint ptr %gadget1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %gadget, ptr %gadget1, align 4
  %tobool.not = icmp eq ptr %gadget, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %state = getelementptr inbounds %struct.usb_otg, ptr %otg, i32 0, i32 5
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_usb_set_vbus(ptr nocapture noundef readonly %otg, i1 noundef zeroext %enabled) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_phy = getelementptr inbounds %struct.usb_otg, ptr %otg, i32 0, i32 2
  %0 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_phy, align 4
  %comparator = getelementptr inbounds %struct.omap_usb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %comparator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %comparator, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call i32 %5(ptr noundef nonnull %3, i1 noundef zeroext %enabled) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_usb_start_srp(ptr nocapture noundef readonly %otg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_phy = getelementptr inbounds %struct.usb_otg, ptr %otg, i32 0, i32 2
  %0 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_phy, align 4
  %comparator = getelementptr inbounds %struct.omap_usb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %comparator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %comparator, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %start_srp = getelementptr inbounds %struct.phy_companion, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %start_srp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %start_srp, align 4
  %call = tail call i32 %5(ptr noundef nonnull %3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_usb_power_off(ptr nocapture noundef readonly %x) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %x, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %syscon_phy_power.i = getelementptr inbounds %struct.omap_usb, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %syscon_phy_power.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %syscon_phy_power.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %control_dev.i = getelementptr inbounds %struct.omap_usb, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %control_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %control_dev.i, align 4
  tail call void @omap_control_phy_power(ptr noundef %5, i32 noundef 0) #6
  br label %omap_usb_phy_power.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %power_off.i = getelementptr inbounds %struct.omap_usb, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %power_off.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %val.0.i = load i32, ptr %power_off.i, align 4
  %power_reg.i = getelementptr inbounds %struct.omap_usb, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %power_reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %power_reg.i, align 4
  %mask.i = getelementptr inbounds %struct.omap_usb, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mask.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %3, i32 noundef %8, i32 noundef %10, i32 noundef %val.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %omap_usb_phy_power.exit

omap_usb_phy_power.exit:                          ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i.i, %if.end.i ], [ 0, %if.then.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_phy_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_usb_init(ptr nocapture noundef readonly %x) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %x, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %wkupclk.i = getelementptr inbounds %struct.omap_usb, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %wkupclk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wkupclk.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.clk_prepare_enable.exit.i_crit_edge

entry.clk_prepare_enable.exit.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit.i

if.end.i.i:                                       ; preds = %entry
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %clk_prepare_enable.exit.i

clk_prepare_enable.exit.i:                        ; preds = %if.then3.i.i, %entry.clk_prepare_enable.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %entry.clk_prepare_enable.exit.i_crit_edge ], [ %call1.i.i, %if.then3.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %clk_prepare_enable.exit.i.if.end.i_crit_edge

clk_prepare_enable.exit.i.if.end.i_crit_edge:     ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.omap_usb, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.37, i32 noundef %retval.0.i.i) #9
  br label %omap_usb2_enable_clocks.exit

if.end.i:                                         ; preds = %clk_prepare_enable.exit.i.if.end.i_crit_edge, %if.end.i.i.if.end.i_crit_edge
  %optclk.i = getelementptr inbounds %struct.omap_usb, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %optclk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %optclk.i, align 4
  %cmp.i.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.omap_usb2_enable_clocks.exit_crit_edge, label %if.then2.i

if.end.i.omap_usb2_enable_clocks.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %omap_usb2_enable_clocks.exit

if.then2.i:                                       ; preds = %if.end.i
  %call.i1.i = tail call i32 @clk_prepare(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool.not.i2.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool.not.i2.i, label %if.end.i5.i, label %if.then2.i.clk_prepare_enable.exit8.i_crit_edge

if.then2.i.clk_prepare_enable.exit8.i_crit_edge:  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit8.i

if.end.i5.i:                                      ; preds = %if.then2.i
  %call1.i3.i = tail call i32 @clk_enable(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i)
  %tobool2.not.i4.i = icmp eq i32 %call1.i3.i, 0
  br i1 %tobool2.not.i4.i, label %if.end.i5.i.omap_usb2_enable_clocks.exit_crit_edge, label %if.then3.i6.i

if.end.i5.i.omap_usb2_enable_clocks.exit_crit_edge: ; preds = %if.end.i5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %omap_usb2_enable_clocks.exit

if.then3.i6.i:                                    ; preds = %if.end.i5.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %7) #6
  br label %clk_prepare_enable.exit8.i

clk_prepare_enable.exit8.i:                       ; preds = %if.then3.i6.i, %if.then2.i.clk_prepare_enable.exit8.i_crit_edge
  %retval.0.i7.i = phi i32 [ %call.i1.i, %if.then2.i.clk_prepare_enable.exit8.i_crit_edge ], [ %call1.i3.i, %if.then3.i6.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i7.i)
  %cmp5.i = icmp slt i32 %retval.0.i7.i, 0
  br i1 %cmp5.i, label %do.end9.i, label %clk_prepare_enable.exit8.i.omap_usb2_enable_clocks.exit_crit_edge

clk_prepare_enable.exit8.i.omap_usb2_enable_clocks.exit_crit_edge: ; preds = %clk_prepare_enable.exit8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %omap_usb2_enable_clocks.exit

do.end9.i:                                        ; preds = %clk_prepare_enable.exit8.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev10.i = getelementptr inbounds %struct.omap_usb, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %dev10.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev10.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.40, i32 noundef %retval.0.i7.i) #9
  %10 = ptrtoint ptr %wkupclk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wkupclk.i, align 4
  tail call void @clk_disable(ptr noundef %11) #6
  br label %omap_usb2_enable_clocks.exit

omap_usb2_enable_clocks.exit:                     ; preds = %do.end9.i, %clk_prepare_enable.exit8.i.omap_usb2_enable_clocks.exit_crit_edge, %if.end.i5.i.omap_usb2_enable_clocks.exit_crit_edge, %if.end.i.omap_usb2_enable_clocks.exit_crit_edge, %do.end.i
  %flags = getelementptr inbounds %struct.omap_usb, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags, align 4
  %14 = and i8 %13, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %omap_usb2_enable_clocks.exit.if.end_crit_edge, label %if.then

omap_usb2_enable_clocks.exit.if.end_crit_edge:    ; preds = %omap_usb2_enable_clocks.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %omap_usb2_enable_clocks.exit
  call void @__sanitizer_cov_trace_pc() #8
  %phy_base = getelementptr inbounds %struct.omap_usb, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %phy_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phy_base, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 76
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !126
  %or = or i32 %17, -2147483648
  %18 = ptrtoint ptr %phy_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phy_base, align 4
  %add.ptr.i23 = getelementptr i8, ptr %19, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 %or) #6, !srcloc !127
  br label %if.end

if.end:                                           ; preds = %if.then, %omap_usb2_enable_clocks.exit.if.end_crit_edge
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %flags, align 4
  %22 = and i8 %21, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool7.not = icmp eq i8 %22, 0
  br i1 %tobool7.not, label %if.end.if.end13_crit_edge, label %if.then8

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %phy_base9 = getelementptr inbounds %struct.omap_usb, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %phy_base9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %phy_base9, align 4
  %add.ptr.i24 = getelementptr i8, ptr %24, i32 20
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24) #6, !srcloc !126
  %or11 = or i32 %25, 805306368
  %26 = ptrtoint ptr %phy_base9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %phy_base9, align 4
  %add.ptr.i25 = getelementptr i8, ptr %27, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %or11) #6, !srcloc !127
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.end.if.end13_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_usb_exit(ptr nocapture noundef readonly %x) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %x, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %wkupclk.i = getelementptr inbounds %struct.omap_usb, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %wkupclk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wkupclk.i, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  %optclk.i = getelementptr inbounds %struct.omap_usb, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %optclk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %optclk.i, align 4
  %cmp.i.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.omap_usb2_disable_clocks.exit_crit_edge, label %if.then.i

entry.omap_usb2_disable_clocks.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %omap_usb2_disable_clocks.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %omap_usb2_disable_clocks.exit

omap_usb2_disable_clocks.exit:                    ; preds = %if.then.i, %entry.omap_usb2_disable_clocks.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_usb_power_on(ptr nocapture noundef readonly %x) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %x, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %syscon_phy_power.i = getelementptr inbounds %struct.omap_usb, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %syscon_phy_power.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %syscon_phy_power.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %control_dev.i = getelementptr inbounds %struct.omap_usb, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %control_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %control_dev.i, align 4
  tail call void @omap_control_phy_power(ptr noundef %5, i32 noundef 1) #6
  br label %omap_usb_phy_power.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %power_on.i = getelementptr inbounds %struct.omap_usb, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %power_on.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %val.0.i = load i32, ptr %power_on.i, align 4
  %power_reg.i = getelementptr inbounds %struct.omap_usb, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %power_reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %power_reg.i, align 4
  %mask.i = getelementptr inbounds %struct.omap_usb, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mask.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %3, i32 noundef %8, i32 noundef %10, i32 noundef %val.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %omap_usb_phy_power.exit

omap_usb_phy_power.exit:                          ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i.i, %if.end.i ], [ 0, %if.then.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_control_phy_power(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_phy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !14, !16, !18, !20, !22, !23, !24, !25, !26, !28, !30, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !47, !48, !49, !51, !53, !54, !55, !57, !58, !59, !61, !63, !64, !66, !68, !69, !71, !72, !73, !75, !77, !79, !81, !83, !84, !85, !86, !88, !89, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @__ksymtab_omap_usb2_set_comparator, !1, !"__ksymtab_omap_usb2_set_comparator", i1 false, i1 false}
!1 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 113, i32 1}
!2 = !{ptr @__initcall__kmod_phy_omap_usb2__296_528_omap_usb2_driver_init6, !3, !"__initcall__kmod_phy_omap_usb2__296_528_omap_usb2_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 528, i32 1}
!4 = !{ptr @__exitcall_omap_usb2_driver_exit, !3, !"__exitcall_omap_usb2_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_alias297, !6, !"__UNIQUE_ID_alias297", i1 false, i1 false}
!6 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 530, i32 1}
!7 = !{ptr @__UNIQUE_ID_author298, !8, !"__UNIQUE_ID_author298", i1 false, i1 false}
!8 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 531, i32 1}
!9 = !{ptr @__UNIQUE_ID_description299, !10, !"__UNIQUE_ID_description299", i1 false, i1 false}
!10 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 532, i32 1}
!11 = !{ptr @__UNIQUE_ID_file300, !12, !"__UNIQUE_ID_file300", i1 false, i1 false}
!12 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 533, i32 1}
!13 = !{ptr @__UNIQUE_ID_license301, !12, !"__UNIQUE_ID_license301", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 523, i32 11}
!16 = !{ptr @omap_usb2_driver, !17, !"omap_usb2_driver", i1 false, i1 false}
!17 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 519, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 410, i32 9}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 412, i32 3}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @omap_usb2_probe.__UNIQUE_ID_ddebug293, !21, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 416, i32 41}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 418, i32 4}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @omap_usb2_probe._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @omap_usb2_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 425, i32 4}
!36 = !{ptr @omap_usb2_probe._entry.10, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @omap_usb2_probe._entry_ptr.12, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 433, i32 4}
!40 = !{ptr @omap_usb2_probe._entry.13, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @omap_usb2_probe._entry_ptr.15, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 439, i32 40}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 444, i32 3}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @omap_usb2_probe._entry.17, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @omap_usb2_probe._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 446, i32 41}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 450, i32 5}
!53 = !{ptr @omap_usb2_probe._entry.22, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @omap_usb2_probe._entry_ptr.24, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 454, i32 3}
!57 = !{ptr @omap_usb2_probe._entry.25, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @omap_usb2_probe._entry_ptr.27, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 458, i32 39}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 463, i32 3}
!63 = !{ptr @omap_usb2_probe.__UNIQUE_ID_ddebug294, !62, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 464, i32 40}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 468, i32 5}
!68 = !{ptr @omap_usb2_probe.__UNIQUE_ID_ddebug295, !67, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 472, i32 4}
!71 = !{ptr @omap_usb2_probe._entry.32, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @omap_usb2_probe._entry_ptr.34, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 348, i32 15}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 348, i32 36}
!77 = !{ptr @omap_usb2_init_errata.am65x_sr10_soc_devices, !78, !"am65x_sr10_soc_devices", i1 false, i1 false}
!78 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 347, i32 43}
!79 = !{ptr @ops, !80, !"ops", i1 false, i1 false}
!80 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 262, i32 29}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 203, i32 3}
!83 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @omap_usb2_enable_clocks._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @omap_usb2_enable_clocks._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 210, i32 4}
!88 = !{ptr @omap_usb2_enable_clocks._entry.39, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @omap_usb2_enable_clocks._entry_ptr.41, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @omap_usb2_id_table, !91, !"omap_usb2_id_table", i1 false, i1 false}
!91 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 316, i32 34}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 271, i32 11}
!94 = !{ptr @omap_usb2_data, !95, !"omap_usb2_data", i1 false, i1 false}
!95 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 270, i32 34}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 278, i32 11}
!98 = !{ptr @omap5_usb2_data, !99, !"omap5_usb2_data", i1 false, i1 false}
!99 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 277, i32 34}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 285, i32 11}
!102 = !{ptr @dra7x_usb2_data, !103, !"dra7x_usb2_data", i1 false, i1 false}
!103 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 284, i32 34}
!104 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 292, i32 11}
!106 = !{ptr @dra7x_usb2_phy2_data, !107, !"dra7x_usb2_phy2_data", i1 false, i1 false}
!107 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 291, i32 34}
!108 = !{ptr @.str.46, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 299, i32 11}
!110 = !{ptr @am437x_usb2_data, !111, !"am437x_usb2_data", i1 false, i1 false}
!111 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 298, i32 34}
!112 = !{ptr @.str.47, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 308, i32 11}
!114 = !{ptr @am654_usb2_data, !115, !"am654_usb2_data", i1 false, i1 false}
!115 = !{!"../drivers/phy/ti/phy-omap-usb2.c", i32 307, i32 34}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!125 = !{i64 2148732982, i64 2148732987, i64 2148733000, i64 2148733044, i64 2148733078, i64 2148733099}
!126 = !{i64 3080990}
!127 = !{i64 3080572}
