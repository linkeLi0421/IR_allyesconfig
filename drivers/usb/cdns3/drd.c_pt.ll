; ModuleID = '/llk/IR_all_yes/drivers/usb/cdns3/drd.c_pt.bc'
source_filename = "../drivers/usb/cdns3/drd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+cdns_clear_vbus\22, \22a\22\09"
module asm "\09.weak\09__crc_cdns_clear_vbus\09\09\09\09"
module asm "\09.long\09__crc_cdns_clear_vbus\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cdns_clear_vbus:\09\09\09\09\09"
module asm "\09.asciz \09\22cdns_clear_vbus\22\09\09\09\09\09"
module asm "__kstrtabns_cdns_clear_vbus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cdns_set_vbus\22, \22a\22\09"
module asm "\09.weak\09__crc_cdns_set_vbus\09\09\09\09"
module asm "\09.long\09__crc_cdns_set_vbus\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cdns_set_vbus:\09\09\09\09\09"
module asm "\09.asciz \09\22cdns_set_vbus\22\09\09\09\09\09"
module asm "__kstrtabns_cdns_set_vbus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cdns_drd_gadget_on\22, \22a\22\09"
module asm "\09.weak\09__crc_cdns_drd_gadget_on\09\09\09\09"
module asm "\09.long\09__crc_cdns_drd_gadget_on\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cdns_drd_gadget_on:\09\09\09\09\09"
module asm "\09.asciz \09\22cdns_drd_gadget_on\22\09\09\09\09\09"
module asm "__kstrtabns_cdns_drd_gadget_on:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cdns_drd_gadget_off\22, \22a\22\09"
module asm "\09.weak\09__crc_cdns_drd_gadget_off\09\09\09\09"
module asm "\09.long\09__crc_cdns_drd_gadget_off\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cdns_drd_gadget_off:\09\09\09\09\09"
module asm "\09.asciz \09\22cdns_drd_gadget_off\22\09\09\09\09\09"
module asm "__kstrtabns_cdns_drd_gadget_off:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cdns_power_is_lost\22, \22a\22\09"
module asm "\09.weak\09__crc_cdns_power_is_lost\09\09\09\09"
module asm "\09.long\09__crc_cdns_power_is_lost\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cdns_power_is_lost:\09\09\09\09\09"
module asm "\09.asciz \09\22cdns_power_is_lost\22\09\09\09\09\09"
module asm "__kstrtabns_cdns_power_is_lost:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cdns = type { ptr, ptr, [2 x %struct.resource], ptr, %struct.resource, ptr, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, [3 x ptr], i32, ptr, ptr, ptr, ptr, %struct.mutex, i32, ptr, i8, i8, ptr, %struct.spinlock, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.cdns_otg_common_regs = type { i32, i32, i32 }
%struct.cdnsp_otg_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cdns_otg_irq_regs = type { i32, i32 }
%struct.cdns3_otg_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cdns3_otg_legacy_regs = type { i32, i32, i32, i32, i32, i32, [3 x i32], i32, [2 x i32], i32, i32, [2 x i32], i32, [5 x i32], i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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

@cdns_get_id.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cdns_usb_common\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cdns_get_id\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/usb/cdns3/drd.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"OTG ID: %d\00", [21 x i8] zeroinitializer }, align 32
@cdns_get_vbus.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cdns_get_vbus\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"OTG VBUS: %d\00", [19 x i8] zeroinitializer }, align 32
@__kstrtab_cdns_clear_vbus = external dso_local constant [0 x i8], align 1
@__kstrtabns_cdns_clear_vbus = external dso_local constant [0 x i8], align 1
@__ksymtab_cdns_clear_vbus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cdns_clear_vbus to i32), ptr @__kstrtab_cdns_clear_vbus, ptr @__kstrtabns_cdns_clear_vbus }, section "___ksymtab_gpl+cdns_clear_vbus", align 4
@__kstrtab_cdns_set_vbus = external dso_local constant [0 x i8], align 1
@__kstrtabns_cdns_set_vbus = external dso_local constant [0 x i8], align 1
@__ksymtab_cdns_set_vbus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cdns_set_vbus to i32), ptr @__kstrtab_cdns_set_vbus, ptr @__kstrtabns_cdns_set_vbus }, section "___ksymtab_gpl+cdns_set_vbus", align 4
@cdns_drd_host_on.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cdns_drd_host_on\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Waiting till Host mode is turned on\0A\00", [59 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cdns_drd_host_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 197, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"timeout waiting for xhci_ready\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cdns_drd_host_on._entry_ptr = internal global ptr @cdns_drd_host_on._entry, section ".printk_index", align 4
@cdns_drd_gadget_on.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cdns_drd_gadget_on\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Waiting till Device mode is turned on\0A\00", [57 x i8] zeroinitializer }, align 32
@cdns_drd_gadget_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 247, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"timeout waiting for dev_ready\0A\00", [33 x i8] zeroinitializer }, align 32
@cdns_drd_gadget_on._entry_ptr = internal global ptr @cdns_drd_gadget_on._entry, section ".printk_index", align 4
@__kstrtab_cdns_drd_gadget_on = external dso_local constant [0 x i8], align 1
@__kstrtabns_cdns_drd_gadget_on = external dso_local constant [0 x i8], align 1
@__ksymtab_cdns_drd_gadget_on = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cdns_drd_gadget_on to i32), ptr @__kstrtab_cdns_drd_gadget_on, ptr @__kstrtabns_cdns_drd_gadget_on }, section "___ksymtab_gpl+cdns_drd_gadget_on", align 4
@__kstrtab_cdns_drd_gadget_off = external dso_local constant [0 x i8], align 1
@__kstrtabns_cdns_drd_gadget_off = external dso_local constant [0 x i8], align 1
@__ksymtab_cdns_drd_gadget_off = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cdns_drd_gadget_off to i32), ptr @__kstrtab_cdns_drd_gadget_off, ptr @__kstrtabns_cdns_drd_gadget_off }, section "___ksymtab_gpl+cdns_drd_gadget_off", align 4
@cdns_drd_update_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 325, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unsupported mode of operation %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cdns_drd_update_mode\00", [43 x i8] zeroinitializer }, align 32
@cdns_drd_update_mode._entry_ptr = internal global ptr @cdns_drd_update_mode._entry, section ".printk_index", align 4
@cdns_drd_init.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cdns_drd_init\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DRD version v0 (%08x)\0A\00", [41 x i8] zeroinitializer }, align 32
@cdns_drd_init.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.18, i8 0, i8 108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"DRD version v1 (ID: %08x, rev: %08x)\0A\00", [58 x i8] zeroinitializer }, align 32
@cdns_drd_init.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.19, i8 0, i8 111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Controller strapped to HOST\0A\00", [35 x i8] zeroinitializer }, align 32
@cdns_drd_init.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.20, i8 0, i8 113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Controller strapped to PERIPHERAL\0A\00", [61 x i8] zeroinitializer }, align 32
@cdns_drd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.2, i32 462, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"couldn't get otg_irq\0A\00", [42 x i8] zeroinitializer }, align 32
@cdns_drd_init._entry_ptr = internal global ptr @cdns_drd_init._entry, section ".printk_index", align 4
@cdns_drd_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.16, ptr @.str.2, i32 468, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Cadence USB3 OTG device not ready\0A\00", [61 x i8] zeroinitializer }, align 32
@cdns_drd_init._entry_ptr.24 = internal global ptr @cdns_drd_init._entry.22, section ".printk_index", align 4
@__kstrtab_cdns_power_is_lost = external dso_local constant [0 x i8], align 1
@__kstrtabns_cdns_power_is_lost = external dso_local constant [0 x i8], align 1
@__ksymtab_cdns_power_is_lost = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cdns_power_is_lost to i32), ptr @__kstrtab_cdns_power_is_lost, ptr @__kstrtabns_cdns_power_is_lost }, section "___ksymtab_gpl+cdns_power_is_lost", align 4
@cdns_set_mode.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cdns_set_mode\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Set controller to OTG mode\0A\00", [36 x i8] zeroinitializer }, align 32
@cdns_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.25, ptr @.str.2, i32 79, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@cdns_set_mode._entry_ptr = internal global ptr @cdns_set_mode._entry, section ".printk_index", align 4
@cdns_drd_irq.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cdns_drd_irq\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"OTG IRQ: new ID: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@cdns_drd_irq.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.29, i8 0, i8 93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"OTG IRQ: new VBUS: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 91, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 101, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 192, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 197, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 237, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 247, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 324, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 412, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 432, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 446, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 452, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 462, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 468, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 39, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 79, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 367, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.133 = private constant [27 x i8] c"../drivers/usb/cdns3/drd.c\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 374, i32 3 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__ksymtab_cdns_clear_vbus, ptr @__ksymtab_cdns_drd_gadget_off, ptr @__ksymtab_cdns_drd_gadget_on, ptr @__ksymtab_cdns_power_is_lost, ptr @__ksymtab_cdns_set_vbus, ptr @cdns_drd_gadget_on._entry, ptr @cdns_drd_gadget_on._entry_ptr, ptr @cdns_drd_host_on._entry, ptr @cdns_drd_host_on._entry_ptr, ptr @cdns_drd_init._entry, ptr @cdns_drd_init._entry.22, ptr @cdns_drd_init._entry_ptr, ptr @cdns_drd_init._entry_ptr.24, ptr @cdns_drd_update_mode._entry, ptr @cdns_drd_update_mode._entry_ptr, ptr @cdns_set_mode._entry, ptr @cdns_set_mode._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_drd_host_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_drd_gadget_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_drd_update_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_drd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_drd_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdns_get_id(ptr nocapture noundef readonly %cdns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %otg_regs = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 8
  %0 = ptrtoint ptr %otg_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %otg_regs, align 4
  %sts = getelementptr inbounds %struct.cdns_otg_common_regs, ptr %1, i32 0, i32 1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sts) #4, !srcloc !87
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !88
  %and = and i32 %3, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_get_id.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_get_id, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !89

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cdns, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_get_id.__UNIQUE_ID_ddebug294, ptr noundef %5, ptr noundef nonnull @.str.3, i32 noundef %and) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 %and
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdns_get_vbus(ptr nocapture noundef readonly %cdns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %otg_regs = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 8
  %0 = ptrtoint ptr %otg_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %otg_regs, align 4
  %sts = getelementptr inbounds %struct.cdns_otg_common_regs, ptr %1, i32 0, i32 1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sts) #4, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !90
  %3 = lshr i32 %2, 25
  %.lobit = and i32 %3, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_get_vbus.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_get_vbus, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !89

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cdns, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_get_vbus.__UNIQUE_ID_ddebug295, ptr noundef %5, ptr noundef nonnull @.str.5, i32 noundef %.lobit) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 %.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cdns_clear_vbus(ptr nocapture noundef readonly %cdns) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %version = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 10
  %0 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %otg_cdnsp_regs = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 7
  %2 = ptrtoint ptr %otg_cdnsp_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %otg_cdnsp_regs, align 4
  %override = getelementptr inbounds %struct.cdnsp_otg_regs, ptr %3, i32 0, i32 15
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %override) #4, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !91
  %5 = or i32 %4, 262144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !92
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %otg_cdnsp_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %otg_cdnsp_regs, align 4
  %override3 = getelementptr inbounds %struct.cdnsp_otg_regs, ptr %7, i32 0, i32 15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %override3, i32 %5) #4, !srcloc !93
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cdns_set_vbus(ptr nocapture noundef readonly %cdns) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %version = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 10
  %0 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %otg_cdnsp_regs = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 7
  %2 = ptrtoint ptr %otg_cdnsp_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %otg_cdnsp_regs, align 4
  %override = getelementptr inbounds %struct.cdnsp_otg_regs, ptr %3, i32 0, i32 15
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %override) #4, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !94
  %5 = and i32 %4, -262145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !95
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %otg_cdnsp_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %otg_cdnsp_regs, align 4
  %override3 = getelementptr inbounds %struct.cdnsp_otg_regs, ptr %7, i32 0, i32 15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %override3, i32 %5) #4, !srcloc !93
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @cdns_is_host(ptr nocapture noundef readonly %cdns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dr_mode = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 22
  %0 = ptrtoint ptr %dr_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.else

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.else:                                          ; preds = %entry
  %otg_regs.i = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 8
  %2 = ptrtoint ptr %otg_regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %otg_regs.i, align 4
  %sts.i = getelementptr inbounds %struct.cdns_otg_common_regs, ptr %3, i32 0, i32 1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sts.i) #4, !srcloc !87
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !88
  %and.i = and i32 %5, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_get_id.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_is_host, %if.then.i)) #4
          to label %cdns_get_id.exit [label %if.then.i], !srcloc !89

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cdns, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_get_id.__UNIQUE_ID_ddebug294, ptr noundef %7, ptr noundef nonnull @.str.3, i32 noundef %and.i) #4
  br label %cdns_get_id.exit

