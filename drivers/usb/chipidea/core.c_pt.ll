; ModuleID = '/llk/IR_all_yes/drivers/usb/chipidea/core.c_pt.bc'
source_filename = "../drivers/usb/chipidea/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+hw_phymode_configure\22, \22a\22\09"
module asm "\09.weak\09__crc_hw_phymode_configure\09\09\09\09"
module asm "\09.long\09__crc_hw_phymode_configure\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hw_phymode_configure:\09\09\09\09\09"
module asm "\09.asciz \09\22hw_phymode_configure\22\09\09\09\09\09"
module asm "__kstrtabns_hw_phymode_configure:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ci_hdrc_add_device\22, \22a\22\09"
module asm "\09.weak\09__crc_ci_hdrc_add_device\09\09\09\09"
module asm "\09.long\09__crc_ci_hdrc_add_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ci_hdrc_add_device:\09\09\09\09\09"
module asm "\09.asciz \09\22ci_hdrc_add_device\22\09\09\09\09\09"
module asm "__kstrtabns_ci_hdrc_add_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ci_hdrc_remove_device\22, \22a\22\09"
module asm "\09.weak\09__crc_ci_hdrc_remove_device\09\09\09\09"
module asm "\09.long\09__crc_ci_hdrc_remove_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ci_hdrc_remove_device:\09\09\09\09\09"
module asm "\09.asciz \09\22ci_hdrc_remove_device\22\09\09\09\09\09"
module asm "__kstrtabns_ci_hdrc_remove_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ci_hdrc_query_available_role\22, \22a\22\09"
module asm "\09.weak\09__crc_ci_hdrc_query_available_role\09\09\09\09"
module asm "\09.long\09__crc_ci_hdrc_query_available_role\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ci_hdrc_query_available_role:\09\09\09\09\09"
module asm "\09.asciz \09\22ci_hdrc_query_available_role\22\09\09\09\09\09"
module asm "__kstrtabns_ci_hdrc_query_available_role:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.usb_role_switch_desc = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.ci_hdrc = type { ptr, %struct.spinlock, %struct.hw_bank, i32, [2 x ptr], i32, i8, %struct.usb_otg, %struct.otg_fsm, %struct.hrtimer, [12 x i64], i32, i32, ptr, %struct.work_struct, ptr, ptr, ptr, %struct.usb_gadget, ptr, i32, i32, [32 x %struct.ci_hw_ep], i32, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, i32, ptr, %struct.ulpi_ops, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i32 }
%struct.hw_bank = type { i32, i32, ptr, ptr, ptr, i32, [38 x ptr] }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.otg_fsm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, %struct.mutex, ptr, %struct.delayed_work, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ci_hw_ep = type { %struct.usb_ep, i8, i8, i8, [16 x i8], %struct.anon.78, i32, ptr, ptr, ptr, ptr }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.anon.78 = type { %struct.list_head, ptr, i32 }
%struct.ulpi_ops = type { ptr, ptr }
%struct.ci_hdrc_platform_data = type { ptr, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, %struct.usb_otg_caps, i8, i32, i32, i32, i32, %struct.ci_hdrc_cable, %struct.ci_hdrc_cable, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_otg_caps = type { i16, i8, i8, i8 }
%struct.ci_hdrc_cable = type { i8, i8, i8, ptr, ptr, %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ci_role_driver = type { ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }

@__kstrtab_hw_phymode_configure = external dso_local constant [0 x i8], align 1
@__kstrtabns_hw_phymode_configure = external dso_local constant [0 x i8], align 1
@__ksymtab_hw_phymode_configure = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hw_phymode_configure to i32), ptr @__kstrtab_hw_phymode_configure, ptr @__kstrtabns_hw_phymode_configure }, section "___ksymtab_gpl+hw_phymode_configure", align 4
@hw_device_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 488, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"error resetting controller, ret=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hw_device_reset\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/usb/chipidea/core.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hw_device_reset._entry_ptr = internal global ptr @hw_device_reset._entry, section ".printk_index", align 4
@hw_device_reset._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 507, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cannot enter in %s device mode\0A\00", [32 x i8] zeroinitializer }, align 32
@hw_device_reset._entry_ptr.7 = internal global ptr @hw_device_reset._entry.5, section ".printk_index", align 4
@hw_device_reset._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 508, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lpm = %i\0A\00", [22 x i8] zeroinitializer }, align 32
@hw_device_reset._entry_ptr.10 = internal global ptr @hw_device_reset._entry.8, section ".printk_index", align 4
@ci_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.35, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ci_hdrc\00", [24 x i8] zeroinitializer }, align 32
@__kstrtab_ci_hdrc_add_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_ci_hdrc_add_device = external dso_local constant [0 x i8], align 1
@__ksymtab_ci_hdrc_add_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ci_hdrc_add_device to i32), ptr @__kstrtab_ci_hdrc_add_device, ptr @__kstrtabns_ci_hdrc_add_device }, section "___ksymtab_gpl+ci_hdrc_add_device", align 4
@__kstrtab_ci_hdrc_remove_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_ci_hdrc_remove_device = external dso_local constant [0 x i8], align 1
@__ksymtab_ci_hdrc_remove_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ci_hdrc_remove_device to i32), ptr @__kstrtab_ci_hdrc_remove_device, ptr @__kstrtabns_ci_hdrc_remove_device }, section "___ksymtab_gpl+ci_hdrc_remove_device", align 4
@__kstrtab_ci_hdrc_query_available_role = external dso_local constant [0 x i8], align 1
@__kstrtabns_ci_hdrc_query_available_role = external dso_local constant [0 x i8], align 1
@__ksymtab_ci_hdrc_query_available_role = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ci_hdrc_query_available_role to i32), ptr @__kstrtab_ci_hdrc_query_available_role, ptr @__kstrtabns_ci_hdrc_query_available_role }, section "___ksymtab_gpl+ci_hdrc_query_available_role", align 4
@__initcall__kmod_ci_hdrc__299_1455_ci_hdrc_platform_register6 = internal global ptr @ci_hdrc_platform_register, section ".initcall6.init", align 4
@ci_hdrc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ci_hdrc_probe, ptr @ci_hdrc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.11, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ci_groups, ptr @ci_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ci_hdrc_platform_unregister = internal global ptr @ci_hdrc_platform_unregister, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias300 = internal constant [31 x i8] c"ci_hdrc.alias=platform:ci_hdrc\00", section ".modinfo", align 1
@__UNIQUE_ID_file301 = internal constant [42 x i8] c"ci_hdrc.file=drivers/usb/chipidea/ci_hdrc\00", section ".modinfo", align 1
@__UNIQUE_ID_license302 = internal constant [23 x i8] c"ci_hdrc.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author303 = internal constant [52 x i8] c"ci_hdrc.author=David Lopo <dlopo@chipidea.mips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [41 x i8] c"ci_hdrc.description=ChipIdea HDRC Driver\00", section ".modinfo", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbus\00", [27 x i8] zeroinitializer }, align 32
@ci_get_platdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 687, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Getting regulator error: %ld\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ci_get_platdata\00", [16 x i8] zeroinitializer }, align 32
@ci_get_platdata._entry_ptr = internal global ptr @ci_get_platdata._entry, section ".printk_index", align 4
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"phy-clkgate-delay-us\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"itc-setting\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ahb-burst-config\00", [47 x i8] zeroinitializer }, align 32
@ci_get_platdata._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.2, i32 725, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to get ahb-burst-config\0A\00", [32 x i8] zeroinitializer }, align 32
@ci_get_platdata._entry_ptr.20 = internal global ptr @ci_get_platdata._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tx-burst-size-dword\00", [44 x i8] zeroinitializer }, align 32
@ci_get_platdata._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.14, ptr @.str.2, i32 734, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to get tx-burst-size-dword\0A\00", [61 x i8] zeroinitializer }, align 32
@ci_get_platdata._entry_ptr.24 = internal global ptr @ci_get_platdata._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rx-burst-size-dword\00", [44 x i8] zeroinitializer }, align 32
@ci_get_platdata._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.14, ptr @.str.2, i32 743, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to get rx-burst-size-dword\0A\00", [61 x i8] zeroinitializer }, align 32
@ci_get_platdata._entry_ptr.28 = internal global ptr @ci_get_platdata._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"non-zero-ttctrl-ttha\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"extcon\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usb-role-switch\00", [16 x i8] zeroinitializer }, align 32
@ci_role_switch = internal global { %struct.usb_role_switch_desc, [60 x i8] } { %struct.usb_role_switch_desc { ptr null, ptr null, ptr null, ptr null, ptr @ci_usb_role_switch_set, ptr @ci_usb_role_switch_get, i8 1, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"host\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"device\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ci_ida.xa_lock\00", [17 x i8] zeroinitializer }, align 32
@ci_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ci_group, ptr null], [24 x i8] zeroinitializer }, align 32
@ci_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ci_suspend, ptr @ci_resume, ptr @ci_suspend, ptr @ci_resume, ptr @ci_suspend, ptr @ci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ci_runtime_suspend, ptr @ci_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@ci_hdrc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 1010, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"platform data missing\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ci_hdrc_probe\00", [18 x i8] zeroinitializer }, align 32
@ci_hdrc_probe._entry_ptr = internal global ptr @ci_hdrc_probe._entry, section ".printk_index", align 4
@ci_hdrc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ci->lock\00", [22 x i8] zeroinitializer }, align 32
@ci_hdrc_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.37, ptr @.str.2, i32 1034, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"can't initialize hardware\0A\00", [37 x i8] zeroinitializer }, align 32
@ci_hdrc_probe._entry_ptr.41 = internal global ptr @ci_hdrc_probe._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb-phy\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"phys\00", [27 x i8] zeroinitializer }, align 32
@ci_hdrc_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.37, ptr @.str.2, i32 1092, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unable to init phy: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@ci_hdrc_probe._entry_ptr.46 = internal global ptr @ci_hdrc_probe._entry.44, section ".printk_index", align 4
@ci_hdrc_probe._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.37, ptr @.str.2, i32 1112, ptr @.str.49, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"doesn't support host\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ci_hdrc_probe._entry_ptr.50 = internal global ptr @ci_hdrc_probe._entry.47, section ".printk_index", align 4
@ci_hdrc_probe._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.37, ptr @.str.2, i32 1122, ptr @.str.49, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"doesn't support gadget\0A\00", [40 x i8] zeroinitializer }, align 32
@ci_hdrc_probe._entry_ptr.53 = internal global ptr @ci_hdrc_probe._entry.51, section ".printk_index", align 4
@ci_hdrc_probe._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.37, ptr @.str.2, i32 1129, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no supported roles\0A\00", [44 x i8] zeroinitializer }, align 32
@ci_hdrc_probe._entry_ptr.56 = internal global ptr @ci_hdrc_probe._entry.54, section ".printk_index", align 4
@ci_hdrc_probe._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.37, ptr @.str.2, i32 1137, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"init otg fails, ret = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@ci_hdrc_probe._entry_ptr.59 = internal global ptr @ci_hdrc_probe._entry.57, section ".printk_index", align 4
@ci_hdrc_probe._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.37, ptr @.str.2, i32 1182, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"can't start %s role\0A\00", [43 x i8] zeroinitializer }, align 32
@ci_hdrc_probe._entry_ptr.62 = internal global ptr @ci_hdrc_probe._entry.60, section ".printk_index", align 4
@hw_device_init.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.63, ptr @.str.2, ptr @.str.64, i8 0, i8 64, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hw_device_init\00", [17 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"revision: %d, lpm: %d; cap: %px op: %px\0A\00", [55 x i8] zeroinitializer }, align 32
@ci_get_otg_capable.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.65, ptr @.str.2, ptr @.str.66, i8 0, i8 -21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ci_get_otg_capable\00", [45 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"It is OTG capable controller\0A\00", [34 x i8] zeroinitializer }, align 32
@ci_extcon_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 824, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"register ID failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ci_extcon_register\00", [45 x i8] zeroinitializer }, align 32
@ci_extcon_register._entry_ptr = internal global ptr @ci_extcon_register._entry, section ".printk_index", align 4
@ci_extcon_register._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.2, i32 835, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"register VBUS failed\0A\00", [42 x i8] zeroinitializer }, align 32
@ci_extcon_register._entry_ptr.71 = internal global ptr @ci_extcon_register._entry.69, section ".printk_index", align 4
@ci_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ci_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ci_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_role, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_role = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @role_show, ptr @role_store }, [36 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"role\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@role_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 969, ptr @.str.76, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Current configuration is not dual-role, quit\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"role_store\00", [21 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@role_store._entry_ptr = internal global ptr @role_store._entry, section ".printk_index", align 4
@ci_controller_resume.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.77, ptr @.str.2, ptr @.str.78, i8 1, i8 74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ci_controller_resume\00", [43 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"at %s\0A\00", [25 x i8] zeroinitializer }, align 32
@ci_runtime_suspend.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.79, ptr @.str.2, ptr @.str.78, i8 1, i8 97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ci_runtime_suspend\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 4294966779, i64 4294967277]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.88 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.89 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967290]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967290]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 488, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 506, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 508, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [7 x i8] c"ci_ida\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 860, i32 31 }
@___asan_gen_.129 = private unnamed_addr constant [15 x i8] c"ci_hdrc_driver\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1440, i32 31 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 679, i32 57 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 686, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 712, i32 37 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 717, i32 37 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 720, i32 43 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 725, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 729, i32 43 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 734, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 738, i32 43 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 743, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 747, i32 37 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 752, i32 42 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 787, i32 37 }
@___asan_gen_.186 = private unnamed_addr constant [15 x i8] c"ci_role_switch\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 655, i32 36 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 794, i32 44 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 798, i32 44 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 802, i32 44 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 843, i32 8 }
@___asan_gen_.201 = private unnamed_addr constant [10 x i8] c"ci_groups\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [10 x i8] c"ci_pm_ops\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1435, i32 32 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1010, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1023, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1034, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1048, i32 39 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1060, i32 11 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1092, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1112, i32 5 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1122, i32 5 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1129, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1137, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1181, i32 4 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 254, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 943, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 824, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 835, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant [9 x i8] c"ci_group\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 998, i32 1 }
@___asan_gen_.303 = private unnamed_addr constant [9 x i8] c"ci_attrs\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 994, i32 26 }
@___asan_gen_.306 = private unnamed_addr constant [14 x i8] c"dev_attr_role\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 992, i32 8 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 956, i32 23 }
@___asan_gen_.315 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 969, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1320, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.334 = private constant [31 x i8] c"../drivers/usb/chipidea/core.c\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1413, i32 2 }
@llvm.compiler.used = appending global [111 x ptr] [ptr @__UNIQUE_ID_alias300, ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file301, ptr @__UNIQUE_ID_license302, ptr @__exitcall_ci_hdrc_platform_unregister, ptr @__initcall__kmod_ci_hdrc__299_1455_ci_hdrc_platform_register6, ptr @__ksymtab_ci_hdrc_add_device, ptr @__ksymtab_ci_hdrc_query_available_role, ptr @__ksymtab_ci_hdrc_remove_device, ptr @__ksymtab_hw_phymode_configure, ptr @ci_extcon_register._entry, ptr @ci_extcon_register._entry.69, ptr @ci_extcon_register._entry_ptr, ptr @ci_extcon_register._entry_ptr.71, ptr @ci_get_platdata._entry, ptr @ci_get_platdata._entry.18, ptr @ci_get_platdata._entry.22, ptr @ci_get_platdata._entry.26, ptr @ci_get_platdata._entry_ptr, ptr @ci_get_platdata._entry_ptr.20, ptr @ci_get_platdata._entry_ptr.24, ptr @ci_get_platdata._entry_ptr.28, ptr @ci_hdrc_platform_unregister, ptr @ci_hdrc_probe._entry, ptr @ci_hdrc_probe._entry.39, ptr @ci_hdrc_probe._entry.44, ptr @ci_hdrc_probe._entry.47, ptr @ci_hdrc_probe._entry.51, ptr @ci_hdrc_probe._entry.54, ptr @ci_hdrc_probe._entry.57, ptr @ci_hdrc_probe._entry.60, ptr @ci_hdrc_probe._entry_ptr, ptr @ci_hdrc_probe._entry_ptr.41, ptr @ci_hdrc_probe._entry_ptr.46, ptr @ci_hdrc_probe._entry_ptr.50, ptr @ci_hdrc_probe._entry_ptr.53, ptr @ci_hdrc_probe._entry_ptr.56, ptr @ci_hdrc_probe._entry_ptr.59, ptr @ci_hdrc_probe._entry_ptr.62, ptr @hw_device_reset._entry, ptr @hw_device_reset._entry.5, ptr @hw_device_reset._entry.8, ptr @hw_device_reset._entry_ptr, ptr @hw_device_reset._entry_ptr.10, ptr @hw_device_reset._entry_ptr.7, ptr @role_store._entry, ptr @role_store._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @ci_ida, ptr @.str.11, ptr @ci_hdrc_driver, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @ci_role_switch, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @ci_groups, ptr @ci_pm_ops, ptr @.str.36, ptr @.str.37, ptr @ci_hdrc_probe.__key, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @ci_group, ptr @ci_attrs, ptr @dev_attr_role, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_device_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_device_reset._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_device_reset._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_hdrc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_get_platdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_get_platdata._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_get_platdata._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_get_platdata._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_role_switch to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_hdrc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_hdrc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_hdrc_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_hdrc_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_hdrc_probe._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_hdrc_probe._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_hdrc_probe._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_hdrc_probe._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_hdrc_probe._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_extcon_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_extcon_register._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_role to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @role_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_read_intr_enable(ptr nocapture noundef readonly %ci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 6
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #11, !srcloc !183
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_read_intr_status(ptr nocapture noundef readonly %ci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 5
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #11, !srcloc !183
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_port_test_set(ptr nocapture noundef readonly %ci, i8 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %mode)
  %cmp = icmp ugt i8 %mode, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 12
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  %imx28_write_fix.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 41
  %3 = ptrtoint ptr %imx28_write_fix.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %imx28_write_fix.i.i, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %5 = and i32 %2, -3841
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %conv = zext i8 %mode to i32
  %shl = shl nuw nsw i32 %conv, 16
  %and2.i = and i32 %shl, 983040
  %or.i = or i32 %6, %and2.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  tail call void @arm_heavy_mb() #11
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %9) #11, !srcloc !187
  br label %cleanup

cleanup:                                          ; preds = %if.else.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.else.i.i ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hw_write(ptr nocapture noundef readonly %ci, i32 noundef %reg, i32 noundef %mask, i32 noundef %data) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mask)
  %tobool.not = icmp eq i32 %mask, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %neg = xor i32 %mask, -1
  %arrayidx = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 %reg
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #11, !srcloc !183
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  %and = and i32 %3, %neg
  %and2 = and i32 %data, %mask
  %or = or i32 %and, %and2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %data.addr.0 = phi i32 [ %or, %if.then ], [ %data, %entry.if.end_crit_edge ]
  %imx28_write_fix.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 41
  %4 = ptrtoint ptr %imx28_write_fix.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %imx28_write_fix.i, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end.__hw_write.exit_crit_edge

if.end.__hw_write.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %__hw_write.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx5 = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 %reg
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx5, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  tail call void @arm_heavy_mb() #11
  %8 = tail call i32 @llvm.bswap.i32(i32 %data.addr.0) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %8) #11, !srcloc !187
  br label %__hw_write.exit

__hw_write.exit:                                  ; preds = %if.else.i, %if.end.__hw_write.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @hw_port_test_get(ptr nocapture noundef readonly %ci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 12
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  %3 = lshr i32 %2, 8
  %4 = trunc i32 %3 to i8
  %conv = and i8 %4, 15
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_phymode_configure(ptr nocapture noundef readonly %ci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %platdata = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 32
  %0 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platdata, align 4
  %phy_mode = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_mode, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
    i32 5, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %portsc.0 = phi i32 [ 33554432, %sw.bb4 ], [ -1073741824, %sw.bb3 ], [ -2147483648, %sw.bb2 ], [ 268435456, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ]
  %lpm.0 = phi i32 [ -2147483648, %sw.bb4 ], [ 1610612736, %sw.bb3 ], [ 1073741824, %sw.bb2 ], [ 134217728, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ]
  %tobool8.not = phi i1 [ true, %sw.bb4 ], [ false, %sw.bb3 ], [ true, %sw.bb2 ], [ true, %sw.bb1 ], [ true, %entry.sw.epilog_crit_edge ]
  %hw_bank = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 2
  %5 = ptrtoint ptr %hw_bank to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hw_bank, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.epilog
  %arrayidx.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 13
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  %imx28_write_fix.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 41
  %10 = ptrtoint ptr %imx28_write_fix.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %imx28_write_fix.i.i, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.hw_write.exit_crit_edge

if.then.hw_write.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %hw_write.exit

if.else.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %12 = and i32 %9, -233
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %or.i = or i32 %13, %lpm.0
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  tail call void @arm_heavy_mb() #11
  %16 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %16) #11, !srcloc !187
  br label %hw_write.exit

hw_write.exit:                                    ; preds = %if.else.i.i, %if.then.hw_write.exit_crit_edge
  br i1 %tobool8.not, label %hw_write.exit.cleanup_crit_edge, label %if.then7

hw_write.exit.cleanup_crit_edge:                  ; preds = %hw_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then7:                                         ; preds = %hw_write.exit
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  %20 = ptrtoint ptr %imx28_write_fix.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %imx28_write_fix.i.i, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i.i24 = icmp eq i8 %21, 0
  br i1 %tobool.not.i.i24, label %if.else.i.i26, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else.i.i26:                                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  %22 = or i32 %19, 16
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #11, !srcloc !187
  br label %cleanup

if.else:                                          ; preds = %sw.epilog
  %arrayidx.i28 = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 12
  %25 = ptrtoint ptr %arrayidx.i28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i28, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  %imx28_write_fix.i.i32 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 41
  %28 = ptrtoint ptr %imx28_write_fix.i.i32 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %imx28_write_fix.i.i32, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i.i33 = icmp eq i8 %29, 0
  br i1 %tobool.not.i.i33, label %if.else.i.i35, label %if.else.hw_write.exit36_crit_edge

if.else.hw_write.exit36_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %hw_write.exit36

if.else.i.i35:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %30 = and i32 %27, -211
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %or.i31 = or i32 %31, %portsc.0
  %32 = ptrtoint ptr %arrayidx.i28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i28, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  tail call void @arm_heavy_mb() #11
  %34 = tail call i32 @llvm.bswap.i32(i32 %or.i31) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %34) #11, !srcloc !187
  br label %hw_write.exit36

hw_write.exit36:                                  ; preds = %if.else.i.i35, %if.else.hw_write.exit36_crit_edge
  br i1 %tobool8.not, label %hw_write.exit36.cleanup_crit_edge, label %if.then9

hw_write.exit36.cleanup_crit_edge:                ; preds = %hw_write.exit36
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then9:                                         ; preds = %hw_write.exit36
  %35 = ptrtoint ptr %arrayidx.i28 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i28, align 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  %38 = ptrtoint ptr %imx28_write_fix.i.i32 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %imx28_write_fix.i.i32, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i.i41 = icmp eq i8 %39, 0
  br i1 %tobool.not.i.i41, label %if.else.i.i43, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else.i.i43:                                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  %40 = or i32 %37, 32
  %41 = ptrtoint ptr %arrayidx.i28 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i28, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #11, !srcloc !187
  br label %cleanup

cleanup:                                          ; preds = %if.else.i.i43, %if.then9.cleanup_crit_edge, %hw_write.exit36.cleanup_crit_edge, %if.else.i.i26, %if.then7.cleanup_crit_edge, %hw_write.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ci_platform_configure(ptr noundef readonly %ci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 15
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  %3 = and i32 %2, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %3)
  %cmp = icmp eq i32 %3, 33554432
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  %7 = and i32 %6, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %7)
  %cmp2 = icmp eq i32 %7, 50331648
  br i1 %cmp, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then:                                          ; preds = %entry
  %phy = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 36
  %8 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy, align 8
  %call4 = tail call i32 @phy_set_mode_ext(ptr noundef %9, i32 noundef 6, i32 noundef 0) #11
  %platdata = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 32
  %10 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %platdata, align 4
  %flags = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.then.if.end7_crit_edge, label %if.then6

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then6:                                         ; preds = %if.then
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  %imx28_write_fix.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 41
  %17 = ptrtoint ptr %imx28_write_fix.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %imx28_write_fix.i.i, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then6.if.end7_crit_edge

if.then6.if.end7_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.else.i.i:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %19 = or i32 %16, 268435456
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #11, !srcloc !187
  br label %if.end7

if.end7:                                          ; preds = %if.else.i.i, %if.then6.if.end7_crit_edge, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  br i1 %cmp2, label %if.then9, label %if.end7.if.end18_crit_edge

if.end7.if.end18_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then9:                                         ; preds = %if.end7
  %phy10 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 36
  %22 = ptrtoint ptr %phy10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy10, align 8
  %call11 = tail call i32 @phy_set_mode_ext(ptr noundef %23, i32 noundef 1, i32 noundef 0) #11
  %platdata12 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 32
  %24 = ptrtoint ptr %platdata12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %platdata12, align 4
  %flags13 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %flags13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags13, align 4
  %and14 = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.then9.if.end18_crit_edge, label %if.then16

if.then9.if.end18_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then16:                                        ; preds = %if.then9
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  %imx28_write_fix.i.i94 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 41
  %31 = ptrtoint ptr %imx28_write_fix.i.i94 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %imx28_write_fix.i.i94, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i.i95 = icmp eq i8 %32, 0
  br i1 %tobool.not.i.i95, label %if.else.i.i97, label %if.then16.if.end18_crit_edge

if.then16.if.end18_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.else.i.i97:                                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  %33 = or i32 %30, 268435456
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #11, !srcloc !187
  br label %if.end18

if.end18:                                         ; preds = %if.else.i.i97, %if.then16.if.end18_crit_edge, %if.then9.if.end18_crit_edge, %if.end7.if.end18_crit_edge
  %platdata19 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 32
  %36 = ptrtoint ptr %platdata19 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %platdata19, align 4
  %flags20 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %flags20 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags20, align 4
  %and21 = and i32 %39, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end18.if.end27_crit_edge, label %if.then23

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then23:                                        ; preds = %if.end18
  %hw_bank = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 2
  %40 = ptrtoint ptr %hw_bank to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hw_bank, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool24.not = icmp eq i32 %41, 0
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.then23
  %arrayidx.i99 = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 13
  %42 = ptrtoint ptr %arrayidx.i99 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i99, align 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  %imx28_write_fix.i.i102 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 41
  %45 = ptrtoint ptr %imx28_write_fix.i.i102 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %imx28_write_fix.i.i102, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i.i103 = icmp eq i8 %46, 0
  br i1 %tobool.not.i.i103, label %if.else.i.i105, label %if.then25.if.end27_crit_edge

if.then25.if.end27_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.else.i.i105:                                   ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  %47 = or i32 %44, 32768
  %48 = ptrtoint ptr %arrayidx.i99 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i99, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #11, !srcloc !187
  br label %if.end27

if.else:                                          ; preds = %if.then23
  %arrayidx.i107 = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 12
  %50 = ptrtoint ptr %arrayidx.i107 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i107, align 4
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  %imx28_write_fix.i.i110 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 41
  %53 = ptrtoint ptr %imx28_write_fix.i.i110 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %imx28_write_fix.i.i110, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i.i111 = icmp eq i8 %54, 0
  br i1 %tobool.not.i.i111, label %if.else.i.i113, label %if.else.if.end27_crit_edge

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.else.i.i113:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %55 = or i32 %52, 1
  %56 = ptrtoint ptr %arrayidx.i107 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i107, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #11, !srcloc !187
  br label %if.end27

