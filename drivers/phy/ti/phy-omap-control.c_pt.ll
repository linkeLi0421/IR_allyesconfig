; ModuleID = '/llk/IR_all_yes/drivers/phy/ti/phy-omap-control.c_pt.bc'
source_filename = "../drivers/phy/ti/phy-omap-control.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+omap_control_pcie_pcs\22, \22a\22\09"
module asm "\09.weak\09__crc_omap_control_pcie_pcs\09\09\09\09"
module asm "\09.long\09__crc_omap_control_pcie_pcs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_control_pcie_pcs:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_control_pcie_pcs\22\09\09\09\09\09"
module asm "__kstrtabns_omap_control_pcie_pcs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+omap_control_phy_power\22, \22a\22\09"
module asm "\09.weak\09__crc_omap_control_phy_power\09\09\09\09"
module asm "\09.long\09__crc_omap_control_phy_power\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_control_phy_power:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_control_phy_power\22\09\09\09\09\09"
module asm "__kstrtabns_omap_control_phy_power:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+omap_control_usb_set_mode\22, \22a\22\09"
module asm "\09.weak\09__crc_omap_control_usb_set_mode\09\09\09\09"
module asm "\09.long\09__crc_omap_control_usb_set_mode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_control_usb_set_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_control_usb_set_mode\22\09\09\09\09\09"
module asm "__kstrtabns_omap_control_usb_set_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.omap_control_phy = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@omap_control_pcie_pcs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 30, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013%s: invalid device\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"omap_control_pcie_pcs\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/phy/ti/phy-omap-control.c\00", [62 x i8] zeroinitializer }, align 32
@omap_control_pcie_pcs._entry_ptr = internal global ptr @omap_control_pcie_pcs._entry, section ".printk_index", align 4
@omap_control_pcie_pcs._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 36, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: invalid control phy device\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap_control_pcie_pcs._entry_ptr.7 = internal global ptr @omap_control_pcie_pcs._entry.3, section ".printk_index", align 4
@omap_control_pcie_pcs._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 41, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: unsupported operation\0A\00", [37 x i8] zeroinitializer }, align 32
@omap_control_pcie_pcs._entry_ptr.10 = internal global ptr @omap_control_pcie_pcs._entry.8, section ".printk_index", align 4
@__kstrtab_omap_control_pcie_pcs = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_control_pcie_pcs = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_control_pcie_pcs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_control_pcie_pcs to i32), ptr @__kstrtab_omap_control_pcie_pcs, ptr @__kstrtabns_omap_control_pcie_pcs }, section "___ksymtab_gpl+omap_control_pcie_pcs", align 4
@omap_control_phy_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.11, ptr @.str.2, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"omap_control_phy_power\00", [41 x i8] zeroinitializer }, align 32
@omap_control_phy_power._entry_ptr = internal global ptr @omap_control_phy_power._entry, section ".printk_index", align 4
@omap_control_phy_power._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.11, ptr @.str.2, i32 71, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@omap_control_phy_power._entry_ptr.13 = internal global ptr @omap_control_phy_power._entry.12, section ".printk_index", align 4
@omap_control_phy_power._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.11, ptr @.str.2, i32 129, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: type %d not recognized\0A\00", [36 x i8] zeroinitializer }, align 32
@omap_control_phy_power._entry_ptr.16 = internal global ptr @omap_control_phy_power._entry.14, section ".printk_index", align 4
@__kstrtab_omap_control_phy_power = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_control_phy_power = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_control_phy_power = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_control_phy_power to i32), ptr @__kstrtab_omap_control_phy_power, ptr @__kstrtabns_omap_control_phy_power }, section "___ksymtab_gpl+omap_control_phy_power", align 4
@omap_control_usb_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 210, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid control phy device\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"omap_control_usb_set_mode\00", [38 x i8] zeroinitializer }, align 32
@omap_control_usb_set_mode._entry_ptr = internal global ptr @omap_control_usb_set_mode._entry, section ".printk_index", align 4
@__kstrtab_omap_control_usb_set_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_control_usb_set_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_control_usb_set_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_control_usb_set_mode to i32), ptr @__kstrtab_omap_control_usb_set_mode, ptr @__kstrtabns_omap_control_usb_set_mode }, section "___ksymtab_gpl+omap_control_usb_set_mode", align 4
@__initcall__kmod_phy_omap_control__183_334_omap_control_phy_init4 = internal global ptr @omap_control_phy_init, section ".initcall4.init", align 4
@omap_control_phy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @omap_control_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.19, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_control_phy_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_omap_control_phy_exit = internal global ptr @omap_control_phy_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias184 = internal constant [49 x i8] c"phy_omap_control.alias=platform:omap_control_phy\00", section ".modinfo", align 1
@__UNIQUE_ID_author185 = internal constant [47 x i8] c"phy_omap_control.author=Texas Instruments Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description186 = internal constant [60 x i8] c"phy_omap_control.description=OMAP Control Module PHY Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file187 = internal constant [54 x i8] c"phy_omap_control.file=drivers/phy/ti/phy-omap-control\00", section ".modinfo", align 1
@__UNIQUE_ID_license188 = internal constant [32 x i8] c"phy_omap_control.license=GPL v2\00", section ".modinfo", align 1
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"omap-control-phy\00", [47 x i8] zeroinitializer }, align 32
@omap_control_phy_id_table = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,control-phy-otghs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @otghs_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,control-phy-usb2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usb2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,control-phy-pipe3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pipe3_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,control-phy-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pcie_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,control-phy-usb2-dra7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dra7usb2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,control-phy-usb2-am437\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am437usb2_data }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"otghs_control\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@omap_control_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 295, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't get power register\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"omap_control_phy_probe\00", [41 x i8] zeroinitializer }, align 32
@omap_control_phy_probe._entry_ptr = internal global ptr @omap_control_phy_probe._entry, section ".printk_index", align 4
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sys_clkin\00", [22 x i8] zeroinitializer }, align 32
@omap_control_phy_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.23, ptr @.str.2, i32 305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: unable to get sys_clkin\0A\00", [33 x i8] zeroinitializer }, align 32
@omap_control_phy_probe._entry_ptr.27 = internal global ptr @omap_control_phy_probe._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcie_pcs\00", [23 x i8] zeroinitializer }, align 32
@otghs_data = internal constant { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@usb2_data = internal constant { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@pipe3_data = internal constant { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
@pcie_data = internal constant { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@dra7usb2_data = internal constant { i32, [28 x i8] } { i32 5, [28 x i8] zeroinitializer }, align 32
@am437usb2_data = internal constant { i32, [28 x i8] } { i32 6, [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 30, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 36, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 41, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 65, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 71, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 128, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 210, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [24 x i8] c"omap_control_phy_driver\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 322, i32 31 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 325, i32 11 }
@___asan_gen_.90 = private unnamed_addr constant [26 x i8] c"omap_control_phy_id_table\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 240, i32 34 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 288, i32 48 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 293, i32 48 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 295, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 303, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 305, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 312, i32 48 }
@___asan_gen_.120 = private unnamed_addr constant [11 x i8] c"otghs_data\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 233, i32 41 }
@___asan_gen_.123 = private unnamed_addr constant [10 x i8] c"usb2_data\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 234, i32 41 }
@___asan_gen_.126 = private unnamed_addr constant [11 x i8] c"pipe3_data\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 235, i32 41 }
@___asan_gen_.129 = private unnamed_addr constant [10 x i8] c"pcie_data\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 236, i32 41 }
@___asan_gen_.132 = private unnamed_addr constant [14 x i8] c"dra7usb2_data\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 237, i32 41 }
@___asan_gen_.135 = private unnamed_addr constant [15 x i8] c"am437usb2_data\00", align 1
@___asan_gen_.136 = private constant [37 x i8] c"../drivers/phy/ti/phy-omap-control.c\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 238, i32 41 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_alias184, ptr @__UNIQUE_ID_author185, ptr @__UNIQUE_ID_description186, ptr @__UNIQUE_ID_file187, ptr @__UNIQUE_ID_license188, ptr @__exitcall_omap_control_phy_exit, ptr @__initcall__kmod_phy_omap_control__183_334_omap_control_phy_init4, ptr @__ksymtab_omap_control_pcie_pcs, ptr @__ksymtab_omap_control_phy_power, ptr @__ksymtab_omap_control_usb_set_mode, ptr @omap_control_pcie_pcs._entry, ptr @omap_control_pcie_pcs._entry.3, ptr @omap_control_pcie_pcs._entry.8, ptr @omap_control_pcie_pcs._entry_ptr, ptr @omap_control_pcie_pcs._entry_ptr.10, ptr @omap_control_pcie_pcs._entry_ptr.7, ptr @omap_control_phy_exit, ptr @omap_control_phy_power._entry, ptr @omap_control_phy_power._entry.12, ptr @omap_control_phy_power._entry.14, ptr @omap_control_phy_power._entry_ptr, ptr @omap_control_phy_power._entry_ptr.13, ptr @omap_control_phy_power._entry_ptr.16, ptr @omap_control_phy_probe._entry, ptr @omap_control_phy_probe._entry.25, ptr @omap_control_phy_probe._entry_ptr, ptr @omap_control_phy_probe._entry_ptr.27, ptr @omap_control_usb_set_mode._entry, ptr @omap_control_usb_set_mode._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @omap_control_phy_driver, ptr @.str.19, ptr @omap_control_phy_id_table, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @otghs_data, ptr @usb2_data, ptr @pipe3_data, ptr @pcie_data, ptr @dra7usb2_data, ptr @am437usb2_data], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_control_pcie_pcs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_control_pcie_pcs._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_control_pcie_pcs._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_control_phy_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_control_phy_power._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_control_phy_power._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_control_usb_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_control_phy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_control_phy_id_table to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_control_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_control_phy_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otghs_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb2_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pipe3_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7usb2_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am437usb2_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_control_pcie_pcs(ptr noundef %dev, i8 noundef zeroext %delay) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %dev, null
  %cmp.i = icmp ugt ptr %dev, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end6, label %if.end7

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.omap_control_phy, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp.not = icmp eq i32 %3, 4
  br i1 %cmp.not, label %if.end12, label %do.end11

do.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %pcie_pcs = getelementptr inbounds %struct.omap_control_phy, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %pcie_pcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcie_pcs, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !96
  %7 = and i32 %6, -65281
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %conv = zext i8 %delay to i32
  %shl = shl nuw nsw i32 %conv, 16
  %or = or i32 %8, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  tail call void @arm_heavy_mb() #5
  %9 = tail call i32 @llvm.bswap.i32(i32 %or)
  %10 = ptrtoint ptr %pcie_pcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcie_pcs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #5, !srcloc !98
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end11, %do.end6, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_control_phy_power(ptr noundef %dev, i32 noundef %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %dev, null
  %cmp.i = icmp ugt ptr %dev, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end6, label %if.end7

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.omap_control_phy, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end7
  %power = getelementptr inbounds %struct.omap_control_phy, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %power, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !95
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %do.end46 [
    i32 2, label %sw.bb
    i32 4, label %if.end9.sw.bb17_crit_edge
    i32 3, label %if.end9.sw.bb17_crit_edge80
    i32 5, label %sw.bb28
    i32 6, label %sw.bb35
  ]

if.end9.sw.bb17_crit_edge80:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb17

if.end9.sw.bb17_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb17

sw.bb:                                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool14.not = icmp eq i32 %on, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %7, -2
  br label %do.body48

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %7, 1
  br label %do.body48

sw.bb17:                                          ; preds = %if.end9.sw.bb17_crit_edge, %if.end9.sw.bb17_crit_edge80
  %sys_clk = getelementptr inbounds %struct.omap_control_phy, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %sys_clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sys_clk, align 4
  %call18 = tail call i32 @clk_get_rate(ptr noundef %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool19.not = icmp eq i32 %on, 0
  br i1 %tobool19.not, label %if.else24, label %if.then20

if.then20:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #7
  %div = udiv i32 %call18, 1000000
  %and21 = and i32 %7, 16383
  %shl = shl i32 %div, 22
  %or22 = or i32 %shl, %and21
  %or23 = or i32 %or22, 49152
  br label %do.body48

if.else24:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #7
  %and25 = and i32 %7, -4177921
  br label %do.body48

sw.bb28:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool29.not = icmp eq i32 %on, 0
  br i1 %tobool29.not, label %if.else32, label %if.then30

if.then30:                                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #7
  %and31 = and i32 %7, -268435457
  br label %do.body48

if.else32:                                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #7
  %or33 = or i32 %7, 268435456
  br label %do.body48

sw.bb35:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool36.not = icmp eq i32 %on, 0
  %and41 = and i32 %7, -1572868
  br i1 %tobool36.not, label %if.else40, label %if.then37

if.then37:                                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #7
  %or39 = or i32 %and41, 1572864
  br label %do.body48

if.else40:                                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #7
  %or42 = or i32 %and41, 3
  br label %do.body48

do.end46:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.11, i32 noundef %9) #8
  br label %do.body48

do.body48:                                        ; preds = %do.end46, %if.else40, %if.then37, %if.else32, %if.then30, %if.else24, %if.then20, %if.else, %if.then15
  %val.0 = phi i32 [ %7, %do.end46 ], [ %or39, %if.then37 ], [ %or42, %if.else40 ], [ %and31, %if.then30 ], [ %or33, %if.else32 ], [ %or23, %if.then20 ], [ %and25, %if.else24 ], [ %and, %if.then15 ], [ %or, %if.else ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  tail call void @arm_heavy_mb() #5
  %13 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %14 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %power, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #5, !srcloc !98
  br label %cleanup

cleanup:                                          ; preds = %do.body48, %if.end7.cleanup_crit_edge, %do.end6, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_control_usb_set_mode(ptr noundef %dev, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %dev, null
  %cmp.i = icmp ugt ptr %dev, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull @.str.17) #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.omap_control_phy, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end5, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end3
  %4 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %mode, label %if.end5.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
    i32 3, label %sw.bb7
  ]

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %otghs_control.i = getelementptr inbounds %struct.omap_control_phy, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %otghs_control.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %otghs_control.i, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  %8 = and i32 %7, -486539265
  %9 = or i32 %8, 83886080
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %otghs_control.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %otghs_control.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #5, !srcloc !98
  br label %cleanup

sw.bb6:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %otghs_control.i14 = getelementptr inbounds %struct.omap_control_phy, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %otghs_control.i14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %otghs_control.i14, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  %15 = and i32 %14, -486539265
  %16 = or i32 %15, 352321536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %17 = ptrtoint ptr %otghs_control.i14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %otghs_control.i14, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #5, !srcloc !98
  br label %cleanup

sw.bb7:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %otghs_control.i15 = getelementptr inbounds %struct.omap_control_phy, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %otghs_control.i15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %otghs_control.i15, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  %22 = and i32 %21, -486539265
  %23 = or i32 %22, 402653184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %otghs_control.i15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %otghs_control.i15, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #5, !srcloc !98
  br label %cleanup

cleanup:                                          ; preds = %sw.bb7, %sw.bb6, %sw.bb, %if.end5.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_control_phy_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap_control_phy_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @omap_control_phy_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap_control_phy_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_control_phy_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_match_device(ptr noundef nonnull @omap_control_phy_id_table, ptr noundef %dev) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 28, i32 noundef 3520) #5
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %type = getelementptr inbounds %struct.omap_control_phy, ptr %call.i, i32 0, i32 6
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end5
  %call10 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.20) #5
  %otghs_control = getelementptr inbounds %struct.omap_control_phy, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %otghs_control to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call10, ptr %otghs_control, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.then9.if.end25_crit_edge

if.then9.if.end25_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then13:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.else:                                          ; preds = %if.end5
  %call17 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.21) #5
  %power = getelementptr inbounds %struct.omap_control_phy, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call17, ptr %power, align 4
  %cmp.i82 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82, label %do.end, label %if.else.if.end25_crit_edge

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #8
  %9 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %power, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %cleanup

if.end25:                                         ; preds = %if.else.if.end25_crit_edge, %if.then9.if.end25_crit_edge
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  %.off = add i32 %13, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then30, label %if.end25.if.end52_crit_edge

if.end25.if.end52_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

if.then30:                                        ; preds = %if.end25
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  %call32 = tail call ptr @devm_clk_get(ptr noundef %15, ptr noundef nonnull @.str.24) #5
  %sys_clk = getelementptr inbounds %struct.omap_control_phy, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %sys_clk to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call32, ptr %sys_clk, align 4
  %cmp.i83 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i83, label %do.end38, label %if.end41

do.end38:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.23) #8
  br label %cleanup

if.end41:                                         ; preds = %if.then30
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr)
  %cmp43 = icmp eq i32 %.pr, 4
  br i1 %cmp43, label %if.then44, label %if.end41.if.end52_crit_edge

if.end41.if.end52_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

if.then44:                                        ; preds = %if.end41
  %call45 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.28) #5
  %pcie_pcs = getelementptr inbounds %struct.omap_control_phy, ptr %call.i, i32 0, i32 4
  %18 = ptrtoint ptr %pcie_pcs to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call45, ptr %pcie_pcs, align 4
  %cmp.i84 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i84, label %if.then48, label %if.then44.if.end52_crit_edge

if.then44.if.end52_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

if.then48:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %call45 to i32
  br label %cleanup

if.end52:                                         ; preds = %if.then44.if.end52_crit_edge, %if.end41.if.end52_crit_edge, %if.end25.if.end52_crit_edge
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %driver_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %if.then48, %do.end38, %do.end, %if.then13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then13 ], [ -22, %do.end38 ], [ %19, %if.then48 ], [ 0, %if.end52 ], [ %11, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !20, !21, !22, !24, !25, !27, !28, !29, !31, !33, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !51, !53, !55, !57, !59, !61, !62, !63, !64, !66, !68, !69, !70, !72, !74, !76, !78, !80, !82, !84}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/phy/ti/phy-omap-control.c", i32 30, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @omap_control_pcie_pcs._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @omap_control_pcie_pcs._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/phy/ti/phy-omap-control.c", i32 36, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @omap_control_pcie_pcs._entry.3, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @omap_control_pcie_pcs._entry_ptr.7, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/phy/ti/phy-omap-control.c", i32 41, i32 3}
!14 = !{ptr @omap_control_pcie_pcs._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @omap_control_pcie_pcs._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @__ksymtab_omap_control_pcie_pcs, !17, !"__ksymtab_omap_control_pcie_pcs", i1 false, i1 false}
!17 = !{!"../drivers/phy/ti/phy-omap-control.c", i32 51, i32 1}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/phy/ti/phy-omap-control.c", i32 65, i32 3}
!20 = !{ptr @omap_control_phy_power._entry, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @omap_control_phy_power._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @omap_control_phy_power._entry.12, !23, !"_entry", i1 false, i1 false}
!23 = !{!"../drivers/phy/ti/phy-omap-control.c", i32 71, i32 3}
!24 = !{ptr @omap_control_phy_power._entry_ptr.13, !23, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/phy/ti/phy-omap-control.c", i32 128, i32 3}
!27 = !{ptr @omap_control_phy_power._entry.14, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @omap_control_phy_power._entry_ptr.16, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @__ksymtab_omap_control_phy_power, !30, !"__ksymtab_omap_control_phy_power", i1 false, i1 false}
!30 = !{!"../drivers/phy/ti/phy-omap-control.c", i32 135, i32 1}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/phy/ti/phy-omap-control.c", i32 210, i32 3}
!33 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @omap_control_usb_set_mode._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @omap_control_usb_set_mode._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @__ksymtab_omap_control_usb_set_mode, !37, !"__ksymtab_omap_control_usb_set_mode", i1 false, i1 false}
!37 = !{!"../drivers/phy/ti/phy-omap-control.c", i32 231, i32 1}
!38 = !{ptr @__initcall__kmod_phy_omap_control__183_334_omap_control_phy_init4, !39, !"__initcall__kmod_phy_omap_control__183_334_omap_control_phy_init4", i1 false, i1 false}
!39 = !{!"../drivers/phy/ti/phy-omap-control.c", i32 334, i32 1}
!40 = !{ptr @__exitcall_omap_control_phy_exit, !41, !"__exitcall_omap_control_phy_exit", i1 false, i1 false}
!41 = !{!"../drivers/phy/ti/phy-omap-control.c", i32 340, i32 1}
!42 = !{ptr @__UNIQUE_ID_alias184, !43, !"__UNIQUE_ID_alias184", i1 false, i1 false}
!43 = !{!"../drivers/phy/ti/phy-omap-control.c", i32 342, i32 1}
!44 = !{ptr @__UNIQUE_ID_author185, !45, !"__UNIQUE_ID_author185", i1 false, i1 false}
!45 = !{!"../drivers/phy/ti/phy-omap-control.c", i32 343, i32 1}
!46 = !{ptr @__UNIQUE_ID_description186, !47, !"__UNIQUE_ID_description186", i1 false, i1 false}
!47 = !{!"../drivers/phy/ti/phy-omap-control.c", i32 344, i32 1}
!48 = !{ptr @__UNIQUE_ID_file187, !49, !"__UNIQUE_ID_file187", i1 false, i1 false}
!49 = !{!"../drivers/phy/ti/phy-omap-control.c", i32 345, i32 1}
!50 = !{ptr @__UNIQUE_ID_license188, !49, !"__UNIQUE_ID_license188", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/phy/ti/phy-omap-control.c", i32 325, i32 11}
!53 = !{ptr @omap_control_phy_driver, !54, !"omap_control_phy_driver", i1 false, i1 false}
!54 = !{!"../drivers/phy/ti/phy-omap-control.c", i32 322, i32 31}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/phy/ti/phy-omap-control.c", i32 288, i32 48}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/phy/ti/phy-omap-control.c", i32 293, i32 48}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/phy/ti/phy-omap-control.c", i32 295, i32 4}
!61 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @omap_control_phy_probe._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @omap_control_phy_probe._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/phy/ti/phy-omap-control.c", i32 303, i32 4}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/phy/ti/phy-omap-control.c", i32 305, i32 4}
!68 = !{ptr @omap_control_phy_probe._entry.25, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @omap_control_phy_probe._entry_ptr.27, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/phy/ti/phy-omap-control.c", i32 312, i32 48}
!72 = !{ptr @omap_control_phy_id_table, !73, !"omap_control_phy_id_table", i1 false, i1 false}
!73 = !{!"../drivers/phy/ti/phy-omap-control.c", i32 240, i32 34}
!74 = !{ptr @otghs_data, !75, !"otghs_data", i1 false, i1 false}
!75 = !{!"../drivers/phy/ti/phy-omap-control.c", i32 233, i32 41}
!76 = !{ptr @usb2_data, !77, !"usb2_data", i1 false, i1 false}
!77 = !{!"../drivers/phy/ti/phy-omap-control.c", i32 234, i32 41}
!78 = !{ptr @pipe3_data, !79, !"pipe3_data", i1 false, i1 false}
!79 = !{!"../drivers/phy/ti/phy-omap-control.c", i32 235, i32 41}
!80 = !{ptr @pcie_data, !81, !"pcie_data", i1 false, i1 false}
!81 = !{!"../drivers/phy/ti/phy-omap-control.c", i32 236, i32 41}
!82 = !{ptr @dra7usb2_data, !83, !"dra7usb2_data", i1 false, i1 false}
!83 = !{!"../drivers/phy/ti/phy-omap-control.c", i32 237, i32 41}
!84 = !{ptr @am437usb2_data, !85, !"am437usb2_data", i1 false, i1 false}
!85 = !{!"../drivers/phy/ti/phy-omap-control.c", i32 238, i32 41}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{i64 5344394}
!96 = !{i64 2152934300}
!97 = !{i64 2152934529}
!98 = !{i64 5343976}
!99 = !{i64 2152944044}
!100 = !{i64 2152946988}
!101 = !{i64 2152949294}
!102 = !{i64 2152949842}
!103 = !{i64 2152950533}
!104 = !{i64 2152951081}
!105 = !{i64 2152951772}
!106 = !{i64 2152952320}