cdns_get_id.exit:                                 ; preds = %if.then.i, %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp1 = icmp eq i32 %and.i, 0
  br label %return

return:                                           ; preds = %cdns_get_id.exit, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %entry.return_crit_edge ], [ %cmp1, %cdns_get_id.exit ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @cdns_is_device(ptr nocapture noundef readonly %cdns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dr_mode = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 22
  %0 = ptrtoint ptr %dr_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dr_mode, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.if.end7_crit_edge [
    i32 2, label %entry.return_crit_edge
    i32 3, label %if.then3
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then3:                                         ; preds = %entry
  %otg_regs.i = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 8
  %3 = ptrtoint ptr %otg_regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %otg_regs.i, align 4
  %sts.i = getelementptr inbounds %struct.cdns_otg_common_regs, ptr %4, i32 0, i32 1
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sts.i) #4, !srcloc !87
  %6 = lshr i32 %5, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !88
  %and.i = and i32 %6, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_get_id.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_is_device, %if.then.i)) #4
          to label %cdns_get_id.exit [label %if.then.i], !srcloc !89

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cdns, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_get_id.__UNIQUE_ID_ddebug294, ptr noundef %8, ptr noundef nonnull @.str.3, i32 noundef %and.i) #4
  br label %cdns_get_id.exit