if.end27:                                         ; preds = %if.else.i.i113, %if.else.if.end27_crit_edge, %if.else.i.i105, %if.then25.if.end27_crit_edge, %if.end18.if.end27_crit_edge
  %58 = ptrtoint ptr %platdata19 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %platdata19, align 4
  %flags29 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %59, i32 0, i32 6
  %60 = ptrtoint ptr %flags29 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags29, align 4
  %and30 = and i32 %61, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end27.if.end33_crit_edge, label %if.then32

if.end27.if.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then32:                                        ; preds = %if.end27
  %arrayidx.i115 = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 9
  %62 = ptrtoint ptr %arrayidx.i115 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i115, align 4
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  %imx28_write_fix.i.i118 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 41
  %65 = ptrtoint ptr %imx28_write_fix.i.i118 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %imx28_write_fix.i.i118, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i.i119 = icmp eq i8 %66, 0
  br i1 %tobool.not.i.i119, label %if.else.i.i121, label %if.then32.if.end33_crit_edge

if.then32.if.end33_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.else.i.i121:                                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  %67 = or i32 %64, 127
  %68 = ptrtoint ptr %arrayidx.i115 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.i115, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #11, !srcloc !187
  br label %if.end33

if.end33:                                         ; preds = %if.else.i.i121, %if.then32.if.end33_crit_edge, %if.end27.if.end33_crit_edge
  %70 = ptrtoint ptr %platdata19 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %platdata19, align 4
  %itc_setting = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %71, i32 0, i32 12
  %72 = ptrtoint ptr %itc_setting to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %itc_setting, align 4
  %arrayidx.i123 = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 4
  %74 = ptrtoint ptr %arrayidx.i123 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.i123, align 4
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  %imx28_write_fix.i.i126 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 41
  %77 = ptrtoint ptr %imx28_write_fix.i.i126 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %imx28_write_fix.i.i126, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i.i127 = icmp eq i8 %78, 0
  br i1 %tobool.not.i.i127, label %if.else.i.i129, label %if.end33.hw_write.exit130_crit_edge

if.end33.hw_write.exit130_crit_edge:              ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %hw_write.exit130

if.else.i.i129:                                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %79 = and i32 %76, -65281
  %80 = tail call i32 @llvm.bswap.i32(i32 %79)
  %shl = shl i32 %73, 16
  %and2.i = and i32 %shl, 16711680
  %or.i125 = or i32 %80, %and2.i
  %81 = ptrtoint ptr %arrayidx.i123 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx.i123, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  tail call void @arm_heavy_mb() #11
  %83 = tail call i32 @llvm.bswap.i32(i32 %or.i125) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %83) #11, !srcloc !187
  br label %hw_write.exit130

hw_write.exit130:                                 ; preds = %if.else.i.i129, %if.end33.hw_write.exit130_crit_edge
  %84 = ptrtoint ptr %platdata19 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %platdata19, align 4
  %flags36 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %85, i32 0, i32 6
  %86 = ptrtoint ptr %flags36 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %flags36, align 4
  %and37 = and i32 %87, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %hw_write.exit130.if.end41_crit_edge, label %if.then39

hw_write.exit130.if.end41_crit_edge:              ; preds = %hw_write.exit130
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then39:                                        ; preds = %hw_write.exit130
  call void @__sanitizer_cov_trace_pc() #13
  %ahb_burst_config = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %85, i32 0, i32 13
  %88 = ptrtoint ptr %ahb_burst_config to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %ahb_burst_config, align 4
  %abs.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 2
  %90 = ptrtoint ptr %abs.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %abs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %91, i32 144
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  %93 = and i32 %92, -117440513
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #11
  %and2.i131 = and i32 %89, 7
  %or.i132 = or i32 %94, %and2.i131
  %95 = ptrtoint ptr %abs.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %abs.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %96, i32 144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  tail call void @arm_heavy_mb() #11
  %97 = tail call i32 @llvm.bswap.i32(i32 %or.i132) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %97) #11, !srcloc !187
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %hw_write.exit130.if.end41_crit_edge
  %abs.i133 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 2
  %98 = ptrtoint ptr %abs.i133 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %abs.i133, align 8
  %add.ptr.i134 = getelementptr i8, ptr %99, i32 144
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i134) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  %101 = and i32 %100, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool43.not = icmp eq i32 %101, 0
  br i1 %tobool43.not, label %if.then44, label %if.end41.if.end61_crit_edge

if.end41.if.end61_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.then44:                                        ; preds = %if.end41
  %102 = ptrtoint ptr %platdata19 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %platdata19, align 4
  %flags46 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %103, i32 0, i32 6
  %104 = ptrtoint ptr %flags46 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %flags46, align 4
  %and47 = and i32 %105, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.then44.if.end53_crit_edge, label %if.then49

if.then44.if.end53_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.then49:                                        ; preds = %if.then44
  %tx_burst_size = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %103, i32 0, i32 14
  %106 = ptrtoint ptr %tx_burst_size to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %tx_burst_size, align 4
  %arrayidx.i136 = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 10
  %108 = ptrtoint ptr %arrayidx.i136 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx.i136, align 4
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  %111 = ptrtoint ptr %imx28_write_fix.i.i126 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %imx28_write_fix.i.i126, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool.not.i.i141 = icmp eq i8 %112, 0
  br i1 %tobool.not.i.i141, label %if.else.i.i143, label %if.then49.if.end53_crit_edge

if.then49.if.end53_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.else.i.i143:                                   ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  %113 = and i32 %110, -16711681
  %114 = tail call i32 @llvm.bswap.i32(i32 %113)
  %shl52 = shl i32 %107, 8
  %and2.i138 = and i32 %shl52, 65280
  %or.i139 = or i32 %114, %and2.i138
  %115 = ptrtoint ptr %arrayidx.i136 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx.i136, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  tail call void @arm_heavy_mb() #11
  %117 = tail call i32 @llvm.bswap.i32(i32 %or.i139) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %117) #11, !srcloc !187
  br label %if.end53

if.end53:                                         ; preds = %if.else.i.i143, %if.then49.if.end53_crit_edge, %if.then44.if.end53_crit_edge
  %118 = ptrtoint ptr %platdata19 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %platdata19, align 4
  %flags55 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %119, i32 0, i32 6
  %120 = ptrtoint ptr %flags55 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %flags55, align 4
  %and56 = and i32 %121, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end53.if.end61_crit_edge, label %if.then58

if.end53.if.end61_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.then58:                                        ; preds = %if.end53
  %rx_burst_size = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %119, i32 0, i32 15
  %122 = ptrtoint ptr %rx_burst_size to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %rx_burst_size, align 4
  %arrayidx.i145 = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 10
  %124 = ptrtoint ptr %arrayidx.i145 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx.i145, align 4
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %125) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  %127 = ptrtoint ptr %imx28_write_fix.i.i126 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %imx28_write_fix.i.i126, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool.not.i.i150 = icmp eq i8 %128, 0
  br i1 %tobool.not.i.i150, label %if.else.i.i152, label %if.then58.if.end61_crit_edge

if.then58.if.end61_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.else.i.i152:                                   ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #13
  %129 = and i32 %126, 16777215
  %130 = tail call i32 @llvm.bswap.i32(i32 %129)
  %and2.i147 = and i32 %123, 255
  %or.i148 = or i32 %130, %and2.i147
  %131 = ptrtoint ptr %arrayidx.i145 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx.i145, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  tail call void @arm_heavy_mb() #11
  %133 = tail call i32 @llvm.bswap.i32(i32 %or.i148) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %133) #11, !srcloc !187
  br label %if.end61

if.end61:                                         ; preds = %if.else.i.i152, %if.then58.if.end61_crit_edge, %if.end53.if.end61_crit_edge, %if.end41.if.end61_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_mode_ext(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_device_reset(ptr noundef %ci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %imx28_write_fix.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 41
  %0 = ptrtoint ptr %imx28_write_fix.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %imx28_write_fix.i.i, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %entry.hw_write.exit_crit_edge

entry.hw_write.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %hw_write.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx5.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 18
  %2 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx5.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 -1) #11, !srcloc !187
  br label %hw_write.exit

hw_write.exit:                                    ; preds = %if.else.i.i, %entry.hw_write.exit_crit_edge
  %arrayidx.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 4
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  %7 = ptrtoint ptr %imx28_write_fix.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %imx28_write_fix.i.i, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i.i42 = icmp eq i8 %8, 0
  br i1 %tobool.not.i.i42, label %if.else.i.i44, label %hw_write.exit.hw_write.exit45_crit_edge

hw_write.exit.hw_write.exit45_crit_edge:          ; preds = %hw_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %hw_write.exit45

if.else.i.i44:                                    ; preds = %hw_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = and i32 %6, -16777217
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #11, !srcloc !187
  br label %hw_write.exit45

hw_write.exit45:                                  ; preds = %if.else.i.i44, %hw_write.exit.hw_write.exit45_crit_edge
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  %15 = ptrtoint ptr %imx28_write_fix.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %imx28_write_fix.i.i, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i.i.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %hw_write.exit45.while.cond.i.preheader_crit_edge

hw_write.exit45.while.cond.i.preheader_crit_edge: ; preds = %hw_write.exit45
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.preheader

if.else.i.i.i:                                    ; preds = %hw_write.exit45
  call void @__sanitizer_cov_trace_pc() #13
  %17 = or i32 %14, 33554432
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #11, !srcloc !187
  br label %while.cond.i.preheader

while.cond.i.preheader:                           ; preds = %if.else.i.i.i, %hw_write.exit45.while.cond.i.preheader_crit_edge
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %while.cond.i.preheader
  %count.0.i = phi i32 [ %inc.i, %while.body.i.while.cond.i_crit_edge ], [ 0, %while.cond.i.preheader ]
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  %23 = and i32 %22, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %if.end, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 2147480) #11
  %inc.i = add nuw nsw i32 %count.0.i, 1
  %exitcond.i = icmp eq i32 %inc.i, 1002
  br i1 %exitcond.i, label %do.end, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

do.end:                                           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ci, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str, i32 noundef -110) #14
  br label %cleanup

if.end:                                           ; preds = %while.cond.i
  %platdata = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 32
  %27 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %platdata, align 4
  %notify_event = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %notify_event to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %notify_event, align 4
  %tobool1.not = icmp eq ptr %30, null
  br i1 %tobool1.not, label %if.end.if.end9_crit_edge, label %if.then2

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then2:                                         ; preds = %if.end
  %call5 = tail call i32 %30(ptr noundef %ci, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then2.if.end9_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then2.if.end9_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.end9:                                          ; preds = %if.then2.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %arrayidx.i46 = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 15
  %31 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i46, align 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  %34 = ptrtoint ptr %imx28_write_fix.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %imx28_write_fix.i.i, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i.i49 = icmp eq i8 %35, 0
  br i1 %tobool.not.i.i49, label %if.else.i.i51, label %if.end9.hw_write.exit52_crit_edge

if.end9.hw_write.exit52_crit_edge:                ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %hw_write.exit52

if.else.i.i51:                                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %36 = and i32 %33, -50331649
  %37 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i46, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #11, !srcloc !187
  br label %hw_write.exit52

hw_write.exit52:                                  ; preds = %if.else.i.i51, %if.end9.hw_write.exit52_crit_edge
  %39 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i46, align 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  %42 = ptrtoint ptr %imx28_write_fix.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %imx28_write_fix.i.i, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i.i56 = icmp eq i8 %43, 0
  br i1 %tobool.not.i.i56, label %if.else.i.i58, label %hw_write.exit52.hw_write.exit59_crit_edge

hw_write.exit52.hw_write.exit59_crit_edge:        ; preds = %hw_write.exit52
  call void @__sanitizer_cov_trace_pc() #13
  br label %hw_write.exit59

if.else.i.i58:                                    ; preds = %hw_write.exit52
  call void @__sanitizer_cov_trace_pc() #13
  %44 = and i32 %41, -50331649
  %45 = or i32 %44, 33554432
  %46 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i46, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #11, !srcloc !187
  br label %hw_write.exit59

hw_write.exit59:                                  ; preds = %if.else.i.i58, %hw_write.exit52.hw_write.exit59_crit_edge
  %48 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i46, align 4
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  %51 = ptrtoint ptr %imx28_write_fix.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %imx28_write_fix.i.i, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i.i64 = icmp eq i8 %52, 0
  br i1 %tobool.not.i.i64, label %if.else.i.i66, label %hw_write.exit59.hw_write.exit67_crit_edge

hw_write.exit59.hw_write.exit67_crit_edge:        ; preds = %hw_write.exit59
  call void @__sanitizer_cov_trace_pc() #13
  br label %hw_write.exit67

if.else.i.i66:                                    ; preds = %hw_write.exit59
  call void @__sanitizer_cov_trace_pc() #13
  %53 = or i32 %50, 134217728
  %54 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i46, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #11, !srcloc !187
  br label %hw_write.exit67

hw_write.exit67:                                  ; preds = %if.else.i.i66, %hw_write.exit59.hw_write.exit67_crit_edge
  %56 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i46, align 4
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  %59 = and i32 %58, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %59)
  %cmp.not = icmp eq i32 %59, 33554432
  br i1 %cmp.not, label %if.end21, label %do.end14

do.end14:                                         ; preds = %hw_write.exit67
  %60 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ci, align 8
  %role.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 5
  %62 = ptrtoint ptr %role.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %role.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp.i = icmp ugt i32 %63, 1
  br i1 %cmp.i, label %do.end14.do.body5.i_crit_edge, label %lor.rhs.i, !prof !188

do.end14.do.body5.i_crit_edge:                    ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body5.i

lor.rhs.i:                                        ; preds = %do.end14
  %arrayidx.i70 = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 4, i32 %63
  %64 = ptrtoint ptr %arrayidx.i70 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i70, align 4
  %tobool.not.i71 = icmp eq ptr %65, null
  br i1 %tobool.not.i71, label %lor.rhs.i.do.body5.i_crit_edge, label %ci_role.exit, !prof !188

lor.rhs.i.do.body5.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body5.i

do.body5.i:                                       ; preds = %lor.rhs.i.do.body5.i_crit_edge, %do.end14.do.body5.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/chipidea/ci.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 262, 0\0A.popsection", ""() #11, !srcloc !189
  unreachable

ci_role.exit:                                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.ci_role_driver, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.6, ptr noundef %67) #14
  %68 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ci, align 8
  %hw_bank = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 2
  %70 = ptrtoint ptr %hw_bank to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %hw_bank, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.9, i32 noundef %71) #14
  br label %cleanup

if.end21:                                         ; preds = %hw_write.exit67
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ci_platform_configure(ptr noundef %ci)
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %ci_role.exit, %if.then2.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -110, %do.end ], [ -19, %ci_role.exit ], [ 0, %if.end21 ], [ %call5, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ci_hdrc_add_device(ptr noundef %dev, ptr noundef %res, i32 noundef %nres, ptr noundef %platdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_mode.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %platdata, i32 0, i32 5
  %0 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %of_node.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %2 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call i32 @of_usb_get_phy_mode(ptr noundef %3) #11
  %4 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call.i, ptr %phy_mode.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %dr_mode.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %platdata, i32 0, i32 7
  %5 = ptrtoint ptr %dr_mode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dr_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not.i = icmp eq i32 %6, 0
  br i1 %tobool2.not.i, label %if.end6.i, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

if.end6.i:                                        ; preds = %if.end.i
  %call4.i = tail call i32 @usb_get_dr_mode(ptr noundef %dev) #11
  %7 = ptrtoint ptr %dr_mode.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call4.i, ptr %dr_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp eq i32 %call4.i, 0
  br i1 %cmp.i, label %if.end10.thread.i, label %if.end6.i.if.end10.i_crit_edge

if.end6.i.if.end10.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

if.end10.thread.i:                                ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %dr_mode.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %dr_mode.i, align 4
  br label %if.then13.i

if.end10.i:                                       ; preds = %if.end6.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  %9 = phi i32 [ %call4.i, %if.end6.i.if.end10.i_crit_edge ], [ %6, %if.end.i.if.end10.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp12.not.i = icmp eq i32 %9, 2
  br i1 %cmp12.not.i, label %if.end10.i.if.end41.i_crit_edge, label %if.end10.i.if.then13.i_crit_edge

if.end10.i.if.then13.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i

if.end10.i.if.end41.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41.i

if.then13.i:                                      ; preds = %if.end10.i.if.then13.i_crit_edge, %if.end10.thread.i
  %call14.i = tail call ptr @devm_regulator_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.12) #11
  %reg_vbus.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %platdata, i32 0, i32 9
  %10 = ptrtoint ptr %reg_vbus.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call14.i, ptr %reg_vbus.i, align 4
  %11 = ptrtoint ptr %call14.i to i32
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %11, label %if.else24.i [
    i32 -517, label %if.then13.i.if.then_crit_edge
    i32 -19, label %if.then22.i
  ]

if.then13.i.if.then_crit_edge:                    ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then22.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %reg_vbus.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %reg_vbus.i, align 4
  br label %if.end34.i

if.else24.i:                                      ; preds = %if.then13.i
  %cmp.i.i = icmp ugt ptr %call14.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.else24.i.if.end34.i_crit_edge

if.else24.i.if.end34.i_crit_edge:                 ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.i

do.end.i:                                         ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %11) #14
  %14 = ptrtoint ptr %reg_vbus.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_vbus.i, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %ci_get_platdata.exit

if.end34.i:                                       ; preds = %if.else24.i.if.end34.i_crit_edge, %if.then22.i
  %tpl_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %platdata, i32 0, i32 11
  %17 = ptrtoint ptr %tpl_support.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %tpl_support.i, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool35.not.i = icmp eq i8 %18, 0
  br i1 %tobool35.not.i, label %if.then36.i, label %if.end34.i.if.end41.i_crit_edge

if.end34.i.if.end41.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41.i

if.then36.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  %of_node37.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %19 = ptrtoint ptr %of_node37.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node37.i, align 8
  %call38.i = tail call zeroext i1 @of_usb_host_tpl_support(ptr noundef %20) #11
  %frombool.i = zext i1 %call38.i to i8
  %21 = ptrtoint ptr %tpl_support.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %frombool.i, ptr %tpl_support.i, align 2
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then36.i, %if.end34.i.if.end41.i_crit_edge, %if.end10.i.if.end41.i_crit_edge
  %22 = ptrtoint ptr %dr_mode.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dr_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp43.i = icmp eq i32 %23, 3
  br i1 %cmp43.i, label %if.then44.i, label %if.end41.i.if.end53.i_crit_edge

if.end41.i.if.end53.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53.i

if.then44.i:                                      ; preds = %if.end41.i
  %ci_otg_caps.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %platdata, i32 0, i32 10
  %24 = ptrtoint ptr %ci_otg_caps.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 512, ptr %ci_otg_caps.i, align 4
  %hnp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %platdata, i32 0, i32 10, i32 1
  %25 = ptrtoint ptr %hnp_support.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %hnp_support.i, align 2
  %srp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %platdata, i32 0, i32 10, i32 2
  %26 = ptrtoint ptr %srp_support.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %srp_support.i, align 1
  %of_node47.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %27 = ptrtoint ptr %of_node47.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %of_node47.i, align 8
  %call49.i = tail call i32 @of_usb_update_otg_caps(ptr noundef %28, ptr noundef %ci_otg_caps.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %if.then44.i.if.end53.i_crit_edge, label %if.then44.i.if.then_crit_edge

if.then44.i.if.then_crit_edge:                    ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then44.i.if.end53.i_crit_edge:                 ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then44.i.if.end53.i_crit_edge, %if.end41.i.if.end53.i_crit_edge
  %call54.i = tail call i32 @usb_get_maximum_speed(ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call54.i)
  %cmp55.i = icmp eq i32 %call54.i, 2
  br i1 %cmp55.i, label %if.then56.i, label %if.end53.i.if.end57.i_crit_edge

if.end53.i.if.end57.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57.i

if.then56.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #13
  %flags.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %platdata, i32 0, i32 6
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %30, 64
  store i32 %or.i, ptr %flags.i, align 4
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then56.i, %if.end53.i.if.end57.i_crit_edge
  %of_node58.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %31 = ptrtoint ptr %of_node58.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %of_node58.i, align 8
  %phy_clkgate_delay_us.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %platdata, i32 0, i32 18
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %32, ptr noundef nonnull @.str.15, ptr noundef %phy_clkgate_delay_us.i, i32 noundef 1, i32 noundef 0) #11
  %itc_setting.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %platdata, i32 0, i32 12
  %33 = ptrtoint ptr %itc_setting.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %itc_setting.i, align 4
  %34 = ptrtoint ptr %of_node58.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %of_node58.i, align 8
  %call.i.i285.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %35, ptr noundef nonnull @.str.16, ptr noundef %itc_setting.i, i32 noundef 1, i32 noundef 0) #11
  %36 = ptrtoint ptr %of_node58.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %of_node58.i, align 8
  %ahb_burst_config.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %platdata, i32 0, i32 13
  %call.i.i286.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %37, ptr noundef nonnull @.str.17, ptr noundef %ahb_burst_config.i, i32 noundef 1, i32 noundef 0) #11
  %38 = tail call i32 @llvm.smin.i32(i32 %call.i.i286.i, i32 0) #11
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %38, label %do.end74.i [
    i32 0, label %if.then66.i
    i32 -22, label %if.end57.i.if.end76.i_crit_edge
  ]

if.end57.i.if.end76.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76.i

if.then66.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #13
  %flags67.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %platdata, i32 0, i32 6
  %40 = ptrtoint ptr %flags67.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags67.i, align 4
  %or68.i = or i32 %41, 512
  store i32 %or68.i, ptr %flags67.i, align 4
  br label %if.end76.i

do.end74.i:                                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #14
  br label %ci_get_platdata.exit

if.end76.i:                                       ; preds = %if.then66.i, %if.end57.i.if.end76.i_crit_edge
  %42 = ptrtoint ptr %of_node58.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %of_node58.i, align 8
  %tx_burst_size.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %platdata, i32 0, i32 14
  %call.i.i287.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %43, ptr noundef nonnull @.str.21, ptr noundef %tx_burst_size.i, i32 noundef 1, i32 noundef 0) #11
  %44 = tail call i32 @llvm.smin.i32(i32 %call.i.i287.i, i32 0) #11
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %44, label %do.end88.i [
    i32 0, label %if.then80.i
    i32 -22, label %if.end76.i.if.end90.i_crit_edge
  ]

if.end76.i.if.end90.i_crit_edge:                  ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90.i

if.then80.i:                                      ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #13
  %flags81.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %platdata, i32 0, i32 6
  %46 = ptrtoint ptr %flags81.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags81.i, align 4
  %or82.i = or i32 %47, 1024
  store i32 %or82.i, ptr %flags81.i, align 4
  br label %if.end90.i

do.end88.i:                                       ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #14
  br label %ci_get_platdata.exit

if.end90.i:                                       ; preds = %if.then80.i, %if.end76.i.if.end90.i_crit_edge
  %48 = ptrtoint ptr %of_node58.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %of_node58.i, align 8
  %rx_burst_size.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %platdata, i32 0, i32 15
  %call.i.i288.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %49, ptr noundef nonnull @.str.25, ptr noundef %rx_burst_size.i, i32 noundef 1, i32 noundef 0) #11
  %50 = tail call i32 @llvm.smin.i32(i32 %call.i.i288.i, i32 0) #11
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %50, label %do.end102.i [
    i32 0, label %if.then94.i
    i32 -22, label %if.end90.i.if.end104.i_crit_edge
  ]

if.end90.i.if.end104.i_crit_edge:                 ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end104.i

if.then94.i:                                      ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #13
  %flags95.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %platdata, i32 0, i32 6
  %52 = ptrtoint ptr %flags95.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags95.i, align 4
  %or96.i = or i32 %53, 2048
  store i32 %or96.i, ptr %flags95.i, align 4
  br label %if.end104.i

do.end102.i:                                      ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #14
  br label %ci_get_platdata.exit

if.end104.i:                                      ; preds = %if.then94.i, %if.end90.i.if.end104.i_crit_edge
  %54 = ptrtoint ptr %of_node58.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %of_node58.i, align 8
  %call106.i = tail call ptr @of_find_property(ptr noundef %55, ptr noundef nonnull @.str.29, ptr noundef null) #11
  %tobool107.not.i = icmp eq ptr %call106.i, null
  br i1 %tobool107.not.i, label %if.end104.i.if.end111.i_crit_edge, label %if.then108.i

if.end104.i.if.end111.i_crit_edge:                ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end111.i

if.then108.i:                                     ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #13
  %flags109.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %platdata, i32 0, i32 6
  %56 = ptrtoint ptr %flags109.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags109.i, align 4
  %or110.i = or i32 %57, 256
  store i32 %or110.i, ptr %flags109.i, align 4
  br label %if.end111.i

if.end111.i:                                      ; preds = %if.then108.i, %if.end104.i.if.end111.i_crit_edge
  %58 = ptrtoint ptr %of_node58.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %of_node58.i, align 8
  %call.i.i = tail call ptr @of_find_property(ptr noundef %59, ptr noundef nonnull @.str.30, ptr noundef null) #11
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.i.not.i, label %if.end142.thread.i, label %if.then116.i

if.end142.thread.i:                               ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #13
  %nb303.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %platdata, i32 0, i32 16, i32 5
  %60 = ptrtoint ptr %nb303.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @ci_cable_notifier, ptr %nb303.i, align 4
  %edev304.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %platdata, i32 0, i32 16, i32 3
  %61 = ptrtoint ptr %edev304.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 -19 to ptr), ptr %edev304.i, align 4
  %nb143309.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %platdata, i32 0, i32 17, i32 5
  %62 = ptrtoint ptr %nb143309.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @ci_cable_notifier, ptr %nb143309.i, align 4
  %edev145310.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %platdata, i32 0, i32 17, i32 3
  %63 = ptrtoint ptr %edev145310.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr inttoptr (i32 -19 to ptr), ptr %edev145310.i, align 4
  br label %if.end156.i

if.then116.i:                                     ; preds = %if.end111.i
  %call117.i = tail call ptr @extcon_get_edev_by_phandle(ptr noundef %dev, i32 noundef 0) #11
  %cmp.i289.i = icmp ule ptr %call117.i, inttoptr (i32 -4096 to ptr)
  %64 = ptrtoint ptr %call117.i to i32
  %cmp120.not.i = icmp eq ptr %call117.i, inttoptr (i32 -19 to ptr)
  %or.cond.i = or i1 %cmp.i289.i, %cmp120.not.i
  br i1 %or.cond.i, label %if.end123.i, label %if.then116.i.ci_get_platdata.exit_crit_edge

if.then116.i.ci_get_platdata.exit_crit_edge:      ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ci_get_platdata.exit

if.end123.i:                                      ; preds = %if.then116.i
  %call124.i = tail call ptr @extcon_get_edev_by_phandle(ptr noundef %dev, i32 noundef 1) #11
  %cmp.i290.i = icmp ule ptr %call124.i, inttoptr (i32 -4096 to ptr)
  %65 = ptrtoint ptr %call124.i to i32
  %cmp128.not.i = icmp eq ptr %call124.i, inttoptr (i32 -19 to ptr)
  %or.cond312.i = or i1 %cmp.i290.i, %cmp128.not.i
  br i1 %or.cond312.i, label %if.end132.i, label %if.end123.i.ci_get_platdata.exit_crit_edge

if.end123.i.ci_get_platdata.exit_crit_edge:       ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ci_get_platdata.exit

if.end132.i:                                      ; preds = %if.end123.i
  %nb.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %platdata, i32 0, i32 16, i32 5
  %66 = ptrtoint ptr %nb.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @ci_cable_notifier, ptr %nb.i, align 4
  %edev.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %platdata, i32 0, i32 16, i32 3
  %67 = ptrtoint ptr %edev.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call117.i, ptr %edev.i, align 4
  %cmp.i291.i = icmp ugt ptr %call117.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i291.i, label %if.end132.i.if.end142.i_crit_edge, label %if.then134.i

if.end132.i.if.end142.i_crit_edge:                ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end142.i

if.then134.i:                                     ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #13
  %vbus_extcon.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %platdata, i32 0, i32 16
  %call136.i = tail call i32 @extcon_get_state(ptr noundef %call117.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136.i)
  %tobool137.not.i = icmp ne i32 %call136.i, 0
  %..i = zext i1 %tobool137.not.i to i8
  %68 = ptrtoint ptr %vbus_extcon.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %..i, ptr %vbus_extcon.i, align 4
  br label %if.end142.i

if.end142.i:                                      ; preds = %if.then134.i, %if.end132.i.if.end142.i_crit_edge
  %id_extcon.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %platdata, i32 0, i32 17
  %nb143.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %platdata, i32 0, i32 17, i32 5
  %69 = ptrtoint ptr %nb143.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @ci_cable_notifier, ptr %nb143.i, align 4
  %edev145.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %platdata, i32 0, i32 17, i32 3
  %70 = ptrtoint ptr %edev145.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call124.i, ptr %edev145.i, align 4
  %cmp.i292.i = icmp ugt ptr %call124.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i292.i, label %if.end142.i.if.end156.i_crit_edge, label %if.then147.i

if.end142.i.if.end156.i_crit_edge:                ; preds = %if.end142.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end156.i

if.then147.i:                                     ; preds = %if.end142.i
  %call149.i = tail call i32 @extcon_get_state(ptr noundef %call124.i, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i)
  %tobool150.not.i = icmp eq i32 %call149.i, 0
  br i1 %tobool150.not.i, label %if.else153.i, label %if.then151.i

if.then151.i:                                     ; preds = %if.then147.i
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %id_extcon.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %id_extcon.i, align 4
  br label %if.end156.i

if.else153.i:                                     ; preds = %if.then147.i
  call void @__sanitizer_cov_trace_pc() #13
  %72 = ptrtoint ptr %id_extcon.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %id_extcon.i, align 4
  br label %if.end156.i

if.end156.i:                                      ; preds = %if.else153.i, %if.then151.i, %if.end142.i.if.end156.i_crit_edge, %if.end142.thread.i
  %call.i293.i = tail call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.31) #11
  br i1 %call.i293.i, label %if.then158.i, label %if.end156.i.if.end159.i_crit_edge

if.end156.i.if.end159.i_crit_edge:                ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end159.i

if.then158.i:                                     ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #13
  %fwnode.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 28
  %73 = ptrtoint ptr %fwnode.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %fwnode.i, align 4
  store ptr %74, ptr @ci_role_switch, align 4
  br label %if.end159.i

if.end159.i:                                      ; preds = %if.then158.i, %if.end156.i.if.end159.i_crit_edge
  %call160.i = tail call ptr @devm_pinctrl_get(ptr noundef %dev) #11
  %pctl.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %platdata, i32 0, i32 19
  %75 = ptrtoint ptr %pctl.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call160.i, ptr %pctl.i, align 4
  %cmp.i294.i = icmp ugt ptr %call160.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i294.i, label %if.end159.i.if.end179.i_crit_edge, label %if.then163.i

if.end159.i.if.end179.i_crit_edge:                ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end179.i

if.then163.i:                                     ; preds = %if.end159.i
  %call165.i = tail call ptr @pinctrl_lookup_state(ptr noundef %call160.i, ptr noundef nonnull @.str.32) #11
  %cmp.i295.i = icmp ugt ptr %call165.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i295.i, label %if.then163.i.if.end168.i_crit_edge, label %if.then167.i

if.then163.i.if.end168.i_crit_edge:               ; preds = %if.then163.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end168.i

if.then167.i:                                     ; preds = %if.then163.i
  call void @__sanitizer_cov_trace_pc() #13
  %pins_default.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %platdata, i32 0, i32 20
  %76 = ptrtoint ptr %pins_default.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call165.i, ptr %pins_default.i, align 4
  br label %if.end168.i

if.end168.i:                                      ; preds = %if.then167.i, %if.then163.i.if.end168.i_crit_edge
  %77 = ptrtoint ptr %pctl.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pctl.i, align 4
  %call170.i = tail call ptr @pinctrl_lookup_state(ptr noundef %78, ptr noundef nonnull @.str.33) #11
  %cmp.i296.i = icmp ugt ptr %call170.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i296.i, label %if.end168.i.if.end173.i_crit_edge, label %if.then172.i

if.end168.i.if.end173.i_crit_edge:                ; preds = %if.end168.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end173.i

if.then172.i:                                     ; preds = %if.end168.i
  call void @__sanitizer_cov_trace_pc() #13
  %pins_host.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %platdata, i32 0, i32 21
  %79 = ptrtoint ptr %pins_host.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call170.i, ptr %pins_host.i, align 4
  br label %if.end173.i

if.end173.i:                                      ; preds = %if.then172.i, %if.end168.i.if.end173.i_crit_edge
  %80 = ptrtoint ptr %pctl.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pctl.i, align 4
  %call175.i = tail call ptr @pinctrl_lookup_state(ptr noundef %81, ptr noundef nonnull @.str.34) #11
  %cmp.i297.i = icmp ugt ptr %call175.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i297.i, label %if.end173.i.if.end179.i_crit_edge, label %if.then177.i

if.end173.i.if.end179.i_crit_edge:                ; preds = %if.end173.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end179.i

if.then177.i:                                     ; preds = %if.end173.i
  call void @__sanitizer_cov_trace_pc() #13
  %pins_device.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %platdata, i32 0, i32 22
  %82 = ptrtoint ptr %pins_device.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call175.i, ptr %pins_device.i, align 4
  br label %if.end179.i

if.end179.i:                                      ; preds = %if.then177.i, %if.end173.i.if.end179.i_crit_edge, %if.end159.i.if.end179.i_crit_edge
  %enter_lpm.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %platdata, i32 0, i32 24
  %83 = ptrtoint ptr %enter_lpm.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %enter_lpm.i, align 4
  %tobool180.not.i = icmp eq ptr %84, null
  br i1 %tobool180.not.i, label %if.then181.i, label %if.end179.i.if.end_crit_edge

if.end179.i.if.end_crit_edge:                     ; preds = %if.end179.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then181.i:                                     ; preds = %if.end179.i
  call void @__sanitizer_cov_trace_pc() #13
  %85 = ptrtoint ptr %enter_lpm.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @ci_hdrc_enter_lpm_common, ptr %enter_lpm.i, align 4
  br label %if.end

ci_get_platdata.exit:                             ; preds = %if.end123.i.ci_get_platdata.exit_crit_edge, %if.then116.i.ci_get_platdata.exit_crit_edge, %do.end102.i, %do.end88.i, %do.end74.i, %do.end.i
  %retval.0.i = phi i32 [ %38, %do.end74.i ], [ %44, %do.end88.i ], [ %50, %do.end102.i ], [ %16, %do.end.i ], [ %64, %if.then116.i.ci_get_platdata.exit_crit_edge ], [ %65, %if.end123.i.ci_get_platdata.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %ci_get_platdata.exit.if.end_crit_edge, label %ci_get_platdata.exit.if.then_crit_edge

ci_get_platdata.exit.if.then_crit_edge:           ; preds = %ci_get_platdata.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

ci_get_platdata.exit.if.end_crit_edge:            ; preds = %ci_get_platdata.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %ci_get_platdata.exit.if.then_crit_edge, %if.then44.i.if.then_crit_edge, %if.then13.i.if.then_crit_edge
  %retval.0.i51 = phi i32 [ %retval.0.i, %ci_get_platdata.exit.if.then_crit_edge ], [ %call49.i, %if.then44.i.if.then_crit_edge ], [ %11, %if.then13.i.if.then_crit_edge ]
  %86 = inttoptr i32 %retval.0.i51 to ptr
  br label %cleanup

if.end:                                           ; preds = %ci_get_platdata.exit.if.end_crit_edge, %if.then181.i, %if.end179.i.if.end_crit_edge
  %call2 = tail call i32 @ida_alloc_range(ptr noundef nonnull @ci_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %87 = inttoptr i32 %call2 to ptr
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str.11, i32 noundef %call2) #11
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.put_id_crit_edge, label %if.end9

if.end5.put_id_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_id

if.end9:                                          ; preds = %if.end5
  %dev10 = getelementptr inbounds %struct.platform_device, ptr %call6, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %call6, i32 0, i32 3, i32 1
  %88 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %dev, ptr %parent, align 8
  tail call void @device_set_of_node_from_dev(ptr noundef %dev10, ptr noundef %dev) #11
  %call12 = tail call i32 @platform_device_add_resources(ptr noundef nonnull %call6, ptr noundef %res, i32 noundef %nres) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end9.err_crit_edge

if.end9.err_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end15:                                         ; preds = %if.end9
  %call16 = tail call i32 @platform_device_add_data(ptr noundef nonnull %call6, ptr noundef %platdata, i32 noundef 140) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.err_crit_edge

if.end15.err_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end19:                                         ; preds = %if.end15
  %call20 = tail call i32 @platform_device_add(ptr noundef nonnull %call6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %if.end19.err_crit_edge

if.end19.err_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err:                                              ; preds = %if.end19.err_crit_edge, %if.end15.err_crit_edge, %if.end9.err_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end9.err_crit_edge ], [ %call16, %if.end15.err_crit_edge ], [ %call20, %if.end19.err_crit_edge ]
  tail call void @platform_device_put(ptr noundef nonnull %call6) #11
  br label %put_id

put_id:                                           ; preds = %err, %if.end5.put_id_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err ], [ -12, %if.end5.put_id_crit_edge ]
  tail call void @ida_free(ptr noundef nonnull @ci_ida, i32 noundef %call2) #11
  %89 = inttoptr i32 %ret.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %put_id, %if.end19.cleanup_crit_edge, %if.then3, %if.then
  %retval.0 = phi ptr [ %86, %if.then ], [ %87, %if.then3 ], [ %89, %put_id ], [ %call6, %if.end19.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_of_node_from_dev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_resources(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ci_hdrc_remove_device(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %id1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %0 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id1, align 4
  tail call void @platform_device_unregister(ptr noundef %pdev) #11
  tail call void @ida_free(ptr noundef nonnull @ci_ida, i32 noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ci_hdrc_query_available_role(ptr nocapture noundef readonly %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %roles = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %roles to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %roles, align 4
  %tobool1.not = icmp eq ptr %3, null
  %arrayidx12 = getelementptr %struct.ci_hdrc, ptr %1, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx12, align 4
  %tobool13.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.else10, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %spec.select = select i1 %tobool13.not, i32 1, i32 3
  br label %cleanup

if.else10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %. = select i1 %tobool13.not, i32 0, i32 2
  br label %cleanup

cleanup:                                          ; preds = %if.else10, %land.lhs.true, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %., %if.else10 ], [ %spec.select, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_hdrc_platform_register() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ci_hdrc_host_driver_init() #11
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ci_hdrc_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ci_hdrc_platform_unregister() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @ci_hdrc_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_usb_get_phy_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_dr_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_usb_host_tpl_support(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_usb_update_otg_caps(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_maximum_speed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @extcon_get_edev_by_phandle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_cable_notifier(ptr nocapture noundef %nb, i32 noundef %event, ptr nocapture noundef readnone %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -12
  %ci1 = getelementptr i8, ptr %nb, i32 -4
  %0 = ptrtoint ptr %ci1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %event)
  %tobool = icmp ne i32 %event, 0
  %frombool = zext i1 %tobool to i8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %add.ptr, align 4
  %changed = getelementptr i8, ptr %nb, i32 -11
  %3 = ptrtoint ptr %changed to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %changed, align 1
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !190
  %and.i.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then22.i, label %do.end11.i

do.end11.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %irq.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq.i, align 8
  %call12.i = tail call i32 @ci_irq_handler(i32 noundef %6, ptr noundef %1) #11
  br label %do.body24.i

if.then22.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  %irq48.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %irq48.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq48.i, align 8
  %call1249.i = tail call i32 @ci_irq_handler(i32 noundef %8, ptr noundef %1) #11
  tail call void @trace_hardirqs_on() #11
  br label %do.body24.i

do.body24.i:                                      ; preds = %if.then22.i, %do.end11.i
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !191
  %and.i.i.i = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.ci_irq.exit_crit_edge, !prof !188

do.body24.i.ci_irq.exit_crit_edge:                ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ci_irq.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %ci_irq.exit

ci_irq.exit:                                      ; preds = %if.then36.i, %do.body24.i.ci_irq.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #11, !srcloc !192
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_get_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ci_hdrc_enter_lpm_common(ptr nocapture noundef readonly %ci, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_bank = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 2
  %0 = ptrtoint ptr %hw_bank to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_bank, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %cond = select i1 %tobool.not, i32 12, i32 13
  %cond5 = select i1 %tobool.not, i32 8388608, i32 4194304
  %arrayidx.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 %cond
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #11, !srcloc !183
  %5 = shl i32 %4, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  %and.i = and i32 %5, %cond5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not = icmp eq i32 %and.i, 0
  %6 = select i1 %enable, i1 %tobool6.not, i1 false
  br i1 %6, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %hw_bank to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hw_bank, align 8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  %imx28_write_fix.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 41
  %12 = ptrtoint ptr %imx28_write_fix.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %imx28_write_fix.i.i, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.if.end27_crit_edge

if.then.if.end27_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.else.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool13.not = icmp eq i32 %8, 0
  %cond14 = select i1 %tobool13.not, i32 8388608, i32 4194304
  %14 = tail call i32 @llvm.bswap.i32(i32 %11) #11
  %or.i = or i32 %14, %cond14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  tail call void @arm_heavy_mb() #11
  %17 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %17) #11, !srcloc !187
  br label %if.end27

if.else:                                          ; preds = %entry
  %brmerge39 = select i1 %enable, i1 true, i1 %tobool6.not
  br i1 %brmerge39, label %if.else.if.end27_crit_edge, label %if.then22

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then22:                                        ; preds = %if.else
  %18 = ptrtoint ptr %hw_bank to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hw_bank, align 8
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  %imx28_write_fix.i.i45 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 41
  %23 = ptrtoint ptr %imx28_write_fix.i.i45 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %imx28_write_fix.i.i45, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i.i46 = icmp eq i8 %24, 0
  br i1 %tobool.not.i.i46, label %if.else.i.i48, label %if.then22.if.end27_crit_edge

if.then22.if.end27_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.else.i.i48:                                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  %25 = tail call i32 @llvm.bswap.i32(i32 %22) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool25.not = icmp eq i32 %19, 0
  %neg.i42 = select i1 %tobool25.not, i32 -8388609, i32 -4194305
  %and.i44 = and i32 %25, %neg.i42
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  tail call void @arm_heavy_mb() #11
  %28 = tail call i32 @llvm.bswap.i32(i32 %and.i44) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %28) #11, !srcloc !187
  br label %if.end27

if.end27:                                         ; preds = %if.else.i.i48, %if.then22.if.end27_crit_edge, %if.else.if.end27_crit_edge, %if.else.i.i, %if.then.if.end27_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_irq_handler(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %in_lpm = getelementptr inbounds %struct.ci_hdrc, ptr %data, i32 0, i32 43
  %0 = ptrtoint ptr %in_lpm to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %in_lpm, align 8, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @disable_irq_nosync(i32 noundef %irq) #11
  %wakeup_int = getelementptr inbounds %struct.ci_hdrc, ptr %data, i32 0, i32 44
  %2 = ptrtoint ptr %wakeup_int to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %wakeup_int, align 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 5) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_otg = getelementptr inbounds %struct.ci_hdrc, ptr %data, i32 0, i32 6
  %5 = ptrtoint ptr %is_otg to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_otg, align 8, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %if.end.if.end10_crit_edge, label %if.then2

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @hw_read_otgsc(ptr noundef %data, i32 noundef -1) #11
  %platdata.i = getelementptr inbounds %struct.ci_hdrc, ptr %data, i32 0, i32 32
  %7 = ptrtoint ptr %platdata.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %platdata.i, align 4
  %9 = ptrtoint ptr %is_otg to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_otg, align 8, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.then2.if.end10_crit_edge, label %land.lhs.true.i

if.then2.if.end10_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

land.lhs.true.i:                                  ; preds = %if.then2
  %roles.i = getelementptr inbounds %struct.ci_hdrc, ptr %data, i32 0, i32 4
  %11 = ptrtoint ptr %roles.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %roles.i, align 4
  %tobool1.not.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end10_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.if.end10_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %arrayidx4.i = getelementptr %struct.ci_hdrc, ptr %data, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx4.i, align 4
  %tobool5.not.i = icmp eq ptr %14, null
  br i1 %tobool5.not.i, label %land.lhs.true2.i.if.end10_crit_edge, label %land.rhs.i

land.lhs.true2.i.if.end10_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

land.rhs.i:                                       ; preds = %land.lhs.true2.i
  %srp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %8, i32 0, i32 10, i32 2
  %15 = ptrtoint ptr %srp_support.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %srp_support.i, align 1, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool6.not.i = icmp eq i8 %16, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i, label %land.rhs.i.if.then5_crit_edge

land.rhs.i.if.then5_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5

lor.lhs.false.i:                                  ; preds = %land.rhs.i
  %hnp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %8, i32 0, i32 10, i32 1
  %17 = ptrtoint ptr %hnp_support.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %hnp_support.i, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool7.not.i = icmp eq i8 %18, 0
  br i1 %tobool7.not.i, label %ci_otg_is_fsm_mode.exit, label %lor.lhs.false.i.if.then5_crit_edge

lor.lhs.false.i.if.then5_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5

ci_otg_is_fsm_mode.exit:                          ; preds = %lor.lhs.false.i
  %adp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %8, i32 0, i32 10, i32 3
  %19 = ptrtoint ptr %adp_support.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %adp_support.i, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool8.i.not = icmp eq i8 %20, 0
  br i1 %tobool8.i.not, label %ci_otg_is_fsm_mode.exit.if.end10_crit_edge, label %ci_otg_is_fsm_mode.exit.if.then5_crit_edge

ci_otg_is_fsm_mode.exit.if.then5_crit_edge:       ; preds = %ci_otg_is_fsm_mode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5

ci_otg_is_fsm_mode.exit.if.end10_crit_edge:       ; preds = %ci_otg_is_fsm_mode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then5:                                         ; preds = %ci_otg_is_fsm_mode.exit.if.then5_crit_edge, %lor.lhs.false.i.if.then5_crit_edge, %land.rhs.i.if.then5_crit_edge
  %call6 = tail call i32 @ci_otg_fsm_irq(ptr noundef %data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6)
  %cmp = icmp eq i32 %call6, 1
  br i1 %cmp, label %if.then5.cleanup_crit_edge, label %if.then5.if.end10_crit_edge

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.then5.if.end10_crit_edge, %ci_otg_is_fsm_mode.exit.if.end10_crit_edge, %land.lhs.true2.i.if.end10_crit_edge, %land.lhs.true.i.if.end10_crit_edge, %if.then2.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %ret.0 = phi i32 [ %call6, %if.then5.if.end10_crit_edge ], [ 0, %ci_otg_is_fsm_mode.exit.if.end10_crit_edge ], [ 0, %if.end.if.end10_crit_edge ], [ 0, %land.lhs.true2.i.if.end10_crit_edge ], [ 0, %land.lhs.true.i.if.end10_crit_edge ], [ 0, %if.then2.if.end10_crit_edge ]
  %otgsc.0 = phi i32 [ %call3, %if.then5.if.end10_crit_edge ], [ %call3, %ci_otg_is_fsm_mode.exit.if.end10_crit_edge ], [ 0, %if.end.if.end10_crit_edge ], [ %call3, %land.lhs.true2.i.if.end10_crit_edge ], [ %call3, %land.lhs.true.i.if.end10_crit_edge ], [ %call3, %if.then2.if.end10_crit_edge ]
  %21 = ptrtoint ptr %is_otg to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %is_otg, align 8, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool12.not = icmp eq i8 %22, 0
  %and = and i32 %otgsc.0, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool12.not, i1 true, i1 %tobool13.not
  %and15 = and i32 %otgsc.0, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %or.cond59 = select i1 %or.cond, i1 true, i1 %tobool16.not
  br i1 %or.cond59, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end10
  %id_event = getelementptr inbounds %struct.ci_hdrc, ptr %data, i32 0, i32 39
  %23 = ptrtoint ptr %id_event to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %id_event, align 4
  tail call void @hw_write_otgsc(ptr noundef %data, i32 noundef 65536, i32 noundef 65536) #11
  %irq.i = getelementptr inbounds %struct.ci_hdrc, ptr %data, i32 0, i32 3
  %24 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq.i, align 8
  tail call void @disable_irq_nosync(i32 noundef %25) #11
  %wq.i = getelementptr inbounds %struct.ci_hdrc, ptr %data, i32 0, i32 15
  %26 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wq.i, align 8
  %work.i = getelementptr inbounds %struct.ci_hdrc, ptr %data, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %27, ptr noundef %work.i) #11
  br i1 %call.i.i, label %if.then17.cleanup_crit_edge, label %if.then.i

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq.i, align 8
  tail call void @enable_irq(i32 noundef %29) #11
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  %and22 = and i32 %otgsc.0, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %or.cond60 = select i1 %tobool12.not, i1 true, i1 %tobool23.not
  %and25 = and i32 %otgsc.0, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %or.cond61 = select i1 %or.cond60, i1 true, i1 %tobool26.not
  br i1 %or.cond61, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end18
  %b_sess_valid_event = getelementptr inbounds %struct.ci_hdrc, ptr %data, i32 0, i32 40
  %30 = ptrtoint ptr %b_sess_valid_event to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %b_sess_valid_event, align 1
  tail call void @hw_write_otgsc(ptr noundef %data, i32 noundef 524288, i32 noundef 524288) #11
  %irq.i62 = getelementptr inbounds %struct.ci_hdrc, ptr %data, i32 0, i32 3
  %31 = ptrtoint ptr %irq.i62 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq.i62, align 8
  tail call void @disable_irq_nosync(i32 noundef %32) #11
  %wq.i63 = getelementptr inbounds %struct.ci_hdrc, ptr %data, i32 0, i32 15
  %33 = ptrtoint ptr %wq.i63 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wq.i63, align 8
  %work.i64 = getelementptr inbounds %struct.ci_hdrc, ptr %data, i32 0, i32 14
  %call.i.i65 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %34, ptr noundef %work.i64) #11
  br i1 %call.i.i65, label %if.then27.cleanup_crit_edge, label %if.then.i66

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i66:                                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %irq.i62 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq.i62, align 8
  tail call void @enable_irq(i32 noundef %36) #11
  br label %cleanup

if.end28:                                         ; preds = %if.end18
  %role = getelementptr inbounds %struct.ci_hdrc, ptr %data, i32 0, i32 5
  %37 = ptrtoint ptr %role to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %role, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %cmp29.not = icmp eq i32 %38, 2
  br i1 %cmp29.not, label %if.end28.cleanup_crit_edge, label %if.then30

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp.i = icmp ugt i32 %38, 1
  br i1 %cmp.i, label %if.then30.do.body5.i_crit_edge, label %lor.rhs.i69, !prof !188

if.then30.do.body5.i_crit_edge:                   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body5.i

lor.rhs.i69:                                      ; preds = %if.then30
  %arrayidx.i = getelementptr %struct.ci_hdrc, ptr %data, i32 0, i32 4, i32 %38
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i68 = icmp eq ptr %40, null
  br i1 %tobool.not.i68, label %lor.rhs.i69.do.body5.i_crit_edge, label %ci_role.exit, !prof !188

lor.rhs.i69.do.body5.i_crit_edge:                 ; preds = %lor.rhs.i69
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body5.i

do.body5.i:                                       ; preds = %lor.rhs.i69.do.body5.i_crit_edge, %if.then30.do.body5.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/chipidea/ci.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 262, 0\0A.popsection", ""() #11, !srcloc !189
  unreachable

ci_role.exit:                                     ; preds = %lor.rhs.i69
  call void @__sanitizer_cov_trace_pc() #13
  %irq32 = getelementptr inbounds %struct.ci_role_driver, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %irq32 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %irq32, align 4
  %call33 = tail call i32 %42(ptr noundef %data) #11
  br label %cleanup

cleanup:                                          ; preds = %ci_role.exit, %if.end28.cleanup_crit_edge, %if.then.i66, %if.then27.cleanup_crit_edge, %if.then.i, %if.then17.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %if.then5.cleanup_crit_edge ], [ %call33, %ci_role.exit ], [ %ret.0, %if.end28.cleanup_crit_edge ], [ 1, %if.then17.cleanup_crit_edge ], [ 1, %if.then.i ], [ 1, %if.then27.cleanup_crit_edge ], [ 1, %if.then.i66 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_read_otgsc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @ci_otg_is_fsm_mode(ptr nocapture noundef readonly %ci) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %platdata = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 32
  %0 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platdata, align 4
  %is_otg = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 6
  %2 = ptrtoint ptr %is_otg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_otg, align 8, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.lhs.true

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %roles = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 4
  %4 = ptrtoint ptr %roles to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %roles, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %land.lhs.true.land.end_crit_edge, label %land.lhs.true2

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %arrayidx4 = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx4, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %land.lhs.true2.land.end_crit_edge, label %land.rhs

land.lhs.true2.land.end_crit_edge:                ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true2
  %srp_support = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %1, i32 0, i32 10, i32 2
  %8 = ptrtoint ptr %srp_support to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %srp_support, align 1, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %land.rhs.land.end_crit_edge

land.rhs.land.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

lor.lhs.false:                                    ; preds = %land.rhs
  %hnp_support = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %1, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %hnp_support to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hnp_support, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool7.not = icmp eq i8 %11, 0
  br i1 %tobool7.not, label %lor.rhs, label %lor.lhs.false.land.end_crit_edge

lor.lhs.false.land.end_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

lor.rhs:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %adp_support = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %1, i32 0, i32 10, i32 3
  %12 = ptrtoint ptr %adp_support to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %adp_support, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool8 = icmp ne i8 %13, 0
  br label %land.end

land.end:                                         ; preds = %lor.rhs, %lor.lhs.false.land.end_crit_edge, %land.rhs.land.end_crit_edge, %land.lhs.true2.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %14 = phi i1 [ false, %land.lhs.true2.land.end_crit_edge ], [ false, %land.lhs.true.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ true, %lor.lhs.false.land.end_crit_edge ], [ true, %land.rhs.land.end_crit_edge ], [ %tobool8, %lor.rhs ]
  ret i1 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ci_otg_fsm_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_write_otgsc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_usb_role_switch_set(ptr noundef %sw, i32 noundef %role) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usb_role_switch_get_drvdata(ptr noundef %sw) #11
  %role.i = getelementptr inbounds %struct.ci_hdrc, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %role.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %role.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %1, label %entry.if.else4.i_crit_edge [
    i32 0, label %entry.ci_role_to_usb_role.exit_crit_edge
    i32 1, label %land.lhs.true.i
  ]

entry.ci_role_to_usb_role.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %ci_role_to_usb_role.exit

entry.if.else4.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else4.i

land.lhs.true.i:                                  ; preds = %entry
  %vbus_active.i = getelementptr inbounds %struct.ci_hdrc, ptr %call, i32 0, i32 33
  %3 = ptrtoint ptr %vbus_active.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vbus_active.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.else4.i_crit_edge, label %land.lhs.true.i.ci_role_to_usb_role.exit_crit_edge

land.lhs.true.i.ci_role_to_usb_role.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ci_role_to_usb_role.exit

land.lhs.true.i.if.else4.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else4.i

if.else4.i:                                       ; preds = %land.lhs.true.i.if.else4.i_crit_edge, %entry.if.else4.i_crit_edge
  br label %ci_role_to_usb_role.exit

ci_role_to_usb_role.exit:                         ; preds = %if.else4.i, %land.lhs.true.i.ci_role_to_usb_role.exit_crit_edge, %entry.ci_role_to_usb_role.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.else4.i ], [ 1, %entry.ci_role_to_usb_role.exit_crit_edge ], [ 2, %land.lhs.true.i.ci_role_to_usb_role.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %role)
  %switch.selectcmp.i = icmp eq i32 %role, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 1, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %role)
  %switch.selectcmp5.i = icmp eq i32 %role, 1
  %switch.select6.i = select i1 %switch.selectcmp5.i, i32 0, i32 %switch.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %switch.select6.i)
  %cmp.not = icmp eq i32 %switch.select6.i, 2
  br i1 %cmp.not, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %ci_role_to_usb_role.exit
  %arrayidx = getelementptr %struct.ci_hdrc, ptr %call, i32 0, i32 4, i32 %switch.select6.i
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %6, null
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %role)
  %cmp3 = icmp eq i32 %retval.0.i, %role
  %or.cond = or i1 %cmp3, %tobool.not
  br i1 %or.cond, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %ci_role_to_usb_role.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %role)
  %cmp3.old = icmp eq i32 %retval.0.i, %role
  br i1 %cmp3.old, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %land.lhs.true.if.end_crit_edge
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #11
  %lock = getelementptr inbounds %struct.ci_hdrc, ptr %call, i32 0, i32 1
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %9 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %retval.0.i, label %if.end.if.end44_crit_edge [
    i32 2, label %if.then13
    i32 1, label %if.then16
  ]

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %platdata = getelementptr inbounds %struct.ci_hdrc, ptr %call, i32 0, i32 32
  %10 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %platdata, align 4
  %vbus_extcon = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %11, i32 0, i32 16
  br label %if.end19

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %platdata17 = getelementptr inbounds %struct.ci_hdrc, ptr %call, i32 0, i32 32
  %12 = ptrtoint ptr %platdata17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %platdata17, align 4
  %id_extcon = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %13, i32 0, i32 17
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.then13
  %cable.0 = phi ptr [ %vbus_extcon, %if.then13 ], [ %id_extcon, %if.then16 ]
  %tobool20.not = icmp eq ptr %cable.0, null
  br i1 %tobool20.not, label %if.end19.if.end44_crit_edge, label %if.then21