cdns_get_id.exit:                                 ; preds = %if.then.i, %if.then3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp4.not = icmp eq i32 %and.i, 0
  br i1 %cmp4.not, label %cdns_get_id.exit.if.end7_crit_edge, label %cdns_get_id.exit.return_crit_edge

cdns_get_id.exit.return_crit_edge:                ; preds = %cdns_get_id.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

cdns_get_id.exit.if.end7_crit_edge:               ; preds = %cdns_get_id.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.end7:                                          ; preds = %cdns_get_id.exit.if.end7_crit_edge, %entry.if.end7_crit_edge
  br label %return

return:                                           ; preds = %if.end7, %cdns_get_id.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %if.end7 ], [ true, %entry.return_crit_edge ], [ true, %cdns_get_id.exit.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdns_drd_host_on(ptr nocapture noundef readonly %cdns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !96
  tail call void @arm_heavy_mb() #4
  %otg_regs = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 8
  %0 = ptrtoint ptr %otg_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %otg_regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 167772160) #4, !srcloc !93
  %version = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 10
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  %. = select i1 %cmp, i32 134217728, i32 67108864
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_drd_host_on.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_drd_host_on, %if.then4)) #4
          to label %do.end7 [label %if.then4], !srcloc !89

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cdns, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_drd_host_on.__UNIQUE_ID_ddebug296, ptr noundef %5, ptr noundef nonnull @.str.7) #4
  br label %do.end7

do.end7:                                          ; preds = %if.then4, %entry
  %call8 = tail call i64 @ktime_get() #4
  %add.i = add i64 %call8, 100000000
  %6 = ptrtoint ptr %otg_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %otg_regs, align 4
  %sts65 = getelementptr inbounds %struct.cdns_otg_common_regs, ptr %7, i32 0, i32 1
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sts65) #4, !srcloc !87
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !97
  %and66 = and i32 %9, %.
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool14.not67 = icmp eq i32 %and66, 0
  br i1 %tobool14.not67, label %do.end7.land.lhs.true_crit_edge, label %do.end7.for.end_crit_edge

do.end7.for.end_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

do.end7.land.lhs.true_crit_edge:                  ; preds = %do.end7
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %do.end7.land.lhs.true_crit_edge
  %call18 = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call18, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call18, %add.i
  br i1 %cmp3.i, label %if.then21, label %cond.false

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %otg_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %otg_regs, align 4
  %sts25 = getelementptr inbounds %struct.cdns_otg_common_regs, ptr %11, i32 0, i32 1
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sts25) #4, !srcloc !87
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !98
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #4
  %15 = ptrtoint ptr %otg_regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %otg_regs, align 4
  %sts = getelementptr inbounds %struct.cdns_otg_common_regs, ptr %16, i32 0, i32 1
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sts) #4, !srcloc !87
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !97
  %and = and i32 %18, %.
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %cond.false.land.lhs.true_crit_edge, label %cond.false.for.end_crit_edge

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then21, %do.end7.for.end_crit_edge
  %val.0 = phi i32 [ %13, %if.then21 ], [ %9, %do.end7.for.end_crit_edge ], [ %18, %cond.false.for.end_crit_edge ]
  %and38 = and i32 %val.0, %.
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.end44, label %for.end.if.end46_crit_edge

for.end.if.end46_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

do.end44:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cdns, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.8) #7
  br label %if.end46

if.end46:                                         ; preds = %do.end44, %for.end.if.end46_crit_edge
  %cond = phi i32 [ -110, %do.end44 ], [ 0, %for.end.if.end46_crit_edge ]
  %usb3_phy = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 20
  %21 = ptrtoint ptr %usb3_phy to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %usb3_phy, align 4
  %call47 = tail call i32 @phy_set_mode_ext(ptr noundef %22, i32 noundef 1, i32 noundef 0) #4
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_mode_ext(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cdns_drd_host_off(ptr nocapture noundef readonly %cdns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !99
  tail call void @arm_heavy_mb() #4
  %otg_regs = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 8
  %0 = ptrtoint ptr %otg_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %otg_regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 1769472) #4, !srcloc !93
  %call = tail call i64 @ktime_get() #4
  %add.i = add i64 %call, 2000000000
  %2 = ptrtoint ptr %otg_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %otg_regs, align 4
  %state37 = getelementptr inbounds %struct.cdns_otg_common_regs, ptr %3, i32 0, i32 2
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %state37) #4, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !100
  %5 = and i32 %4, 939524096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not38 = icmp eq i32 %5, 0
  br i1 %tobool.not38, label %entry.for.end_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call6 = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call6, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call6, %add.i
  br i1 %cmp3.i, label %if.then8, label %cond.false

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %otg_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %otg_regs, align 4
  %state12 = getelementptr inbounds %struct.cdns_otg_common_regs, ptr %7, i32 0, i32 2
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %state12) #4, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !101
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #4
  %10 = ptrtoint ptr %otg_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %otg_regs, align 4
  %state = getelementptr inbounds %struct.cdns_otg_common_regs, ptr %11, i32 0, i32 2
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %state) #4, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !100
  %13 = and i32 %12, 939524096
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %cond.false.for.end_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then8, %entry.for.end_crit_edge
  %usb3_phy = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 20
  %14 = ptrtoint ptr %usb3_phy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb3_phy, align 4
  %call27 = tail call i32 @phy_set_mode_ext(ptr noundef %15, i32 noundef 0, i32 noundef 0) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdns_drd_gadget_on(ptr nocapture noundef readonly %cdns) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !102
  tail call void @arm_heavy_mb() #4
  %otg_regs = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 8
  %0 = ptrtoint ptr %otg_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %otg_regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 150994944) #4, !srcloc !93
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_drd_gadget_on.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_drd_gadget_on, %if.then)) #4
          to label %do.end5 [label %if.then], !srcloc !89

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdns, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_drd_gadget_on.__UNIQUE_ID_ddebug297, ptr noundef %3, ptr noundef nonnull @.str.12) #4
  br label %do.end5

do.end5:                                          ; preds = %if.then, %entry
  %version = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 10
  %4 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  %. = select i1 %cmp, i32 67108864, i32 134217728
  %call8 = tail call i64 @ktime_get() #4
  %add.i = add i64 %call8, 100000000
  %6 = ptrtoint ptr %otg_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %otg_regs, align 4
  %sts68 = getelementptr inbounds %struct.cdns_otg_common_regs, ptr %7, i32 0, i32 1
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sts68) #4, !srcloc !87
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !103
  %and69 = and i32 %9, %.
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool14.not70 = icmp eq i32 %and69, 0
  br i1 %tobool14.not70, label %do.end5.land.lhs.true_crit_edge, label %do.end5.for.end_crit_edge

do.end5.for.end_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

do.end5.land.lhs.true_crit_edge:                  ; preds = %do.end5
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %do.end5.land.lhs.true_crit_edge
  %call18 = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call18, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call18, %add.i
  br i1 %cmp3.i, label %if.then21, label %cond.false

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %otg_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %otg_regs, align 4
  %sts25 = getelementptr inbounds %struct.cdns_otg_common_regs, ptr %11, i32 0, i32 1
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sts25) #4, !srcloc !87
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !104
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #4
  %15 = ptrtoint ptr %otg_regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %otg_regs, align 4
  %sts = getelementptr inbounds %struct.cdns_otg_common_regs, ptr %16, i32 0, i32 1
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sts) #4, !srcloc !87
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !103
  %and = and i32 %18, %.
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %cond.false.land.lhs.true_crit_edge, label %cond.false.for.end_crit_edge

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then21, %do.end5.for.end_crit_edge
  %val.0 = phi i32 [ %13, %if.then21 ], [ %9, %do.end5.for.end_crit_edge ], [ %18, %cond.false.for.end_crit_edge ]
  %and38 = and i32 %val.0, %.
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.end44, label %if.end46

do.end44:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cdns, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.13) #7
  br label %cleanup

if.end46:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %usb3_phy = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 20
  %21 = ptrtoint ptr %usb3_phy to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %usb3_phy, align 4
  %call47 = tail call i32 @phy_set_mode_ext(ptr noundef %22, i32 noundef 6, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %do.end44
  %retval.0 = phi i32 [ -110, %do.end44 ], [ 0, %if.end46 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cdns_drd_gadget_off(ptr nocapture noundef readonly %cdns) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 30, i32 noundef 2) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !105
  tail call void @arm_heavy_mb() #4
  %otg_regs = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 8
  %0 = ptrtoint ptr %otg_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %otg_regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 1769472) #4, !srcloc !93
  %call = tail call i64 @ktime_get() #4
  %add.i = add i64 %call, 2000000000
  %2 = ptrtoint ptr %otg_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %otg_regs, align 4
  %state37 = getelementptr inbounds %struct.cdns_otg_common_regs, ptr %3, i32 0, i32 2
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %state37) #4, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !106
  %5 = and i32 %4, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not38 = icmp eq i32 %5, 0
  br i1 %tobool.not38, label %entry.for.end_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call6 = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call6, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call6, %add.i
  br i1 %cmp3.i, label %if.then8, label %cond.false

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %otg_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %otg_regs, align 4
  %state12 = getelementptr inbounds %struct.cdns_otg_common_regs, ptr %7, i32 0, i32 2
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %state12) #4, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !107
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #4
  %10 = ptrtoint ptr %otg_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %otg_regs, align 4
  %state = getelementptr inbounds %struct.cdns_otg_common_regs, ptr %11, i32 0, i32 2
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %state) #4, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !106
  %13 = and i32 %12, 117440512
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %cond.false.for.end_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then8, %entry.for.end_crit_edge
  %usb3_phy = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 20
  %14 = ptrtoint ptr %usb3_phy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb3_phy, align 4
  %call27 = tail call i32 @phy_set_mode_ext(ptr noundef %15, i32 noundef 0, i32 noundef 0) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdns_drd_update_mode(ptr nocapture noundef readonly %cdns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dr_mode = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 22
  %0 = ptrtoint ptr %dr_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dr_mode, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %1, label %do.end [
    i32 2, label %entry.cleanup_crit_edge
    i32 1, label %entry.cleanup_crit_edge11
    i32 3, label %sw.bb3
  ]

entry.cleanup_crit_edge11:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !108
  tail call void @arm_heavy_mb() #4
  %otg_irq_regs.i.i = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 9
  %3 = ptrtoint ptr %otg_irq_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %otg_irq_regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #4, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !109
  tail call void @arm_heavy_mb() #4
  %5 = ptrtoint ptr %otg_irq_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %otg_irq_regs.i.i, align 4
  %ivect.i = getelementptr inbounds %struct.cdns_otg_irq_regs, ptr %6, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ivect.i, i32 -1) #4, !srcloc !93
  %call.i = tail call fastcc i32 @cdns_set_mode(ptr noundef %cdns, i32 noundef 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !110
  tail call void @arm_heavy_mb() #4
  %7 = ptrtoint ptr %otg_irq_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %otg_irq_regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 822083584) #4, !srcloc !93
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cdns, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.14, i32 noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.i, %sw.bb3.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge11
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge11 ], [ %call.i, %sw.bb3.cleanup_crit_edge ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_set_mode(ptr nocapture noundef readonly %cdns, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %mode, label %do.end44 [
    i32 2, label %entry.cleanup_crit_edge
    i32 1, label %entry.cleanup_crit_edge65
    i32 3, label %do.body
  ]

entry.cleanup_crit_edge65:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_set_mode.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_set_mode, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !89

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cdns, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_set_mode.__UNIQUE_ID_ddebug293, ptr noundef %2, ptr noundef nonnull @.str.26) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %version = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 10
  %3 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %version, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %4, label %if.else8 [
    i32 2, label %if.then3
    i32 1, label %if.then6
  ]

if.then3:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %otg_cdnsp_regs = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 7
  %6 = ptrtoint ptr %otg_cdnsp_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %otg_cdnsp_regs, align 4
  %override = getelementptr inbounds %struct.cdnsp_otg_regs, ptr %7, i32 0, i32 15
  br label %if.end10

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %otg_v1_regs = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 6
  %8 = ptrtoint ptr %otg_v1_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %otg_v1_regs, align 4
  %override7 = getelementptr inbounds %struct.cdns3_otg_regs, ptr %9, i32 0, i32 14
  br label %if.end10

if.else8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %otg_v0_regs = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 5
  %10 = ptrtoint ptr %otg_v0_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %otg_v0_regs, align 4
  %ctrl1 = getelementptr inbounds %struct.cdns3_otg_legacy_regs, ptr %11, i32 0, i32 14
  br label %if.end10

if.end10:                                         ; preds = %if.else8, %if.then6, %if.then3
  %override_reg.0 = phi ptr [ %override, %if.then3 ], [ %override7, %if.then6 ], [ %ctrl1, %if.else8 ]
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %override_reg.0) #4, !srcloc !87
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !111
  %14 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp15.not = icmp eq i32 %15, 0
  %reg.0.v = select i1 %cmp15.not, i32 16777216, i32 1
  %reg.0 = or i32 %reg.0.v, %13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !112
  tail call void @arm_heavy_mb() #4
  %16 = tail call i32 @llvm.bswap.i32(i32 %reg.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %override_reg.0, i32 %16) #4, !srcloc !93
  %17 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp24 = icmp eq i32 %18, 1
  br i1 %cmp24, label %if.then25, label %if.end10.if.end41_crit_edge