if.end19.if.end44_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then21:                                        ; preds = %if.end19
  %changed = getelementptr inbounds %struct.ci_hdrc_cable, ptr %cable.0, i32 0, i32 1
  %14 = ptrtoint ptr %changed to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %changed, align 1
  %15 = ptrtoint ptr %cable.0 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %cable.0, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !190
  %and.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i99 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i99, label %if.then22.i, label %do.end11.i

do.end11.i:                                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  %irq.i = getelementptr inbounds %struct.ci_hdrc, ptr %call, i32 0, i32 3
  %17 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq.i, align 8
  %call12.i = tail call i32 @ci_irq_handler(i32 noundef %18, ptr noundef %call) #11
  br label %do.body24.i

if.then22.i:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  %irq48.i = getelementptr inbounds %struct.ci_hdrc, ptr %call, i32 0, i32 3
  %19 = ptrtoint ptr %irq48.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq48.i, align 8
  %call1249.i = tail call i32 @ci_irq_handler(i32 noundef %20, ptr noundef %call) #11
  tail call void @trace_hardirqs_on() #11
  br label %do.body24.i

do.body24.i:                                      ; preds = %if.then22.i, %do.end11.i
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !191
  %and.i.i.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.ci_irq.exit_crit_edge, !prof !188

do.body24.i.ci_irq.exit_crit_edge:                ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ci_irq.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %ci_irq.exit

ci_irq.exit:                                      ; preds = %if.then36.i, %do.body24.i.ci_irq.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %16) #11, !srcloc !192
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #11
  %wq = getelementptr inbounds %struct.ci_hdrc, ptr %call, i32 0, i32 15
  %22 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wq, align 8
  %tobool23.not = icmp eq ptr %23, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %role)
  %cmp25.not = icmp eq i32 %role, 0
  %or.cond98 = or i1 %cmp25.not, %tobool23.not
  br i1 %or.cond98, label %ci_irq.exit.do.body31_crit_edge, label %if.then27

ci_irq.exit.do.body31_crit_edge:                  ; preds = %ci_irq.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body31

if.then27:                                        ; preds = %ci_irq.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @flush_workqueue(ptr noundef nonnull %23) #11
  br label %do.body31

do.body31:                                        ; preds = %if.then27, %ci_irq.exit.do.body31_crit_edge
  %call39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  br label %if.end44

if.end44:                                         ; preds = %do.body31, %if.end19.if.end44_crit_edge, %if.end.if.end44_crit_edge
  %flags.0 = phi i32 [ %call39, %do.body31 ], [ %call8, %if.end19.if.end44_crit_edge ], [ %call8, %if.end.if.end44_crit_edge ]
  %24 = zext i32 %role to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %role, label %if.end44.if.end62_crit_edge [
    i32 2, label %if.then47
    i32 1, label %if.then53
  ]

if.end44.if.end62_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  %platdata48 = getelementptr inbounds %struct.ci_hdrc, ptr %call, i32 0, i32 32
  %25 = ptrtoint ptr %platdata48 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %platdata48, align 4
  %vbus_extcon49 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %26, i32 0, i32 16
  br label %if.end57

if.then53:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  %platdata54 = getelementptr inbounds %struct.ci_hdrc, ptr %call, i32 0, i32 32
  %27 = ptrtoint ptr %platdata54 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %platdata54, align 4
  %id_extcon55 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %28, i32 0, i32 17
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %if.then47
  %cable.1 = phi ptr [ %vbus_extcon49, %if.then47 ], [ %id_extcon55, %if.then53 ]
  %tobool58.not = icmp eq ptr %cable.1, null
  br i1 %tobool58.not, label %if.end57.if.end62_crit_edge, label %if.then59

if.end57.if.end62_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

if.then59:                                        ; preds = %if.end57
  %changed60 = getelementptr inbounds %struct.ci_hdrc_cable, ptr %cable.1, i32 0, i32 1
  %29 = ptrtoint ptr %changed60 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %changed60, align 1
  %30 = ptrtoint ptr %cable.1 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %cable.1, align 4
  %31 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !190
  %and.i.i100 = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i100)
  %tobool.not.i101 = icmp eq i32 %and.i.i100, 0
  br i1 %tobool.not.i101, label %if.then22.i107, label %do.end11.i104

do.end11.i104:                                    ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #13
  %irq.i102 = getelementptr inbounds %struct.ci_hdrc, ptr %call, i32 0, i32 3
  %32 = ptrtoint ptr %irq.i102 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq.i102, align 8
  %call12.i103 = tail call i32 @ci_irq_handler(i32 noundef %33, ptr noundef %call) #11
  br label %do.body24.i110

if.then22.i107:                                   ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  %irq48.i105 = getelementptr inbounds %struct.ci_hdrc, ptr %call, i32 0, i32 3
  %34 = ptrtoint ptr %irq48.i105 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irq48.i105, align 8
  %call1249.i106 = tail call i32 @ci_irq_handler(i32 noundef %35, ptr noundef %call) #11
  tail call void @trace_hardirqs_on() #11
  br label %do.body24.i110

do.body24.i110:                                   ; preds = %if.then22.i107, %do.end11.i104
  %36 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !191
  %and.i.i.i108 = and i32 %36, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i108)
  %tobool32.not.i109 = icmp eq i32 %and.i.i.i108, 0
  br i1 %tobool32.not.i109, label %if.then36.i111, label %do.body24.i110.ci_irq.exit112_crit_edge, !prof !188

do.body24.i110.ci_irq.exit112_crit_edge:          ; preds = %do.body24.i110
  call void @__sanitizer_cov_trace_pc() #13
  br label %ci_irq.exit112

if.then36.i111:                                   ; preds = %do.body24.i110
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %ci_irq.exit112

ci_irq.exit112:                                   ; preds = %if.then36.i111, %do.body24.i110.ci_irq.exit112_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %31) #11, !srcloc !192
  br label %if.end62

if.end62:                                         ; preds = %ci_irq.exit112, %if.end57.if.end62_crit_edge, %if.end44.if.end62_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0) #11
  %37 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call, align 8
  %call.i113 = tail call i32 @__pm_runtime_idle(ptr noundef %38, i32 noundef 4) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_usb_role_switch_get(ptr noundef %sw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usb_role_switch_get_drvdata(ptr noundef %sw) #11
  %lock = getelementptr inbounds %struct.ci_hdrc, ptr %call, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %role.i = getelementptr inbounds %struct.ci_hdrc, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %role.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %role.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %1, label %entry.if.else4.i_crit_edge [
    i32 0, label %entry.ci_role_to_usb_role.exit_crit_edge
    i32 1, label %land.lhs.true.i
  ]

entry.ci_role_to_usb_role.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %ci_role_to_usb_role.exit

entry.if.else4.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else4.i

land.lhs.true.i:                                  ; preds = %entry
  %vbus_active.i = getelementptr inbounds %struct.ci_hdrc, ptr %call, i32 0, i32 33
  %3 = ptrtoint ptr %vbus_active.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vbus_active.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.else4.i_crit_edge, label %land.lhs.true.i.ci_role_to_usb_role.exit_crit_edge

land.lhs.true.i.ci_role_to_usb_role.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ci_role_to_usb_role.exit

land.lhs.true.i.if.else4.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else4.i

if.else4.i:                                       ; preds = %land.lhs.true.i.if.else4.i_crit_edge, %entry.if.else4.i_crit_edge
  br label %ci_role_to_usb_role.exit

ci_role_to_usb_role.exit:                         ; preds = %if.else4.i, %land.lhs.true.i.ci_role_to_usb_role.exit_crit_edge, %entry.ci_role_to_usb_role.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.else4.i ], [ 1, %entry.ci_role_to_usb_role.exit_crit_edge ], [ 2, %land.lhs.true.i.ci_role_to_usb_role.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_role_switch_get_drvdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ci_hdrc_host_driver_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_hdrc_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.36) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #11
  %call3 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call2) #11
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 5208, i32 noundef 3520) #11
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %do.body12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body12:                                        ; preds = %if.end7
  %lock = getelementptr inbounds %struct.ci_hdrc, ptr %call.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.38, ptr noundef nonnull @ci_hdrc_probe.__key, i16 noundef signext 3) #11
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %call.i, align 8
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  %platdata = getelementptr inbounds %struct.ci_hdrc, ptr %call.i, i32 0, i32 32
  %6 = ptrtoint ptr %platdata to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %platdata, align 4
  %flags = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %5, i32 0, i32 6
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %imx28_write_fix = getelementptr inbounds %struct.ci_hdrc, ptr %call.i, i32 0, i32 41
  %9 = trunc i32 %8 to i8
  %10 = lshr i8 %9, 5
  %11 = and i8 %10, 1
  %12 = ptrtoint ptr %imx28_write_fix to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %imx28_write_fix, align 2
  %13 = load i32, ptr %flags, align 4
  %supports_runtime_pm = getelementptr inbounds %struct.ci_hdrc, ptr %call.i, i32 0, i32 42
  %14 = trunc i32 %13 to i8
  %15 = lshr i8 %14, 2
  %16 = and i8 %15, 1
  %17 = ptrtoint ptr %supports_runtime_pm to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %supports_runtime_pm, align 1
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call28 = tail call fastcc i32 @hw_device_init(ptr noundef nonnull %call.i, ptr noundef %call3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp = icmp slt i32 %call28, 0
  br i1 %cmp, label %do.end32, label %if.end33

do.end32:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.40) #14
  br label %cleanup

if.end33:                                         ; preds = %do.body12
  %call34 = tail call i32 @ci_ulpi_init(ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  %19 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %platdata, align 4
  %phy = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %phy, align 4
  %tobool39.not = icmp eq ptr %22, null
  br i1 %tobool39.not, label %if.else, label %if.then40

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %phy43 = getelementptr inbounds %struct.ci_hdrc, ptr %call.i, i32 0, i32 36
  %23 = ptrtoint ptr %phy43 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %phy43, align 8
  br label %if.end110

if.else:                                          ; preds = %if.end37
  %usb_phy = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %20, i32 0, i32 4
  %24 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %usb_phy, align 4
  %tobool45.not = icmp eq ptr %25, null
  br i1 %tobool45.not, label %if.else50, label %if.then46

if.then46:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %usb_phy49 = getelementptr inbounds %struct.ci_hdrc, ptr %call.i, i32 0, i32 37
  %26 = ptrtoint ptr %usb_phy49 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %usb_phy49, align 4
  br label %if.end110

if.else50:                                        ; preds = %if.else
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parent, align 8
  %call51 = tail call ptr @devm_phy_get(ptr noundef %28, ptr noundef nonnull @.str.42) #11
  %phy52 = getelementptr inbounds %struct.ci_hdrc, ptr %call.i, i32 0, i32 36
  %29 = ptrtoint ptr %phy52 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call51, ptr %phy52, align 8
  %cmp55 = icmp eq ptr %call51, inttoptr (i32 -517 to ptr)
  br i1 %cmp55, label %if.else50.ulpi_exit_crit_edge, label %if.else57

if.else50.ulpi_exit_crit_edge:                    ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #13
  br label %ulpi_exit

if.else57:                                        ; preds = %if.else50
  %cmp.i407 = icmp ugt ptr %call51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i407, label %if.end63.thread, label %if.end63

if.end63.thread:                                  ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %phy52 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %phy52, align 8
  br label %if.then66

if.end63:                                         ; preds = %if.else57
  %tobool65.not = icmp eq ptr %call51, null
  br i1 %tobool65.not, label %if.end63.if.then66_crit_edge, label %if.end63.if.end81_crit_edge

if.end63.if.end81_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

if.end63.if.then66_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then66

if.then66:                                        ; preds = %if.end63.if.then66_crit_edge, %if.end63.thread
  %31 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parent, align 8
  %call68 = tail call ptr @devm_usb_get_phy_by_phandle(ptr noundef %32, ptr noundef nonnull @.str.43, i8 noundef zeroext 0) #11
  %usb_phy69 = getelementptr inbounds %struct.ci_hdrc, ptr %call.i, i32 0, i32 37
  %33 = ptrtoint ptr %usb_phy69 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call68, ptr %usb_phy69, align 4
  %cmp72 = icmp eq ptr %call68, inttoptr (i32 -517 to ptr)
  br i1 %cmp72, label %if.then66.ulpi_exit_crit_edge, label %if.else74

if.then66.ulpi_exit_crit_edge:                    ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #13
  br label %ulpi_exit

if.else74:                                        ; preds = %if.then66
  %cmp.i408 = icmp ugt ptr %call68, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i408, label %if.then77, label %if.else74.if.end81_crit_edge

if.else74.if.end81_crit_edge:                     ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

if.then77:                                        ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %usb_phy69 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %usb_phy69, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then77, %if.else74.if.end81_crit_edge, %if.end63.if.end81_crit_edge
  %35 = ptrtoint ptr %phy52 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %phy52, align 8
  %tobool83.not = icmp eq ptr %36, null
  br i1 %tobool83.not, label %land.lhs.true, label %if.end81.if.end110_crit_edge

if.end81.if.end110_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end110

land.lhs.true:                                    ; preds = %if.end81
  %usb_phy84 = getelementptr inbounds %struct.ci_hdrc, ptr %call.i, i32 0, i32 37
  %37 = ptrtoint ptr %usb_phy84 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %usb_phy84, align 4
  %tobool85.not = icmp eq ptr %38, null
  br i1 %tobool85.not, label %if.then86, label %land.lhs.true.if.end101_crit_edge

land.lhs.true.if.end101_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101

if.then86:                                        ; preds = %land.lhs.true
  %39 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %parent, align 8
  %call88 = tail call ptr @devm_usb_get_phy(ptr noundef %40, i32 noundef 1) #11
  %41 = ptrtoint ptr %usb_phy84 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call88, ptr %usb_phy84, align 4
  %cmp92 = icmp eq ptr %call88, inttoptr (i32 -517 to ptr)
  br i1 %cmp92, label %if.then86.ulpi_exit_crit_edge, label %if.else94

if.then86.ulpi_exit_crit_edge:                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #13
  br label %ulpi_exit

if.else94:                                        ; preds = %if.then86
  %cmp.i409 = icmp ugt ptr %call88, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i409, label %if.then97, label %if.else94.if.end101_crit_edge

if.else94.if.end101_crit_edge:                    ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101

if.then97:                                        ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %usb_phy84 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %usb_phy84, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then97, %if.else94.if.end101_crit_edge, %land.lhs.true.if.end101_crit_edge
  %43 = ptrtoint ptr %phy52 to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pr = load ptr, ptr %phy52, align 8
  %tobool103.not = icmp eq ptr %.pr, null
  br i1 %tobool103.not, label %land.lhs.true104, label %if.end101.if.end110_crit_edge

if.end101.if.end110_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end110

land.lhs.true104:                                 ; preds = %if.end101
  %44 = ptrtoint ptr %usb_phy84 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %usb_phy84, align 4
  %tobool106.not = icmp eq ptr %45, null
  br i1 %tobool106.not, label %land.lhs.true104.ulpi_exit_crit_edge, label %land.lhs.true104.if.end110_crit_edge

land.lhs.true104.if.end110_crit_edge:             ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end110

land.lhs.true104.ulpi_exit_crit_edge:             ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #13
  br label %ulpi_exit

if.end110:                                        ; preds = %land.lhs.true104.if.end110_crit_edge, %if.end101.if.end110_crit_edge, %if.end81.if.end110_crit_edge, %if.then46, %if.then40
  %46 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %platdata, align 4
  %flags.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %49, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end110.if.end117_crit_edge

if.end110.if.end117_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end117

if.end.i:                                         ; preds = %if.end110
  %phy_mode.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %47, i32 0, i32 5
  %50 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %phy_mode.i, align 4
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %51, label %sw.default.i [
    i32 1, label %if.end.i.sw.bb.i_crit_edge
    i32 2, label %if.end.i.sw.bb.i_crit_edge462
    i32 5, label %if.end.i.sw.bb.i_crit_edge463
    i32 3, label %if.end.i.sw.bb5.i_crit_edge
    i32 4, label %if.end.i.sw.bb5.i_crit_edge464
  ]

if.end.i.sw.bb5.i_crit_edge464:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5.i

if.end.i.sw.bb5.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5.i

if.end.i.sw.bb.i_crit_edge463:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge462:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge462, %if.end.i.sw.bb.i_crit_edge463
  %phy.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %call.i, i32 0, i32 36
  %53 = ptrtoint ptr %phy.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %phy.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %54, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb.i
  %call.i.i = tail call i32 @phy_init(ptr noundef nonnull %54) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i, label %if.then.i.i.do.end116_crit_edge

if.then.i.i.do.end116_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end116

if.end.i.i:                                       ; preds = %if.then.i.i
  %55 = ptrtoint ptr %phy.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %phy.i.i, align 8
  %call5.i.i = tail call i32 @phy_power_on(ptr noundef %56) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end.i.i.if.then3.i_crit_edge, label %if.end.i.i.do.end116.sink.split_crit_edge

if.end.i.i.do.end116.sink.split_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end116.sink.split

if.end.i.i.if.then3.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3.i

if.else.i.i:                                      ; preds = %sw.bb.i
  %usb_phy.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %call.i, i32 0, i32 37
  %57 = ptrtoint ptr %usb_phy.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %usb_phy.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %58, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.if.then3.i_crit_edge, label %land.lhs.true.i.i.i

if.else.i.i.if.then3.i_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3.i

land.lhs.true.i.i.i:                              ; preds = %if.else.i.i
  %init.i.i.i = getelementptr inbounds %struct.usb_phy, ptr %58, i32 0, i32 22
  %59 = ptrtoint ptr %init.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %init.i.i.i, align 4
  %tobool1.not.i.i.i = icmp eq ptr %60, null
  br i1 %tobool1.not.i.i.i, label %land.lhs.true.i.i.i.if.then3.i_crit_edge, label %_ci_usb_phy_init.exit.i

land.lhs.true.i.i.i.if.then3.i_crit_edge:         ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3.i

_ci_usb_phy_init.exit.i:                          ; preds = %land.lhs.true.i.i.i
  %call.i.i.i = tail call i32 %60(ptr noundef nonnull %58) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool2.not.i, label %_ci_usb_phy_init.exit.i.if.then3.i_crit_edge, label %_ci_usb_phy_init.exit.i.do.end116_crit_edge

_ci_usb_phy_init.exit.i.do.end116_crit_edge:      ; preds = %_ci_usb_phy_init.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end116

_ci_usb_phy_init.exit.i.if.then3.i_crit_edge:     ; preds = %_ci_usb_phy_init.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3.i

if.then3.i:                                       ; preds = %_ci_usb_phy_init.exit.i.if.then3.i_crit_edge, %land.lhs.true.i.i.i.if.then3.i_crit_edge, %if.else.i.i.if.then3.i_crit_edge, %if.end.i.i.if.then3.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2500, i32 noundef 2) #11
  tail call void @hw_phymode_configure(ptr noundef nonnull %call.i) #11
  br label %if.end117

sw.bb5.i:                                         ; preds = %if.end.i.sw.bb5.i_crit_edge, %if.end.i.sw.bb5.i_crit_edge464
  tail call void @hw_phymode_configure(ptr noundef nonnull %call.i) #11
  %phy.i25.i = getelementptr inbounds %struct.ci_hdrc, ptr %call.i, i32 0, i32 36
  %61 = ptrtoint ptr %phy.i25.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %phy.i25.i, align 8
  %tobool.not.i26.i = icmp eq ptr %62, null
  br i1 %tobool.not.i26.i, label %if.else.i37.i, label %if.then.i29.i

if.then.i29.i:                                    ; preds = %sw.bb5.i
  %call.i27.i = tail call i32 @phy_init(ptr noundef nonnull %62) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27.i)
  %tobool2.not.i28.i = icmp eq i32 %call.i27.i, 0
  br i1 %tobool2.not.i28.i, label %if.end.i32.i, label %if.then.i29.i.do.end116_crit_edge

if.then.i29.i.do.end116_crit_edge:                ; preds = %if.then.i29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end116

if.end.i32.i:                                     ; preds = %if.then.i29.i
  %63 = ptrtoint ptr %phy.i25.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %phy.i25.i, align 8
  %call5.i30.i = tail call i32 @phy_power_on(ptr noundef %64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i30.i)
  %tobool6.not.i31.i = icmp eq i32 %call5.i30.i, 0
  br i1 %tobool6.not.i31.i, label %if.end.i32.i.if.end117_crit_edge, label %if.end.i32.i.do.end116.sink.split_crit_edge

if.end.i32.i.do.end116.sink.split_crit_edge:      ; preds = %if.end.i32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end116.sink.split

if.end.i32.i.if.end117_crit_edge:                 ; preds = %if.end.i32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end117

if.else.i37.i:                                    ; preds = %sw.bb5.i
  %usb_phy.i35.i = getelementptr inbounds %struct.ci_hdrc, ptr %call.i, i32 0, i32 37
  %65 = ptrtoint ptr %usb_phy.i35.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %usb_phy.i35.i, align 4
  %tobool.not.i.i36.i = icmp eq ptr %66, null
  br i1 %tobool.not.i.i36.i, label %if.else.i37.i.if.end117_crit_edge, label %land.lhs.true.i.i40.i

if.else.i37.i.if.end117_crit_edge:                ; preds = %if.else.i37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end117

land.lhs.true.i.i40.i:                            ; preds = %if.else.i37.i
  %init.i.i38.i = getelementptr inbounds %struct.usb_phy, ptr %66, i32 0, i32 22
  %67 = ptrtoint ptr %init.i.i38.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %init.i.i38.i, align 4
  %tobool1.not.i.i39.i = icmp eq ptr %68, null
  br i1 %tobool1.not.i.i39.i, label %land.lhs.true.i.i40.i.if.end117_crit_edge, label %_ci_usb_phy_init.exit44.i

land.lhs.true.i.i40.i.if.end117_crit_edge:        ; preds = %land.lhs.true.i.i40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end117

_ci_usb_phy_init.exit44.i:                        ; preds = %land.lhs.true.i.i40.i
  %call.i.i41.i = tail call i32 %68(ptr noundef nonnull %66) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i41.i)
  %tobool7.not.i = icmp eq i32 %call.i.i41.i, 0
  br i1 %tobool7.not.i, label %_ci_usb_phy_init.exit44.i.if.end117_crit_edge, label %_ci_usb_phy_init.exit44.i.do.end116_crit_edge

_ci_usb_phy_init.exit44.i.do.end116_crit_edge:    ; preds = %_ci_usb_phy_init.exit44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end116

_ci_usb_phy_init.exit44.i.if.end117_crit_edge:    ; preds = %_ci_usb_phy_init.exit44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end117

sw.default.i:                                     ; preds = %if.end.i
  %phy.i45.i = getelementptr inbounds %struct.ci_hdrc, ptr %call.i, i32 0, i32 36
  %69 = ptrtoint ptr %phy.i45.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %phy.i45.i, align 8
  %tobool.not.i46.i = icmp eq ptr %70, null
  br i1 %tobool.not.i46.i, label %if.else.i57.i, label %if.then.i49.i

if.then.i49.i:                                    ; preds = %sw.default.i
  %call.i47.i = tail call i32 @phy_init(ptr noundef nonnull %70) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47.i)
  %tobool2.not.i48.i = icmp eq i32 %call.i47.i, 0
  br i1 %tobool2.not.i48.i, label %if.end.i52.i, label %if.then.i49.i.do.end116_crit_edge

if.then.i49.i.do.end116_crit_edge:                ; preds = %if.then.i49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end116

if.end.i52.i:                                     ; preds = %if.then.i49.i
  %71 = ptrtoint ptr %phy.i45.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %phy.i45.i, align 8
  %call5.i50.i = tail call i32 @phy_power_on(ptr noundef %72) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i50.i)
  %tobool6.not.i51.i = icmp eq i32 %call5.i50.i, 0
  br i1 %tobool6.not.i51.i, label %if.end.i52.i.if.then12.i_crit_edge, label %if.end.i52.i.do.end116.sink.split_crit_edge

if.end.i52.i.do.end116.sink.split_crit_edge:      ; preds = %if.end.i52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end116.sink.split

if.end.i52.i.if.then12.i_crit_edge:               ; preds = %if.end.i52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12.i

if.else.i57.i:                                    ; preds = %sw.default.i
  %usb_phy.i55.i = getelementptr inbounds %struct.ci_hdrc, ptr %call.i, i32 0, i32 37
  %73 = ptrtoint ptr %usb_phy.i55.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %usb_phy.i55.i, align 4
  %tobool.not.i.i56.i = icmp eq ptr %74, null
  br i1 %tobool.not.i.i56.i, label %if.else.i57.i.if.then12.i_crit_edge, label %land.lhs.true.i.i60.i

if.else.i57.i.if.then12.i_crit_edge:              ; preds = %if.else.i57.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12.i

land.lhs.true.i.i60.i:                            ; preds = %if.else.i57.i
  %init.i.i58.i = getelementptr inbounds %struct.usb_phy, ptr %74, i32 0, i32 22
  %75 = ptrtoint ptr %init.i.i58.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %init.i.i58.i, align 4
  %tobool1.not.i.i59.i = icmp eq ptr %76, null
  br i1 %tobool1.not.i.i59.i, label %land.lhs.true.i.i60.i.if.then12.i_crit_edge, label %_ci_usb_phy_init.exit64.i

land.lhs.true.i.i60.i.if.then12.i_crit_edge:      ; preds = %land.lhs.true.i.i60.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12.i

_ci_usb_phy_init.exit64.i:                        ; preds = %land.lhs.true.i.i60.i
  %call.i.i61.i = tail call i32 %76(ptr noundef nonnull %74) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i61.i)
  %tobool11.not.i = icmp eq i32 %call.i.i61.i, 0
  br i1 %tobool11.not.i, label %_ci_usb_phy_init.exit64.i.if.then12.i_crit_edge, label %_ci_usb_phy_init.exit64.i.do.end116_crit_edge

_ci_usb_phy_init.exit64.i.do.end116_crit_edge:    ; preds = %_ci_usb_phy_init.exit64.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end116

_ci_usb_phy_init.exit64.i.if.then12.i_crit_edge:  ; preds = %_ci_usb_phy_init.exit64.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12.i

if.then12.i:                                      ; preds = %_ci_usb_phy_init.exit64.i.if.then12.i_crit_edge, %land.lhs.true.i.i60.i.if.then12.i_crit_edge, %if.else.i57.i.if.then12.i_crit_edge, %if.end.i52.i.if.then12.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2500, i32 noundef 2) #11
  br label %if.end117

do.end116.sink.split:                             ; preds = %if.end.i52.i.do.end116.sink.split_crit_edge, %if.end.i32.i.do.end116.sink.split_crit_edge, %if.end.i.i.do.end116.sink.split_crit_edge
  %phy.i25.i.sink = phi ptr [ %phy.i.i, %if.end.i.i.do.end116.sink.split_crit_edge ], [ %phy.i25.i, %if.end.i32.i.do.end116.sink.split_crit_edge ], [ %phy.i45.i, %if.end.i52.i.do.end116.sink.split_crit_edge ]
  %retval.0.i446.ph = phi i32 [ %call5.i.i, %if.end.i.i.do.end116.sink.split_crit_edge ], [ %call5.i30.i, %if.end.i32.i.do.end116.sink.split_crit_edge ], [ %call5.i50.i, %if.end.i52.i.do.end116.sink.split_crit_edge ]
  %77 = ptrtoint ptr %phy.i25.i.sink to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %phy.i25.i.sink, align 8
  %call9.i33.i = tail call i32 @phy_exit(ptr noundef %78) #11
  br label %do.end116

do.end116:                                        ; preds = %do.end116.sink.split, %_ci_usb_phy_init.exit64.i.do.end116_crit_edge, %if.then.i49.i.do.end116_crit_edge, %_ci_usb_phy_init.exit44.i.do.end116_crit_edge, %if.then.i29.i.do.end116_crit_edge, %_ci_usb_phy_init.exit.i.do.end116_crit_edge, %if.then.i.i.do.end116_crit_edge
  %retval.0.i446 = phi i32 [ %call.i.i61.i, %_ci_usb_phy_init.exit64.i.do.end116_crit_edge ], [ %call.i47.i, %if.then.i49.i.do.end116_crit_edge ], [ %call.i27.i, %if.then.i29.i.do.end116_crit_edge ], [ %call.i.i, %if.then.i.i.do.end116_crit_edge ], [ %call.i.i41.i, %_ci_usb_phy_init.exit44.i.do.end116_crit_edge ], [ %call.i.i.i, %_ci_usb_phy_init.exit.i.do.end116_crit_edge ], [ %retval.0.i446.ph, %do.end116.sink.split ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.45, i32 noundef %retval.0.i446) #14
  br label %cleanup

if.end117:                                        ; preds = %if.then12.i, %_ci_usb_phy_init.exit44.i.if.end117_crit_edge, %land.lhs.true.i.i40.i.if.end117_crit_edge, %if.else.i37.i.if.end117_crit_edge, %if.end.i32.i.if.end117_crit_edge, %if.then3.i, %if.end110.if.end117_crit_edge
  %79 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %call2, align 4
  %phys = getelementptr inbounds %struct.ci_hdrc, ptr %call.i, i32 0, i32 2, i32 1
  %81 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %phys, align 4
  %call118 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #11
  %irq = getelementptr inbounds %struct.ci_hdrc, ptr %call.i, i32 0, i32 3
  %82 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %call118, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %cmp120 = icmp slt i32 %call118, 0
  br i1 %cmp120, label %if.end117.deinit_phy_crit_edge, label %if.end123

if.end117.deinit_phy_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #13
  br label %deinit_phy

if.end123:                                        ; preds = %if.end117
  %83 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %platdata, align 4
  %flags.i411 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %84, i32 0, i32 6
  %85 = ptrtoint ptr %flags.i411 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags.i411, align 4
  %and.i412 = and i32 %86, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i412)
  %tobool.not.i413 = icmp eq i32 %and.i412, 0
  br i1 %tobool.not.i413, label %if.end.i415, label %if.end.thread.i

if.end.thread.i:                                  ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #13
  %87 = getelementptr inbounds %struct.ci_hdrc, ptr %call.i, i32 0, i32 6
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %87, align 8
  br label %ci_get_otg_capable.exit

if.end.i415:                                      ; preds = %if.end123
  %arrayidx.i.i = getelementptr %struct.ci_hdrc, ptr %call.i, i32 0, i32 2, i32 6, i32 2
  %89 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx.i.i, align 4
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  %92 = and i32 %91, -2147418112
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147418112, i32 %92)
  %cmp.i414 = icmp eq i32 %92, -2147418112
  %frombool.i = zext i1 %cmp.i414 to i8
  %93 = getelementptr inbounds %struct.ci_hdrc, ptr %call.i, i32 0, i32 6
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %frombool.i, ptr %93, align 8
  br i1 %cmp.i414, label %do.body.i, label %if.end.i415.ci_get_otg_capable.exit_crit_edge

if.end.i415.ci_get_otg_capable.exit_crit_edge:    ; preds = %if.end.i415
  call void @__sanitizer_cov_trace_pc() #13
  br label %ci_get_otg_capable.exit

do.body.i:                                        ; preds = %if.end.i415
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ci_get_otg_capable.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ci_hdrc_probe, %if.then10.i)) #11
          to label %do.end.i [label %if.then10.i], !srcloc !193

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %95 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ci_get_otg_capable.__UNIQUE_ID_ddebug296, ptr noundef %96, ptr noundef nonnull @.str.66) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then10.i, %do.body.i
  tail call void @hw_write_otgsc(ptr noundef nonnull %call.i, i32 noundef 2139029504, i32 noundef 8323072) #11
  br label %ci_get_otg_capable.exit

ci_get_otg_capable.exit:                          ; preds = %do.end.i, %if.end.i415.ci_get_otg_capable.exit_crit_edge, %if.end.thread.i
  %97 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %platdata, align 4
  %dr_mode125 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %98, i32 0, i32 7
  %99 = ptrtoint ptr %dr_mode125 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %dr_mode125, align 4
  %101 = zext i32 %100 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %100, label %ci_get_otg_capable.exit.if.end156_crit_edge [
    i32 3, label %ci_get_otg_capable.exit.if.then128_crit_edge
    i32 1, label %ci_get_otg_capable.exit.if.then128_crit_edge465
    i32 2, label %ci_get_otg_capable.exit.if.then144_crit_edge
  ]

ci_get_otg_capable.exit.if.then144_crit_edge:     ; preds = %ci_get_otg_capable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then144

ci_get_otg_capable.exit.if.then128_crit_edge465:  ; preds = %ci_get_otg_capable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then128

ci_get_otg_capable.exit.if.then128_crit_edge:     ; preds = %ci_get_otg_capable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then128

ci_get_otg_capable.exit.if.end156_crit_edge:      ; preds = %ci_get_otg_capable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end156

if.then128:                                       ; preds = %ci_get_otg_capable.exit.if.then128_crit_edge, %ci_get_otg_capable.exit.if.then128_crit_edge465
  %call129 = tail call i32 @ci_hdrc_host_init(ptr noundef nonnull %call.i) #11
  %102 = zext i32 %call129 to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %call129, label %if.then128.deinit_phy_crit_edge [
    i32 0, label %if.then128.if.end140_crit_edge
    i32 -6, label %do.end136
  ]

if.then128.if.end140_crit_edge:                   ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end140

if.then128.deinit_phy_crit_edge:                  ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #13
  br label %deinit_phy

do.end136:                                        ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.48) #14
  br label %if.end140

if.end140:                                        ; preds = %do.end136, %if.then128.if.end140_crit_edge
  %103 = and i32 %100, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %103)
  %switch = icmp eq i32 %103, 2
  br i1 %switch, label %if.end140.if.then144_crit_edge, label %if.end140.if.end156_crit_edge

if.end140.if.end156_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end156

if.end140.if.then144_crit_edge:                   ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then144

if.then144:                                       ; preds = %if.end140.if.then144_crit_edge, %ci_get_otg_capable.exit.if.then144_crit_edge
  %call145 = tail call i32 @ci_hdrc_gadget_init(ptr noundef nonnull %call.i) #11
  %104 = zext i32 %call145 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %call145, label %if.then144.deinit_host_crit_edge [
    i32 0, label %if.then144.if.end156_crit_edge
    i32 -6, label %do.end152
  ]

if.then144.if.end156_crit_edge:                   ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end156

if.then144.deinit_host_crit_edge:                 ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #13
  br label %deinit_host

do.end152:                                        ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.52) #14
  br label %if.end156

if.end156:                                        ; preds = %do.end152, %if.then144.if.end156_crit_edge, %if.end140.if.end156_crit_edge, %ci_get_otg_capable.exit.if.end156_crit_edge
  %roles = getelementptr inbounds %struct.ci_hdrc, ptr %call.i, i32 0, i32 4
  %105 = ptrtoint ptr %roles to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %roles, align 4
  %tobool157.not = icmp eq ptr %106, null
  br i1 %tobool157.not, label %land.lhs.true158, label %if.end156.if.end166_crit_edge

if.end156.if.end166_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end166

land.lhs.true158:                                 ; preds = %if.end156
  %arrayidx160 = getelementptr %struct.ci_hdrc, ptr %call.i, i32 0, i32 4, i32 1
  %107 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx160, align 4
  %tobool161.not = icmp eq ptr %108, null
  br i1 %tobool161.not, label %do.end165, label %land.lhs.true158.if.end166_crit_edge

land.lhs.true158.if.end166_crit_edge:             ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end166

do.end165:                                        ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.55) #14
  br label %deinit_gadget

if.end166:                                        ; preds = %land.lhs.true158.if.end166_crit_edge, %if.end156.if.end166_crit_edge
  %is_otg = getelementptr inbounds %struct.ci_hdrc, ptr %call.i, i32 0, i32 6
  %109 = ptrtoint ptr %is_otg to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %is_otg, align 8, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool167.not = icmp eq i8 %110, 0
  br i1 %tobool167.not, label %if.end166.if.end180_crit_edge, label %land.lhs.true168

if.end166.if.end180_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end180

land.lhs.true168:                                 ; preds = %if.end166
  %arrayidx170 = getelementptr %struct.ci_hdrc, ptr %call.i, i32 0, i32 4, i32 1
  %111 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx170, align 4
  %tobool171.not = icmp eq ptr %112, null
  br i1 %tobool171.not, label %land.lhs.true168.if.end180_crit_edge, label %if.then172

land.lhs.true168.if.end180_crit_edge:             ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end180

if.then172:                                       ; preds = %land.lhs.true168
  %call173 = tail call i32 @ci_hdrc_otg_init(ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173)
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %if.then172.if.end180_crit_edge, label %do.end178

if.then172.if.end180_crit_edge:                   ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end180

do.end178:                                        ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.58, i32 noundef %call173) #14
  br label %deinit_gadget

if.end180:                                        ; preds = %if.then172.if.end180_crit_edge, %land.lhs.true168.if.end180_crit_edge, %if.end166.if.end180_crit_edge
  %113 = load ptr, ptr @ci_role_switch, align 4
  %tobool181.not = icmp eq ptr %113, null
  br i1 %tobool181.not, label %if.end180.if.end190_crit_edge, label %if.then182

if.end180.if.end190_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end190

if.then182:                                       ; preds = %if.end180
  store ptr %call.i, ptr getelementptr inbounds (%struct.usb_role_switch_desc, ptr @ci_role_switch, i32 0, i32 7), align 4
  %call183 = tail call ptr @usb_role_switch_register(ptr noundef %dev1, ptr noundef nonnull @ci_role_switch) #11
  %role_switch = getelementptr inbounds %struct.ci_hdrc, ptr %call.i, i32 0, i32 13
  %114 = ptrtoint ptr %role_switch to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call183, ptr %role_switch, align 8
  %cmp.i416 = icmp ugt ptr %call183, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i416, label %if.then186, label %if.then182.if.end190_crit_edge

if.then182.if.end190_crit_edge:                   ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end190

if.then186:                                       ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #13
  %115 = ptrtoint ptr %call183 to i32
  br label %deinit_otg

if.end190:                                        ; preds = %if.then182.if.end190_crit_edge, %if.end180.if.end190_crit_edge
  %116 = ptrtoint ptr %roles to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %roles, align 4
  %tobool193.not = icmp eq ptr %117, null
  br i1 %tobool193.not, label %if.end190.if.else206_crit_edge, label %land.lhs.true194

if.end190.if.else206_crit_edge:                   ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else206

land.lhs.true194:                                 ; preds = %if.end190
  %arrayidx196 = getelementptr %struct.ci_hdrc, ptr %call.i, i32 0, i32 4, i32 1
  %118 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx196, align 4
  %tobool197.not = icmp eq ptr %119, null
  br i1 %tobool197.not, label %land.lhs.true194.if.else206_crit_edge, label %if.then198

land.lhs.true194.if.else206_crit_edge:            ; preds = %land.lhs.true194
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else206

if.then198:                                       ; preds = %land.lhs.true194
  %120 = ptrtoint ptr %is_otg to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %is_otg, align 8, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool200.not = icmp eq i8 %121, 0
  br i1 %tobool200.not, label %if.end211.thread, label %if.then201

if.then201:                                       ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #13
  %call202 = tail call i32 @ci_otg_role(ptr noundef nonnull %call.i) #11
  %role = getelementptr inbounds %struct.ci_hdrc, ptr %call.i, i32 0, i32 5
  %122 = ptrtoint ptr %role to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %call202, ptr %role, align 4
  tail call void @hw_write_otgsc(ptr noundef nonnull %call.i, i32 noundef 16777216, i32 noundef 16777216) #11
  br label %if.end211

if.end211.thread:                                 ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #13
  %role204 = getelementptr inbounds %struct.ci_hdrc, ptr %call.i, i32 0, i32 5
  %123 = ptrtoint ptr %role204 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 1, ptr %role204, align 4
  br label %if.then213

if.else206:                                       ; preds = %land.lhs.true194.if.else206_crit_edge, %if.end190.if.else206_crit_edge
  %cond = zext i1 %tobool193.not to i32
  %role210 = getelementptr inbounds %struct.ci_hdrc, ptr %call.i, i32 0, i32 5
  %124 = ptrtoint ptr %role210 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %cond, ptr %role210, align 4
  br label %if.end211

if.end211:                                        ; preds = %if.else206, %if.then201
  %125 = ptrtoint ptr %is_otg to i32
  call void @__asan_load1_noabort(i32 %125)
  %.pr454 = load i8, ptr %is_otg, align 8
  %126 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %platdata, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr454)
  %tobool.not.i418 = icmp eq i8 %.pr454, 0
  br i1 %tobool.not.i418, label %if.end211.if.then213_crit_edge, label %land.lhs.true.i

if.end211.if.then213_crit_edge:                   ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then213

land.lhs.true.i:                                  ; preds = %if.end211
  %128 = ptrtoint ptr %roles to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %roles, align 4
  %tobool1.not.i = icmp eq ptr %129, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.then213_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.if.then213_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then213

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %arrayidx4.i = getelementptr %struct.ci_hdrc, ptr %call.i, i32 0, i32 4, i32 1
  %130 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx4.i, align 4
  %tobool5.not.i = icmp eq ptr %131, null
  br i1 %tobool5.not.i, label %land.lhs.true2.i.if.then213_crit_edge, label %land.rhs.i

land.lhs.true2.i.if.then213_crit_edge:            ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then213

land.rhs.i:                                       ; preds = %land.lhs.true2.i
  %srp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %127, i32 0, i32 10, i32 2
  %132 = ptrtoint ptr %srp_support.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %srp_support.i, align 1, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool6.not.i = icmp eq i8 %133, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i, label %land.rhs.i.if.end227_crit_edge

land.rhs.i.if.end227_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end227

lor.lhs.false.i:                                  ; preds = %land.rhs.i
  %hnp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %127, i32 0, i32 10, i32 1
  %134 = ptrtoint ptr %hnp_support.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %hnp_support.i, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool7.not.i419 = icmp eq i8 %135, 0
  br i1 %tobool7.not.i419, label %ci_otg_is_fsm_mode.exit, label %lor.lhs.false.i.if.end227_crit_edge

lor.lhs.false.i.if.end227_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end227

ci_otg_is_fsm_mode.exit:                          ; preds = %lor.lhs.false.i
  %adp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %127, i32 0, i32 10, i32 3
  %136 = ptrtoint ptr %adp_support.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %adp_support.i, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool8.i.not = icmp eq i8 %137, 0
  br i1 %tobool8.i.not, label %ci_otg_is_fsm_mode.exit.if.then213_crit_edge, label %ci_otg_is_fsm_mode.exit.if.end227_crit_edge

ci_otg_is_fsm_mode.exit.if.end227_crit_edge:      ; preds = %ci_otg_is_fsm_mode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end227

ci_otg_is_fsm_mode.exit.if.then213_crit_edge:     ; preds = %ci_otg_is_fsm_mode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then213

if.then213:                                       ; preds = %ci_otg_is_fsm_mode.exit.if.then213_crit_edge, %land.lhs.true2.i.if.then213_crit_edge, %land.lhs.true.i.if.then213_crit_edge, %if.end211.if.then213_crit_edge, %if.end211.thread
  %role214 = getelementptr inbounds %struct.ci_hdrc, ptr %call.i, i32 0, i32 5
  %138 = ptrtoint ptr %role214 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %role214, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %139)
  %cmp215 = icmp eq i32 %139, 1
  br i1 %cmp215, label %if.then216, label %if.then213.if.end217_crit_edge

if.then213.if.end217_crit_edge:                   ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end217

if.then216:                                       ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @hw_write(ptr noundef nonnull %call.i, i32 noundef 4, i32 noundef 1, i32 noundef 0)
  tail call void @ci_handle_vbus_change(ptr noundef nonnull %call.i) #11
  %140 = ptrtoint ptr %role214 to i32
  call void @__asan_load4_noabort(i32 %140)
  %.pr458 = load i32, ptr %role214, align 4
  br label %if.end217

if.end217:                                        ; preds = %if.then216, %if.then213.if.end217_crit_edge
  %141 = phi i32 [ %.pr458, %if.then216 ], [ %139, %if.then213.if.end217_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %141)
  %cmp.i420 = icmp ugt i32 %141, 1
  br i1 %cmp.i420, label %if.end217.do.end224_crit_edge, label %if.end.i422

if.end217.do.end224_crit_edge:                    ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end224

if.end.i422:                                      ; preds = %if.end217
  %arrayidx.i = getelementptr %struct.ci_hdrc, ptr %call.i, i32 0, i32 4, i32 %141
  %142 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i421 = icmp eq ptr %143, null
  br i1 %tobool.not.i421, label %if.end.i422.do.end224_crit_edge, label %if.end2.i

if.end.i422.do.end224_crit_edge:                  ; preds = %if.end.i422
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end224

if.end2.i:                                        ; preds = %if.end.i422
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %143, align 4
  %call.i423 = tail call i32 %145(ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i423)
  %tobool5.not.i424 = icmp eq i32 %call.i423, 0
  br i1 %tobool5.not.i424, label %ci_role_start.exit, label %if.end2.i.do.end224_crit_edge

if.end2.i.do.end224_crit_edge:                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end224

ci_role_start.exit:                               ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #13
  %146 = ptrtoint ptr %role214 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %141, ptr %role214, align 4
  br label %if.end227

do.end224:                                        ; preds = %if.end2.i.do.end224_crit_edge, %if.end.i422.do.end224_crit_edge, %if.end217.do.end224_crit_edge
  %retval.0.i425.ph = phi i32 [ %call.i423, %if.end2.i.do.end224_crit_edge ], [ -6, %if.end.i422.do.end224_crit_edge ], [ -22, %if.end217.do.end224_crit_edge ]
  %147 = ptrtoint ptr %role214 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %role214, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %148)
  %cmp.i426 = icmp ugt i32 %148, 1
  br i1 %cmp.i426, label %do.end224.do.body5.i_crit_edge, label %lor.rhs.i429, !prof !188

do.end224.do.body5.i_crit_edge:                   ; preds = %do.end224
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body5.i

lor.rhs.i429:                                     ; preds = %do.end224
  %arrayidx.i427 = getelementptr %struct.ci_hdrc, ptr %call.i, i32 0, i32 4, i32 %148
  %149 = ptrtoint ptr %arrayidx.i427 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arrayidx.i427, align 4
  %tobool.not.i428 = icmp eq ptr %150, null
  br i1 %tobool.not.i428, label %lor.rhs.i429.do.body5.i_crit_edge, label %ci_role.exit, !prof !188

lor.rhs.i429.do.body5.i_crit_edge:                ; preds = %lor.rhs.i429
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body5.i

do.body5.i:                                       ; preds = %lor.rhs.i429.do.body5.i_crit_edge, %do.end224.do.body5.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/chipidea/ci.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 262, 0\0A.popsection", ""() #11, !srcloc !189
  unreachable

ci_role.exit:                                     ; preds = %lor.rhs.i429
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.ci_role_driver, ptr %150, i32 0, i32 3
  %151 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.61, ptr noundef %152) #14
  br label %stop

if.end227:                                        ; preds = %ci_role_start.exit, %ci_otg_is_fsm_mode.exit.if.end227_crit_edge, %lor.lhs.false.i.if.end227_crit_edge, %land.rhs.i.if.end227_crit_edge
  %153 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %irq, align 8
  %155 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %platdata, align 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %156, align 4
  %call.i430 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %154, ptr noundef nonnull @ci_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef %158, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i430)
  %tobool232.not = icmp eq i32 %call.i430, 0
  br i1 %tobool232.not, label %if.end234, label %if.end227.stop_crit_edge

if.end227.stop_crit_edge:                         ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #13
  br label %stop

if.end234:                                        ; preds = %if.end227
  %call235 = tail call fastcc i32 @ci_extcon_register(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call235)
  %tobool236.not = icmp eq i32 %call235, 0
  br i1 %tobool236.not, label %if.end238, label %if.end234.stop_crit_edge

if.end234.stop_crit_edge:                         ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #13
  br label %stop

if.end238:                                        ; preds = %if.end234
  %159 = ptrtoint ptr %supports_runtime_pm to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %supports_runtime_pm, align 1, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool240.not = icmp eq i8 %160, 0
  br i1 %tobool240.not, label %if.end238.if.end248_crit_edge, label %if.then241

if.end238.if.end248_crit_edge:                    ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end248

if.then241:                                       ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #13
  %call.i431 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #11
  tail call void @pm_runtime_enable(ptr noundef %dev1) #11
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 2000) #11
  %161 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %call.i, align 8
  %call.i432 = tail call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i = getelementptr inbounds %struct.device, ptr %162, i32 0, i32 12, i32 22
  %163 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %163)
  store volatile i64 %call.i432, ptr %last_busy.i, align 8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #11
  br label %if.end248

if.end248:                                        ; preds = %if.then241, %if.end238.if.end248_crit_edge
  %call249 = tail call fastcc zeroext i1 @ci_otg_is_fsm_mode(ptr noundef nonnull %call.i)
  br i1 %call249, label %if.then250, label %if.end248.if.end251_crit_edge

if.end248.if.end251_crit_edge:                    ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end251

if.then250:                                       ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ci_hdrc_otg_fsm_start(ptr noundef nonnull %call.i) #11
  br label %if.end251

if.end251:                                        ; preds = %if.then250, %if.end248.if.end251_crit_edge
  tail call void @device_set_wakeup_capable(ptr noundef %dev1, i1 noundef zeroext true) #11
  tail call void @dbg_create_files(ptr noundef nonnull %call.i) #11
  br label %cleanup

stop:                                             ; preds = %if.end234.stop_crit_edge, %if.end227.stop_crit_edge, %ci_role.exit
  %ret.0 = phi i32 [ %call.i430, %if.end227.stop_crit_edge ], [ %call235, %if.end234.stop_crit_edge ], [ %retval.0.i425.ph, %ci_role.exit ]
  %role_switch253 = getelementptr inbounds %struct.ci_hdrc, ptr %call.i, i32 0, i32 13
  %164 = ptrtoint ptr %role_switch253 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %role_switch253, align 8
  %tobool254.not = icmp eq ptr %165, null
  br i1 %tobool254.not, label %stop.deinit_otg_crit_edge, label %if.then255

stop.deinit_otg_crit_edge:                        ; preds = %stop
  call void @__sanitizer_cov_trace_pc() #13
  br label %deinit_otg

if.then255:                                       ; preds = %stop
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_role_switch_unregister(ptr noundef nonnull %165) #11
  br label %deinit_otg

deinit_otg:                                       ; preds = %if.then255, %stop.deinit_otg_crit_edge, %if.then186
  %ret.1 = phi i32 [ %115, %if.then186 ], [ %ret.0, %if.then255 ], [ %ret.0, %stop.deinit_otg_crit_edge ]
  %166 = ptrtoint ptr %is_otg to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %is_otg, align 8, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool259.not = icmp eq i8 %167, 0
  br i1 %tobool259.not, label %deinit_otg.deinit_gadget_crit_edge, label %land.lhs.true260

deinit_otg.deinit_gadget_crit_edge:               ; preds = %deinit_otg
  call void @__sanitizer_cov_trace_pc() #13
  br label %deinit_gadget

land.lhs.true260:                                 ; preds = %deinit_otg
  %arrayidx262 = getelementptr %struct.ci_hdrc, ptr %call.i, i32 0, i32 4, i32 1
  %168 = ptrtoint ptr %arrayidx262 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %arrayidx262, align 4
  %tobool263.not = icmp eq ptr %169, null
  br i1 %tobool263.not, label %land.lhs.true260.deinit_gadget_crit_edge, label %if.then264

land.lhs.true260.deinit_gadget_crit_edge:         ; preds = %land.lhs.true260
  call void @__sanitizer_cov_trace_pc() #13
  br label %deinit_gadget

if.then264:                                       ; preds = %land.lhs.true260
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ci_hdrc_otg_destroy(ptr noundef nonnull %call.i) #11
  br label %deinit_gadget

deinit_gadget:                                    ; preds = %if.then264, %land.lhs.true260.deinit_gadget_crit_edge, %deinit_otg.deinit_gadget_crit_edge, %do.end178, %do.end165
  %ret.2 = phi i32 [ %call173, %do.end178 ], [ %ret.1, %if.then264 ], [ %ret.1, %land.lhs.true260.deinit_gadget_crit_edge ], [ %ret.1, %deinit_otg.deinit_gadget_crit_edge ], [ -19, %do.end165 ]
  tail call void @ci_hdrc_gadget_destroy(ptr noundef nonnull %call.i) #11
  br label %deinit_host

deinit_host:                                      ; preds = %deinit_gadget, %if.then144.deinit_host_crit_edge
  %ret.3 = phi i32 [ %ret.2, %deinit_gadget ], [ %call145, %if.then144.deinit_host_crit_edge ]
  tail call void @ci_hdrc_host_destroy(ptr noundef nonnull %call.i) #11
  br label %deinit_phy