if.end10.if.end41_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

if.then25:                                        ; preds = %if.end10
  %phyrst_a_enable = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 11
  %19 = ptrtoint ptr %phyrst_a_enable to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %phyrst_a_enable, align 4, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool26.not = icmp eq i8 %20, 0
  br i1 %tobool26.not, label %if.then25.if.end41_crit_edge, label %if.then27

if.then25.if.end41_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

if.then27:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #6
  %otg_v1_regs30 = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 6
  %21 = ptrtoint ptr %otg_v1_regs30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %otg_v1_regs30, align 4
  %phyrst_cfg = getelementptr inbounds %struct.cdns3_otg_regs, ptr %22, i32 0, i32 16
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %phyrst_cfg) #4, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !114
  %24 = or i32 %23, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !115
  tail call void @arm_heavy_mb() #4
  %25 = ptrtoint ptr %otg_v1_regs30 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %otg_v1_regs30, align 4
  %phyrst_cfg39 = getelementptr inbounds %struct.cdns3_otg_regs, ptr %26, i32 0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %phyrst_cfg39, i32 %24) #4, !srcloc !93
  br label %if.end41

if.end41:                                         ; preds = %if.then27, %if.then25.if.end41_crit_edge, %if.end10.if.end41_crit_edge
  tail call void @usleep_range_state(i32 noundef 50000, i32 noundef 60000, i32 noundef 2) #4
  br label %cleanup

do.end44:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cdns, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.14, i32 noundef %mode) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %if.end41, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge65
  %retval.0 = phi i32 [ -22, %do.end44 ], [ 0, %if.end41 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge65 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdns_drd_init(ptr noundef %cdns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdns, align 4
  %otg_res = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 4
  %call = tail call ptr @devm_ioremap_resource(ptr noundef %1, ptr noundef %otg_res) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %otg_v0_regs = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 5
  %3 = ptrtoint ptr %otg_v0_regs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %otg_v0_regs, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %call) #4, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %version = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 10
  %5 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %version, align 4
  %otg_v1_regs = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 6
  %6 = ptrtoint ptr %otg_v1_regs to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %otg_v1_regs, align 4
  %otg_cdnsp_regs = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 7
  %7 = ptrtoint ptr %otg_cdnsp_regs to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %otg_cdnsp_regs, align 4
  %otg_regs = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 8
  %8 = ptrtoint ptr %otg_regs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %otg_regs, align 4
  %9 = ptrtoint ptr %otg_v0_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %otg_v0_regs, align 4
  %ien = getelementptr inbounds %struct.cdns3_otg_legacy_regs, ptr %10, i32 0, i32 4
  %otg_irq_regs = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 9
  %11 = ptrtoint ptr %otg_irq_regs to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %ien, ptr %otg_irq_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !117
  tail call void @arm_heavy_mb() #4
  %12 = ptrtoint ptr %otg_v0_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %otg_v0_regs, align 4
  %simulate = getelementptr inbounds %struct.cdns3_otg_legacy_regs, ptr %13, i32 0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %simulate, i32 16777216) #4, !srcloc !93
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_drd_init.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_drd_init, %if.then15)) #4
          to label %if.end85 [label %if.then15], !srcloc !89

if.then15:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cdns, align 4
  %16 = ptrtoint ptr %otg_v0_regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %otg_v0_regs, align 4
  %version20 = getelementptr inbounds %struct.cdns3_otg_legacy_regs, ptr %17, i32 0, i32 9
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %version20) #4, !srcloc !87
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !118
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_drd_init.__UNIQUE_ID_ddebug300, ptr noundef %15, ptr noundef nonnull @.str.17, i32 noundef %19) #4
  br label %if.end85