deinit_phy:                                       ; preds = %deinit_host, %if.then128.deinit_phy_crit_edge, %if.end117.deinit_phy_crit_edge
  %ret.4 = phi i32 [ %ret.3, %deinit_host ], [ %call118, %if.end117.deinit_phy_crit_edge ], [ %call129, %if.then128.deinit_phy_crit_edge ]
  %170 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %platdata, align 4
  %flags.i434 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %171, i32 0, i32 6
  %172 = ptrtoint ptr %flags.i434 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %flags.i434, align 4
  %and.i435 = and i32 %173, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i435)
  %tobool.not.i436 = icmp eq i32 %and.i435, 0
  br i1 %tobool.not.i436, label %if.end.i438, label %deinit_phy.ulpi_exit_crit_edge

deinit_phy.ulpi_exit_crit_edge:                   ; preds = %deinit_phy
  call void @__sanitizer_cov_trace_pc() #13
  br label %ulpi_exit

if.end.i438:                                      ; preds = %deinit_phy
  %phy.i = getelementptr inbounds %struct.ci_hdrc, ptr %call.i, i32 0, i32 36
  %174 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %phy.i, align 8
  %tobool1.not.i437 = icmp eq ptr %175, null
  br i1 %tobool1.not.i437, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i438
  call void @__sanitizer_cov_trace_pc() #13
  %call.i439 = tail call i32 @phy_power_off(ptr noundef nonnull %175) #11
  %176 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %phy.i, align 8
  %call5.i = tail call i32 @phy_exit(ptr noundef %177) #11
  br label %ulpi_exit

if.else.i:                                        ; preds = %if.end.i438
  %usb_phy.i = getelementptr inbounds %struct.ci_hdrc, ptr %call.i, i32 0, i32 37
  %178 = ptrtoint ptr %usb_phy.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %usb_phy.i, align 4
  %tobool.not.i.i440 = icmp eq ptr %179, null
  br i1 %tobool.not.i.i440, label %if.else.i.ulpi_exit_crit_edge, label %land.lhs.true.i.i

if.else.i.ulpi_exit_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ulpi_exit

land.lhs.true.i.i:                                ; preds = %if.else.i
  %shutdown.i.i = getelementptr inbounds %struct.usb_phy, ptr %179, i32 0, i32 23
  %180 = ptrtoint ptr %shutdown.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %shutdown.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %181, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.ulpi_exit_crit_edge, label %if.then.i.i441

land.lhs.true.i.i.ulpi_exit_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ulpi_exit

if.then.i.i441:                                   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %181(ptr noundef nonnull %179) #11
  br label %ulpi_exit

ulpi_exit:                                        ; preds = %if.then.i.i441, %land.lhs.true.i.i.ulpi_exit_crit_edge, %if.else.i.ulpi_exit_crit_edge, %if.then2.i, %deinit_phy.ulpi_exit_crit_edge, %land.lhs.true104.ulpi_exit_crit_edge, %if.then86.ulpi_exit_crit_edge, %if.then66.ulpi_exit_crit_edge, %if.else50.ulpi_exit_crit_edge
  %ret.5 = phi i32 [ -517, %if.else50.ulpi_exit_crit_edge ], [ -517, %if.then66.ulpi_exit_crit_edge ], [ -517, %if.then86.ulpi_exit_crit_edge ], [ -6, %land.lhs.true104.ulpi_exit_crit_edge ], [ %ret.4, %deinit_phy.ulpi_exit_crit_edge ], [ %ret.4, %if.then2.i ], [ %ret.4, %if.else.i.ulpi_exit_crit_edge ], [ %ret.4, %land.lhs.true.i.i.ulpi_exit_crit_edge ], [ %ret.4, %if.then.i.i441 ]
  tail call void @ci_ulpi_exit(ptr noundef nonnull %call.i) #11
  br label %cleanup

cleanup:                                          ; preds = %ulpi_exit, %if.end251, %do.end116, %if.end33.cleanup_crit_edge, %do.end32, %if.end7.cleanup_crit_edge, %if.then5, %do.end
  %retval.0 = phi i32 [ %2, %if.then5 ], [ -19, %do.end32 ], [ %retval.0.i446, %do.end116 ], [ %ret.5, %ulpi_exit ], [ 0, %if.end251 ], [ -19, %do.end ], [ -12, %if.end7.cleanup_crit_edge ], [ %call34, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_hdrc_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %role_switch = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %role_switch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %role_switch, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_role_switch_unregister(ptr noundef nonnull %3) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %supports_runtime_pm = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 42
  %4 = ptrtoint ptr %supports_runtime_pm to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %supports_runtime_pm, align 1, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then3:                                         ; preds = %if.end
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #11
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #11
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !194
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #11
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #11, !srcloc !195
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then3.if.end7_crit_edge, label %do.end11.i.i.i.i

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

do.end11.i.i.i.i:                                 ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !196
  br label %if.end7

if.end7:                                          ; preds = %do.end11.i.i.i.i, %if.then3.if.end7_crit_edge, %if.end.if.end7_crit_edge
  tail call void @dbg_remove_files(ptr noundef %1) #11
  tail call void @ci_hdrc_gadget_destroy(ptr noundef %1) #11
  tail call void @ci_hdrc_host_destroy(ptr noundef %1) #11
  %is_otg.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %is_otg.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_otg.i, align 8, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.end7.ci_role_destroy.exit_crit_edge, label %land.lhs.true.i

if.end7.ci_role_destroy.exit_crit_edge:           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %ci_role_destroy.exit

land.lhs.true.i:                                  ; preds = %if.end7
  %arrayidx.i = getelementptr %struct.ci_hdrc, ptr %1, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.ci_role_destroy.exit_crit_edge, label %if.then.i

land.lhs.true.i.ci_role_destroy.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ci_role_destroy.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ci_hdrc_otg_destroy(ptr noundef %1) #11
  br label %ci_role_destroy.exit

ci_role_destroy.exit:                             ; preds = %if.then.i, %land.lhs.true.i.ci_role_destroy.exit_crit_edge, %if.end7.ci_role_destroy.exit_crit_edge
  %platdata.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 32
  %11 = ptrtoint ptr %platdata.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %platdata.i, align 4
  %enter_lpm.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %12, i32 0, i32 24
  %13 = ptrtoint ptr %enter_lpm.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %enter_lpm.i, align 4
  tail call void %14(ptr noundef %1, i1 noundef zeroext true) #11
  %15 = ptrtoint ptr %platdata.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %platdata.i, align 4
  %flags.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %18, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i19 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i19, label %if.end.i, label %ci_role_destroy.exit.ci_usb_phy_exit.exit_crit_edge

ci_role_destroy.exit.ci_usb_phy_exit.exit_crit_edge: ; preds = %ci_role_destroy.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %ci_usb_phy_exit.exit

if.end.i:                                         ; preds = %ci_role_destroy.exit
  %phy.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 36
  %19 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phy.i, align 8
  %tobool1.not.i20 = icmp eq ptr %20, null
  br i1 %tobool1.not.i20, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i21 = tail call i32 @phy_power_off(ptr noundef nonnull %20) #11
  %21 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %phy.i, align 8
  %call5.i = tail call i32 @phy_exit(ptr noundef %22) #11
  br label %ci_usb_phy_exit.exit

if.else.i:                                        ; preds = %if.end.i
  %usb_phy.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 37
  %23 = ptrtoint ptr %usb_phy.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %usb_phy.i, align 4
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %if.else.i.ci_usb_phy_exit.exit_crit_edge, label %land.lhs.true.i.i

if.else.i.ci_usb_phy_exit.exit_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ci_usb_phy_exit.exit

land.lhs.true.i.i:                                ; preds = %if.else.i
  %shutdown.i.i = getelementptr inbounds %struct.usb_phy, ptr %24, i32 0, i32 23
  %25 = ptrtoint ptr %shutdown.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %shutdown.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %26, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.ci_usb_phy_exit.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.ci_usb_phy_exit.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ci_usb_phy_exit.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %26(ptr noundef nonnull %24) #11
  br label %ci_usb_phy_exit.exit

ci_usb_phy_exit.exit:                             ; preds = %if.then.i.i, %land.lhs.true.i.i.ci_usb_phy_exit.exit_crit_edge, %if.else.i.ci_usb_phy_exit.exit_crit_edge, %if.then2.i, %ci_role_destroy.exit.ci_usb_phy_exit.exit_crit_edge
  tail call void @ci_ulpi_exit(ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hw_device_init(ptr noundef %ci, ptr noundef %base) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_bank = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 2
  %abs = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %abs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %base, ptr %abs, align 8
  %cap = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 3
  %1 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %base, ptr %cap, align 4
  %platdata = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 32
  %2 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platdata, align 4
  %capoffset = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %capoffset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %capoffset, align 4
  %add.ptr = getelementptr i8, ptr %base, i32 %5
  store ptr %add.ptr, ptr %cap, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !183
  %7 = lshr i32 %6, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  %add.ptr10 = getelementptr i8, ptr %add.ptr, i32 %7
  %op = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 4
  %8 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr10, ptr %op, align 8
  %9 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %9)
  %cond.i = load ptr, ptr %cap, align 4
  %arrayidx10.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 0
  %10 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %cond.i, ptr %arrayidx10.i, align 4
  %add.ptr.1.i = getelementptr i8, ptr %cond.i, i32 8
  %arrayidx10.1.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 1
  %11 = ptrtoint ptr %arrayidx10.1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr.1.i, ptr %arrayidx10.1.i, align 4
  %add.ptr.2.i = getelementptr i8, ptr %cond.i, i32 36
  %arrayidx10.2.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 2
  %12 = ptrtoint ptr %arrayidx10.2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr.2.i, ptr %arrayidx10.2.i, align 4
  %add.ptr.3.i = getelementptr i8, ptr %cond.i, i32 56
  %arrayidx10.3.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 3
  %13 = ptrtoint ptr %arrayidx10.3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr.3.i, ptr %arrayidx10.3.i, align 4
  %arrayidx10.4.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 4
  %14 = ptrtoint ptr %arrayidx10.4.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr10, ptr %arrayidx10.4.i, align 4
  %add.ptr.5.i = getelementptr i8, ptr %add.ptr10, i32 4
  %arrayidx10.5.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 5
  %15 = ptrtoint ptr %arrayidx10.5.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr.5.i, ptr %arrayidx10.5.i, align 4
  %add.ptr.6.i = getelementptr i8, ptr %add.ptr10, i32 8
  %arrayidx10.6.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 6
  %16 = ptrtoint ptr %arrayidx10.6.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr.6.i, ptr %arrayidx10.6.i, align 4
  %add.ptr.7.i = getelementptr i8, ptr %add.ptr10, i32 20
  %arrayidx10.7.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 7
  %17 = ptrtoint ptr %arrayidx10.7.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.7.i, ptr %arrayidx10.7.i, align 4
  %add.ptr.8.i = getelementptr i8, ptr %add.ptr10, i32 24
  %arrayidx10.8.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 8
  %18 = ptrtoint ptr %arrayidx10.8.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr.8.i, ptr %arrayidx10.8.i, align 4
  %add.ptr.9.i = getelementptr i8, ptr %add.ptr10, i32 28
  %arrayidx10.9.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 9
  %19 = ptrtoint ptr %arrayidx10.9.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr.9.i, ptr %arrayidx10.9.i, align 4
  %add.ptr.10.i = getelementptr i8, ptr %add.ptr10, i32 32
  %arrayidx10.10.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 10
  %20 = ptrtoint ptr %arrayidx10.10.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr.10.i, ptr %arrayidx10.10.i, align 4
  %add.ptr.11.i = getelementptr i8, ptr %add.ptr10, i32 48
  %arrayidx10.11.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 11
  %21 = ptrtoint ptr %arrayidx10.11.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr.11.i, ptr %arrayidx10.11.i, align 4
  %add.ptr.12.i = getelementptr i8, ptr %add.ptr10, i32 68
  %arrayidx10.12.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 12
  %22 = ptrtoint ptr %arrayidx10.12.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.12.i, ptr %arrayidx10.12.i, align 4
  %add.ptr.13.i = getelementptr i8, ptr %add.ptr10, i32 132
  %arrayidx10.13.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 13
  %23 = ptrtoint ptr %arrayidx10.13.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr.13.i, ptr %arrayidx10.13.i, align 4
  %add.ptr.14.i = getelementptr i8, ptr %add.ptr10, i32 100
  %arrayidx10.14.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 14
  %24 = ptrtoint ptr %arrayidx10.14.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr.14.i, ptr %arrayidx10.14.i, align 4
  %add.ptr.15.i = getelementptr i8, ptr %add.ptr10, i32 104
  %arrayidx10.15.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 15
  %25 = ptrtoint ptr %arrayidx10.15.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr.15.i, ptr %arrayidx10.15.i, align 4
  %add.ptr.16.i = getelementptr i8, ptr %add.ptr10, i32 108
  %arrayidx10.16.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 16
  %26 = ptrtoint ptr %arrayidx10.16.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr.16.i, ptr %arrayidx10.16.i, align 4
  %add.ptr.17.i = getelementptr i8, ptr %add.ptr10, i32 112
  %arrayidx10.17.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 17
  %27 = ptrtoint ptr %arrayidx10.17.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr.17.i, ptr %arrayidx10.17.i, align 4
  %add.ptr.18.i = getelementptr i8, ptr %add.ptr10, i32 116
  %arrayidx10.18.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 18
  %28 = ptrtoint ptr %arrayidx10.18.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr.18.i, ptr %arrayidx10.18.i, align 4
  %add.ptr.19.i = getelementptr i8, ptr %add.ptr10, i32 120
  %arrayidx10.19.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 19
  %29 = ptrtoint ptr %arrayidx10.19.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr.19.i, ptr %arrayidx10.19.i, align 4
  %add.ptr.20.i = getelementptr i8, ptr %add.ptr10, i32 124
  %arrayidx10.20.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 20
  %30 = ptrtoint ptr %arrayidx10.20.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr.20.i, ptr %arrayidx10.20.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %add.ptr10, i32 128
  %arrayidx29.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 21
  %31 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr26.i, ptr %arrayidx29.i, align 4
  %add.ptr26.1.i = getelementptr i8, ptr %add.ptr.5.i, i32 128
  %arrayidx29.1.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 22
  %32 = ptrtoint ptr %arrayidx29.1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr26.1.i, ptr %arrayidx29.1.i, align 4
  %add.ptr26.2.i = getelementptr i8, ptr %add.ptr.6.i, i32 128
  %arrayidx29.2.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 23
  %33 = ptrtoint ptr %arrayidx29.2.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr26.2.i, ptr %arrayidx29.2.i, align 4
  %add.ptr17.3.i = getelementptr i8, ptr %add.ptr10, i32 12
  %add.ptr26.3.i = getelementptr i8, ptr %add.ptr17.3.i, i32 128
  %arrayidx29.3.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 24
  %34 = ptrtoint ptr %arrayidx29.3.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr26.3.i, ptr %arrayidx29.3.i, align 4
  %add.ptr17.4.i = getelementptr i8, ptr %add.ptr10, i32 16
  %add.ptr26.4.i = getelementptr i8, ptr %add.ptr17.4.i, i32 128
  %arrayidx29.4.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 25
  %35 = ptrtoint ptr %arrayidx29.4.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr26.4.i, ptr %arrayidx29.4.i, align 4
  %add.ptr26.5.i = getelementptr i8, ptr %add.ptr.7.i, i32 128
  %arrayidx29.5.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 26
  %36 = ptrtoint ptr %arrayidx29.5.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr26.5.i, ptr %arrayidx29.5.i, align 4
  %add.ptr26.6.i = getelementptr i8, ptr %add.ptr.8.i, i32 128
  %arrayidx29.6.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 27
  %37 = ptrtoint ptr %arrayidx29.6.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr26.6.i, ptr %arrayidx29.6.i, align 4
  %add.ptr26.7.i = getelementptr i8, ptr %add.ptr.9.i, i32 128
  %arrayidx29.7.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 28
  %38 = ptrtoint ptr %arrayidx29.7.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr26.7.i, ptr %arrayidx29.7.i, align 4
  %add.ptr26.8.i = getelementptr i8, ptr %add.ptr.10.i, i32 128
  %arrayidx29.8.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 29
  %39 = ptrtoint ptr %arrayidx29.8.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr26.8.i, ptr %arrayidx29.8.i, align 4
  %add.ptr17.9.i = getelementptr i8, ptr %add.ptr10, i32 36
  %add.ptr26.9.i = getelementptr i8, ptr %add.ptr17.9.i, i32 128
  %arrayidx29.9.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 30
  %40 = ptrtoint ptr %arrayidx29.9.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr26.9.i, ptr %arrayidx29.9.i, align 4
  %add.ptr17.10.i = getelementptr i8, ptr %add.ptr10, i32 40
  %add.ptr26.10.i = getelementptr i8, ptr %add.ptr17.10.i, i32 128
  %arrayidx29.10.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 31
  %41 = ptrtoint ptr %arrayidx29.10.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr26.10.i, ptr %arrayidx29.10.i, align 4
  %add.ptr17.11.i = getelementptr i8, ptr %add.ptr10, i32 44
  %add.ptr26.11.i = getelementptr i8, ptr %add.ptr17.11.i, i32 128
  %arrayidx29.11.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 32
  %42 = ptrtoint ptr %arrayidx29.11.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr26.11.i, ptr %arrayidx29.11.i, align 4
  %add.ptr26.12.i = getelementptr i8, ptr %add.ptr.11.i, i32 128
  %arrayidx29.12.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 33
  %43 = ptrtoint ptr %arrayidx29.12.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr26.12.i, ptr %arrayidx29.12.i, align 4
  %add.ptr17.13.i = getelementptr i8, ptr %add.ptr10, i32 52
  %add.ptr26.13.i = getelementptr i8, ptr %add.ptr17.13.i, i32 128
  %arrayidx29.13.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 34
  %44 = ptrtoint ptr %arrayidx29.13.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr26.13.i, ptr %arrayidx29.13.i, align 4
  %add.ptr17.14.i = getelementptr i8, ptr %add.ptr10, i32 56
  %add.ptr26.14.i = getelementptr i8, ptr %add.ptr17.14.i, i32 128
  %arrayidx29.14.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 35
  %45 = ptrtoint ptr %arrayidx29.14.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr26.14.i, ptr %arrayidx29.14.i, align 4
  %add.ptr17.15.i = getelementptr i8, ptr %add.ptr10, i32 60
  %add.ptr26.15.i = getelementptr i8, ptr %add.ptr17.15.i, i32 128
  %arrayidx29.15.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 36
  %46 = ptrtoint ptr %arrayidx29.15.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %add.ptr26.15.i, ptr %arrayidx29.15.i, align 4
  %add.ptr17.16.i = getelementptr i8, ptr %add.ptr10, i32 64
  %add.ptr26.16.i = getelementptr i8, ptr %add.ptr17.16.i, i32 128
  %arrayidx29.16.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 37
  %47 = ptrtoint ptr %arrayidx29.16.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %add.ptr26.16.i, ptr %arrayidx29.16.i, align 4
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1.i) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  %49 = lshr i32 %48, 9
  %shr = and i32 %49, 1
  %50 = ptrtoint ptr %hw_bank to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %shr, ptr %hw_bank, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool.not = icmp eq i32 %shr, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %51)
  %cond.i82 = load ptr, ptr %cap, align 4
  %52 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %cond.i82, ptr %arrayidx10.i, align 4
  %add.ptr.1.i84 = getelementptr i8, ptr %cond.i82, i32 8
  %53 = ptrtoint ptr %arrayidx10.1.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %add.ptr.1.i84, ptr %arrayidx10.1.i, align 4
  %add.ptr.2.i86 = getelementptr i8, ptr %cond.i82, i32 36
  %54 = ptrtoint ptr %arrayidx10.2.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %add.ptr.2.i86, ptr %arrayidx10.2.i, align 4
  %add.ptr.3.i88 = getelementptr i8, ptr %cond.i82, i32 252
  %55 = ptrtoint ptr %arrayidx10.3.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %add.ptr.3.i88, ptr %arrayidx10.3.i, align 4
  %56 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %56)
  %cond.4.i90 = load ptr, ptr %op, align 4
  %57 = ptrtoint ptr %arrayidx10.4.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %cond.4.i90, ptr %arrayidx10.4.i, align 4
  %add.ptr.5.i92 = getelementptr i8, ptr %cond.4.i90, i32 4
  %58 = ptrtoint ptr %arrayidx10.5.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %add.ptr.5.i92, ptr %arrayidx10.5.i, align 4
  %add.ptr.6.i94 = getelementptr i8, ptr %cond.4.i90, i32 8
  %59 = ptrtoint ptr %arrayidx10.6.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %add.ptr.6.i94, ptr %arrayidx10.6.i, align 4
  %add.ptr.7.i96 = getelementptr i8, ptr %cond.4.i90, i32 20
  %60 = ptrtoint ptr %arrayidx10.7.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %add.ptr.7.i96, ptr %arrayidx10.7.i, align 4
  %add.ptr.8.i98 = getelementptr i8, ptr %cond.4.i90, i32 24
  %61 = ptrtoint ptr %arrayidx10.8.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %add.ptr.8.i98, ptr %arrayidx10.8.i, align 4
  %add.ptr.9.i100 = getelementptr i8, ptr %cond.4.i90, i32 28
  %62 = ptrtoint ptr %arrayidx10.9.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %add.ptr.9.i100, ptr %arrayidx10.9.i, align 4
  %add.ptr.10.i102 = getelementptr i8, ptr %cond.4.i90, i32 32
  %63 = ptrtoint ptr %arrayidx10.10.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %add.ptr.10.i102, ptr %arrayidx10.10.i, align 4
  %add.ptr.11.i104 = getelementptr i8, ptr %cond.4.i90, i32 48
  %64 = ptrtoint ptr %arrayidx10.11.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %add.ptr.11.i104, ptr %arrayidx10.11.i, align 4
  %add.ptr.12.i106 = getelementptr i8, ptr %cond.4.i90, i32 68
  %65 = ptrtoint ptr %arrayidx10.12.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %add.ptr.12.i106, ptr %arrayidx10.12.i, align 4
  %add.ptr.13.i108 = getelementptr i8, ptr %cond.4.i90, i32 132
  %66 = ptrtoint ptr %arrayidx10.13.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %add.ptr.13.i108, ptr %arrayidx10.13.i, align 4
  %add.ptr.14.i110 = getelementptr i8, ptr %cond.4.i90, i32 196
  %67 = ptrtoint ptr %arrayidx10.14.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %add.ptr.14.i110, ptr %arrayidx10.14.i, align 4
  %add.ptr.15.i112 = getelementptr i8, ptr %cond.4.i90, i32 200
  %68 = ptrtoint ptr %arrayidx10.15.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %add.ptr.15.i112, ptr %arrayidx10.15.i, align 4
  %add.ptr.16.i114 = getelementptr i8, ptr %cond.4.i90, i32 216
  %69 = ptrtoint ptr %arrayidx10.16.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %add.ptr.16.i114, ptr %arrayidx10.16.i, align 4
  %add.ptr.17.i116 = getelementptr i8, ptr %cond.4.i90, i32 220
  %70 = ptrtoint ptr %arrayidx10.17.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %add.ptr.17.i116, ptr %arrayidx10.17.i, align 4
  %add.ptr.18.i118 = getelementptr i8, ptr %cond.4.i90, i32 224
  %71 = ptrtoint ptr %arrayidx10.18.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %add.ptr.18.i118, ptr %arrayidx10.18.i, align 4
  %add.ptr.19.i120 = getelementptr i8, ptr %cond.4.i90, i32 228
  %72 = ptrtoint ptr %arrayidx10.19.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %add.ptr.19.i120, ptr %arrayidx10.19.i, align 4
  %add.ptr.20.i122 = getelementptr i8, ptr %cond.4.i90, i32 232
  %73 = ptrtoint ptr %arrayidx10.20.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %add.ptr.20.i122, ptr %arrayidx10.20.i, align 4
  %add.ptr26.i124 = getelementptr i8, ptr %cond.4.i90, i32 236
  %74 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %add.ptr26.i124, ptr %arrayidx29.i, align 4
  %add.ptr26.1.i127 = getelementptr i8, ptr %cond.4.i90, i32 240
  %75 = ptrtoint ptr %arrayidx29.1.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %add.ptr26.1.i127, ptr %arrayidx29.1.i, align 4
  %add.ptr26.2.i130 = getelementptr i8, ptr %cond.4.i90, i32 244
  %76 = ptrtoint ptr %arrayidx29.2.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %add.ptr26.2.i130, ptr %arrayidx29.2.i, align 4
  %add.ptr26.3.i133 = getelementptr i8, ptr %cond.4.i90, i32 248
  %77 = ptrtoint ptr %arrayidx29.3.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %add.ptr26.3.i133, ptr %arrayidx29.3.i, align 4
  %add.ptr26.4.i136 = getelementptr i8, ptr %cond.4.i90, i32 252
  %78 = ptrtoint ptr %arrayidx29.4.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %add.ptr26.4.i136, ptr %arrayidx29.4.i, align 4
  %add.ptr26.5.i139 = getelementptr i8, ptr %cond.4.i90, i32 256
  %79 = ptrtoint ptr %arrayidx29.5.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %add.ptr26.5.i139, ptr %arrayidx29.5.i, align 4
  %add.ptr26.6.i142 = getelementptr i8, ptr %cond.4.i90, i32 260
  %80 = ptrtoint ptr %arrayidx29.6.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %add.ptr26.6.i142, ptr %arrayidx29.6.i, align 4
  %add.ptr26.7.i145 = getelementptr i8, ptr %cond.4.i90, i32 264
  %81 = ptrtoint ptr %arrayidx29.7.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %add.ptr26.7.i145, ptr %arrayidx29.7.i, align 4
  %add.ptr26.8.i148 = getelementptr i8, ptr %cond.4.i90, i32 268
  %82 = ptrtoint ptr %arrayidx29.8.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %add.ptr26.8.i148, ptr %arrayidx29.8.i, align 4
  %add.ptr26.9.i151 = getelementptr i8, ptr %cond.4.i90, i32 272
  %83 = ptrtoint ptr %arrayidx29.9.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %add.ptr26.9.i151, ptr %arrayidx29.9.i, align 4
  %add.ptr26.10.i154 = getelementptr i8, ptr %cond.4.i90, i32 276
  %84 = ptrtoint ptr %arrayidx29.10.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %add.ptr26.10.i154, ptr %arrayidx29.10.i, align 4
  %add.ptr26.11.i157 = getelementptr i8, ptr %cond.4.i90, i32 280
  %85 = ptrtoint ptr %arrayidx29.11.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %add.ptr26.11.i157, ptr %arrayidx29.11.i, align 4
  %add.ptr26.12.i160 = getelementptr i8, ptr %cond.4.i90, i32 284
  %86 = ptrtoint ptr %arrayidx29.12.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %add.ptr26.12.i160, ptr %arrayidx29.12.i, align 4
  %add.ptr26.13.i163 = getelementptr i8, ptr %cond.4.i90, i32 288
  %87 = ptrtoint ptr %arrayidx29.13.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %add.ptr26.13.i163, ptr %arrayidx29.13.i, align 4
  %add.ptr26.14.i166 = getelementptr i8, ptr %cond.4.i90, i32 292
  %88 = ptrtoint ptr %arrayidx29.14.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %add.ptr26.14.i166, ptr %arrayidx29.14.i, align 4
  %add.ptr26.15.i169 = getelementptr i8, ptr %cond.4.i90, i32 296
  %89 = ptrtoint ptr %arrayidx29.15.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %add.ptr26.15.i169, ptr %arrayidx29.15.i, align 4
  %add.ptr26.16.i172 = getelementptr i8, ptr %cond.4.i90, i32 300
  %90 = ptrtoint ptr %arrayidx29.16.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %add.ptr26.16.i172, ptr %arrayidx29.16.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %91 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %op, align 8
  %93 = ptrtoint ptr %abs to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %abs, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %92 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %94 to i32
  %size = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 5
  %sub.ptr.sub = add i32 %sub.ptr.lhs.cast, 37
  %add = sub i32 %sub.ptr.sub, %sub.ptr.rhs.cast
  %div79 = lshr i32 %add, 2
  %95 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %div79, ptr %size, align 4
  %96 = ptrtoint ptr %arrayidx10.2.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx10.2.i, align 4
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  %99 = lshr i32 %98, 23
  %mul = and i32 %99, 62
  %hw_ep_max = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 21
  %100 = ptrtoint ptr %hw_ep_max to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %mul, ptr %hw_ep_max, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %mul)
  %cmp = icmp ugt i32 %mul, 32
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end31

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end31:                                         ; preds = %if.end
  %101 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %platdata, align 4
  %enter_lpm.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %102, i32 0, i32 24
  %103 = ptrtoint ptr %enter_lpm.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %enter_lpm.i, align 4
  tail call void %104(ptr noundef %ci, i1 noundef zeroext false) #11
  %imx28_write_fix.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 41
  %105 = ptrtoint ptr %imx28_write_fix.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %imx28_write_fix.i.i, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool.not.i.i = icmp eq i8 %106, 0
  br i1 %tobool.not.i.i, label %hw_write.exit, label %if.end31.hw_write.exit180_crit_edge