if.else:                                          ; preds = %if.end
  %20 = ptrtoint ptr %otg_v0_regs to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %otg_v0_regs, align 4
  %otg_v1_regs28 = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 6
  %21 = ptrtoint ptr %otg_v1_regs28 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call, ptr %otg_v1_regs28, align 4
  %otg_cdnsp_regs29 = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 7
  %22 = ptrtoint ptr %otg_cdnsp_regs29 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call, ptr %otg_cdnsp_regs29, align 4
  %cmd31 = getelementptr inbounds %struct.cdns3_otg_regs, ptr %call, i32 0, i32 4
  %otg_regs32 = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 8
  %23 = ptrtoint ptr %otg_regs32 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %cmd31, ptr %otg_regs32, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %call) #4, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !119
  call void @__sanitizer_cov_trace_const_cmp4(i32 1308820480, i32 %24)
  %cmp = icmp eq i32 %24, 1308820480
  br i1 %cmp, label %if.then39, label %if.else44

if.then39:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %otg_cdnsp_regs29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %otg_cdnsp_regs29, align 4
  %ien41 = getelementptr inbounds %struct.cdnsp_otg_regs, ptr %26, i32 0, i32 7
  %otg_irq_regs42 = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 9
  %27 = ptrtoint ptr %otg_irq_regs42 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %ien41, ptr %otg_irq_regs42, align 4
  br label %do.body55

if.else44:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %otg_v1_regs28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %otg_v1_regs28, align 4
  %ien46 = getelementptr inbounds %struct.cdns3_otg_regs, ptr %29, i32 0, i32 8
  %otg_irq_regs47 = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 9
  %30 = ptrtoint ptr %otg_irq_regs47 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %ien46, ptr %otg_irq_regs47, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  tail call void @arm_heavy_mb() #4
  %31 = ptrtoint ptr %otg_v1_regs28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %otg_v1_regs28, align 4
  %simulate52 = getelementptr inbounds %struct.cdns3_otg_regs, ptr %32, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %simulate52, i32 16777216) #4, !srcloc !93
  br label %do.body55

do.body55:                                        ; preds = %if.else44, %if.then39
  %.sink = phi i32 [ 2, %if.then39 ], [ 1, %if.else44 ]
  %33 = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 10
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink, ptr %33, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_drd_init.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_drd_init, %if.then67)) #4
          to label %if.end85 [label %if.then67], !srcloc !89

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cdns, align 4
  %37 = ptrtoint ptr %otg_v1_regs28 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %otg_v1_regs28, align 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #4, !srcloc !87
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  %41 = ptrtoint ptr %otg_v1_regs28 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %otg_v1_regs28, align 4
  %rid = getelementptr inbounds %struct.cdns3_otg_regs, ptr %42, i32 0, i32 1
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rid) #4, !srcloc !87
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !122
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_drd_init.__UNIQUE_ID_ddebug301, ptr noundef %36, ptr noundef nonnull @.str.18, i32 noundef %40, i32 noundef %44) #4
  br label %if.end85

if.end85:                                         ; preds = %if.then67, %do.body55, %if.then15, %if.then6
  %otg_regs88 = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 8
  %45 = ptrtoint ptr %otg_regs88 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %otg_regs88, align 4
  %sts = getelementptr inbounds %struct.cdns_otg_common_regs, ptr %46, i32 0, i32 1
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sts) #4, !srcloc !87
  %48 = lshr i32 %47, 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !123
  %and = and i32 %48, 7
  %dr_mode = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 22
  %49 = ptrtoint ptr %dr_mode to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 3, ptr %dr_mode, align 4
  %version92 = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 10
  %50 = ptrtoint ptr %version92 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %version92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %51)
  %cmp93 = icmp eq i32 %51, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp94 = icmp eq i32 %and, 1
  %or.cond = select i1 %cmp93, i1 %cmp94, i1 false
  br i1 %or.cond, label %if.end85.do.body100_crit_edge, label %lor.lhs.false

if.end85.do.body100_crit_edge:                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body100

lor.lhs.false:                                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %51)
  %cmp96.not = icmp ne i32 %51, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp98 = icmp eq i32 %and, 2
  %or.cond232 = select i1 %cmp96.not, i1 %cmp98, i1 false
  br i1 %or.cond232, label %lor.lhs.false.do.body100_crit_edge, label %if.else118

lor.lhs.false.do.body100_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body100

do.body100:                                       ; preds = %lor.lhs.false.do.body100_crit_edge, %if.end85.do.body100_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_drd_init.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_drd_init, %if.then112)) #4
          to label %if.end148.sink.split [label %if.then112], !srcloc !89

if.then112:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #6
  %52 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cdns, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_drd_init.__UNIQUE_ID_ddebug302, ptr noundef %53, ptr noundef nonnull @.str.19) #4
  br label %if.end148.sink.split

if.else118:                                       ; preds = %lor.lhs.false
  %or.cond233 = select i1 %cmp93, i1 %cmp98, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %cmp127 = icmp eq i32 %and, 4
  %or.cond234 = select i1 %cmp96.not, i1 %cmp127, i1 false
  %or.cond249 = select i1 %or.cond233, i1 true, i1 %or.cond234
  br i1 %or.cond249, label %do.body129, label %if.else118.if.end148_crit_edge

if.else118.if.end148_crit_edge:                   ; preds = %if.else118
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end148

do.body129:                                       ; preds = %if.else118
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_drd_init.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_drd_init, %if.then141)) #4
          to label %if.end148.sink.split [label %if.then141], !srcloc !89

if.then141:                                       ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #6
  %54 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cdns, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_drd_init.__UNIQUE_ID_ddebug303, ptr noundef %55, ptr noundef nonnull @.str.20) #4
  br label %if.end148.sink.split

if.end148.sink.split:                             ; preds = %if.then141, %do.body129, %if.then112, %do.body100
  %.sink250 = phi i32 [ 1, %do.body100 ], [ 1, %if.then112 ], [ 2, %do.body129 ], [ 2, %if.then141 ]
  %56 = ptrtoint ptr %dr_mode to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %.sink250, ptr %dr_mode, align 4
  br label %if.end148

if.end148:                                        ; preds = %if.end148.sink.split, %if.else118.if.end148_crit_edge
  %57 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cdns, align 4
  %otg_irq = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 12
  %59 = ptrtoint ptr %otg_irq to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %otg_irq, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %58, i32 0, i32 3
  %61 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %62, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end148.dev_name.exit_crit_edge

if.end148.dev_name.exit_crit_edge:                ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #6
  %63 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %58, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end148.dev_name.exit_crit_edge
  %retval.0.i244 = phi ptr [ %64, %if.end.i ], [ %62, %if.end148.dev_name.exit_crit_edge ]
  %call152 = tail call i32 @devm_request_threaded_irq(ptr noundef %58, i32 noundef %60, ptr noundef nonnull @cdns_drd_irq, ptr noundef nonnull @cdns_drd_thread_irq, i32 noundef 128, ptr noundef %retval.0.i244, ptr noundef %cdns) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %if.end159, label %do.end157

do.end157:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  %65 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cdns, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.21) #7
  br label %cleanup

if.end159:                                        ; preds = %dev_name.exit
  %67 = ptrtoint ptr %otg_regs88 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %otg_regs88, align 4
  %sts163 = getelementptr inbounds %struct.cdns_otg_common_regs, ptr %68, i32 0, i32 1
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sts163) #4, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !124
  %70 = and i32 %69, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool168.not = icmp eq i32 %70, 0
  br i1 %tobool168.not, label %if.end159.cleanup_crit_edge, label %do.end172

if.end159.cleanup_crit_edge:                      ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end172:                                        ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #6
  %71 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cdns, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.23) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end172, %if.end159.cleanup_crit_edge, %do.end157, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %call152, %do.end157 ], [ -19, %do.end172 ], [ 0, %if.end159.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_drd_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dr_mode = getelementptr inbounds %struct.cdns, ptr %data, i32 0, i32 22
  %0 = ptrtoint ptr %dr_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_lpm = getelementptr inbounds %struct.cdns, ptr %data, i32 0, i32 24
  %2 = ptrtoint ptr %in_lpm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %in_lpm, align 4, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %otg_irq_regs = getelementptr inbounds %struct.cdns, ptr %data, i32 0, i32 9
  %4 = ptrtoint ptr %otg_irq_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %otg_irq_regs, align 4
  %ivect = getelementptr inbounds %struct.cdns_otg_irq_regs, ptr %5, i32 0, i32 1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ivect) #4, !srcloc !87
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !125
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %if.end2.cleanup_crit_edge, label %if.end6

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end6.if.end17_crit_edge, label %do.body

if.end6.if.end17_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

do.body:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_drd_irq.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_drd_irq, %if.then14)) #4
          to label %if.end17 [label %if.then14], !srcloc !89

if.then14:                                        ; preds = %do.body
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %otg_regs.i = getelementptr inbounds %struct.cdns, ptr %data, i32 0, i32 8
  %10 = ptrtoint ptr %otg_regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %otg_regs.i, align 4
  %sts.i = getelementptr inbounds %struct.cdns_otg_common_regs, ptr %11, i32 0, i32 1
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sts.i) #4, !srcloc !87
  %13 = lshr i32 %12, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !88
  %and.i = and i32 %13, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_get_id.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_drd_irq, %if.then.i)) #4
          to label %cdns_get_id.exit [label %if.then.i], !srcloc !89

if.then.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_get_id.__UNIQUE_ID_ddebug294, ptr noundef %15, ptr noundef nonnull @.str.3, i32 noundef %and.i) #4
  br label %cdns_get_id.exit

cdns_get_id.exit:                                 ; preds = %if.then.i, %if.then14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_drd_irq.__UNIQUE_ID_ddebug298, ptr noundef %9, ptr noundef nonnull @.str.28, i32 noundef %and.i) #4
  br label %if.end17

if.end17:                                         ; preds = %cdns_get_id.exit, %do.body, %if.end6.if.end17_crit_edge
  %ret.0 = phi i32 [ 0, %if.end6.if.end17_crit_edge ], [ 2, %cdns_get_id.exit ], [ 2, %do.body ]
  %and18 = and i32 %7, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.do.body40_crit_edge, label %do.body21

if.end17.do.body40_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body40

do.body21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_drd_irq.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_drd_irq, %if.then33)) #4
          to label %do.body40 [label %if.then33], !srcloc !89

if.then33:                                        ; preds = %do.body21
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %otg_regs.i60 = getelementptr inbounds %struct.cdns, ptr %data, i32 0, i32 8
  %18 = ptrtoint ptr %otg_regs.i60 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %otg_regs.i60, align 4
  %sts.i61 = getelementptr inbounds %struct.cdns_otg_common_regs, ptr %19, i32 0, i32 1
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sts.i61) #4, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !90
  %21 = lshr i32 %20, 25
  %.lobit.i = and i32 %21, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_get_vbus.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_drd_irq, %if.then.i62)) #4
          to label %cdns_get_vbus.exit [label %if.then.i62], !srcloc !89

if.then.i62:                                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_get_vbus.__UNIQUE_ID_ddebug295, ptr noundef %23, ptr noundef nonnull @.str.5, i32 noundef %.lobit.i) #4
  br label %cdns_get_vbus.exit

cdns_get_vbus.exit:                               ; preds = %if.then.i62, %if.then33
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_drd_irq.__UNIQUE_ID_ddebug299, ptr noundef %17, ptr noundef nonnull @.str.29, i32 noundef %.lobit.i) #4
  br label %do.body40

do.body40:                                        ; preds = %cdns_get_vbus.exit, %do.body21, %if.end17.do.body40_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end17.do.body40_crit_edge ], [ 2, %cdns_get_vbus.exit ], [ 2, %do.body21 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !126
  tail call void @arm_heavy_mb() #4
  %24 = ptrtoint ptr %otg_irq_regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %otg_irq_regs, align 4
  %ivect44 = getelementptr inbounds %struct.cdns_otg_irq_regs, ptr %25, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ivect44, i32 -1) #4, !srcloc !93
  br label %cleanup

cleanup:                                          ; preds = %do.body40, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %do.body40 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_drd_thread_irq(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cdns_hw_role_switch(ptr noundef %data) #4
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdns_drd_exit(ptr nocapture noundef readonly %cdns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !108
  tail call void @arm_heavy_mb() #4
  %otg_irq_regs.i = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 9
  %0 = ptrtoint ptr %otg_irq_regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %otg_irq_regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #4, !srcloc !93
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @cdns_power_is_lost(ptr nocapture noundef readonly %cdns) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %version = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 10
  %0 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %otg_v0_regs = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 5
  %2 = ptrtoint ptr %otg_v0_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %otg_v0_regs, align 4
  %simulate = getelementptr inbounds %struct.cdns3_otg_legacy_regs, ptr %3, i32 0, i32 12
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %simulate) #4, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !127
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then.return_crit_edge, label %if.then.if.end13_crit_edge

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.else:                                          ; preds = %entry
  %otg_v1_regs = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 6
  %6 = ptrtoint ptr %otg_v1_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %otg_v1_regs, align 4
  %simulate5 = getelementptr inbounds %struct.cdns3_otg_regs, ptr %7, i32 0, i32 13
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %simulate5) #4, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !128
  %9 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  br i1 %tobool10.not, label %if.else.return_crit_edge, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end13:                                         ; preds = %if.else.if.end13_crit_edge, %if.then.if.end13_crit_edge
  br label %return