if.end31.hw_write.exit180_crit_edge:              ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %hw_write.exit180

hw_write.exit:                                    ; preds = %if.end31
  %107 = ptrtoint ptr %arrayidx10.6.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx10.6.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 0) #11, !srcloc !187
  %109 = ptrtoint ptr %imx28_write_fix.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %.pr = load i8, ptr %imx28_write_fix.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool.not.i.i177 = icmp eq i8 %.pr, 0
  br i1 %tobool.not.i.i177, label %if.else.i.i179, label %hw_write.exit.hw_write.exit180_crit_edge

hw_write.exit.hw_write.exit180_crit_edge:         ; preds = %hw_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %hw_write.exit180

if.else.i.i179:                                   ; preds = %hw_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  %110 = ptrtoint ptr %arrayidx10.5.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx10.5.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 -1) #11, !srcloc !187
  br label %hw_write.exit180

hw_write.exit180:                                 ; preds = %if.else.i.i179, %hw_write.exit.hw_write.exit180_crit_edge, %if.end31.hw_write.exit180_crit_edge
  %112 = ptrtoint ptr %abs to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %abs, align 8
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %113) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  %115 = lshr i32 %114, 1
  %shr.i = and i32 %115, 15
  %116 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %116, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %shr.i, label %hw_write.exit180.ci_get_revision.exit_crit_edge [
    i32 2, label %if.then.i
    i32 0, label %if.then6.i
  ]

hw_write.exit180.ci_get_revision.exit_crit_edge:  ; preds = %hw_write.exit180
  call void @__sanitizer_cov_trace_pc() #13
  br label %ci_get_revision.exit

if.then.i:                                        ; preds = %hw_write.exit180
  call void @__sanitizer_cov_trace_pc() #13
  %117 = ptrtoint ptr %abs to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %abs, align 8
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  %120 = and i32 %119, 57345
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #11
  %shr4.i = lshr exact i32 %121, 21
  %add.i = add nuw nsw i32 %shr4.i, 20
  br label %ci_get_revision.exit

if.then6.i:                                       ; preds = %hw_write.exit180
  call void @__sanitizer_cov_trace_pc() #13
  br label %ci_get_revision.exit

ci_get_revision.exit:                             ; preds = %if.then6.i, %if.then.i, %hw_write.exit180.ci_get_revision.exit_crit_edge
  %rev.0.i = phi i32 [ %add.i, %if.then.i ], [ 10, %if.then6.i ], [ 99, %hw_write.exit180.ci_get_revision.exit_crit_edge ]
  %rev = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 45
  %122 = ptrtoint ptr %rev to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %rev.0.i, ptr %rev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hw_device_init.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hw_device_init, %if.then38)) #11
          to label %cleanup [label %if.then38], !srcloc !193

if.then38:                                        ; preds = %ci_get_revision.exit
  call void @__sanitizer_cov_trace_pc() #13
  %123 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ci, align 8
  %125 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %rev, align 4
  %127 = ptrtoint ptr %hw_bank to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %hw_bank, align 8
  %129 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %cap, align 4
  %131 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %op, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hw_device_init.__UNIQUE_ID_ddebug295, ptr noundef %124, ptr noundef nonnull @.str.64, i32 noundef %126, i32 noundef %128, ptr noundef %130, ptr noundef %132) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %ci_get_revision.exit, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.end.cleanup_crit_edge ], [ 0, %if.then38 ], [ 0, %ci_get_revision.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ci_ulpi_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_usb_get_phy_by_phandle(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_usb_get_phy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ci_hdrc_host_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ci_hdrc_gadget_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ci_hdrc_otg_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_role_switch_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ci_otg_role(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ci_handle_vbus_change(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ci_extcon_register(ptr noundef %ci) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %platdata = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 32
  %0 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platdata, align 4
  %ci1 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %1, i32 0, i32 17, i32 4
  %2 = ptrtoint ptr %ci1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ci, ptr %ci1, align 4
  %edev = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %1, i32 0, i32 17, i32 3
  %3 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %edev, align 4
  %tobool.not.i = icmp eq ptr %4, null
  %cmp.i = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ci, align 8
  %nb = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %1, i32 0, i32 17, i32 5
  %call3 = tail call i32 @devm_extcon_register_notifier(ptr noundef %6, ptr noundef nonnull %4, i32 noundef 2, ptr noundef %nb) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then.cleanup.sink.split_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %7 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %platdata, align 4
  %ci8 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %8, i32 0, i32 16, i32 4
  %9 = ptrtoint ptr %ci8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ci, ptr %ci8, align 4
  %edev9 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %8, i32 0, i32 16, i32 3
  %10 = ptrtoint ptr %edev9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %edev9, align 4
  %tobool.not.i42 = icmp eq ptr %11, null
  %cmp.i43 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  %spec.select.i44 = or i1 %tobool.not.i42, %cmp.i43
  br i1 %spec.select.i44, label %if.end6.cleanup_crit_edge, label %if.then11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then11:                                        ; preds = %if.end6
  %12 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ci, align 8
  %nb14 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %8, i32 0, i32 16, i32 5
  %call15 = tail call i32 @devm_extcon_register_notifier(ptr noundef %13, ptr noundef nonnull %11, i32 noundef 1, ptr noundef %nb14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then11.cleanup.sink.split_crit_edge, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then11.cleanup.sink.split_crit_edge:           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then11.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %.str.70.sink = phi ptr [ @.str.67, %if.then.cleanup.sink.split_crit_edge ], [ @.str.70, %if.then11.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call3, %if.then.cleanup.sink.split_crit_edge ], [ %call15, %if.then11.cleanup.sink.split_crit_edge ]
  %14 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ci, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull %.str.70.sink) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then11.cleanup_crit_edge, %if.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then11.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ci_hdrc_otg_fsm_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dbg_create_files(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_role_switch_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ci_hdrc_otg_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ci_hdrc_gadget_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ci_hdrc_host_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ci_ulpi_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_extcon_register_notifier(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dbg_remove_files(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @role_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %role = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %role to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %role, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp ugt i32 %3, 1
  br i1 %cmp.i, label %if.then.do.body5.i_crit_edge, label %lor.rhs.i, !prof !188

if.then.do.body5.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body5.i

lor.rhs.i:                                        ; preds = %if.then
  %arrayidx.i = getelementptr %struct.ci_hdrc, ptr %1, i32 0, i32 4, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %lor.rhs.i.do.body5.i_crit_edge, label %ci_role.exit, !prof !188

lor.rhs.i.do.body5.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body5.i

do.body5.i:                                       ; preds = %lor.rhs.i.do.body5.i_crit_edge, %if.then.do.body5.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/chipidea/ci.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 262, 0\0A.popsection", ""() #11, !srcloc !189
  unreachable

ci_role.exit:                                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.ci_role_driver, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.73, ptr noundef %7)
  br label %cleanup

cleanup:                                          ; preds = %ci_role.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %ci_role.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @role_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %roles = getelementptr %struct.ci_hdrc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %roles to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %roles, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx2 = getelementptr %struct.ci_hdrc, ptr %1, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %for.body.preheader

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

for.body.preheader:                               ; preds = %land.lhs.true
  %6 = ptrtoint ptr %roles to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %roles, align 4
  %name = getelementptr inbounds %struct.ci_role_driver, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  %call9 = tail call i32 @strlen(ptr noundef %9) #15
  %call10 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef %9, i32 noundef %call9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %for.body.preheader.lor.lhs.false_crit_edge, label %for.inc

for.body.preheader.lor.lhs.false_crit_edge:       ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

do.end:                                           ; preds = %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.74) #14
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx2, align 4
  %name.1 = getelementptr inbounds %struct.ci_role_driver, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %name.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name.1, align 4
  %call9.1 = tail call i32 @strlen(ptr noundef %13) #15
  %call10.1 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef %13, i32 noundef %call9.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.1)
  %tobool11.not.1 = icmp eq i32 %call10.1, 0
  br i1 %tobool11.not.1, label %for.inc.lor.lhs.false_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.lor.lhs.false_crit_edge:                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.inc.lor.lhs.false_crit_edge, %for.body.preheader.lor.lhs.false_crit_edge
  %role.065.lcssa = phi i32 [ 0, %for.body.preheader.lor.lhs.false_crit_edge ], [ 1, %for.inc.lor.lhs.false_crit_edge ]
  %role15 = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %role15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %role15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %role.065.lcssa, i32 %15)
  %cmp16 = icmp eq i32 %role.065.lcssa, %15
  br i1 %cmp16, label %lor.lhs.false.cleanup_crit_edge, label %if.end18

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #11
  %irq = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 8
  tail call void @disable_irq(i32 noundef %17) #11
  %18 = ptrtoint ptr %role15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %role15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp.i = icmp eq i32 %19, 2
  br i1 %cmp.i, label %if.end18.if.end.i55_crit_edge, label %if.end.i

if.end18.if.end.i55_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i55

if.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %role15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %role15, align 4
  %arrayidx.i = getelementptr %struct.ci_hdrc, ptr %1, i32 0, i32 4, i32 %19
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %stop.i = getelementptr inbounds %struct.ci_role_driver, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %stop.i, align 4
  tail call void %24(ptr noundef %1) #11
  br label %if.end.i55

if.end.i55:                                       ; preds = %if.end.i, %if.end18.if.end.i55_crit_edge
  %arrayidx.i54 = getelementptr %struct.ci_hdrc, ptr %1, i32 0, i32 4, i32 %role.065.lcssa
  %25 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i54, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.end.i55.if.end26_crit_edge, label %if.end2.i

if.end.i55.if.end26_crit_edge:                    ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.end2.i:                                        ; preds = %if.end.i55
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %call.i56 = tail call i32 %28(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool5.not.i = icmp eq i32 %call.i56, 0
  br i1 %tobool5.not.i, label %land.lhs.true22, label %if.end2.i.if.end26_crit_edge

if.end2.i.if.end26_crit_edge:                     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

land.lhs.true22:                                  ; preds = %if.end2.i
  %29 = ptrtoint ptr %role15 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %role.065.lcssa, ptr %role15, align 4
  br i1 %tobool11.not, label %land.lhs.true22.if.end26_crit_edge, label %if.then25

land.lhs.true22.if.end26_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then25:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ci_handle_vbus_change(ptr noundef %1) #11
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %land.lhs.true22.if.end26_crit_edge, %if.end2.i.if.end26_crit_edge, %if.end.i55.if.end26_crit_edge
  %tobool21.not62 = phi i32 [ %n, %if.then25 ], [ %n, %land.lhs.true22.if.end26_crit_edge ], [ -6, %if.end.i55.if.end26_crit_edge ], [ %call.i56, %if.end2.i.if.end26_crit_edge ]
  %30 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq, align 8
  tail call void @enable_irq(i32 noundef %31) #11
  %call.i57 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %lor.lhs.false.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ %tobool21.not62, %if.end26 ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %wq = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wq, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @flush_workqueue(ptr noundef nonnull %3) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %in_lpm = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 43
  %4 = ptrtoint ptr %in_lpm to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %in_lpm, align 8, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end.if.end26_crit_edge, label %if.end5

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.end5:                                          ; preds = %if.end
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 0) #11
  %6 = ptrtoint ptr %in_lpm to i32
  call void @__asan_load1_noabort(i32 %6)
  %.pr = load i8, ptr %in_lpm, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool7.not = icmp eq i8 %.pr, 0
  br i1 %tobool7.not, label %if.end5.if.end26_crit_edge, label %do.end

if.end5.if.end26_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1370, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end26:                                         ; preds = %if.end5.if.end26_crit_edge, %if.end.if.end26_crit_edge
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %7 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end26.if.end34_crit_edge, label %device_may_wakeup.exit

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

device_may_wakeup.exit:                           ; preds = %if.end26
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %8 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %9, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end34_crit_edge, label %if.then28

device_may_wakeup.exit.if.end34_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then28:                                        ; preds = %device_may_wakeup.exit
  %platdata.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 32
  %10 = ptrtoint ptr %platdata.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %platdata.i, align 4
  %is_otg.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %is_otg.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_otg.i, align 8, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i46 = icmp eq i8 %13, 0
  br i1 %tobool.not.i46, label %if.then28.if.end31_crit_edge, label %land.lhs.true.i

if.then28.if.end31_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

land.lhs.true.i:                                  ; preds = %if.then28
  %roles.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %roles.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %roles.i, align 4
  %tobool1.not.i = icmp eq ptr %15, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end31_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.if.end31_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %arrayidx4.i = getelementptr %struct.ci_hdrc, ptr %1, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx4.i, align 4
  %tobool5.not.i = icmp eq ptr %17, null
  br i1 %tobool5.not.i, label %land.lhs.true2.i.if.end31_crit_edge, label %land.rhs.i47

land.lhs.true2.i.if.end31_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

land.rhs.i47:                                     ; preds = %land.lhs.true2.i
  %srp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %11, i32 0, i32 10, i32 2
  %18 = ptrtoint ptr %srp_support.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %srp_support.i, align 1, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool6.not.i = icmp eq i8 %19, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i, label %land.rhs.i47.if.then30_crit_edge

land.rhs.i47.if.then30_crit_edge:                 ; preds = %land.rhs.i47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then30

lor.lhs.false.i:                                  ; preds = %land.rhs.i47
  %hnp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %11, i32 0, i32 10, i32 1
  %20 = ptrtoint ptr %hnp_support.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %hnp_support.i, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool7.not.i = icmp eq i8 %21, 0
  br i1 %tobool7.not.i, label %ci_otg_is_fsm_mode.exit, label %lor.lhs.false.i.if.then30_crit_edge

lor.lhs.false.i.if.then30_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then30

ci_otg_is_fsm_mode.exit:                          ; preds = %lor.lhs.false.i
  %adp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %11, i32 0, i32 10, i32 3
  %22 = ptrtoint ptr %adp_support.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %adp_support.i, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool8.i.not = icmp eq i8 %23, 0
  br i1 %tobool8.i.not, label %ci_otg_is_fsm_mode.exit.if.end31_crit_edge, label %ci_otg_is_fsm_mode.exit.if.then30_crit_edge

ci_otg_is_fsm_mode.exit.if.then30_crit_edge:      ; preds = %ci_otg_is_fsm_mode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then30

ci_otg_is_fsm_mode.exit.if.end31_crit_edge:       ; preds = %ci_otg_is_fsm_mode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then30:                                        ; preds = %ci_otg_is_fsm_mode.exit.if.then30_crit_edge, %lor.lhs.false.i.if.then30_crit_edge, %land.rhs.i47.if.then30_crit_edge
  tail call fastcc void @ci_otg_fsm_suspend_for_srp(ptr noundef %1)
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %ci_otg_is_fsm_mode.exit.if.end31_crit_edge, %land.lhs.true2.i.if.end31_crit_edge, %land.lhs.true.i.if.end31_crit_edge, %if.then28.if.end31_crit_edge
  %usb_phy = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 37
  %24 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %usb_phy, align 4
  %tobool.not.i48 = icmp eq ptr %25, null
  br i1 %tobool.not.i48, label %if.end31.usb_phy_set_wakeup.exit_crit_edge, label %land.lhs.true.i50

if.end31.usb_phy_set_wakeup.exit_crit_edge:       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %usb_phy_set_wakeup.exit

land.lhs.true.i50:                                ; preds = %if.end31
  %set_wakeup.i = getelementptr inbounds %struct.usb_phy, ptr %25, i32 0, i32 27
  %26 = ptrtoint ptr %set_wakeup.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_wakeup.i, align 4
  %tobool1.not.i49 = icmp eq ptr %27, null
  br i1 %tobool1.not.i49, label %land.lhs.true.i50.usb_phy_set_wakeup.exit_crit_edge, label %if.then.i

land.lhs.true.i50.usb_phy_set_wakeup.exit_crit_edge: ; preds = %land.lhs.true.i50
  call void @__sanitizer_cov_trace_pc() #13
  br label %usb_phy_set_wakeup.exit

if.then.i:                                        ; preds = %land.lhs.true.i50
  call void @__sanitizer_cov_trace_pc() #13
  %call.i51 = tail call i32 %27(ptr noundef nonnull %25, i1 noundef zeroext true) #11
  br label %usb_phy_set_wakeup.exit

usb_phy_set_wakeup.exit:                          ; preds = %if.then.i, %land.lhs.true.i50.usb_phy_set_wakeup.exit_crit_edge, %if.end31.usb_phy_set_wakeup.exit_crit_edge
  %irq = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq, align 8
  %call.i52 = tail call i32 @irq_set_irq_wake(i32 noundef %29, i32 noundef 1) #11
  br label %if.end34

if.end34:                                         ; preds = %usb_phy_set_wakeup.exit, %device_may_wakeup.exit.if.end34_crit_edge, %if.end26.if.end34_crit_edge
  %irq.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq.i, align 8
  tail call void @disable_irq(i32 noundef %31) #11
  %platdata.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 32
  %32 = ptrtoint ptr %platdata.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %platdata.i.i, align 4
  %enter_lpm.i.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %33, i32 0, i32 24
  %34 = ptrtoint ptr %enter_lpm.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %enter_lpm.i.i, align 4
  tail call void %35(ptr noundef %1, i1 noundef zeroext true) #11
  %36 = ptrtoint ptr %platdata.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %platdata.i.i, align 4
  %phy_clkgate_delay_us.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %37, i32 0, i32 18
  %38 = ptrtoint ptr %phy_clkgate_delay_us.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %phy_clkgate_delay_us.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i53 = icmp eq i32 %39, 0
  br i1 %tobool.not.i53, label %if.end34.if.end.i_crit_edge, label %if.then.i54

if.end34.if.end.i_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i54:                                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  %add.i = add i32 %39, 50
  tail call void @usleep_range_state(i32 noundef %39, i32 noundef %add.i, i32 noundef 2) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i54, %if.end34.if.end.i_crit_edge
  %usb_phy.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 37
  %40 = ptrtoint ptr %usb_phy.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %usb_phy.i, align 4
  %tobool.not.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i, label %if.end.i.ci_controller_suspend.exit_crit_edge, label %land.lhs.true.i.i

if.end.i.ci_controller_suspend.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ci_controller_suspend.exit

land.lhs.true.i.i:                                ; preds = %if.end.i
  %set_suspend.i.i = getelementptr inbounds %struct.usb_phy, ptr %41, i32 0, i32 26
  %42 = ptrtoint ptr %set_suspend.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %set_suspend.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %43, null
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.ci_controller_suspend.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.ci_controller_suspend.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ci_controller_suspend.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call i32 %43(ptr noundef nonnull %41, i32 noundef 1) #11
  br label %ci_controller_suspend.exit

ci_controller_suspend.exit:                       ; preds = %if.then.i.i, %land.lhs.true.i.i.ci_controller_suspend.exit_crit_edge, %if.end.i.ci_controller_suspend.exit_crit_edge
  %44 = ptrtoint ptr %in_lpm to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %in_lpm, align 8
  %45 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %irq.i, align 8
  tail call void @enable_irq(i32 noundef %46) #11
  br label %cleanup

cleanup:                                          ; preds = %ci_controller_suspend.exit, %do.end
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #13
  %irq = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 8
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 0) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = tail call fastcc i32 @ci_controller_resume(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %supports_runtime_pm = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 42
  %7 = ptrtoint ptr %supports_runtime_pm to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %supports_runtime_pm, align 1, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool6.not = icmp eq i8 %8, 0
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.then7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #11
  %call.i19 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #11
  tail call void @pm_runtime_enable(ptr noundef %dev) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_runtime_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ci_runtime_suspend.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ci_runtime_suspend, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !193

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ci_runtime_suspend.__UNIQUE_ID_ddebug298, ptr noundef %dev, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %in_lpm = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 43
  %2 = ptrtoint ptr %in_lpm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %in_lpm, align 8, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %if.end31, label %do.end17

do.end17:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1416, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end31:                                         ; preds = %do.end
  %platdata.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %platdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platdata.i, align 4
  %is_otg.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %is_otg.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_otg.i, align 8, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end31.if.end34_crit_edge, label %land.lhs.true.i

if.end31.if.end34_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

land.lhs.true.i:                                  ; preds = %if.end31
  %roles.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %roles.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %roles.i, align 4
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end34_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.if.end34_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %arrayidx4.i = getelementptr %struct.ci_hdrc, ptr %1, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx4.i, align 4
  %tobool5.not.i = icmp eq ptr %11, null
  br i1 %tobool5.not.i, label %land.lhs.true2.i.if.end34_crit_edge, label %land.rhs.i

land.lhs.true2.i.if.end34_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

land.rhs.i:                                       ; preds = %land.lhs.true2.i
  %srp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %5, i32 0, i32 10, i32 2
  %12 = ptrtoint ptr %srp_support.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %srp_support.i, align 1, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool6.not.i = icmp eq i8 %13, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i, label %land.rhs.i.if.then33_crit_edge

land.rhs.i.if.then33_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33

lor.lhs.false.i:                                  ; preds = %land.rhs.i
  %hnp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %5, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %hnp_support.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %hnp_support.i, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool7.not.i = icmp eq i8 %15, 0
  br i1 %tobool7.not.i, label %ci_otg_is_fsm_mode.exit, label %lor.lhs.false.i.if.then33_crit_edge

lor.lhs.false.i.if.then33_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33

ci_otg_is_fsm_mode.exit:                          ; preds = %lor.lhs.false.i
  %adp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %5, i32 0, i32 10, i32 3
  %16 = ptrtoint ptr %adp_support.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %adp_support.i, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool8.i.not = icmp eq i8 %17, 0
  br i1 %tobool8.i.not, label %ci_otg_is_fsm_mode.exit.if.end34_crit_edge, label %ci_otg_is_fsm_mode.exit.if.then33_crit_edge

ci_otg_is_fsm_mode.exit.if.then33_crit_edge:      ; preds = %ci_otg_is_fsm_mode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33

ci_otg_is_fsm_mode.exit.if.end34_crit_edge:       ; preds = %ci_otg_is_fsm_mode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then33:                                        ; preds = %ci_otg_is_fsm_mode.exit.if.then33_crit_edge, %lor.lhs.false.i.if.then33_crit_edge, %land.rhs.i.if.then33_crit_edge
  tail call fastcc void @ci_otg_fsm_suspend_for_srp(ptr noundef %1)
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %ci_otg_is_fsm_mode.exit.if.end34_crit_edge, %land.lhs.true2.i.if.end34_crit_edge, %land.lhs.true.i.if.end34_crit_edge, %if.end31.if.end34_crit_edge
  %usb_phy = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 37
  %18 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb_phy, align 4
  %tobool.not.i42 = icmp eq ptr %19, null
  br i1 %tobool.not.i42, label %if.end34.usb_phy_set_wakeup.exit_crit_edge, label %land.lhs.true.i44

if.end34.usb_phy_set_wakeup.exit_crit_edge:       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %usb_phy_set_wakeup.exit

land.lhs.true.i44:                                ; preds = %if.end34
  %set_wakeup.i = getelementptr inbounds %struct.usb_phy, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %set_wakeup.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_wakeup.i, align 4
  %tobool1.not.i43 = icmp eq ptr %21, null
  br i1 %tobool1.not.i43, label %land.lhs.true.i44.usb_phy_set_wakeup.exit_crit_edge, label %if.then.i

land.lhs.true.i44.usb_phy_set_wakeup.exit_crit_edge: ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #13
  br label %usb_phy_set_wakeup.exit

if.then.i:                                        ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 %21(ptr noundef nonnull %19, i1 noundef zeroext true) #11
  br label %usb_phy_set_wakeup.exit

usb_phy_set_wakeup.exit:                          ; preds = %if.then.i, %land.lhs.true.i44.usb_phy_set_wakeup.exit_crit_edge, %if.end34.usb_phy_set_wakeup.exit_crit_edge
  %irq.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq.i, align 8
  tail call void @disable_irq(i32 noundef %23) #11
  %24 = ptrtoint ptr %platdata.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %platdata.i, align 4
  %enter_lpm.i.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %25, i32 0, i32 24
  %26 = ptrtoint ptr %enter_lpm.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %enter_lpm.i.i, align 4
  tail call void %27(ptr noundef %1, i1 noundef zeroext true) #11
  %28 = ptrtoint ptr %platdata.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %platdata.i, align 4
  %phy_clkgate_delay_us.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %29, i32 0, i32 18
  %30 = ptrtoint ptr %phy_clkgate_delay_us.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %phy_clkgate_delay_us.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i45 = icmp eq i32 %31, 0
  br i1 %tobool.not.i45, label %usb_phy_set_wakeup.exit.if.end.i_crit_edge, label %if.then.i46

usb_phy_set_wakeup.exit.if.end.i_crit_edge:       ; preds = %usb_phy_set_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i46:                                      ; preds = %usb_phy_set_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.i = add i32 %31, 50
  tail call void @usleep_range_state(i32 noundef %31, i32 noundef %add.i, i32 noundef 2) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i46, %usb_phy_set_wakeup.exit.if.end.i_crit_edge
  %32 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %usb_phy, align 4
  %tobool.not.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i, label %if.end.i.ci_controller_suspend.exit_crit_edge, label %land.lhs.true.i.i

if.end.i.ci_controller_suspend.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ci_controller_suspend.exit

land.lhs.true.i.i:                                ; preds = %if.end.i
  %set_suspend.i.i = getelementptr inbounds %struct.usb_phy, ptr %33, i32 0, i32 26
  %34 = ptrtoint ptr %set_suspend.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %set_suspend.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %35, null
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.ci_controller_suspend.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.ci_controller_suspend.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ci_controller_suspend.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call i32 %35(ptr noundef nonnull %33, i32 noundef 1) #11
  br label %ci_controller_suspend.exit

ci_controller_suspend.exit:                       ; preds = %if.then.i.i, %land.lhs.true.i.i.ci_controller_suspend.exit_crit_edge, %if.end.i.ci_controller_suspend.exit_crit_edge
  %36 = ptrtoint ptr %in_lpm to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %in_lpm, align 8
  %37 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq.i, align 8
  tail call void @enable_irq(i32 noundef %38) #11
  br label %cleanup

cleanup:                                          ; preds = %ci_controller_suspend.exit, %do.end17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_runtime_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ci_controller_resume(ptr noundef %dev)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ci_otg_fsm_suspend_for_srp(ptr noundef %ci) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %otg = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 41
  %0 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp = icmp eq i32 %3, 6
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @hw_read_otgsc(ptr noundef %ci, i32 noundef 256) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %arrayidx.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 12
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  %imx28_write_fix.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 41
  %7 = ptrtoint ptr %imx28_write_fix.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %imx28_write_fix.i.i, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.hw_write.exit_crit_edge

if.then.hw_write.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %hw_write.exit

if.else.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %9 = and i32 %6, -705691649
  %10 = or i32 %9, 1048576
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #11, !srcloc !187
  br label %hw_write.exit

hw_write.exit:                                    ; preds = %if.else.i.i, %if.then.hw_write.exit_crit_edge
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  %16 = ptrtoint ptr %imx28_write_fix.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %imx28_write_fix.i.i, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i.i8 = icmp eq i8 %17, 0
  br i1 %tobool.not.i.i8, label %if.else.i.i10, label %hw_write.exit.if.end_crit_edge

hw_write.exit.if.end_crit_edge:                   ; preds = %hw_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.else.i.i10:                                    ; preds = %hw_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  %18 = and i32 %15, -704647169
  %19 = or i32 %18, 4096
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #11, !srcloc !187
  br label %if.end

if.end:                                           ; preds = %if.else.i.i10, %hw_write.exit.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ci_controller_resume(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ci_controller_resume.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ci_controller_resume, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !193

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ci_controller_resume.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.77) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %in_lpm = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 43
  %2 = ptrtoint ptr %in_lpm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %in_lpm, align 8, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %do.end17, label %if.end31

do.end17:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1323, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end31:                                         ; preds = %do.end
  %platdata.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %platdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platdata.i, align 4
  %enter_lpm.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %5, i32 0, i32 24
  %6 = ptrtoint ptr %enter_lpm.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enter_lpm.i, align 4
  tail call void %7(ptr noundef %1, i1 noundef zeroext false) #11
  %call32 = tail call i32 @ci_ulpi_resume(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  %usb_phy = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 37
  %8 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb_phy, align 4
  %tobool36.not = icmp eq ptr %9, null
  br i1 %tobool36.not, label %if.end35.if.end42_crit_edge, label %land.lhs.true.i

if.end35.if.end42_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

land.lhs.true.i:                                  ; preds = %if.end35
  %set_suspend.i = getelementptr inbounds %struct.usb_phy, ptr %9, i32 0, i32 26
  %10 = ptrtoint ptr %set_suspend.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_suspend.i, align 4
  %cmp.not.i = icmp eq ptr %11, null
  br i1 %cmp.not.i, label %land.lhs.true.i.usb_phy_set_suspend.exit_crit_edge, label %if.then.i

land.lhs.true.i.usb_phy_set_suspend.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %usb_phy_set_suspend.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 %11(ptr noundef nonnull %9, i32 noundef 0) #11
  br label %usb_phy_set_suspend.exit

usb_phy_set_suspend.exit:                         ; preds = %if.then.i, %land.lhs.true.i.usb_phy_set_suspend.exit_crit_edge
  %12 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usb_phy, align 4
  %tobool.not.i72 = icmp eq ptr %13, null
  br i1 %tobool.not.i72, label %usb_phy_set_suspend.exit.usb_phy_set_wakeup.exit_crit_edge, label %land.lhs.true.i73

usb_phy_set_suspend.exit.usb_phy_set_wakeup.exit_crit_edge: ; preds = %usb_phy_set_suspend.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %usb_phy_set_wakeup.exit

land.lhs.true.i73:                                ; preds = %usb_phy_set_suspend.exit
  %set_wakeup.i = getelementptr inbounds %struct.usb_phy, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %set_wakeup.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_wakeup.i, align 4
  %tobool1.not.i = icmp eq ptr %15, null
  br i1 %tobool1.not.i, label %land.lhs.true.i73.usb_phy_set_wakeup.exit_crit_edge, label %if.then.i75

land.lhs.true.i73.usb_phy_set_wakeup.exit_crit_edge: ; preds = %land.lhs.true.i73
  call void @__sanitizer_cov_trace_pc() #13
  br label %usb_phy_set_wakeup.exit

if.then.i75:                                      ; preds = %land.lhs.true.i73
  call void @__sanitizer_cov_trace_pc() #13
  %call.i74 = tail call i32 %15(ptr noundef nonnull %13, i1 noundef zeroext false) #11
  br label %usb_phy_set_wakeup.exit

usb_phy_set_wakeup.exit:                          ; preds = %if.then.i75, %land.lhs.true.i73.usb_phy_set_wakeup.exit_crit_edge, %usb_phy_set_suspend.exit.usb_phy_set_wakeup.exit_crit_edge
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2500, i32 noundef 2) #11
  br label %if.end42

if.end42:                                         ; preds = %usb_phy_set_wakeup.exit, %if.end35.if.end42_crit_edge
  %16 = ptrtoint ptr %in_lpm to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %in_lpm, align 8
  %wakeup_int = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 44
  %17 = ptrtoint ptr %wakeup_int to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %wakeup_int, align 1, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool44.not = icmp eq i8 %18, 0
  br i1 %tobool44.not, label %if.end42.cleanup_crit_edge, label %if.then45

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then45:                                        ; preds = %if.end42
  %19 = ptrtoint ptr %wakeup_int to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %wakeup_int, align 1
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %call.i76 = tail call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 12, i32 22
  %22 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store volatile i64 %call.i76, ptr %last_busy.i, align 8
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  %call.i77 = tail call i32 @__pm_runtime_suspend(ptr noundef %24, i32 noundef 13) #11
  %irq = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq, align 8
  tail call void @enable_irq(i32 noundef %26) #11
  %27 = ptrtoint ptr %platdata.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %platdata.i, align 4
  %is_otg.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 6
  %29 = ptrtoint ptr %is_otg.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %is_otg.i, align 8, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i79 = icmp eq i8 %30, 0
  br i1 %tobool.not.i79, label %if.then45.if.end52_crit_edge, label %land.lhs.true.i81

if.then45.if.end52_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

land.lhs.true.i81:                                ; preds = %if.then45
  %roles.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %roles.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %roles.i, align 4
  %tobool1.not.i80 = icmp eq ptr %32, null
  br i1 %tobool1.not.i80, label %land.lhs.true.i81.if.end52_crit_edge, label %land.lhs.true2.i

land.lhs.true.i81.if.end52_crit_edge:             ; preds = %land.lhs.true.i81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i81
  %arrayidx4.i = getelementptr %struct.ci_hdrc, ptr %1, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx4.i, align 4
  %tobool5.not.i = icmp eq ptr %34, null
  br i1 %tobool5.not.i, label %land.lhs.true2.i.if.end52_crit_edge, label %land.rhs.i

land.lhs.true2.i.if.end52_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

land.rhs.i:                                       ; preds = %land.lhs.true2.i
  %srp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %28, i32 0, i32 10, i32 2
  %35 = ptrtoint ptr %srp_support.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %srp_support.i, align 1, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool6.not.i = icmp eq i8 %36, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i, label %land.rhs.i.if.then51_crit_edge

land.rhs.i.if.then51_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then51

lor.lhs.false.i:                                  ; preds = %land.rhs.i
  %hnp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %28, i32 0, i32 10, i32 1
  %37 = ptrtoint ptr %hnp_support.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %hnp_support.i, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool7.not.i = icmp eq i8 %38, 0
  br i1 %tobool7.not.i, label %ci_otg_is_fsm_mode.exit, label %lor.lhs.false.i.if.then51_crit_edge

lor.lhs.false.i.if.then51_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then51

ci_otg_is_fsm_mode.exit:                          ; preds = %lor.lhs.false.i
  %adp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %28, i32 0, i32 10, i32 3
  %39 = ptrtoint ptr %adp_support.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %adp_support.i, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool8.i.not = icmp eq i8 %40, 0
  br i1 %tobool8.i.not, label %ci_otg_is_fsm_mode.exit.if.end52_crit_edge, label %ci_otg_is_fsm_mode.exit.if.then51_crit_edge

ci_otg_is_fsm_mode.exit.if.then51_crit_edge:      ; preds = %ci_otg_is_fsm_mode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then51

ci_otg_is_fsm_mode.exit.if.end52_crit_edge:       ; preds = %ci_otg_is_fsm_mode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then51:                                        ; preds = %ci_otg_is_fsm_mode.exit.if.then51_crit_edge, %lor.lhs.false.i.if.then51_crit_edge, %land.rhs.i.if.then51_crit_edge
  %fsm.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8
  %otg.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 41
  %41 = ptrtoint ptr %otg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %otg.i, align 4
  %state.i = getelementptr inbounds %struct.usb_otg, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %44)
  %cmp.i = icmp eq i32 %44, 6
  br i1 %cmp.i, label %land.lhs.true.i82, label %if.then51.if.end52_crit_edge

if.then51.if.end52_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

land.lhs.true.i82:                                ; preds = %if.then51
  %a_bus_drop.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 13
  %45 = ptrtoint ptr %a_bus_drop.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %a_bus_drop.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp2.i = icmp eq i32 %46, 1
  br i1 %cmp2.i, label %land.lhs.true3.i, label %land.lhs.true.i82.if.end52_crit_edge

land.lhs.true.i82.if.end52_crit_edge:             ; preds = %land.lhs.true.i82
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i82
  %a_bus_req.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 14
  %47 = ptrtoint ptr %a_bus_req.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %a_bus_req.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp5.i = icmp eq i32 %48, 0
  br i1 %cmp5.i, label %if.then.i85, label %land.lhs.true3.i.if.end52_crit_edge

land.lhs.true3.i.if.end52_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then.i85:                                      ; preds = %land.lhs.true3.i
  %call.i83 = tail call i32 @hw_read_otgsc(ptr noundef %1, i32 noundef 256) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %tobool.not.i84 = icmp eq i32 %call.i83, 0
  br i1 %tobool.not.i84, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.then.i85
  call void @__sanitizer_cov_trace_pc() #13
  %a_srp_det.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 3
  %49 = ptrtoint ptr %a_srp_det.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %a_srp_det.i, align 4
  %50 = ptrtoint ptr %a_bus_drop.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %a_bus_drop.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i85
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %fsm.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %fsm.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then6.i
  %52 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %irq, align 8
  tail call void @disable_irq_nosync(i32 noundef %53) #11
  %wq.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 15
  %54 = ptrtoint ptr %wq.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %wq.i.i, align 8
  %work.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 14
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %55, ptr noundef %work.i.i) #11
  br i1 %call.i.i.i, label %if.end.i.if.end52_crit_edge, label %if.then.i.i

if.end.i.if.end52_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %irq, align 8
  tail call void @enable_irq(i32 noundef %57) #11
  br label %if.end52

if.end52:                                         ; preds = %if.then.i.i, %if.end.i.if.end52_crit_edge, %land.lhs.true3.i.if.end52_crit_edge, %land.lhs.true.i82.if.end52_crit_edge, %if.then51.if.end52_crit_edge, %ci_otg_is_fsm_mode.exit.if.end52_crit_edge, %land.lhs.true2.i.if.end52_crit_edge, %land.lhs.true.i81.if.end52_crit_edge, %if.then45.if.end52_crit_edge
  %call.i86 = tail call i32 @hw_read_otgsc(ptr noundef %1, i32 noundef -1) #11
  %58 = ptrtoint ptr %platdata.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %platdata.i, align 4
  %edev.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %59, i32 0, i32 17, i32 3
  %60 = ptrtoint ptr %edev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %edev.i, align 4
  %cmp.i.i = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end52.if.end.i94_crit_edge, label %land.lhs.true.i91

if.end52.if.end.i94_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i94

land.lhs.true.i91:                                ; preds = %if.end52
  %62 = ptrtoint ptr %is_otg.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %is_otg.i, align 8, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i89 = icmp eq i8 %63, 0
  %and.i = and i32 %call.i86, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %tobool.not.i89, i1 true, i1 %tobool4.not.i
  %and6.i = and i32 %call.i86, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i90 = icmp eq i32 %and6.i, 0
  %or.cond30.i = select i1 %or.cond.i, i1 true, i1 %tobool7.not.i90
  br i1 %or.cond30.i, label %land.lhs.true.i91.if.end.i94_crit_edge, label %if.then.i92

land.lhs.true.i91.if.end.i94_crit_edge:           ; preds = %land.lhs.true.i91
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i94

if.then.i92:                                      ; preds = %land.lhs.true.i91
  %64 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !190
  %and.i.i.i = and i32 %64, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then22.i.i, label %do.end11.i.i

do.end11.i.i:                                     ; preds = %if.then.i92
  call void @__sanitizer_cov_trace_pc() #13
  %65 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %irq, align 8
  %call12.i.i = tail call i32 @ci_irq_handler(i32 noundef %66, ptr noundef %1) #11
  br label %do.body24.i.i

if.then22.i.i:                                    ; preds = %if.then.i92
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  %67 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %irq, align 8
  %call1249.i.i = tail call i32 @ci_irq_handler(i32 noundef %68, ptr noundef %1) #11
  tail call void @trace_hardirqs_on() #11
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %if.then22.i.i, %do.end11.i.i
  %69 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !191
  %and.i.i.i.i = and i32 %69, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.ci_irq.exit.i_crit_edge, !prof !188

do.body24.i.i.ci_irq.exit.i_crit_edge:            ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ci_irq.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %ci_irq.exit.i

ci_irq.exit.i:                                    ; preds = %if.then36.i.i, %do.body24.i.i.ci_irq.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %64) #11, !srcloc !192
  br label %if.end.i94

if.end.i94:                                       ; preds = %ci_irq.exit.i, %land.lhs.true.i91.if.end.i94_crit_edge, %if.end52.if.end.i94_crit_edge
  %edev8.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %59, i32 0, i32 16, i32 3
  %70 = ptrtoint ptr %edev8.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %edev8.i, align 4
  %cmp.i33.i = icmp ugt ptr %71, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i33.i, label %if.end.i94.cleanup_crit_edge, label %land.lhs.true10.i

if.end.i94.cleanup_crit_edge:                     ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true10.i:                                ; preds = %if.end.i94
  %72 = ptrtoint ptr %is_otg.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %is_otg.i, align 8, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool12.not.i = icmp eq i8 %73, 0
  %and14.i = and i32 %call.i86, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  %or.cond31.i = select i1 %tobool12.not.i, i1 true, i1 %tobool15.not.i
  %and17.i = and i32 %call.i86, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  %or.cond32.i = select i1 %or.cond31.i, i1 true, i1 %tobool18.not.i
  br i1 %or.cond32.i, label %land.lhs.true10.i.cleanup_crit_edge, label %if.then19.i

land.lhs.true10.i.cleanup_crit_edge:              ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then19.i:                                      ; preds = %land.lhs.true10.i
  %74 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !190
  %and.i.i34.i = and i32 %74, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i34.i)
  %tobool.not.i35.i = icmp eq i32 %and.i.i34.i, 0
  br i1 %tobool.not.i35.i, label %if.then22.i41.i, label %do.end11.i38.i

do.end11.i38.i:                                   ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #13
  %75 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %irq, align 8
  %call12.i37.i = tail call i32 @ci_irq_handler(i32 noundef %76, ptr noundef %1) #11
  br label %do.body24.i44.i

if.then22.i41.i:                                  ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  %77 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %irq, align 8
  %call1249.i40.i = tail call i32 @ci_irq_handler(i32 noundef %78, ptr noundef %1) #11
  tail call void @trace_hardirqs_on() #11
  br label %do.body24.i44.i

do.body24.i44.i:                                  ; preds = %if.then22.i41.i, %do.end11.i38.i
  %79 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !191
  %and.i.i.i42.i = and i32 %79, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i42.i)
  %tobool32.not.i43.i = icmp eq i32 %and.i.i.i42.i, 0
  br i1 %tobool32.not.i43.i, label %if.then36.i45.i, label %do.body24.i44.i.ci_irq.exit46.i_crit_edge, !prof !188

do.body24.i44.i.ci_irq.exit46.i_crit_edge:        ; preds = %do.body24.i44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ci_irq.exit46.i

if.then36.i45.i:                                  ; preds = %do.body24.i44.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %ci_irq.exit46.i

ci_irq.exit46.i:                                  ; preds = %if.then36.i45.i, %do.body24.i44.i.ci_irq.exit46.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %74) #11, !srcloc !192
  br label %cleanup

cleanup:                                          ; preds = %ci_irq.exit46.i, %land.lhs.true10.i.cleanup_crit_edge, %if.end.i94.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %do.end17
  %retval.0 = phi i32 [ 0, %do.end17 ], [ %call32, %if.end31.cleanup_crit_edge ], [ 0, %if.end42.cleanup_crit_edge ], [ 0, %if.end.i94.cleanup_crit_edge ], [ 0, %land.lhs.true10.i.cleanup_crit_edge ], [ 0, %ci_irq.exit46.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ci_ulpi_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !37, !39, !41, !43, !44, !45, !46, !48, !50, !52, !54, !55, !56, !58, !60, !61, !62, !64, !66, !67, !68, !70, !72, !74, !76, !78, !80, !82, !84, !85, !87, !89, !90, !91, !92, !94, !95, !97, !98, !99, !101, !103, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !136, !138, !139, !140, !142, !143, !144, !145, !147, !148, !149, !151, !152, !154, !156, !157, !159, !161, !162, !163, !164, !165, !167, !169, !170, !171, !173}
!llvm.module.flags = !{!174, !175, !176, !177, !178, !179, !180, !181}
!llvm.ident = !{!182}

!0 = !{ptr @__ksymtab_hw_phymode_configure, !1, !"__ksymtab_hw_phymode_configure", i1 false, i1 false}
!1 = !{!"../drivers/usb/chipidea/core.c", i32 307, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/usb/chipidea/core.c", i32 488, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @hw_device_reset._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @hw_device_reset._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/chipidea/core.c", i32 506, i32 3}
!12 = !{ptr @hw_device_reset._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @hw_device_reset._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/chipidea/core.c", i32 508, i32 3}
!16 = !{ptr @hw_device_reset._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @hw_device_reset._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/chipidea/core.c", i32 860, i32 31}
!20 = !{ptr @__ksymtab_ci_hdrc_add_device, !21, !"__ksymtab_ci_hdrc_add_device", i1 false, i1 false}
!21 = !{!"../drivers/usb/chipidea/core.c", i32 889, i32 1}
!22 = !{ptr @__ksymtab_ci_hdrc_remove_device, !23, !"__ksymtab_ci_hdrc_remove_device", i1 false, i1 false}
!23 = !{!"../drivers/usb/chipidea/core.c", i32 897, i32 1}
!24 = !{ptr @__ksymtab_ci_hdrc_query_available_role, !25, !"__ksymtab_ci_hdrc_query_available_role", i1 false, i1 false}
!25 = !{!"../drivers/usb/chipidea/core.c", i32 924, i32 1}
!26 = !{ptr @__initcall__kmod_ci_hdrc__299_1455_ci_hdrc_platform_register6, !27, !"__initcall__kmod_ci_hdrc__299_1455_ci_hdrc_platform_register6", i1 false, i1 false}
!27 = !{!"../drivers/usb/chipidea/core.c", i32 1455, i32 1}
!28 = !{ptr @__exitcall_ci_hdrc_platform_unregister, !29, !"__exitcall_ci_hdrc_platform_unregister", i1 false, i1 false}
!29 = !{!"../drivers/usb/chipidea/core.c", i32 1461, i32 1}
!30 = !{ptr @__UNIQUE_ID_alias300, !31, !"__UNIQUE_ID_alias300", i1 false, i1 false}
!31 = !{!"../drivers/usb/chipidea/core.c", i32 1463, i32 1}
!32 = !{ptr @__UNIQUE_ID_file301, !33, !"__UNIQUE_ID_file301", i1 false, i1 false}
!33 = !{!"../drivers/usb/chipidea/core.c", i32 1464, i32 1}
!34 = !{ptr @__UNIQUE_ID_license302, !33, !"__UNIQUE_ID_license302", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_author303, !36, !"__UNIQUE_ID_author303", i1 false, i1 false}
!36 = !{!"../drivers/usb/chipidea/core.c", i32 1465, i32 1}
!37 = !{ptr @__UNIQUE_ID_description304, !38, !"__UNIQUE_ID_description304", i1 false, i1 false}
!38 = !{!"../drivers/usb/chipidea/core.c", i32 1466, i32 1}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/chipidea/core.c", i32 679, i32 57}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/chipidea/core.c", i32 686, i32 4}
!43 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @ci_get_platdata._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @ci_get_platdata._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/chipidea/core.c", i32 712, i32 37}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/chipidea/core.c", i32 717, i32 37}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/chipidea/core.c", i32 720, i32 43}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/chipidea/core.c", i32 725, i32 3}
!54 = !{ptr @ci_get_platdata._entry.18, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @ci_get_platdata._entry_ptr.20, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/chipidea/core.c", i32 729, i32 43}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/chipidea/core.c", i32 734, i32 3}
!60 = !{ptr @ci_get_platdata._entry.22, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @ci_get_platdata._entry_ptr.24, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/chipidea/core.c", i32 738, i32 43}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/chipidea/core.c", i32 743, i32 3}
!66 = !{ptr @ci_get_platdata._entry.26, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @ci_get_platdata._entry_ptr.28, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/chipidea/core.c", i32 747, i32 37}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/chipidea/core.c", i32 752, i32 42}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/chipidea/core.c", i32 787, i32 37}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/chipidea/core.c", i32 794, i32 44}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/chipidea/core.c", i32 798, i32 44}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/chipidea/core.c", i32 802, i32 44}
!80 = !{ptr @ci_role_switch, !81, !"ci_role_switch", i1 false, i1 false}
!81 = !{!"../drivers/usb/chipidea/core.c", i32 655, i32 36}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/chipidea/core.c", i32 843, i32 8}
!84 = !{ptr @ci_ida, !83, !"ci_ida", i1 false, i1 false}
!85 = !{ptr @ci_hdrc_driver, !86, !"ci_hdrc_driver", i1 false, i1 false}
!86 = !{!"../drivers/usb/chipidea/core.c", i32 1440, i32 31}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/chipidea/core.c", i32 1010, i32 3}
!89 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @ci_hdrc_probe._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @ci_hdrc_probe._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @ci_hdrc_probe.__key, !93, !"__key", i1 false, i1 false}
!93 = !{!"../drivers/usb/chipidea/core.c", i32 1023, i32 2}
!94 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/chipidea/core.c", i32 1034, i32 3}
!97 = !{ptr @ci_hdrc_probe._entry.39, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @ci_hdrc_probe._entry_ptr.41, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/chipidea/core.c", i32 1048, i32 39}
!101 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/usb/chipidea/core.c", i32 1060, i32 11}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/usb/chipidea/core.c", i32 1092, i32 3}
!105 = !{ptr @ci_hdrc_probe._entry.44, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @ci_hdrc_probe._entry_ptr.46, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/usb/chipidea/core.c", i32 1112, i32 5}
!109 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @ci_hdrc_probe._entry.47, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @ci_hdrc_probe._entry_ptr.50, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/chipidea/core.c", i32 1122, i32 5}
!114 = !{ptr @ci_hdrc_probe._entry.51, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @ci_hdrc_probe._entry_ptr.53, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/chipidea/core.c", i32 1129, i32 3}
!118 = !{ptr @ci_hdrc_probe._entry.54, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @ci_hdrc_probe._entry_ptr.56, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/chipidea/core.c", i32 1137, i32 4}
!122 = !{ptr @ci_hdrc_probe._entry.57, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @ci_hdrc_probe._entry_ptr.59, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/usb/chipidea/core.c", i32 1181, i32 4}
!126 = !{ptr @ci_hdrc_probe._entry.60, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @ci_hdrc_probe._entry_ptr.62, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/usb/chipidea/core.c", i32 254, i32 2}
!130 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @hw_device_init.__UNIQUE_ID_ddebug295, !129, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!132 = distinct !{null, !133, !"ci_regs_lpm", i1 false, i1 false}
!133 = !{!"../drivers/usb/chipidea/core.c", i32 73, i32 17}
!134 = distinct !{null, !135, !"ci_regs_nolpm", i1 false, i1 false}
!135 = !{!"../drivers/usb/chipidea/core.c", i32 48, i32 17}
!136 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/usb/chipidea/core.c", i32 943, i32 3}
!138 = !{ptr @.str.66, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @ci_get_otg_capable.__UNIQUE_ID_ddebug296, !137, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!140 = !{ptr @.str.67, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/usb/chipidea/core.c", i32 824, i32 4}
!142 = !{ptr @.str.68, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @ci_extcon_register._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @ci_extcon_register._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.70, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/usb/chipidea/core.c", i32 835, i32 4}
!147 = !{ptr @ci_extcon_register._entry.69, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @ci_extcon_register._entry_ptr.71, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @ci_groups, !150, !"ci_groups", i1 false, i1 false}
!150 = !{!"../drivers/usb/chipidea/core.c", i32 998, i32 1}
!151 = !{ptr @ci_group, !150, !"ci_group", i1 false, i1 false}
!152 = !{ptr @ci_attrs, !153, !"ci_attrs", i1 false, i1 false}
!153 = !{!"../drivers/usb/chipidea/core.c", i32 994, i32 26}
!154 = !{ptr @.str.72, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/usb/chipidea/core.c", i32 992, i32 8}
!156 = !{ptr @dev_attr_role, !155, !"dev_attr_role", i1 false, i1 false}
!157 = !{ptr @.str.73, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/usb/chipidea/core.c", i32 956, i32 23}
!159 = !{ptr @.str.74, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/usb/chipidea/core.c", i32 969, i32 3}
!161 = !{ptr @.str.75, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.76, !160, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @role_store._entry, !160, !"_entry", i1 false, i1 false}
!164 = !{ptr @role_store._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @ci_pm_ops, !166, !"ci_pm_ops", i1 false, i1 false}
!166 = !{!"../drivers/usb/chipidea/core.c", i32 1435, i32 32}
!167 = !{ptr @.str.77, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/usb/chipidea/core.c", i32 1320, i32 2}
!169 = !{ptr @.str.78, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @ci_controller_resume.__UNIQUE_ID_ddebug297, !168, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!171 = !{ptr @.str.79, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/usb/chipidea/core.c", i32 1413, i32 2}
!173 = !{ptr @ci_runtime_suspend.__UNIQUE_ID_ddebug298, !172, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!174 = !{i32 1, !"wchar_size", i32 2}
!175 = !{i32 1, !"min_enum_size", i32 4}
!176 = !{i32 8, !"branch-target-enforcement", i32 0}
!177 = !{i32 8, !"sign-return-address", i32 0}
!178 = !{i32 8, !"sign-return-address-all", i32 0}
!179 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!180 = !{i32 7, !"uwtable", i32 1}
!181 = !{i32 7, !"frame-pointer", i32 2}
!182 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!183 = !{i64 6257364}
!184 = !{i64 2153797713}
!185 = !{i8 0, i8 2}
!186 = !{i64 2153799068}
!187 = !{i64 6256946}
!188 = !{!"branch_weights", i32 1, i32 2000}
!189 = !{i64 2155385986, i64 2155386476, i64 2155386023, i64 2155386079, i64 2155386113, i64 2155386137, i64 2155386178, i64 2155386199, i64 2155386227, i64 2155386261}
!190 = !{i64 613966, i64 614027}
!191 = !{i64 616698}
!192 = !{i64 616983}
!193 = !{i64 2148789150, i64 2148789155, i64 2148789168, i64 2148789212, i64 2148789246, i64 2148789267}
!194 = !{i64 2148220904}
!195 = !{i64 705727, i64 705752, i64 705774, i64 705790, i64 705802, i64 705822, i64 705846, i64 705862, i64 705874}
!196 = !{i64 2148221092}