return:                                           ; preds = %if.end13, %if.else.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i1 [ false, %if.end13 ], [ true, %if.then.return_crit_edge ], [ true, %if.else.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdns_hw_role_switch(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !16, !17, !18, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !58, !60, !61, !62, !64, !66, !67, !68, !70, !71, !73, !74, !75, !77}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/cdns3/drd.c", i32 91, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @cdns_get_id.__UNIQUE_ID_ddebug294, !1, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/usb/cdns3/drd.c", i32 101, i32 2}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @cdns_get_vbus.__UNIQUE_ID_ddebug295, !7, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!10 = !{ptr @__ksymtab_cdns_clear_vbus, !11, !"__ksymtab_cdns_clear_vbus", i1 false, i1 false}
!11 = !{!"../drivers/usb/cdns3/drd.c", i32 117, i32 1}
!12 = !{ptr @__ksymtab_cdns_set_vbus, !13, !"__ksymtab_cdns_set_vbus", i1 false, i1 false}
!13 = !{!"../drivers/usb/cdns3/drd.c", i32 130, i32 1}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/cdns3/drd.c", i32 192, i32 2}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @cdns_drd_host_on.__UNIQUE_ID_ddebug296, !15, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/cdns3/drd.c", i32 197, i32 3}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @cdns_drd_host_on._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @cdns_drd_host_on._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/cdns3/drd.c", i32 237, i32 2}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @cdns_drd_gadget_on.__UNIQUE_ID_ddebug297, !25, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/cdns3/drd.c", i32 247, i32 3}
!30 = !{ptr @cdns_drd_gadget_on._entry, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @cdns_drd_gadget_on._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @__ksymtab_cdns_drd_gadget_on, !33, !"__ksymtab_cdns_drd_gadget_on", i1 false, i1 false}
!33 = !{!"../drivers/usb/cdns3/drd.c", i32 254, i32 1}
!34 = !{ptr @__ksymtab_cdns_drd_gadget_off, !35, !"__ksymtab_cdns_drd_gadget_off", i1 false, i1 false}
!35 = !{!"../drivers/usb/cdns3/drd.c", i32 278, i32 1}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/cdns3/drd.c", i32 324, i32 3}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @cdns_drd_update_mode._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @cdns_drd_update_mode._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/cdns3/drd.c", i32 412, i32 3}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @cdns_drd_init.__UNIQUE_ID_ddebug300, !42, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/cdns3/drd.c", i32 432, i32 3}
!47 = !{ptr @cdns_drd_init.__UNIQUE_ID_ddebug301, !46, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/cdns3/drd.c", i32 446, i32 3}
!50 = !{ptr @cdns_drd_init.__UNIQUE_ID_ddebug302, !49, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/cdns3/drd.c", i32 452, i32 3}
!53 = !{ptr @cdns_drd_init.__UNIQUE_ID_ddebug303, !52, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/cdns3/drd.c", i32 462, i32 3}
!56 = !{ptr @cdns_drd_init._entry, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @cdns_drd_init._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/cdns3/drd.c", i32 468, i32 3}
!60 = !{ptr @cdns_drd_init._entry.22, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @cdns_drd_init._entry_ptr.24, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @__ksymtab_cdns_power_is_lost, !63, !"__ksymtab_cdns_power_is_lost", i1 false, i1 false}
!63 = !{!"../drivers/usb/cdns3/drd.c", i32 495, i32 1}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/cdns3/drd.c", i32 39, i32 3}
!66 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @cdns_set_mode.__UNIQUE_ID_ddebug293, !65, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!68 = !{ptr @cdns_set_mode._entry, !69, !"_entry", i1 false, i1 false}
!69 = !{!"../drivers/usb/cdns3/drd.c", i32 79, i32 3}
!70 = !{ptr @cdns_set_mode._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/cdns3/drd.c", i32 367, i32 3}
!73 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @cdns_drd_irq.__UNIQUE_ID_ddebug298, !72, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/usb/cdns3/drd.c", i32 374, i32 3}
!77 = !{ptr @cdns_drd_irq.__UNIQUE_ID_ddebug299, !76, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{i64 4208390}
!88 = !{i64 2155214732}
!89 = !{i64 2148701478, i64 2148701483, i64 2148701496, i64 2148701540, i64 2148701574, i64 2148701595}
!90 = !{i64 2155217455}
!91 = !{i64 2155220251}
!92 = !{i64 2155220563}
!93 = !{i64 4207972}
!94 = !{i64 2155222741}
!95 = !{i64 2155223053}
!96 = !{i64 2155226456}
!97 = !{i64 2155231261}
!98 = !{i64 2155231759}
!99 = !{i64 2155234743}
!100 = !{i64 2155239002}
!101 = !{i64 2155239508}
!102 = !{i64 2155240576}
!103 = !{i64 2155245327}
!104 = !{i64 2155245825}
!105 = !{i64 2155250322}
!106 = !{i64 2155254581}
!107 = !{i64 2155255087}
!108 = !{i64 2155224860}
!109 = !{i64 2155257511}
!110 = !{i64 2155225587}
!111 = !{i64 2155210959}
!112 = !{i64 2155211336}
!113 = !{i8 0, i8 2}
!114 = !{i64 2155212046}
!115 = !{i64 2155212355}
!116 = !{i64 2155265715}
!117 = !{i64 2155265964}
!118 = !{i64 2155269059}
!119 = !{i64 2155269593}
!120 = !{i64 2155269829}
!121 = !{i64 2155273173}
!122 = !{i64 2155273683}
!123 = !{i64 2155274454}
!124 = !{i64 2155281900}
!125 = !{i64 2155259924}
!126 = !{i64 2155265024}
!127 = !{i64 2155284242}
!128 = !{i64 2155284847}
