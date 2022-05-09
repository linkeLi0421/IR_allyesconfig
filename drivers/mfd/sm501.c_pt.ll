; ModuleID = '/llk/IR_all_yes/drivers/mfd/sm501.c_pt.bc'
source_filename = "../drivers/mfd/sm501.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+sm501_misc_control\22, \22a\22\09"
module asm "\09.weak\09__crc_sm501_misc_control\09\09\09\09"
module asm "\09.long\09__crc_sm501_misc_control\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sm501_misc_control:\09\09\09\09\09"
module asm "\09.asciz \09\22sm501_misc_control\22\09\09\09\09\09"
module asm "__kstrtabns_sm501_misc_control:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sm501_modify_reg\22, \22a\22\09"
module asm "\09.weak\09__crc_sm501_modify_reg\09\09\09\09"
module asm "\09.long\09__crc_sm501_modify_reg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sm501_modify_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22sm501_modify_reg\22\09\09\09\09\09"
module asm "__kstrtabns_sm501_modify_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sm501_unit_power\22, \22a\22\09"
module asm "\09.weak\09__crc_sm501_unit_power\09\09\09\09"
module asm "\09.long\09__crc_sm501_unit_power\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sm501_unit_power:\09\09\09\09\09"
module asm "\09.asciz \09\22sm501_unit_power\22\09\09\09\09\09"
module asm "__kstrtabns_sm501_unit_power:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sm501_set_clock\22, \22a\22\09"
module asm "\09.weak\09__crc_sm501_set_clock\09\09\09\09"
module asm "\09.long\09__crc_sm501_set_clock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sm501_set_clock:\09\09\09\09\09"
module asm "\09.asciz \09\22sm501_set_clock\22\09\09\09\09\09"
module asm "__kstrtabns_sm501_set_clock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sm501_find_clock\22, \22a\22\09"
module asm "\09.weak\09__crc_sm501_find_clock\09\09\09\09"
module asm "\09.long\09__crc_sm501_find_clock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sm501_find_clock:\09\09\09\09\09"
module asm "\09.asciz \09\22sm501_find_clock\22\09\09\09\09\09"
module asm "__kstrtabns_sm501_find_clock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.74, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.74 = type { ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sm501_platdata = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32 }
%struct.sm501_platdata_fb = type { i32, i32, ptr, ptr }
%struct.sm501_initdata = type { %struct.sm501_reg_init, %struct.sm501_reg_init, %struct.sm501_reg_init, %struct.sm501_reg_init, i32, i32, i32 }
%struct.sm501_reg_init = type { i32, i32 }
%struct.sm501_platdata_fbsub = type { ptr, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.sm501_devdata = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.sm501_gpio, ptr, ptr, ptr, ptr, ptr, i32, i32, [20 x i32], i32, i32, ptr, i32 }
%struct.sm501_gpio = type { %struct.sm501_gpio_chip, %struct.sm501_gpio_chip, %struct.spinlock, i8, ptr, ptr }
%struct.sm501_gpio_chip = type { %struct.gpio_chip, ptr, ptr, ptr }
%struct.sm501_clock = type { i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.sm501_device = type { %struct.list_head, %struct.platform_device }
%struct.plat_serial8250_port = type { i32, ptr, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gpiod_lookup_table = type { %struct.list_head, ptr, [0 x %struct.gpiod_lookup] }
%struct.gpiod_lookup = type { ptr, i16, ptr, i32, i32 }
%struct.sm501_platdata_gpio_i2c = type { i32, i32, i32, i32, i32 }
%struct.i2c_gpio_platform_data = type { i32, i32, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.76, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.76 = type { ptr }

@sm501_misc_control.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sm501\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sm501_misc_control\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drivers/mfd/sm501.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MISC_CONTROL %08lx\0A\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_sm501_misc_control = external dso_local constant [0 x i8], align 1
@__kstrtabns_sm501_misc_control = external dso_local constant [0 x i8], align 1
@__ksymtab_sm501_misc_control = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sm501_misc_control to i32), ptr @__kstrtab_sm501_misc_control, ptr @__kstrtabns_sm501_misc_control }, section "___ksymtab_gpl+sm501_misc_control", align 4
@__kstrtab_sm501_modify_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns_sm501_modify_reg = external dso_local constant [0 x i8], align 1
@__ksymtab_sm501_modify_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sm501_modify_reg to i32), ptr @__kstrtab_sm501_modify_reg, ptr @__kstrtabns_sm501_modify_reg }, section "___ksymtab_gpl+sm501_modify_reg", align 4
@sm501_unit_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 331, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: bad unit %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sm501_unit_power\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sm501_unit_power._entry_ptr = internal global ptr @sm501_unit_power._entry, section ".printk_index", align 4
@sm501_unit_power.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.8, i8 0, i8 84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: unit %d, cur %d, to %d\0A\00", [36 x i8] zeroinitializer }, align 32
@sm501_unit_power._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.2, i32 339, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unit %d is already shutdown\0A\00", [35 x i8] zeroinitializer }, align 32
@sm501_unit_power._entry_ptr.11 = internal global ptr @sm501_unit_power._entry.9, section ".printk_index", align 4
@sm501_unit_power.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.12, i8 0, i8 94, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"gate %08lx, clock %08lx, mode %08lx\0A\00", [59 x i8] zeroinitializer }, align 32
@__kstrtab_sm501_unit_power = external dso_local constant [0 x i8], align 1
@__kstrtabns_sm501_unit_power = external dso_local constant [0 x i8], align 1
@__ksymtab_sm501_unit_power = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sm501_unit_power to i32), ptr @__kstrtab_sm501_unit_power, ptr @__kstrtabns_sm501_unit_power }, section "___ksymtab_gpl+sm501_unit_power", align 4
@sm501_set_clock.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.12, i8 0, i8 -101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sm501_set_clock\00", [16 x i8] zeroinitializer }, align 32
@__kstrtab_sm501_set_clock = external dso_local constant [0 x i8], align 1
@__kstrtabns_sm501_set_clock = external dso_local constant [0 x i8], align 1
@__ksymtab_sm501_set_clock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sm501_set_clock to i32), ptr @__kstrtab_sm501_set_clock, ptr @__kstrtabns_sm501_set_clock }, section "___ksymtab_gpl+sm501_set_clock", align 4
@__kstrtab_sm501_find_clock = external dso_local constant [0 x i8], align 1
@__kstrtabns_sm501_find_clock = external dso_local constant [0 x i8], align 1
@__ksymtab_sm501_find_clock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sm501_find_clock to i32), ptr @__kstrtab_sm501_find_clock, ptr @__kstrtabns_sm501_find_clock }, section "___ksymtab_gpl+sm501_find_clock", align 4
@__UNIQUE_ID_alias247 = internal constant [27 x i8] c"sm501.alias=platform:sm501\00", section ".modinfo", align 1
@sm501_plat_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sm501_plat_probe, ptr @sm501_plat_remove, ptr null, ptr @sm501_plat_suspend, ptr @sm501_plat_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_sm501_match_tbl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@sm501_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @sm501_pci_tbl, ptr @sm501_pci_probe, ptr @sm501_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_sm501__248_1733_sm501_base_init6 = internal global ptr @sm501_base_init, section ".initcall6.init", align 4
@__exitcall_sm501_base_exit = internal global ptr @sm501_base_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description249 = internal constant [36 x i8] c"sm501.description=SM501 Core Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [59 x i8] c"sm501.author=Ben Dooks <ben@simtec.co.uk>, Vincent Sanders\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [29 x i8] c"sm501.file=drivers/mfd/sm501\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [21 x i8] c"sm501.license=GPL v2\00", section ".modinfo", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@of_sm501_match_tbl = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"smi,sm501\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sm501_plat_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 1396, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get IO resource\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sm501_plat_probe\00", [47 x i8] zeroinitializer }, align 32
@sm501_plat_probe._entry_ptr = internal global ptr @sm501_plat_probe._entry, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@sm501_plat_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 1404, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cannot claim registers\0A\00", [40 x i8] zeroinitializer }, align 32
@sm501_plat_probe._entry_ptr.18 = internal global ptr @sm501_plat_probe._entry.16, section ".printk_index", align 4
@sm501_plat_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 1413, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cannot remap registers\0A\00", [40 x i8] zeroinitializer }, align 32
@sm501_plat_probe._entry_ptr.21 = internal global ptr @sm501_plat_probe._entry.19, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sm501_init_dev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&sm->clock_lock\00", [16 x i8] zeroinitializer }, align 32
@sm501_init_dev.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&sm->reg_lock\00", [18 x i8] zeroinitializer }, align 32
@sm501_init_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 1314, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"incorrect device id %08lx\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sm501_init_dev\00", [17 x i8] zeroinitializer }, align 32
@sm501_init_dev._entry_ptr = internal global ptr @sm501_init_dev._entry, section ".printk_index", align 4
@sm501_mem_local = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 4194304, i32 8388608, i32 16777216, i32 33554432, i32 67108864, i32 2097152], [40 x i8] zeroinitializer }, align 32
@sm501_init_dev._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 1325, ptr @.str.29, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"SM501 At %p: Version %08lx, %ld Mb, IRQ %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sm501_init_dev._entry_ptr.30 = internal global ptr @sm501_init_dev._entry.27, section ".printk_index", align 4
@dev_attr_dbg_regs = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dbg_regs_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@sm501_init_dev._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.26, ptr @.str.2, i32 1333, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to create debug regs file\0A\00", [62 x i8] zeroinitializer }, align 32
@sm501_init_dev._entry_ptr.33 = internal global ptr @sm501_init_dev._entry.31, section ".printk_index", align 4
@sm501_init_dev._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.26, ptr @.str.2, i32 1355, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"no gpio available for i2c gpio.\0A\00", [63 x i8] zeroinitializer }, align 32
@sm501_init_dev._entry_ptr.36 = internal global ptr @sm501_init_dev._entry.34, section ".printk_index", align 4
@sm501_init_dev._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.26, ptr @.str.2, i32 1363, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"M1X and M clocks sourced from different PLLs\0A\00", [50 x i8] zeroinitializer }, align 32
@sm501_init_dev._entry_ptr.39 = internal global ptr @sm501_init_dev._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dbg_regs\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%08x = %08x\0A\00", [19 x i8] zeroinitializer }, align 32
@sm501_init_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 1255, ptr @.str.29, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"setting M1XCLK to %ld\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sm501_init_regs\00", [16 x i8] zeroinitializer }, align 32
@sm501_init_regs._entry_ptr = internal global ptr @sm501_init_regs._entry, section ".printk_index", align 4
@sm501_init_regs._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 1260, ptr @.str.29, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"setting MCLK to %ld\0A\00", [43 x i8] zeroinitializer }, align 32
@sm501_init_regs._entry_ptr.46 = internal global ptr @sm501_init_regs._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sm501-usb\00", [22 x i8] zeroinitializer }, align 32
@sm501_register_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 742, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017%s[%d] %pR\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sm501_register_device\00", [42 x i8] zeroinitializer }, align 32
@sm501_register_device._entry_ptr = internal global ptr @sm501_register_device._entry, section ".printk_index", align 4
@sm501_register_device.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 0, i8 -69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"registered %s\0A\00", [17 x i8] zeroinitializer }, align 32
@sm501_register_device._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.49, ptr @.str.2, i32 752, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error registering %s (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@sm501_register_device._entry_ptr.53 = internal global ptr @sm501_register_device._entry.51, section ".printk_index", align 4
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"serial8250\00", [21 x i8] zeroinitializer }, align 32
@sm501_register_gpio.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.56, i8 1, i8 5, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sm501_register_gpio\00", [44 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"registering gpio block %08llx\0A\00", [33 x i8] zeroinitializer }, align 32
@sm501_register_gpio.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&gpio->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sm501-gpio\00", [21 x i8] zeroinitializer }, align 32
@sm501_register_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.55, ptr @.str.2, i32 1053, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"gpio: failed to request region\0A\00", [32 x i8] zeroinitializer }, align 32
@sm501_register_gpio._entry_ptr = internal global ptr @sm501_register_gpio._entry, section ".printk_index", align 4
@sm501_register_gpio._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.55, ptr @.str.2, i32 1059, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"gpio: failed to remap registers\0A\00", [63 x i8] zeroinitializer }, align 32
@sm501_register_gpio._entry_ptr.62 = internal global ptr @sm501_register_gpio._entry.60, section ".printk_index", align 4
@sm501_register_gpio._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.55, ptr @.str.2, i32 1068, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to add low chip\0A\00", [40 x i8] zeroinitializer }, align 32
@sm501_register_gpio._entry_ptr.65 = internal global ptr @sm501_register_gpio._entry.63, section ".printk_index", align 4
@sm501_register_gpio._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.55, ptr @.str.2, i32 1074, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to add high chip\0A\00", [39 x i8] zeroinitializer }, align 32
@sm501_register_gpio._entry_ptr.68 = internal global ptr @sm501_register_gpio._entry.66, section ".printk_index", align 4
@gpio_chip_template = internal constant { %struct.gpio_chip, [68 x i8] } { %struct.gpio_chip { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sm501_gpio_input, ptr @sm501_gpio_output, ptr @sm501_gpio_get, ptr null, ptr @sm501_gpio_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i16 32, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SM501-HIGH\00", [21 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SM501-LOW\00", [22 x i8] zeroinitializer }, align 32
@sm501_gpio_register_chip.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sm501_gpio_register_chip.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sm501_gpio_input.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.2, ptr @.str.72, i8 0, i8 -18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sm501_gpio_input\00", [47 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s(%p,%d)\0A\00", [21 x i8] zeroinitializer }, align 32
@sm501_gpio_ensure_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 908, ptr @.str.29, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"changing mode of gpio, bit %08lx\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sm501_gpio_ensure_gpio\00", [41 x i8] zeroinitializer }, align 32
@sm501_gpio_ensure_gpio._entry_ptr = internal global ptr @sm501_gpio_ensure_gpio._entry, section ".printk_index", align 4
@sm501_gpio_output.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.76, i8 0, i8 -11, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sm501_gpio_output\00", [46 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s(%p,%d,%d)\0A\00", [18 x i8] zeroinitializer }, align 32
@sm501_gpio_set.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.77, ptr @.str.2, ptr @.str.72, i8 0, i8 -24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sm501_gpio_set\00", [17 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c-gpio\00", [23 x i8] zeroinitializer }, align 32
@sm501_register_gpio_i2c_instance._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 1172, ptr @.str.29, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"registering i2c-%d: sda=%d, scl=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sm501_register_gpio_i2c_instance\00", [63 x i8] zeroinitializer }, align 32
@sm501_register_gpio_i2c_instance._entry_ptr = internal global ptr @sm501_register_gpio_i2c_instance._entry, section ".printk_index", align 4
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sm501-fb\00", [23 x i8] zeroinitializer }, align 32
@sm501_set_power.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.2, ptr @.str.83, i8 1, i8 106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sm501_set_power\00", [16 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"is already %d\0A\00", [17 x i8] zeroinitializer }, align 32
@sm501_set_power.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.2, ptr @.str.84, i8 1, i8 107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"setting power to %d\0A\00", [43 x i8] zeroinitializer }, align 32
@sm501_plat_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 1491, ptr @.str.29, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"SM501_MISC_CONTROL changed over sleep\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sm501_plat_resume\00", [46 x i8] zeroinitializer }, align 32
@sm501_plat_resume._entry_ptr = internal global ptr @sm501_plat_resume._entry, section ".printk_index", align 4
@sm501_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4719, i32 1281, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@sm501_pci_platdata = internal global { %struct.sm501_platdata, [60 x i8] } { %struct.sm501_platdata { ptr @sm501_pci_initdata, ptr null, ptr @sm501_fb_pdata, i32 0, i32 -1, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@sm501_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.2, i32 1583, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cannot enable device\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sm501_pci_probe\00", [16 x i8] zeroinitializer }, align 32
@sm501_pci_probe._entry_ptr = internal global ptr @sm501_pci_probe._entry, section ".printk_index", align 4
@sm501_fb_pdata = internal global { %struct.sm501_platdata_fb, [16 x i8] } { %struct.sm501_platdata_fb { i32 0, i32 0, ptr @sm501_pdata_fbsub, ptr @sm501_pdata_fbsub }, [16 x i8] zeroinitializer }, align 32
@sm501_pci_probe._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.2, i32 1601, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"region #0 is not memory?\0A\00", [38 x i8] zeroinitializer }, align 32
@sm501_pci_probe._entry_ptr.91 = internal global ptr @sm501_pci_probe._entry.89, section ".printk_index", align 4
@sm501_pci_probe._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.88, ptr @.str.2, i32 1607, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"region #1 is not memory?\0A\00", [38 x i8] zeroinitializer }, align 32
@sm501_pci_probe._entry_ptr.94 = internal global ptr @sm501_pci_probe._entry.92, section ".printk_index", align 4
@sm501_pci_probe._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.88, ptr @.str.2, i32 1620, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@sm501_pci_probe._entry_ptr.96 = internal global ptr @sm501_pci_probe._entry.95, section ".printk_index", align 4
@sm501_pci_probe._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.88, ptr @.str.2, i32 1627, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@sm501_pci_probe._entry_ptr.98 = internal global ptr @sm501_pci_probe._entry.97, section ".printk_index", align 4
@sm501_pci_initdata = internal global { %struct.sm501_initdata, [52 x i8] } { %struct.sm501_initdata { %struct.sm501_reg_init zeroinitializer, %struct.sm501_reg_init { i32 1056964608, i32 0 }, %struct.sm501_reg_init { i32 65792, i32 2039552 }, %struct.sm501_reg_init { i32 33554432, i32 0 }, i32 -1, i32 72000000, i32 144000000 }, [52 x i8] zeroinitializer }, align 32
@sm501_pdata_fbsub = internal global { %struct.sm501_platdata_fbsub, [16 x i8] } { %struct.sm501_platdata_fbsub { ptr null, i32 0, i32 0, i32 15 }, [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.99 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.102 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.103 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 1048576, i64 268435456]
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 270, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 331, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 335, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 339, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 377, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 621, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [18 x i8] c"sm501_plat_driver\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1710, i32 31 }
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"sm501_pci_driver\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1695, i32 26 }
@___asan_gen_.153 = private unnamed_addr constant [19 x i8] c"of_sm501_match_tbl\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1704, i32 34 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1396, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1404, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1413, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1306, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1307, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1314, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant [16 x i8] c"sm501_mem_local\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1283, i32 21 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1324, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant [18 x i8] c"dev_attr_dbg_regs\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1333, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1355, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1362, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1216, i32 8 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1207, i32 22 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1255, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1260, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 809, i32 33 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 741, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 748, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 751, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 838, i32 33 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1046, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1049, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1051, i32 19 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1053, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1059, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1068, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1074, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant [19 x i8] c"gpio_chip_template\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1004, i32 31 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1027, i32 19 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1031, i32 19 }
@___asan_gen_.324 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.327 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1037, i32 9 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 953, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 907, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 980, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 928, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1136, i32 33 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1170, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 868, i32 33 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1448, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1454, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1491, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant [14 x i8] c"sm501_pci_tbl\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1688, i32 35 }
@___asan_gen_.390 = private unnamed_addr constant [19 x i8] c"sm501_pci_platdata\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1555, i32 30 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1583, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant [15 x i8] c"sm501_fb_pdata\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1549, i32 33 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1601, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1607, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1620, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1627, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant [19 x i8] c"sm501_pci_initdata\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1519, i32 30 }
@___asan_gen_.426 = private unnamed_addr constant [18 x i8] c"sm501_pdata_fbsub\00", align 1
@___asan_gen_.427 = private constant [23 x i8] c"../drivers/mfd/sm501.c\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1542, i32 36 }
@llvm.compiler.used = appending global [147 x ptr] [ptr @__UNIQUE_ID_alias247, ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_sm501_base_exit, ptr @__initcall__kmod_sm501__248_1733_sm501_base_init6, ptr @__ksymtab_sm501_find_clock, ptr @__ksymtab_sm501_misc_control, ptr @__ksymtab_sm501_modify_reg, ptr @__ksymtab_sm501_set_clock, ptr @__ksymtab_sm501_unit_power, ptr @sm501_base_exit, ptr @sm501_gpio_ensure_gpio._entry, ptr @sm501_gpio_ensure_gpio._entry_ptr, ptr @sm501_init_dev._entry, ptr @sm501_init_dev._entry.27, ptr @sm501_init_dev._entry.31, ptr @sm501_init_dev._entry.34, ptr @sm501_init_dev._entry.37, ptr @sm501_init_dev._entry_ptr, ptr @sm501_init_dev._entry_ptr.30, ptr @sm501_init_dev._entry_ptr.33, ptr @sm501_init_dev._entry_ptr.36, ptr @sm501_init_dev._entry_ptr.39, ptr @sm501_init_regs._entry, ptr @sm501_init_regs._entry.44, ptr @sm501_init_regs._entry_ptr, ptr @sm501_init_regs._entry_ptr.46, ptr @sm501_pci_probe._entry, ptr @sm501_pci_probe._entry.89, ptr @sm501_pci_probe._entry.92, ptr @sm501_pci_probe._entry.95, ptr @sm501_pci_probe._entry.97, ptr @sm501_pci_probe._entry_ptr, ptr @sm501_pci_probe._entry_ptr.91, ptr @sm501_pci_probe._entry_ptr.94, ptr @sm501_pci_probe._entry_ptr.96, ptr @sm501_pci_probe._entry_ptr.98, ptr @sm501_plat_probe._entry, ptr @sm501_plat_probe._entry.16, ptr @sm501_plat_probe._entry.19, ptr @sm501_plat_probe._entry_ptr, ptr @sm501_plat_probe._entry_ptr.18, ptr @sm501_plat_probe._entry_ptr.21, ptr @sm501_plat_resume._entry, ptr @sm501_plat_resume._entry_ptr, ptr @sm501_register_device._entry, ptr @sm501_register_device._entry.51, ptr @sm501_register_device._entry_ptr, ptr @sm501_register_device._entry_ptr.53, ptr @sm501_register_gpio._entry, ptr @sm501_register_gpio._entry.60, ptr @sm501_register_gpio._entry.63, ptr @sm501_register_gpio._entry.66, ptr @sm501_register_gpio._entry_ptr, ptr @sm501_register_gpio._entry_ptr.62, ptr @sm501_register_gpio._entry_ptr.65, ptr @sm501_register_gpio._entry_ptr.68, ptr @sm501_register_gpio_i2c_instance._entry, ptr @sm501_register_gpio_i2c_instance._entry_ptr, ptr @sm501_unit_power._entry, ptr @sm501_unit_power._entry.9, ptr @sm501_unit_power._entry_ptr, ptr @sm501_unit_power._entry_ptr.11, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @sm501_plat_driver, ptr @sm501_pci_driver, ptr @of_sm501_match_tbl, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @sm501_init_dev.__key, ptr @.str.22, ptr @sm501_init_dev.__key.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @sm501_mem_local, ptr @.str.28, ptr @.str.29, ptr @dev_attr_dbg_regs, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @sm501_register_gpio.__key, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @gpio_chip_template, ptr @.str.69, ptr @.str.70, ptr @sm501_gpio_register_chip.lock_key, ptr @sm501_gpio_register_chip.request_key, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @sm501_pci_tbl, ptr @sm501_pci_platdata, ptr @.str.87, ptr @.str.88, ptr @sm501_fb_pdata, ptr @.str.90, ptr @.str.93, ptr @sm501_pci_initdata, ptr @sm501_pdata_fbsub], section "llvm.metadata"
@0 = internal global [108 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501_unit_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501_unit_power._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501_plat_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_sm501_match_tbl to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501_plat_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501_plat_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501_plat_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501_init_dev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501_init_dev.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501_init_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501_mem_local to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501_init_dev._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dbg_regs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501_init_dev._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501_init_dev._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501_init_dev._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501_init_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501_init_regs._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501_register_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501_register_device._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501_register_gpio.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501_register_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501_register_gpio._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501_register_gpio._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501_register_gpio._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_chip_template to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501_gpio_register_chip.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501_gpio_register_chip.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501_gpio_ensure_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501_register_gpio_i2c_instance._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501_plat_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501_pci_platdata to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501_fb_pdata to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501_pci_probe._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501_pci_probe._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501_pci_probe._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501_pci_probe._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501_pci_initdata to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm501_pdata_fbsub to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sm501_misc_control(ptr nocapture noundef readonly %dev, i32 noundef %set, i32 noundef %clear) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %regs = getelementptr inbounds %struct.sm501_devdata, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !237
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !238
  %neg = xor i32 %clear, -1
  %and = and i32 %5, %neg
  %or = or i32 %and, %set
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %5)
  %cmp9.not = icmp eq i32 %or, %5
  br i1 %cmp9.not, label %entry.if.end25_crit_edge, label %do.body11

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

do.body11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !239
  tail call void @arm_heavy_mb() #10
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %add.ptr15 = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %6) #10, !srcloc !240
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #10, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sm501_misc_control.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sm501_misc_control, %if.then21)) #10
          to label %if.end25 [label %if.then21], !srcloc !242

if.then21:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  %dev22 = getelementptr inbounds %struct.sm501_devdata, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev22, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sm501_misc_control.__UNIQUE_ID_ddebug236, ptr noundef %13, ptr noundef nonnull @.str.3, i32 noundef %5) #10
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %do.body11, %entry.if.end25_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call3) #10
  ret i32 %or
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sm501_modify_reg(ptr nocapture noundef readonly %dev, i32 noundef %reg, i32 noundef %set, i32 noundef %clear) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %regs = getelementptr inbounds %struct.sm501_devdata, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %reg
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !237
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !243
  %or = or i32 %5, %set
  %neg = xor i32 %clear, -1
  %and = and i32 %or, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !244
  tail call void @arm_heavy_mb() #10
  %6 = tail call i32 @llvm.bswap.i32(i32 %and)
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %add.ptr13 = getelementptr i8, ptr %8, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %6) #10, !srcloc !240
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #10, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call3) #10
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sm501_unit_power(ptr noundef %dev, i32 noundef %unit, i32 noundef %to) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clock_lock = getelementptr inbounds %struct.sm501_devdata, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %clock_lock, i32 noundef 0) #10
  %regs = getelementptr inbounds %struct.sm501_devdata, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 84
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !237
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr6 = getelementptr i8, ptr %7, i32 56
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #10, !srcloc !237
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !246
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr13 = getelementptr i8, ptr %11, i32 60
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #10, !srcloc !237
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !247
  %and = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %unit)
  %cmp = icmp ugt i32 %unit, 19
  br i1 %cmp, label %do.end, label %do.body17

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %unit) #13
  br label %already

do.body17:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sm501_unit_power.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sm501_unit_power, %if.then22)) #10
          to label %do.end26 [label %if.then22], !srcloc !242

if.then22:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  %dev23 = getelementptr inbounds %struct.sm501_devdata, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev23, align 4
  %arrayidx = getelementptr %struct.sm501_devdata, ptr %1, i32 0, i32 11, i32 %unit
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sm501_unit_power.__UNIQUE_ID_ddebug237, ptr noundef %15, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5, i32 noundef %unit, i32 noundef %17, i32 noundef %to) #10
  br label %do.end26

do.end26:                                         ; preds = %if.then22, %do.body17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to)
  %cmp27 = icmp eq i32 %to, 0
  br i1 %cmp27, label %land.lhs.true, label %do.end26.if.end36_crit_edge

do.end26.if.end36_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

land.lhs.true:                                    ; preds = %do.end26
  %arrayidx29 = getelementptr %struct.sm501_devdata, ptr %1, i32 0, i32 11, i32 %unit
  %18 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp30 = icmp eq i32 %19, 0
  br i1 %cmp30, label %do.end34, label %land.lhs.true.if.end36_crit_edge

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

do.end34:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %dev35 = getelementptr inbounds %struct.sm501_devdata, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev35, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.10, i32 noundef %unit) #13
  br label %already

if.end36:                                         ; preds = %land.lhs.true.if.end36_crit_edge, %do.end26.if.end36_crit_edge
  %cond = phi i32 [ -1, %land.lhs.true.if.end36_crit_edge ], [ 1, %do.end26.if.end36_crit_edge ]
  %arrayidx39 = getelementptr %struct.sm501_devdata, ptr %1, i32 0, i32 11, i32 %unit
  %22 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx39, align 4
  %add = add i32 %23, %cond
  store i32 %add, ptr %arrayidx39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool42.not = icmp eq i32 %add, 0
  %shl51 = shl nuw nsw i32 1, %unit
  %and52 = and i32 %9, %shl51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool42.not, label %if.else, label %if.then45

if.then45:                                        ; preds = %if.end36
  br i1 %tobool53.not, label %if.end49, label %if.then45.already_crit_edge

if.then45.already_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  br label %already

if.end49:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %9, %shl51
  br label %if.end58

if.else:                                          ; preds = %if.end36
  br i1 %tobool53.not, label %if.else.already_crit_edge, label %if.end55

if.else.already_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %already

if.end55:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %neg = xor i32 %shl51, -1
  %and57 = and i32 %9, %neg
  br label %if.end58

if.end58:                                         ; preds = %if.end55, %if.end49
  %gate.0 = phi i32 [ %or, %if.end49 ], [ %and57, %if.end55 ]
  %24 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %if.end58.already_crit_edge [
    i32 1, label %do.body59
    i32 2, label %if.end58.do.body70_crit_edge
    i32 0, label %if.end58.do.body70_crit_edge153
  ]

if.end58.do.body70_crit_edge153:                  ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body70

if.end58.do.body70_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body70

if.end58.already_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %already

do.body59:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !248
  tail call void @arm_heavy_mb() #10
  %25 = tail call i32 @llvm.bswap.i32(i32 %gate.0)
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %add.ptr63 = getelementptr i8, ptr %27, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 %25) #10, !srcloc !240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !249
  tail call void @arm_heavy_mb() #10
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 4
  %add.ptr68 = getelementptr i8, ptr %29, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 %12) #10, !srcloc !240
  br label %do.body80

do.body70:                                        ; preds = %if.end58.do.body70_crit_edge, %if.end58.do.body70_crit_edge153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  tail call void @arm_heavy_mb() #10
  %30 = tail call i32 @llvm.bswap.i32(i32 %gate.0)
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs, align 4
  %add.ptr74 = getelementptr i8, ptr %32, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 %30) #10, !srcloc !240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 4
  %add.ptr79 = getelementptr i8, ptr %34, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 %12) #10, !srcloc !240
  br label %do.body80

do.body80:                                        ; preds = %do.body70, %do.body59
  %mode.0 = phi i32 [ 1, %do.body70 ], [ 0, %do.body59 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !252
  tail call void @arm_heavy_mb() #10
  %35 = shl nuw nsw i32 %mode.0, 24
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 4
  %add.ptr84 = getelementptr i8, ptr %37, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84, i32 %35) #10, !srcloc !240
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs, align 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #10, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sm501_unit_power.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sm501_unit_power, %if.then97)) #10
          to label %do.end101 [label %if.then97], !srcloc !242

if.then97:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #12
  %dev98 = getelementptr inbounds %struct.sm501_devdata, ptr %1, i32 0, i32 4
  %41 = ptrtoint ptr %dev98 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev98, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sm501_unit_power.__UNIQUE_ID_ddebug238, ptr noundef %42, ptr noundef nonnull @.str.12, i32 noundef %gate.0, i32 noundef %13, i32 noundef %mode.0) #10
  br label %do.end101

do.end101:                                        ; preds = %if.then97, %do.body80
  %in_suspend.i = getelementptr inbounds %struct.sm501_devdata, ptr %1, i32 0, i32 9
  %43 = ptrtoint ptr %in_suspend.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %in_suspend.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i, label %if.else.i, label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748000) #10
  br label %already

if.else.i:                                        ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 16) #10
  br label %already

already:                                          ; preds = %if.else.i, %while.body.i.preheader, %if.end58.already_crit_edge, %if.else.already_crit_edge, %if.then45.already_crit_edge, %do.end34, %do.end
  %gate.1 = phi i32 [ %9, %do.end ], [ %9, %do.end34 ], [ %9, %if.then45.already_crit_edge ], [ %9, %if.else.already_crit_edge ], [ -1, %if.end58.already_crit_edge ], [ %gate.0, %if.else.i ], [ %gate.0, %while.body.i.preheader ]
  tail call void @mutex_unlock(ptr noundef %clock_lock) #10
  ret i32 %gate.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sm501_set_clock(ptr nocapture noundef readonly %dev, i32 noundef %clksrc, i32 noundef %req_freq) #0 align 64 {
entry:
  %best_diff.i241 = alloca i32, align 4
  %best_diff.i234 = alloca i32, align 4
  %best_diff.i227 = alloca i32, align 4
  %best_diff.i = alloca i32, align 4
  %to = alloca %struct.sm501_clock, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regs = getelementptr inbounds %struct.sm501_devdata, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 84
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !253
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %add.ptr6 = getelementptr i8, ptr %6, i32 56
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #10, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !254
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr13 = getelementptr i8, ptr %9, i32 60
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #10, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !255
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %to) #10
  %11 = getelementptr inbounds %struct.sm501_clock, ptr %to, i32 0, i32 1
  %12 = getelementptr inbounds %struct.sm501_clock, ptr %to, i32 0, i32 2
  %13 = getelementptr inbounds %struct.sm501_clock, ptr %to, i32 0, i32 3
  %14 = getelementptr inbounds %struct.sm501_clock, ptr %to, i32 0, i32 4
  %15 = getelementptr inbounds %struct.sm501_clock, ptr %to, i32 0, i32 5
  %16 = tail call i32 @llvm.fshl.i32(i32 %clksrc, i32 %clksrc, i32 29)
  %17 = call ptr @memset(ptr %to, i32 255, i32 24)
  %18 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %16, label %entry.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %sw.bb58
    i32 1, label %entry.sw.bb77_crit_edge
    i32 0, label %entry.sw.bb77_crit_edge250
  ]

entry.sw.bb77_crit_edge250:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb77

entry.sw.bb77_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb77

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %rev = getelementptr inbounds %struct.sm501_devdata, ptr %1, i32 0, i32 15
  %19 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 191, i32 %20)
  %cmp = icmp ugt i32 %20, 191
  %mul = shl i32 %req_freq, 1
  br i1 %cmp, label %if.then, label %if.else32

if.then:                                          ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %best_diff.i) #10
  %21 = ptrtoint ptr %best_diff.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 999999999, ptr %best_diff.i, align 4
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc13.i.for.cond1.preheader.i_crit_edge, %if.then
  %m.04.i = phi i32 [ 2, %if.then ], [ %inc14.i, %for.inc13.i.for.cond1.preheader.i_crit_edge ]
  %mul.i = mul i32 %m.04.i, 24000000
  br label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %for.inc.1.i.for.cond4.preheader.i_crit_edge, %for.cond1.preheader.i
  %n.03.i = phi i32 [ 2, %for.cond1.preheader.i ], [ %inc11.i, %for.inc.1.i.for.cond4.preheader.i_crit_edge ]
  %div.i = udiv i32 %mul.i, %n.03.i
  %call.i = call fastcc i32 @sm501_calc_clock(i32 noundef %mul, ptr noundef nonnull %to, i32 noundef 5, i32 noundef %div.i, ptr noundef nonnull %best_diff.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond4.preheader.i.for.inc.i_crit_edge, label %if.then.i

for.cond4.preheader.i.for.inc.i_crit_edge:        ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i:                                        ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %m.04.i, ptr %13, align 4
  %23 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %n.03.i, ptr %14, align 4
  %24 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %15, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.cond4.preheader.i.for.inc.i_crit_edge
  %shr.1.i = lshr i32 %div.i, 1
  %call.1.i = call fastcc i32 @sm501_calc_clock(i32 noundef %mul, ptr noundef nonnull %to, i32 noundef 5, i32 noundef %shr.1.i, ptr noundef nonnull %best_diff.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %m.04.i, ptr %13, align 4
  %26 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %n.03.i, ptr %14, align 4
  %27 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %15, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %inc11.i = add nuw nsw i32 %n.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc11.i, 128
  br i1 %exitcond.not.i, label %for.inc13.i, label %for.inc.1.i.for.cond4.preheader.i_crit_edge

for.inc.1.i.for.cond4.preheader.i_crit_edge:      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond4.preheader.i

for.inc13.i:                                      ; preds = %for.inc.1.i
  %inc14.i = add nuw nsw i32 %m.04.i, 1
  %exitcond5.not.i = icmp eq i32 %inc14.i, 256
  br i1 %exitcond5.not.i, label %sm501_calc_pll.exit, label %for.inc13.i.for.cond1.preheader.i_crit_edge

for.inc13.i.for.cond1.preheader.i_crit_edge:      ; preds = %for.inc13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond1.preheader.i

sm501_calc_pll.exit:                              ; preds = %for.inc13.i
  %28 = ptrtoint ptr %to to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %to, align 4
  %30 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %11, align 4
  %32 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %12, align 4
  %shl.i = shl i32 %31, %33
  %div17.i = udiv i32 %29, %shl.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %best_diff.i) #10
  %div222 = lshr i32 %div17.i, 1
  %and = and i32 %33, 7
  %34 = zext i32 %and to i64
  %35 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %31, label %sm501_calc_pll.exit.if.end26_crit_edge [
    i32 3, label %if.then20
    i32 5, label %if.then24
  ]

sm501_calc_pll.exit.if.end26_crit_edge:           ; preds = %sm501_calc_pll.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then20:                                        ; preds = %sm501_calc_pll.exit
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i64 %34, 8
  br label %if.end26

if.then24:                                        ; preds = %sm501_calc_pll.exit
  call void @__sanitizer_cov_trace_pc() #12
  %or25 = or i64 %34, 16
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.then20, %sm501_calc_pll.exit.if.end26_crit_edge
  %reg.0 = phi i64 [ %or, %if.then20 ], [ %or25, %if.then24 ], [ %34, %sm501_calc_pll.exit.if.end26_crit_edge ]
  %or27 = or i64 %reg.0, 64
  %36 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %15, align 4
  %shl = shl i32 %37, 15
  %38 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %14, align 4
  %shl29 = shl i32 %39, 8
  %40 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %13, align 4
  %or28 = or i32 %shl, %shl29
  %or30 = or i32 %or28, %41
  %or31 = or i32 %or30, 131072
  br label %sw.epilog

if.else32:                                        ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %best_diff.i227) #10
  %42 = ptrtoint ptr %best_diff.i227 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 999999999, ptr %best_diff.i227, align 4
  %call.i228 = call fastcc i32 @sm501_calc_clock(i32 noundef %mul, ptr noundef nonnull %to, i32 noundef 5, i32 noundef 288000000, ptr noundef nonnull %best_diff.i227) #10
  %call.1.i229 = call fastcc i32 @sm501_calc_clock(i32 noundef %mul, ptr noundef nonnull %to, i32 noundef 5, i32 noundef 336000000, ptr noundef nonnull %best_diff.i227) #10
  %43 = ptrtoint ptr %to to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %to, align 4
  %45 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %11, align 4
  %47 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %12, align 4
  %shl.i232 = shl i32 %46, %48
  %div.i233 = udiv i32 %44, %shl.i232
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %best_diff.i227) #10
  %div35221 = lshr i32 %div.i233, 1
  %and37 = and i32 %48, 7
  %49 = zext i32 %and37 to i64
  %50 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %46, label %if.else32.if.end51_crit_edge [
    i32 3, label %if.then42
    i32 5, label %if.then48
  ]

if.else32.if.end51_crit_edge:                     ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then42:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #12
  %or43 = or i64 %49, 8
  br label %if.end51

if.then48:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #12
  %or49 = or i64 %49, 16
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.then42, %if.else32.if.end51_crit_edge
  %reg.1 = phi i64 [ %or43, %if.then42 ], [ %or49, %if.then48 ], [ %49, %if.else32.if.end51_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 288000000, i32 %44)
  %cmp52.not = icmp eq i32 %44, 288000000
  %or55 = or i64 %reg.1, 32
  %spec.select = select i1 %cmp52.not, i64 %reg.1, i64 %or55
  br label %sw.epilog

sw.bb58:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mul59 = shl i32 %req_freq, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %best_diff.i234) #10
  %51 = ptrtoint ptr %best_diff.i234 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 999999999, ptr %best_diff.i234, align 4
  %call.i235 = call fastcc i32 @sm501_calc_clock(i32 noundef %mul59, ptr noundef nonnull %to, i32 noundef 3, i32 noundef 288000000, ptr noundef nonnull %best_diff.i234) #10
  %call.1.i236 = call fastcc i32 @sm501_calc_clock(i32 noundef %mul59, ptr noundef nonnull %to, i32 noundef 3, i32 noundef 336000000, ptr noundef nonnull %best_diff.i234) #10
  %52 = ptrtoint ptr %to to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %to, align 4
  %54 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %11, align 4
  %56 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %12, align 4
  %shl.i239 = shl i32 %55, %57
  %div.i240 = udiv i32 %53, %shl.i239
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %best_diff.i234) #10
  %div61220 = lshr i32 %div.i240, 1
  %and63 = and i32 %57, 7
  %58 = zext i32 %and63 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %55)
  %cmp66 = icmp eq i32 %55, 3
  %or69 = or i64 %58, 8
  %spec.select223 = select i1 %cmp66, i64 %or69, i64 %58
  call void @__sanitizer_cov_trace_const_cmp4(i32 288000000, i32 %53)
  %cmp72.not = icmp eq i32 %53, 288000000
  %or75 = or i64 %spec.select223, 16
  %spec.select225 = select i1 %cmp72.not, i64 %spec.select223, i64 %or75
  br label %sw.epilog

sw.bb77:                                          ; preds = %entry.sw.bb77_crit_edge, %entry.sw.bb77_crit_edge250
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %best_diff.i241) #10
  %59 = ptrtoint ptr %best_diff.i241 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 999999999, ptr %best_diff.i241, align 4
  %call.i242 = call fastcc i32 @sm501_calc_clock(i32 noundef %req_freq, ptr noundef nonnull %to, i32 noundef 3, i32 noundef 288000000, ptr noundef nonnull %best_diff.i241) #10
  %call.1.i243 = call fastcc i32 @sm501_calc_clock(i32 noundef %req_freq, ptr noundef nonnull %to, i32 noundef 3, i32 noundef 336000000, ptr noundef nonnull %best_diff.i241) #10
  %60 = ptrtoint ptr %to to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %to, align 4
  %62 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %11, align 4
  %64 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %12, align 4
  %shl.i246 = shl i32 %63, %65
  %div.i247 = udiv i32 %61, %shl.i246
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %best_diff.i241) #10
  %and80 = and i32 %65, 7
  %66 = zext i32 %and80 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %63)
  %cmp83 = icmp eq i32 %63, 3
  %or86 = or i64 %66, 8
  %spec.select224 = select i1 %cmp83, i64 %or86, i64 %66
  call void @__sanitizer_cov_trace_const_cmp4(i32 288000000, i32 %61)
  %cmp89.not = icmp eq i32 %61, 288000000
  %or92 = or i64 %spec.select224, 16
  %spec.select226 = select i1 %cmp89.not, i64 %spec.select224, i64 %or92
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb77, %sw.bb58, %if.end51, %if.end26
  %reg.4 = phi i64 [ %or27, %if.end26 ], [ %spec.select, %if.end51 ], [ %spec.select225, %sw.bb58 ], [ %spec.select226, %sw.bb77 ]
  %sm501_freq.0 = phi i32 [ %div222, %if.end26 ], [ %div35221, %if.end51 ], [ %div61220, %sw.bb58 ], [ %div.i247, %sw.bb77 ]
  %pll_reg.0 = phi i32 [ %or31, %if.end26 ], [ 0, %if.end51 ], [ 0, %sw.bb58 ], [ 0, %sw.bb77 ]
  %clock_lock = getelementptr inbounds %struct.sm501_devdata, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %clock_lock, i32 noundef 0) #10
  %67 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs, align 4
  %add.ptr97 = getelementptr i8, ptr %68, i32 84
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr97) #10, !srcloc !237
  %70 = lshr i32 %69, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !256
  %71 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs, align 4
  %add.ptr104 = getelementptr i8, ptr %72, i32 56
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr104) #10, !srcloc !237
  %74 = tail call i32 @llvm.bswap.i32(i32 %73)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !257
  %75 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs, align 4
  %add.ptr111 = getelementptr i8, ptr %76, i32 60
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr111) #10, !srcloc !237
  %78 = tail call i32 @llvm.bswap.i32(i32 %77)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !258
  %shl115 = shl i32 255, %clksrc
  %neg = xor i32 %shl115, -1
  %and116 = and i32 %78, %neg
  %sh_prom = zext i32 %clksrc to i64
  %shl117 = shl i64 %reg.4, %sh_prom
  %79 = trunc i64 %shl117 to i32
  %conv120 = or i32 %and116, %79
  %and121 = and i32 %70, 3
  %80 = zext i32 %and121 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %and121, label %sw.epilog.cleanup.sink.split_crit_edge [
    i32 1, label %do.body
    i32 2, label %sw.epilog.do.body131_crit_edge
    i32 0, label %sw.epilog.do.body131_crit_edge251
  ]

sw.epilog.do.body131_crit_edge251:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body131

sw.epilog.do.body131_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body131

sw.epilog.cleanup.sink.split_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

do.body:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !259
  tail call void @arm_heavy_mb() #10
  %81 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs, align 4
  %add.ptr124 = getelementptr i8, ptr %82, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr124, i32 %73) #10, !srcloc !240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  tail call void @arm_heavy_mb() #10
  %83 = tail call i32 @llvm.bswap.i32(i32 %conv120)
  %84 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs, align 4
  %add.ptr129 = getelementptr i8, ptr %85, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr129, i32 %83) #10, !srcloc !240
  br label %do.body144

do.body131:                                       ; preds = %sw.epilog.do.body131_crit_edge, %sw.epilog.do.body131_crit_edge251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  tail call void @arm_heavy_mb() #10
  %86 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs, align 4
  %add.ptr135 = getelementptr i8, ptr %87, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr135, i32 %73) #10, !srcloc !240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !262
  tail call void @arm_heavy_mb() #10
  %88 = tail call i32 @llvm.bswap.i32(i32 %conv120)
  %89 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs, align 4
  %add.ptr140 = getelementptr i8, ptr %90, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr140, i32 %88) #10, !srcloc !240
  br label %do.body144

do.body144:                                       ; preds = %do.body131, %do.body
  %mode.0 = phi i32 [ 1, %do.body131 ], [ 0, %do.body ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !263
  tail call void @arm_heavy_mb() #10
  %91 = shl nuw nsw i32 %mode.0, 24
  %92 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs, align 4
  %add.ptr148 = getelementptr i8, ptr %93, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr148, i32 %91) #10, !srcloc !240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pll_reg.0)
  %tobool.not = icmp eq i32 %pll_reg.0, 0
  br i1 %tobool.not, label %do.body144.if.end155_crit_edge, label %do.body150

do.body144.if.end155_crit_edge:                   ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end155

do.body150:                                       ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !264
  tail call void @arm_heavy_mb() #10
  %94 = tail call i32 @llvm.bswap.i32(i32 %pll_reg.0)
  %95 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs, align 4
  %add.ptr154 = getelementptr i8, ptr %96, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr154, i32 %94) #10, !srcloc !240
  br label %if.end155

if.end155:                                        ; preds = %do.body150, %do.body144.if.end155_crit_edge
  %97 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regs, align 4
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #10, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sm501_set_clock.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sm501_set_clock, %if.then162)) #10
          to label %do.end166 [label %if.then162], !srcloc !242

if.then162:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #12
  %dev163 = getelementptr inbounds %struct.sm501_devdata, ptr %1, i32 0, i32 4
  %100 = ptrtoint ptr %dev163 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev163, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sm501_set_clock.__UNIQUE_ID_ddebug239, ptr noundef %101, ptr noundef nonnull @.str.12, i32 noundef %74, i32 noundef %conv120, i32 noundef %mode.0) #10
  br label %do.end166

do.end166:                                        ; preds = %if.then162, %if.end155
  %in_suspend.i = getelementptr inbounds %struct.sm501_devdata, ptr %1, i32 0, i32 9
  %102 = ptrtoint ptr %in_suspend.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %in_suspend.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool.not.i248 = icmp eq i32 %103, 0
  br i1 %tobool.not.i248, label %if.else.i, label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %do.end166
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %104(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %105(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %106 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %106(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %107(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %108 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %108(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %109 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %109(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %110 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %110(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %111 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %111(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %112 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %112(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %113(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %114 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %114(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %115 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %115(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %116(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %117 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %117(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %118 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %118(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %119(i32 noundef 214748000) #10
  br label %cleanup.sink.split

if.else.i:                                        ; preds = %do.end166
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 16) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else.i, %while.body.i.preheader, %sw.epilog.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -1, %sw.epilog.cleanup.sink.split_crit_edge ], [ %sm501_freq.0, %while.body.i.preheader ], [ %sm501_freq.0, %if.else.i ]
  tail call void @mutex_unlock(ptr noundef %clock_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %to) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sm501_find_clock(ptr nocapture noundef readonly %dev, i32 noundef %clksrc, i32 noundef %req_freq) #5 align 64 {
entry:
  %best_diff.i31 = alloca i32, align 4
  %best_diff.i24 = alloca i32, align 4
  %best_diff.i17 = alloca i32, align 4
  %best_diff.i = alloca i32, align 4
  %to = alloca %struct.sm501_clock, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %to) #10
  %2 = getelementptr inbounds %struct.sm501_clock, ptr %to, i32 0, i32 1
  %3 = getelementptr inbounds %struct.sm501_clock, ptr %to, i32 0, i32 2
  %4 = getelementptr inbounds %struct.sm501_clock, ptr %to, i32 0, i32 3
  %5 = getelementptr inbounds %struct.sm501_clock, ptr %to, i32 0, i32 4
  %6 = getelementptr inbounds %struct.sm501_clock, ptr %to, i32 0, i32 5
  %7 = tail call i32 @llvm.fshl.i32(i32 %clksrc, i32 %clksrc, i32 29)
  %8 = call ptr @memset(ptr %to, i32 255, i32 24)
  %9 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %7, label %entry.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %sw.bb5
    i32 1, label %entry.sw.bb9_crit_edge
    i32 0, label %entry.sw.bb9_crit_edge38
  ]

entry.sw.bb9_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb9

entry.sw.bb9_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb9

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %rev = getelementptr inbounds %struct.sm501_devdata, ptr %1, i32 0, i32 15
  %10 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 191, i32 %11)
  %cmp = icmp ugt i32 %11, 191
  %mul = shl i32 %req_freq, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %best_diff.i) #10
  %12 = ptrtoint ptr %best_diff.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 999999999, ptr %best_diff.i, align 4
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc13.i.for.cond1.preheader.i_crit_edge, %if.then
  %m.04.i = phi i32 [ 2, %if.then ], [ %inc14.i, %for.inc13.i.for.cond1.preheader.i_crit_edge ]
  %mul.i = mul i32 %m.04.i, 24000000
  br label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %for.inc.1.i.for.cond4.preheader.i_crit_edge, %for.cond1.preheader.i
  %n.03.i = phi i32 [ 2, %for.cond1.preheader.i ], [ %inc11.i, %for.inc.1.i.for.cond4.preheader.i_crit_edge ]
  %div.i = udiv i32 %mul.i, %n.03.i
  %call.i = call fastcc i32 @sm501_calc_clock(i32 noundef %mul, ptr noundef nonnull %to, i32 noundef 5, i32 noundef %div.i, ptr noundef nonnull %best_diff.i) #10
  %shr.1.i = lshr i32 %div.i, 1
  %call.1.i = call fastcc i32 @sm501_calc_clock(i32 noundef %mul, ptr noundef nonnull %to, i32 noundef 5, i32 noundef %shr.1.i, ptr noundef nonnull %best_diff.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.cond4.preheader.i.for.inc.1.i_crit_edge, label %if.then.1.i

for.cond4.preheader.i.for.inc.1.i_crit_edge:      ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %m.04.i, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %n.03.i, ptr %5, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %6, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %for.cond4.preheader.i.for.inc.1.i_crit_edge
  %inc11.i = add nuw nsw i32 %n.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc11.i, 128
  br i1 %exitcond.not.i, label %for.inc13.i, label %for.inc.1.i.for.cond4.preheader.i_crit_edge

for.inc.1.i.for.cond4.preheader.i_crit_edge:      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond4.preheader.i

for.inc13.i:                                      ; preds = %for.inc.1.i
  %inc14.i = add nuw nsw i32 %m.04.i, 1
  %exitcond5.not.i = icmp eq i32 %inc14.i, 256
  br i1 %exitcond5.not.i, label %sm501_calc_pll.exit, label %for.inc13.i.for.cond1.preheader.i_crit_edge

for.inc13.i.for.cond1.preheader.i_crit_edge:      ; preds = %for.inc13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond1.preheader.i

sm501_calc_pll.exit:                              ; preds = %for.inc13.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %to to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %to, align 4
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %2, align 4
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %3, align 4
  %shl.i = shl i32 %19, %21
  %div17.i = udiv i32 %17, %shl.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %best_diff.i) #10
  %div16 = lshr i32 %div17.i, 1
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %best_diff.i17) #10
  %22 = ptrtoint ptr %best_diff.i17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 999999999, ptr %best_diff.i17, align 4
  %call.i18 = call fastcc i32 @sm501_calc_clock(i32 noundef %mul, ptr noundef nonnull %to, i32 noundef 5, i32 noundef 288000000, ptr noundef nonnull %best_diff.i17) #10
  %call.1.i19 = call fastcc i32 @sm501_calc_clock(i32 noundef %mul, ptr noundef nonnull %to, i32 noundef 5, i32 noundef 336000000, ptr noundef nonnull %best_diff.i17) #10
  %23 = ptrtoint ptr %to to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %to, align 4
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %2, align 4
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %3, align 4
  %shl.i22 = shl i32 %26, %28
  %div.i23 = udiv i32 %24, %shl.i22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %best_diff.i17) #10
  %div415 = lshr i32 %div.i23, 1
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mul6 = shl i32 %req_freq, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %best_diff.i24) #10
  %29 = ptrtoint ptr %best_diff.i24 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 999999999, ptr %best_diff.i24, align 4
  %call.i25 = call fastcc i32 @sm501_calc_clock(i32 noundef %mul6, ptr noundef nonnull %to, i32 noundef 3, i32 noundef 288000000, ptr noundef nonnull %best_diff.i24) #10
  %call.1.i26 = call fastcc i32 @sm501_calc_clock(i32 noundef %mul6, ptr noundef nonnull %to, i32 noundef 3, i32 noundef 336000000, ptr noundef nonnull %best_diff.i24) #10
  %30 = ptrtoint ptr %to to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %to, align 4
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %2, align 4
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %3, align 4
  %shl.i29 = shl i32 %33, %35
  %div.i30 = udiv i32 %31, %shl.i29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %best_diff.i24) #10
  %div814 = lshr i32 %div.i30, 1
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry.sw.bb9_crit_edge, %entry.sw.bb9_crit_edge38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %best_diff.i31) #10
  %36 = ptrtoint ptr %best_diff.i31 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 999999999, ptr %best_diff.i31, align 4
  %call.i32 = call fastcc i32 @sm501_calc_clock(i32 noundef %req_freq, ptr noundef nonnull %to, i32 noundef 3, i32 noundef 288000000, ptr noundef nonnull %best_diff.i31) #10
  %call.1.i33 = call fastcc i32 @sm501_calc_clock(i32 noundef %req_freq, ptr noundef nonnull %to, i32 noundef 3, i32 noundef 336000000, ptr noundef nonnull %best_diff.i31) #10
  %37 = ptrtoint ptr %to to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %to, align 4
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %2, align 4
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %3, align 4
  %shl.i36 = shl i32 %40, %42
  %div.i37 = udiv i32 %38, %shl.i36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %best_diff.i31) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb5, %if.else, %sm501_calc_pll.exit, %entry.sw.epilog_crit_edge
  %sm501_freq.0 = phi i32 [ %div.i37, %sw.bb9 ], [ %div814, %sw.bb5 ], [ %div16, %sm501_calc_pll.exit ], [ %div415, %if.else ], [ 0, %entry.sw.epilog_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %to) #10
  ret i32 %sm501_freq.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sm501_base_exit() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @sm501_plat_driver) #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @sm501_pci_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sm501_base_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sm501_plat_driver, ptr noundef null) #10
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @sm501_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sm501_calc_clock(i32 noundef %freq, ptr nocapture noundef writeonly %clock, i32 noundef %max_div, i32 noundef %mclk, ptr nocapture noundef %best_diff) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %max_div)
  %cmp.not33 = icmp slt i32 %max_div, 1
  br i1 %cmp.not33, label %entry.for.end15_crit_edge, label %for.cond1.preheader.lr.ph

entry.for.end15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end15

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %divider10 = getelementptr inbounds %struct.sm501_clock, ptr %clock, i32 0, i32 1
  %shift11 = getelementptr inbounds %struct.sm501_clock, ptr %clock, i32 0, i32 2
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc.7.for.cond1.preheader_crit_edge, %for.cond1.preheader.lr.ph
  %ret.035 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %ret.2.7, %for.inc.7.for.cond1.preheader_crit_edge ]
  %divider.034 = phi i32 [ 1, %for.cond1.preheader.lr.ph ], [ %add14, %for.inc.7.for.cond1.preheader_crit_edge ]
  %div = sdiv i32 %divider.034, 2
  %add = add i32 %div, %mclk
  %div4 = udiv i32 %add, %divider.034
  %sub = sub i32 %div4, %freq
  %0 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %1 = ptrtoint ptr %best_diff to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %best_diff, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %2)
  %cmp7 = icmp slt i32 %0, %2
  br i1 %cmp7, label %if.then8, label %for.cond1.preheader.for.inc_crit_edge

for.cond1.preheader.for.inc_crit_edge:            ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then8:                                         ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %best_diff to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %0, ptr %best_diff, align 4
  %4 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mclk, ptr %clock, align 4
  %5 = ptrtoint ptr %divider10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %divider.034, ptr %divider10, align 4
  %6 = ptrtoint ptr %shift11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %shift11, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %for.cond1.preheader.for.inc_crit_edge
  %ret.2 = phi i32 [ 1, %if.then8 ], [ %ret.035, %for.cond1.preheader.for.inc_crit_edge ]
  %shl.1 = shl i32 %divider.034, 1
  %div.1 = sdiv i32 %shl.1, 2
  %add.1 = add i32 %div.1, %mclk
  %div4.1 = udiv i32 %add.1, %shl.1
  %sub.1 = sub i32 %div4.1, %freq
  %7 = tail call i32 @llvm.abs.i32(i32 %sub.1, i1 false)
  %8 = ptrtoint ptr %best_diff to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %best_diff, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp7.1 = icmp slt i32 %7, %9
  br i1 %cmp7.1, label %if.then8.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then8.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %best_diff to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %best_diff, align 4
  %11 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mclk, ptr %clock, align 4
  %12 = ptrtoint ptr %divider10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %divider.034, ptr %divider10, align 4
  %13 = ptrtoint ptr %shift11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %shift11, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then8.1, %for.inc.for.inc.1_crit_edge
  %ret.2.1 = phi i32 [ 1, %if.then8.1 ], [ %ret.2, %for.inc.for.inc.1_crit_edge ]
  %shl.2 = shl i32 %divider.034, 2
  %div.2 = sdiv i32 %shl.2, 2
  %add.2 = add i32 %div.2, %mclk
  %div4.2 = udiv i32 %add.2, %shl.2
  %sub.2 = sub i32 %div4.2, %freq
  %14 = tail call i32 @llvm.abs.i32(i32 %sub.2, i1 false)
  %15 = ptrtoint ptr %best_diff to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %best_diff, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp7.2 = icmp slt i32 %14, %16
  br i1 %cmp7.2, label %if.then8.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then8.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %best_diff to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %14, ptr %best_diff, align 4
  %18 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mclk, ptr %clock, align 4
  %19 = ptrtoint ptr %divider10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %divider.034, ptr %divider10, align 4
  %20 = ptrtoint ptr %shift11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %shift11, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then8.2, %for.inc.1.for.inc.2_crit_edge
  %ret.2.2 = phi i32 [ 1, %if.then8.2 ], [ %ret.2.1, %for.inc.1.for.inc.2_crit_edge ]
  %shl.3 = shl i32 %divider.034, 3
  %div.3 = sdiv i32 %shl.3, 2
  %add.3 = add i32 %div.3, %mclk
  %div4.3 = udiv i32 %add.3, %shl.3
  %sub.3 = sub i32 %div4.3, %freq
  %21 = tail call i32 @llvm.abs.i32(i32 %sub.3, i1 false)
  %22 = ptrtoint ptr %best_diff to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %best_diff, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp7.3 = icmp slt i32 %21, %23
  br i1 %cmp7.3, label %if.then8.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.then8.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %best_diff to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %21, ptr %best_diff, align 4
  %25 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mclk, ptr %clock, align 4
  %26 = ptrtoint ptr %divider10 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %divider.034, ptr %divider10, align 4
  %27 = ptrtoint ptr %shift11 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3, ptr %shift11, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then8.3, %for.inc.2.for.inc.3_crit_edge
  %ret.2.3 = phi i32 [ 1, %if.then8.3 ], [ %ret.2.2, %for.inc.2.for.inc.3_crit_edge ]
  %shl.4 = shl i32 %divider.034, 4
  %div.4 = sdiv i32 %shl.4, 2
  %add.4 = add i32 %div.4, %mclk
  %div4.4 = udiv i32 %add.4, %shl.4
  %sub.4 = sub i32 %div4.4, %freq
  %28 = tail call i32 @llvm.abs.i32(i32 %sub.4, i1 false)
  %29 = ptrtoint ptr %best_diff to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %best_diff, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp7.4 = icmp slt i32 %28, %30
  br i1 %cmp7.4, label %if.then8.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.then8.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %best_diff to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %28, ptr %best_diff, align 4
  %32 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mclk, ptr %clock, align 4
  %33 = ptrtoint ptr %divider10 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %divider.034, ptr %divider10, align 4
  %34 = ptrtoint ptr %shift11 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 4, ptr %shift11, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then8.4, %for.inc.3.for.inc.4_crit_edge
  %ret.2.4 = phi i32 [ 1, %if.then8.4 ], [ %ret.2.3, %for.inc.3.for.inc.4_crit_edge ]
  %shl.5 = shl i32 %divider.034, 5
  %div.5 = sdiv i32 %shl.5, 2
  %add.5 = add i32 %div.5, %mclk
  %div4.5 = udiv i32 %add.5, %shl.5
  %sub.5 = sub i32 %div4.5, %freq
  %35 = tail call i32 @llvm.abs.i32(i32 %sub.5, i1 false)
  %36 = ptrtoint ptr %best_diff to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %best_diff, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp7.5 = icmp slt i32 %35, %37
  br i1 %cmp7.5, label %if.then8.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

if.then8.5:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %best_diff to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %35, ptr %best_diff, align 4
  %39 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %mclk, ptr %clock, align 4
  %40 = ptrtoint ptr %divider10 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %divider.034, ptr %divider10, align 4
  %41 = ptrtoint ptr %shift11 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 5, ptr %shift11, align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then8.5, %for.inc.4.for.inc.5_crit_edge
  %ret.2.5 = phi i32 [ 1, %if.then8.5 ], [ %ret.2.4, %for.inc.4.for.inc.5_crit_edge ]
  %shl.6 = shl i32 %divider.034, 6
  %div.6 = sdiv i32 %shl.6, 2
  %add.6 = add i32 %div.6, %mclk
  %div4.6 = udiv i32 %add.6, %shl.6
  %sub.6 = sub i32 %div4.6, %freq
  %42 = tail call i32 @llvm.abs.i32(i32 %sub.6, i1 false)
  %43 = ptrtoint ptr %best_diff to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %best_diff, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp7.6 = icmp slt i32 %42, %44
  br i1 %cmp7.6, label %if.then8.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

if.then8.6:                                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %best_diff to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %42, ptr %best_diff, align 4
  %46 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %mclk, ptr %clock, align 4
  %47 = ptrtoint ptr %divider10 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %divider.034, ptr %divider10, align 4
  %48 = ptrtoint ptr %shift11 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 6, ptr %shift11, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then8.6, %for.inc.5.for.inc.6_crit_edge
  %ret.2.6 = phi i32 [ 1, %if.then8.6 ], [ %ret.2.5, %for.inc.5.for.inc.6_crit_edge ]
  %shl.7 = shl i32 %divider.034, 7
  %div.7 = sdiv i32 %shl.7, 2
  %add.7 = add i32 %div.7, %mclk
  %div4.7 = udiv i32 %add.7, %shl.7
  %sub.7 = sub i32 %div4.7, %freq
  %49 = tail call i32 @llvm.abs.i32(i32 %sub.7, i1 false)
  %50 = ptrtoint ptr %best_diff to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %best_diff, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp7.7 = icmp slt i32 %49, %51
  br i1 %cmp7.7, label %if.then8.7, label %for.inc.6.for.inc.7_crit_edge

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.7

if.then8.7:                                       ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %best_diff to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %49, ptr %best_diff, align 4
  %53 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %mclk, ptr %clock, align 4
  %54 = ptrtoint ptr %divider10 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %divider.034, ptr %divider10, align 4
  %55 = ptrtoint ptr %shift11 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 7, ptr %shift11, align 4
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then8.7, %for.inc.6.for.inc.7_crit_edge
  %ret.2.7 = phi i32 [ 1, %if.then8.7 ], [ %ret.2.6, %for.inc.6.for.inc.7_crit_edge ]
  %add14 = add i32 %divider.034, 2
  %cmp.not = icmp sgt i32 %add14, %max_div
  br i1 %cmp.not, label %for.inc.7.for.end15_crit_edge, label %for.inc.7.for.cond1.preheader_crit_edge

for.inc.7.for.cond1.preheader_crit_edge:          ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond1.preheader

for.inc.7.for.end15_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end15

for.end15:                                        ; preds = %for.inc.7.for.end15_crit_edge, %entry.for.end15_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.for.end15_crit_edge ], [ %ret.2.7, %for.inc.7.for.end15_crit_edge ]
  ret i32 %ret.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm501_plat_probe(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1044) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %dev2 = getelementptr inbounds %struct.sm501_devdata, ptr %call7.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %dev2, align 8
  %id = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %pdev_id = getelementptr inbounds %struct.sm501_devdata, ptr %call7.i.i, i32 0, i32 12
  %4 = ptrtoint ptr %pdev_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pdev_id, align 4
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %5 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %platform_data.i, align 8
  %platdata = getelementptr inbounds %struct.sm501_devdata, ptr %call7.i.i, i32 0, i32 8
  %7 = ptrtoint ptr %platdata to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %platdata, align 8
  %call5 = tail call i32 @platform_get_irq(ptr noundef %dev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.end.err_res_crit_edge, label %if.end7

if.end.err_res_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_res

if.end7:                                          ; preds = %if.end
  %irq = getelementptr inbounds %struct.sm501_devdata, ptr %call7.i.i, i32 0, i32 13
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call5, ptr %irq, align 8
  %call8 = tail call ptr @platform_get_resource(ptr noundef %dev, i32 noundef 512, i32 noundef 1) #10
  %io_res = getelementptr inbounds %struct.sm501_devdata, ptr %call7.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %io_res to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8, ptr %io_res, align 4
  %call9 = tail call ptr @platform_get_resource(ptr noundef %dev, i32 noundef 512, i32 noundef 0) #10
  %mem_res = getelementptr inbounds %struct.sm501_devdata, ptr %call7.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %mem_res to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call9, ptr %mem_res, align 8
  %tobool11.not = icmp eq ptr %call8, null
  %tobool13.not = icmp eq ptr %call9, null
  %or.cond = select i1 %tobool11.not, i1 true, i1 %tobool13.not
  br i1 %or.cond, label %do.end, label %if.end16

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #13
  br label %err_res

if.end16:                                         ; preds = %if.end7
  %11 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call8, align 4
  %call18 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %12, i32 noundef 256, ptr noundef nonnull @.str, i32 noundef 0) #10
  %regs_claim = getelementptr inbounds %struct.sm501_devdata, ptr %call7.i.i, i32 0, i32 7
  %13 = ptrtoint ptr %regs_claim to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call18, ptr %regs_claim, align 4
  %tobool20.not = icmp eq ptr %call18, null
  br i1 %tobool20.not, label %do.end24, label %if.end26

do.end24:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #13
  br label %err_res

if.end26:                                         ; preds = %if.end16
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %15 = ptrtoint ptr %io_res to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io_res, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %18
  %add.i = add i32 %sub.i, %20
  %call31 = tail call ptr @ioremap(i32 noundef %18, i32 noundef %add.i) #10
  %regs = getelementptr inbounds %struct.sm501_devdata, ptr %call7.i.i, i32 0, i32 14
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call31, ptr %regs, align 4
  %tobool33.not = icmp eq ptr %call31, null
  br i1 %tobool33.not, label %do.end37, label %if.end39

do.end37:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #13
  br label %err_claim

if.end39:                                         ; preds = %if.end26
  %call40 = tail call fastcc i32 @sm501_init_dev(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end39.cleanup_crit_edge, label %err_unmap

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_unmap:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  tail call void @iounmap(ptr noundef %23) #10
  br label %err_claim

err_claim:                                        ; preds = %err_unmap, %do.end37
  %ret.0 = phi i32 [ %call40, %err_unmap ], [ -5, %do.end37 ]
  %24 = ptrtoint ptr %io_res to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io_res, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %27, i32 noundef 256) #10
  br label %err_res

err_res:                                          ; preds = %err_claim, %do.end24, %do.end, %if.end.err_res_crit_edge
  %ret.1 = phi i32 [ %call5, %if.end.err_res_crit_edge ], [ %ret.0, %err_claim ], [ -16, %do.end24 ], [ -2, %do.end ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_res, %if.end39.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end39.cleanup_crit_edge ], [ %ret.1, %err_res ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm501_plat_remove(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @sm501_dev_remove(ptr noundef %1)
  %regs = getelementptr inbounds %struct.sm501_devdata, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  tail call void @iounmap(ptr noundef %3) #10
  %io_res = getelementptr inbounds %struct.sm501_devdata, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %io_res to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_res, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %7, i32 noundef 256) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm501_plat_suspend(ptr nocapture noundef readonly %pdev, [1 x i32] %state.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %in_suspend = getelementptr inbounds %struct.sm501_devdata, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %in_suspend to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %in_suspend, align 4
  %regs = getelementptr inbounds %struct.sm501_devdata, ptr %1, i32 0, i32 14
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !237
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !265
  %pm_misc = getelementptr inbounds %struct.sm501_devdata, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %pm_misc to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %pm_misc, align 4
  %platdata = getelementptr inbounds %struct.sm501_devdata, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platdata, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.sm501_platdata, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %if.then5

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @sm501_set_power(ptr noundef %1, i32 noundef 0)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm501_plat_resume(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @sm501_set_power(ptr noundef %1, i32 noundef 1)
  %regs = getelementptr inbounds %struct.sm501_devdata, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !237
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !266
  %pm_misc = getelementptr inbounds %struct.sm501_devdata, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %pm_misc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pm_misc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp eq i32 %5, %7
  br i1 %cmp.not, label %entry.if.end14_crit_edge, label %do.end

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

do.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.sm501_devdata, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.85) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !267
  tail call void @arm_heavy_mb() #10
  %10 = ptrtoint ptr %pm_misc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pm_misc, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %add.ptr8 = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %12) #10, !srcloc !240
  %platdata = getelementptr inbounds %struct.sm501_devdata, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %platdata, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %do.end.if.end14_crit_edge, label %land.lhs.true

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

land.lhs.true:                                    ; preds = %do.end
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %tobool10.not = icmp eq ptr %18, null
  br i1 %tobool10.not, label %land.lhs.true.if.end14_crit_edge, label %if.then11

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @sm501_init_regs(ptr noundef %1, ptr noundef nonnull %18)
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %land.lhs.true.if.end14_crit_edge, %do.end.if.end14_crit_edge, %entry.if.end14_crit_edge
  %in_suspend = getelementptr inbounds %struct.sm501_devdata, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %in_suspend to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %in_suspend, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sm501_init_dev(ptr noundef %sm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %clock_lock = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %clock_lock, ptr noundef nonnull @.str.22, ptr noundef nonnull @sm501_init_dev.__key) #10
  tail call void @__raw_spin_lock_init(ptr noundef %sm, ptr noundef nonnull @.str.24, ptr noundef nonnull @sm501_init_dev.__key.23, i16 noundef signext 3) #10
  %devices = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 2
  %0 = ptrtoint ptr %devices to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %devices, ptr %devices, align 4
  %prev.i = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %devices, ptr %prev.i, align 4
  %regs = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 14
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 96
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !237
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  %and = and i32 %5, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 83951616, i32 %and)
  %cmp.not = icmp eq i32 %and, 83951616
  br i1 %cmp.not, label %do.body9, label %do.end8

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.25, i32 noundef %5) #13
  br label %cleanup

do.body9:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !269
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr13 = getelementptr i8, ptr %9, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 0) #10, !srcloc !240
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr17 = getelementptr i8, ptr %11, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #10, !srcloc !237
  %13 = lshr i32 %12, 21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !270
  %and21 = and i32 %13, 7
  %arrayidx = getelementptr [6 x i32], ptr @sm501_mem_local, i32 0, i32 %and21
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %dev25 = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 4
  %16 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev25, align 4
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %shr27 = lshr i32 %15, 20
  %irq = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 13
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.28, ptr noundef %19, i32 noundef %5, i32 noundef %shr27, i32 noundef %21) #13
  %and28 = and i32 %5, 255
  %rev = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 15
  %22 = ptrtoint ptr %rev to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and28, ptr %rev, align 4
  %23 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev25, align 4
  %call30 = tail call i32 @device_create_file(ptr noundef %24, ptr noundef nonnull @dev_attr_dbg_regs) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool.not = icmp eq i32 %call30, 0
  br i1 %tobool.not, label %do.body9.if.end36_crit_edge, label %do.end34

do.body9.if.end36_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

do.end34:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.32) #13
  br label %if.end36

if.end36:                                         ; preds = %do.end34, %do.body9.if.end36_crit_edge
  %platdata = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 8
  %27 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %platdata, align 4
  %tobool37.not = icmp eq ptr %28, null
  br i1 %tobool37.not, label %if.end36.if.end74_crit_edge, label %cond.end

if.end36.if.end74_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

cond.end:                                         ; preds = %if.end36
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %tobool38.not = icmp eq ptr %30, null
  br i1 %tobool38.not, label %cond.end.land.lhs.true_crit_edge, label %if.then39

cond.end.land.lhs.true_crit_edge:                 ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.then39:                                        ; preds = %cond.end
  tail call fastcc void @sm501_init_regs(ptr noundef %sm, ptr noundef nonnull %30)
  %devices40 = getelementptr inbounds %struct.sm501_initdata, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %devices40 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %devices40, align 4
  %and41 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.then39.if.end45_crit_edge, label %if.then43

if.then39.if.end45_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then43:                                        ; preds = %if.then39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3520, i32 noundef 1096) #14
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then43.if.end45_crit_edge, label %sm501_create_subdev.exit.i

if.then43.if.end45_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

sm501_create_subdev.exit.i:                       ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  %pdev.i.i = getelementptr inbounds %struct.sm501_device, ptr %call7.i.i.i.i, i32 0, i32 1
  %release.i.i = getelementptr inbounds %struct.sm501_device, ptr %call7.i.i.i.i, i32 0, i32 1, i32 3, i32 35
  %34 = ptrtoint ptr %release.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @sm501_device_release, ptr %release.i.i, align 4
  %35 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.47, ptr %pdev.i.i, align 8
  %pdev_id.i.i = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 12
  %36 = ptrtoint ptr %pdev_id.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pdev_id.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.sm501_device, ptr %call7.i.i.i.i, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %id.i.i, align 4
  %39 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev25, align 4
  %parent.i.i = getelementptr inbounds %struct.sm501_device, ptr %call7.i.i.i.i, i32 0, i32 1, i32 3, i32 1
  %41 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %parent.i.i, align 8
  %coherent_dma_mask.i.i = getelementptr inbounds %struct.sm501_device, ptr %call7.i.i.i.i, i32 0, i32 1, i32 3, i32 19
  %42 = ptrtoint ptr %coherent_dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 4294967295, ptr %coherent_dma_mask.i.i, align 8
  %add.ptr.i.i = getelementptr %struct.sm501_device, ptr %call7.i.i.i.i, i32 1
  %resource.i.i = getelementptr inbounds %struct.sm501_device, ptr %call7.i.i.i.i, i32 0, i32 1, i32 7
  %43 = ptrtoint ptr %resource.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr.i.i, ptr %resource.i.i, align 8
  %num_resources.i.i = getelementptr inbounds %struct.sm501_device, ptr %call7.i.i.i.i, i32 0, i32 1, i32 6
  %44 = ptrtoint ptr %num_resources.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 3, ptr %num_resources.i.i, align 4
  %flags.i.i = getelementptr %struct.sm501_device, ptr %call7.i.i.i.i, i32 1, i32 1, i32 1
  %45 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 512, ptr %flags.i.i, align 4
  %io_res.i.i = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 5
  %46 = ptrtoint ptr %io_res.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %io_res.i.i, align 4
  %parent.i1.i = getelementptr inbounds %struct.resource, ptr %add.ptr.i.i, i32 0, i32 5
  %48 = ptrtoint ptr %parent.i1.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %parent.i1.i, align 4
  %49 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %47, align 4
  %add.i.i = add i32 %50, 262144
  %51 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add.i.i, ptr %add.ptr.i.i, align 8
  %sub.i.i = add i32 %50, 393215
  %end.i.i = getelementptr %struct.sm501_device, ptr %call7.i.i.i.i, i32 1, i32 0, i32 1
  %52 = ptrtoint ptr %end.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %sub.i.i, ptr %end.i.i, align 4
  %arrayidx2.i = getelementptr %struct.sm501_device, ptr %call7.i.i.i.i, i32 1, i32 1, i32 3, i32 0, i32 1, i32 1
  %sub.i2.i = add i32 %15, -262144
  %flags.i3.i = getelementptr %struct.sm501_device, ptr %call7.i.i.i.i, i32 1, i32 1, i32 3, i32 0, i32 4
  %53 = ptrtoint ptr %flags.i3.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 512, ptr %flags.i3.i, align 4
  %mem_res.i.i = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 6
  %54 = ptrtoint ptr %mem_res.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mem_res.i.i, align 4
  %parent.i4.i = getelementptr %struct.sm501_device, ptr %call7.i.i.i.i, i32 1, i32 1, i32 3, i32 0, i32 6
  %56 = ptrtoint ptr %parent.i4.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %parent.i4.i, align 4
  %57 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %55, align 4
  %add.i5.i = add i32 %58, %sub.i2.i
  %59 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %add.i5.i, ptr %arrayidx2.i, align 8
  %sub5.i.i = add i32 %add.i5.i, 262143
  %end.i6.i = getelementptr %struct.sm501_device, ptr %call7.i.i.i.i, i32 1, i32 1, i32 3, i32 0, i32 2
  %60 = ptrtoint ptr %end.i6.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %sub5.i.i, ptr %end.i6.i, align 4
  %arrayidx4.i = getelementptr %struct.sm501_device, ptr %call7.i.i.i.i, i32 1, i32 1, i32 3, i32 0, i32 7, i32 0, i32 1, i32 1
  %flags.i7.i = getelementptr %struct.sm501_device, ptr %call7.i.i.i.i, i32 1, i32 1, i32 3, i32 0, i32 7, i32 0, i32 3, i32 1
  %61 = ptrtoint ptr %flags.i7.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1024, ptr %flags.i7.i, align 4
  %parent.i8.i = getelementptr %struct.sm501_device, ptr %call7.i.i.i.i, i32 1, i32 1, i32 3, i32 0, i32 7, i32 0, i32 3, i32 2
  %62 = ptrtoint ptr %parent.i8.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %parent.i8.i, align 4
  %63 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %irq, align 4
  %end.i9.i = getelementptr %struct.sm501_device, ptr %call7.i.i.i.i, i32 1, i32 1, i32 3, i32 0, i32 7, i32 0, i32 2
  %65 = ptrtoint ptr %end.i9.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %end.i9.i, align 4
  %66 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %64, ptr %arrayidx4.i, align 8
  %call5.i = tail call fastcc i32 @sm501_register_device(ptr noundef %sm, ptr noundef nonnull %pdev.i.i) #10
  br label %if.end45

if.end45:                                         ; preds = %sm501_create_subdev.exit.i, %if.then43.if.end45_crit_edge, %if.then39.if.end45_crit_edge
  %mem_avail.1 = phi i32 [ %15, %if.then39.if.end45_crit_edge ], [ %15, %if.then43.if.end45_crit_edge ], [ %sub.i2.i, %sm501_create_subdev.exit.i ]
  %67 = ptrtoint ptr %devices40 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %devices40, align 4
  %and47 = and i32 %68, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end45.if.end52_crit_edge, label %if.then49

if.end45.if.end52_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then49:                                        ; preds = %if.end45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %69 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i.i128 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %69, i32 noundef 3520, i32 noundef 1216) #14
  %tobool.not.i.i129 = icmp eq ptr %call7.i.i.i.i128, null
  br i1 %tobool.not.i.i129, label %if.then49.if.end52_crit_edge, label %sm501_create_subdev.exit.i137

if.then49.if.end52_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

sm501_create_subdev.exit.i137:                    ; preds = %if.then49
  %pdev.i.i130 = getelementptr inbounds %struct.sm501_device, ptr %call7.i.i.i.i128, i32 0, i32 1
  %release.i.i131 = getelementptr inbounds %struct.sm501_device, ptr %call7.i.i.i.i128, i32 0, i32 1, i32 3, i32 35
  %70 = ptrtoint ptr %release.i.i131 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @sm501_device_release, ptr %release.i.i131, align 4
  %71 = ptrtoint ptr %pdev.i.i130 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @.str.54, ptr %pdev.i.i130, align 8
  %pdev_id.i.i132 = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 12
  %72 = ptrtoint ptr %pdev_id.i.i132 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pdev_id.i.i132, align 4
  %id.i.i133 = getelementptr inbounds %struct.sm501_device, ptr %call7.i.i.i.i128, i32 0, i32 1, i32 1
  %74 = ptrtoint ptr %id.i.i133 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %id.i.i133, align 4
  %75 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev25, align 4
  %parent.i.i135 = getelementptr inbounds %struct.sm501_device, ptr %call7.i.i.i.i128, i32 0, i32 1, i32 3, i32 1
  %77 = ptrtoint ptr %parent.i.i135 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %76, ptr %parent.i.i135, align 8
  %coherent_dma_mask.i.i136 = getelementptr inbounds %struct.sm501_device, ptr %call7.i.i.i.i128, i32 0, i32 1, i32 3, i32 19
  %78 = ptrtoint ptr %coherent_dma_mask.i.i136 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 4294967295, ptr %coherent_dma_mask.i.i136, align 8
  %add.ptr17.i.i = getelementptr %struct.sm501_device, ptr %call7.i.i.i.i128, i32 1
  %platform_data.i.i = getelementptr inbounds %struct.sm501_device, ptr %call7.i.i.i.i128, i32 0, i32 1, i32 3, i32 7
  %79 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %add.ptr17.i.i, ptr %platform_data.i.i, align 8
  %and.i = and i32 %68, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %sm501_create_subdev.exit.i137.if.end10.i_crit_edge, label %if.then3.i

sm501_create_subdev.exit.i137.if.end10.i_crit_edge: ; preds = %sm501_create_subdev.exit.i137
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then3.i:                                       ; preds = %sm501_create_subdev.exit.i137
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr.i = getelementptr %struct.sm501_device, ptr %call7.i.i.i.i128, i32 1, i32 1, i32 3, i32 0, i32 7, i32 0, i32 3
  %80 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regs, align 4
  %add.ptr.i.i138 = getelementptr i8, ptr %81, i32 196608
  %membase.i.i = getelementptr %struct.sm501_device, ptr %call7.i.i.i.i128, i32 1, i32 0, i32 1
  %82 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %add.ptr.i.i138, ptr %membase.i.i, align 4
  %io_res.i.i139 = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 5
  %83 = ptrtoint ptr %io_res.i.i139 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %io_res.i.i139, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %84, align 4
  %add.i.i140 = add i32 %86, 196608
  %mapbase.i.i = getelementptr %struct.sm501_device, ptr %call7.i.i.i.i128, i32 1, i32 1
  %87 = ptrtoint ptr %mapbase.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %add.i.i140, ptr %mapbase.i.i, align 8
  %iotype.i.i = getelementptr inbounds %struct.plat_serial8250_port, ptr %add.ptr17.i.i, i32 0, i32 8
  %88 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 2, ptr %iotype.i.i, align 1
  %89 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %irq, align 4
  %irq1.i.i = getelementptr %struct.sm501_device, ptr %call7.i.i.i.i128, i32 1, i32 1, i32 1
  %91 = ptrtoint ptr %irq1.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %irq1.i.i, align 4
  %flags.i.i142 = getelementptr %struct.sm501_device, ptr %call7.i.i.i.i128, i32 1, i32 1, i32 3, i32 0, i32 1, i32 1
  %92 = ptrtoint ptr %flags.i.i142 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 285212736, ptr %flags.i.i142, align 8
  %regshift.i.i = getelementptr %struct.sm501_device, ptr %call7.i.i.i.i128, i32 1, i32 1, i32 3, i32 0, i32 1
  %93 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 2, ptr %regshift.i.i, align 4
  %uartclk.i.i = getelementptr inbounds %struct.plat_serial8250_port, ptr %add.ptr17.i.i, i32 0, i32 5
  %94 = ptrtoint ptr %uartclk.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 153600, ptr %uartclk.i.i, align 4
  %call5.i143 = tail call i32 @sm501_unit_power(ptr noundef %76, i32 noundef 7, i32 noundef 1) #10
  %95 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev25, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %96, i32 0, i32 8
  %97 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %driver_data.i.i.i, align 4
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %98) #10
  %regs.i2.i = getelementptr inbounds %struct.sm501_devdata, ptr %98, i32 0, i32 14
  %99 = ptrtoint ptr %regs.i2.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regs.i2.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %100, i32 48
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i) #10, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !243
  %102 = or i32 %101, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !244
  tail call void @arm_heavy_mb() #10
  %103 = ptrtoint ptr %regs.i2.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regs.i2.i, align 4
  %add.ptr13.i.i = getelementptr i8, ptr %104, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.i, i32 %102) #10, !srcloc !240
  %105 = ptrtoint ptr %regs.i2.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regs.i2.i, align 4
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #10, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %98, i32 noundef %call3.i.i) #10
  %108 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev25, align 4
  %driver_data.i.i4.i = getelementptr inbounds %struct.device, ptr %109, i32 0, i32 8
  %110 = ptrtoint ptr %driver_data.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %driver_data.i.i4.i, align 4
  %call3.i5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %111) #10
  %regs.i6.i = getelementptr inbounds %struct.sm501_devdata, ptr %111, i32 0, i32 14
  %112 = ptrtoint ptr %regs.i6.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regs.i6.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %113, i32 12
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7.i) #10, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !243
  %115 = or i32 %114, -536805376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !244
  tail call void @arm_heavy_mb() #10
  %116 = ptrtoint ptr %regs.i6.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regs.i6.i, align 4
  %add.ptr13.i9.i = getelementptr i8, ptr %117, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i9.i, i32 %115) #10, !srcloc !240
  %118 = ptrtoint ptr %regs.i6.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regs.i6.i, align 4
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %119) #10, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %111, i32 noundef %call3.i5.i) #10
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then3.i, %sm501_create_subdev.exit.i137.if.end10.i_crit_edge
  %uart_data.0.i = phi ptr [ %incdec.ptr.i, %if.then3.i ], [ %add.ptr17.i.i, %sm501_create_subdev.exit.i137.if.end10.i_crit_edge ]
  %and11.i = and i32 %68, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end10.i.if.end21.i_crit_edge, label %if.then13.i

if.end10.i.if.end21.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %121 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %regs, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %122, i32 196640
  %membase.i12.i = getelementptr inbounds %struct.plat_serial8250_port, ptr %uart_data.0.i, i32 0, i32 1
  %123 = ptrtoint ptr %membase.i12.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %add.ptr.i11.i, ptr %membase.i12.i, align 4
  %io_res.i13.i = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 5
  %124 = ptrtoint ptr %io_res.i13.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %io_res.i13.i, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %125, align 4
  %add.i14.i = add i32 %127, 196640
  %mapbase.i15.i = getelementptr inbounds %struct.plat_serial8250_port, ptr %uart_data.0.i, i32 0, i32 2
  %128 = ptrtoint ptr %mapbase.i15.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %add.i14.i, ptr %mapbase.i15.i, align 4
  %iotype.i16.i = getelementptr inbounds %struct.plat_serial8250_port, ptr %uart_data.0.i, i32 0, i32 8
  %129 = ptrtoint ptr %iotype.i16.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 2, ptr %iotype.i16.i, align 1
  %130 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %irq, align 4
  %irq1.i18.i = getelementptr inbounds %struct.plat_serial8250_port, ptr %uart_data.0.i, i32 0, i32 3
  %132 = ptrtoint ptr %irq1.i18.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %irq1.i18.i, align 4
  %flags.i19.i = getelementptr inbounds %struct.plat_serial8250_port, ptr %uart_data.0.i, i32 0, i32 11
  %133 = ptrtoint ptr %flags.i19.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 285212736, ptr %flags.i19.i, align 4
  %regshift.i20.i = getelementptr inbounds %struct.plat_serial8250_port, ptr %uart_data.0.i, i32 0, i32 7
  %134 = ptrtoint ptr %regshift.i20.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 2, ptr %regshift.i20.i, align 4
  %uartclk.i21.i = getelementptr inbounds %struct.plat_serial8250_port, ptr %uart_data.0.i, i32 0, i32 5
  %135 = ptrtoint ptr %uartclk.i21.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 153600, ptr %uartclk.i21.i, align 4
  %136 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev25, align 4
  %call16.i = tail call i32 @sm501_unit_power(ptr noundef %137, i32 noundef 8, i32 noundef 1) #10
  %138 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev25, align 4
  %driver_data.i.i22.i = getelementptr inbounds %struct.device, ptr %139, i32 0, i32 8
  %140 = ptrtoint ptr %driver_data.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %driver_data.i.i22.i, align 4
  %call3.i23.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %141) #10
  %regs.i24.i = getelementptr inbounds %struct.sm501_devdata, ptr %141, i32 0, i32 14
  %142 = ptrtoint ptr %regs.i24.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %regs.i24.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %143, i32 48
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25.i) #10, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !243
  %145 = or i32 %144, 2097152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !244
  tail call void @arm_heavy_mb() #10
  %146 = ptrtoint ptr %regs.i24.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %regs.i24.i, align 4
  %add.ptr13.i27.i = getelementptr i8, ptr %147, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i27.i, i32 %145) #10, !srcloc !240
  %148 = ptrtoint ptr %regs.i24.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %regs.i24.i, align 4
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %149) #10, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %141, i32 noundef %call3.i23.i) #10
  %151 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dev25, align 4
  %driver_data.i.i28.i = getelementptr inbounds %struct.device, ptr %152, i32 0, i32 8
  %153 = ptrtoint ptr %driver_data.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %driver_data.i.i28.i, align 4
  %call3.i29.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %154) #10
  %regs.i30.i = getelementptr inbounds %struct.sm501_devdata, ptr %154, i32 0, i32 14
  %155 = ptrtoint ptr %regs.i30.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %regs.i30.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %156, i32 12
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #10, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !243
  %158 = or i32 %157, 1966080
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !244
  tail call void @arm_heavy_mb() #10
  %159 = ptrtoint ptr %regs.i30.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %regs.i30.i, align 4
  %add.ptr13.i33.i = getelementptr i8, ptr %160, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i33.i, i32 %158) #10, !srcloc !240
  %161 = ptrtoint ptr %regs.i30.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %regs.i30.i, align 4
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %162) #10, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %154, i32 noundef %call3.i29.i) #10
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then13.i, %if.end10.i.if.end21.i_crit_edge
  %164 = ptrtoint ptr %id.i.i133 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 9, ptr %id.i.i133, align 4
  %call22.i = tail call fastcc i32 @sm501_register_device(ptr noundef %sm, ptr noundef nonnull %pdev.i.i130) #10
  br label %if.end52

if.end52:                                         ; preds = %if.end21.i, %if.then49.if.end52_crit_edge, %if.end45.if.end52_crit_edge
  %165 = ptrtoint ptr %devices40 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %devices40, align 4
  %and54 = and i32 %166, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end52.land.lhs.true_crit_edge, label %if.then56

if.end52.land.lhs.true_crit_edge:                 ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @sm501_register_gpio(ptr noundef %sm)
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then56, %if.end52.land.lhs.true_crit_edge, %cond.end.land.lhs.true_crit_edge
  %mem_avail.2.ph = phi i32 [ %mem_avail.1, %if.then56 ], [ %mem_avail.1, %if.end52.land.lhs.true_crit_edge ], [ %15, %cond.end.land.lhs.true_crit_edge ]
  %gpio_i2c = getelementptr inbounds %struct.sm501_platdata, ptr %28, i32 0, i32 7
  %167 = ptrtoint ptr %gpio_i2c to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %gpio_i2c, align 4
  %tobool61.not = icmp eq ptr %168, null
  br i1 %tobool61.not, label %land.lhs.true.if.end74_crit_edge, label %land.lhs.true62

land.lhs.true.if.end74_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

land.lhs.true62:                                  ; preds = %land.lhs.true
  %gpio_i2c_nr = getelementptr inbounds %struct.sm501_platdata, ptr %28, i32 0, i32 8
  %169 = ptrtoint ptr %gpio_i2c_nr to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %gpio_i2c_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %cmp63.not = icmp eq i32 %170, 0
  br i1 %cmp63.not, label %land.lhs.true62.if.end74_crit_edge, label %if.then64

land.lhs.true62.if.end74_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

if.then64:                                        ; preds = %land.lhs.true62
  %registered.i = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 3, i32 3
  %171 = ptrtoint ptr %registered.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %bf.load.i = load i8, ptr %registered.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool66.not = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool66.not, label %do.end70, label %for.body.lr.ph.i

do.end70:                                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  %172 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dev25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %173, ptr noundef nonnull @.str.35) #13
  br label %if.end74

for.body.lr.ph.i:                                 ; preds = %if.then64
  %pdev_id.i.i.i = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %index.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %iic.04.i = phi ptr [ %168, %for.body.lr.ph.i ], [ %incdec.ptr.i144, %for.inc.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %174 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %174, i32 noundef 3520, i32 noundef 1012) #14
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %for.body.i.if.end74_crit_edge, label %sm501_create_subdev.exit.i.i

for.body.i.if.end74_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

sm501_create_subdev.exit.i.i:                     ; preds = %for.body.i
  %pdev.i.i.i = getelementptr inbounds %struct.sm501_device, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %release.i.i.i = getelementptr inbounds %struct.sm501_device, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 3, i32 35
  %175 = ptrtoint ptr %release.i.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr @sm501_device_release, ptr %release.i.i.i, align 4
  %176 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr @.str.78, ptr %pdev.i.i.i, align 8
  %177 = ptrtoint ptr %pdev_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %pdev_id.i.i.i, align 4
  %id.i.i.i = getelementptr inbounds %struct.sm501_device, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 1
  %179 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %id.i.i.i, align 4
  %180 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %dev25, align 4
  %parent.i.i.i = getelementptr inbounds %struct.sm501_device, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 3, i32 1
  %182 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %181, ptr %parent.i.i.i, align 8
  %coherent_dma_mask.i.i.i = getelementptr inbounds %struct.sm501_device, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 3, i32 19
  %183 = ptrtoint ptr %coherent_dma_mask.i.i.i to i32
  call void @__asan_store8_noabort(i32 %183)
  store i64 4294967295, ptr %coherent_dma_mask.i.i.i, align 8
  %add.ptr17.i.i.i = getelementptr %struct.sm501_device, ptr %call7.i.i.i.i.i, i32 1
  %platform_data.i.i.i = getelementptr inbounds %struct.sm501_device, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 3, i32 7
  %184 = ptrtoint ptr %platform_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %add.ptr17.i.i.i, ptr %platform_data.i.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.sm501_device, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 3
  %call.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i.i, i32 noundef 72, i32 noundef 3520) #10
  %tobool3.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool3.not.i.i, label %sm501_create_subdev.exit.i.i.if.end74_crit_edge, label %sm501_register_gpio_i2c_instance.exit.i

sm501_create_subdev.exit.i.i.if.end74_crit_edge:  ; preds = %sm501_create_subdev.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

sm501_register_gpio_i2c_instance.exit.i:          ; preds = %sm501_create_subdev.exit.i.i
  %dev_id.i.i = getelementptr inbounds %struct.gpiod_lookup_table, ptr %call.i.i.i, i32 0, i32 1
  %185 = ptrtoint ptr %dev_id.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr @.str.78, ptr %dev_id.i.i, align 4
  %table.i.i = getelementptr inbounds %struct.gpiod_lookup_table, ptr %call.i.i.i, i32 0, i32 2
  %pin_sda.i.i = getelementptr inbounds %struct.sm501_platdata_gpio_i2c, ptr %iic.04.i, i32 0, i32 1
  %186 = ptrtoint ptr %pin_sda.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %pin_sda.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %187)
  %cmp.i.i = icmp ult i32 %187, 32
  %cond.i.i = select i1 %cmp.i.i, ptr @.str.70, ptr @.str.69
  %188 = trunc i32 %187 to i16
  %conv.i.i = and i16 %188, 31
  %189 = ptrtoint ptr %table.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %cond.i.i, ptr %table.i.i, align 4
  %.compoundliteral.sroa.2.0.arrayidx.sroa_idx.i.i = getelementptr inbounds %struct.gpiod_lookup_table, ptr %call.i.i.i, i32 1, i32 0, i32 1
  %190 = ptrtoint ptr %.compoundliteral.sroa.2.0.arrayidx.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 %conv.i.i, ptr %.compoundliteral.sroa.2.0.arrayidx.sroa_idx.i.i, align 4
  %.compoundliteral.sroa.333.0.arrayidx.sroa_idx.i.i = getelementptr inbounds %struct.gpiod_lookup_table, ptr %call.i.i.i, i32 1, i32 1
  %191 = ptrtoint ptr %.compoundliteral.sroa.333.0.arrayidx.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr null, ptr %.compoundliteral.sroa.333.0.arrayidx.sroa_idx.i.i, align 4
  %.compoundliteral.sroa.4.0.arrayidx.sroa_idx.i.i = getelementptr inbounds %struct.gpiod_lookup_table, ptr %call.i.i.i, i32 2
  %192 = ptrtoint ptr %.compoundliteral.sroa.4.0.arrayidx.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 0, ptr %.compoundliteral.sroa.4.0.arrayidx.sroa_idx.i.i, align 4
  %.compoundliteral.sroa.5.0.arrayidx.sroa_idx.i.i = getelementptr inbounds %struct.gpiod_lookup_table, ptr %call.i.i.i, i32 2, i32 0, i32 1
  %193 = ptrtoint ptr %.compoundliteral.sroa.5.0.arrayidx.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 2, ptr %.compoundliteral.sroa.5.0.arrayidx.sroa_idx.i.i, align 4
  %arrayidx8.i.i = getelementptr %struct.gpiod_lookup_table, ptr %call.i.i.i, i32 2, i32 1
  %pin_scl.i.i = getelementptr inbounds %struct.sm501_platdata_gpio_i2c, ptr %iic.04.i, i32 0, i32 2
  %194 = ptrtoint ptr %pin_scl.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %pin_scl.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %195)
  %cmp11.i.i = icmp ult i32 %195, 32
  %cond13.i.i = select i1 %cmp11.i.i, ptr @.str.70, ptr @.str.69
  %196 = trunc i32 %195 to i16
  %conv17.i.i = and i16 %196, 31
  %197 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %cond13.i.i, ptr %arrayidx8.i.i, align 4
  %.compoundliteral9.sroa.2.0.arrayidx8.sroa_idx.i.i = getelementptr %struct.gpiod_lookup_table, ptr %call.i.i.i, i32 3
  %198 = ptrtoint ptr %.compoundliteral9.sroa.2.0.arrayidx8.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 %conv17.i.i, ptr %.compoundliteral9.sroa.2.0.arrayidx8.sroa_idx.i.i, align 4
  %.compoundliteral9.sroa.332.0.arrayidx8.sroa_idx.i.i = getelementptr %struct.gpiod_lookup_table, ptr %call.i.i.i, i32 3, i32 0, i32 1
  %199 = ptrtoint ptr %.compoundliteral9.sroa.332.0.arrayidx8.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr null, ptr %.compoundliteral9.sroa.332.0.arrayidx8.sroa_idx.i.i, align 4
  %.compoundliteral9.sroa.4.0.arrayidx8.sroa_idx.i.i = getelementptr %struct.gpiod_lookup_table, ptr %call.i.i.i, i32 3, i32 1
  %200 = ptrtoint ptr %.compoundliteral9.sroa.4.0.arrayidx8.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 1, ptr %.compoundliteral9.sroa.4.0.arrayidx8.sroa_idx.i.i, align 4
  %.compoundliteral9.sroa.5.0.arrayidx8.sroa_idx.i.i = getelementptr %struct.gpiod_lookup_table, ptr %call.i.i.i, i32 4
  %201 = ptrtoint ptr %.compoundliteral9.sroa.5.0.arrayidx8.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 2, ptr %.compoundliteral9.sroa.5.0.arrayidx8.sroa_idx.i.i, align 4
  tail call void @gpiod_add_lookup_table(ptr noundef nonnull %call.i.i.i) #10
  %202 = ptrtoint ptr %platform_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %platform_data.i.i.i, align 8
  %timeout.i.i = getelementptr inbounds %struct.sm501_platdata_gpio_i2c, ptr %iic.04.i, i32 0, i32 4
  %204 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %timeout.i.i, align 4
  %timeout23.i.i = getelementptr inbounds %struct.i2c_gpio_platform_data, ptr %203, i32 0, i32 1
  %206 = ptrtoint ptr %timeout23.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %205, ptr %timeout23.i.i, align 4
  %udelay.i.i = getelementptr inbounds %struct.sm501_platdata_gpio_i2c, ptr %iic.04.i, i32 0, i32 3
  %207 = ptrtoint ptr %udelay.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %udelay.i.i, align 4
  %209 = ptrtoint ptr %203 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %208, ptr %203, align 4
  %210 = ptrtoint ptr %iic.04.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %iic.04.i, align 4
  %212 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %211, ptr %id.i.i.i, align 4
  %213 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %dev25, align 4
  %215 = ptrtoint ptr %pin_sda.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %pin_sda.i.i, align 4
  %217 = ptrtoint ptr %pin_scl.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %pin_scl.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %214, ptr noundef nonnull @.str.79, i32 noundef %211, i32 noundef %216, i32 noundef %218) #13
  %call29.i.i = tail call fastcc i32 @sm501_register_device(ptr noundef %sm, ptr noundef nonnull %pdev.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i.i)
  %cmp1.i = icmp slt i32 %call29.i.i, 0
  br i1 %cmp1.i, label %sm501_register_gpio_i2c_instance.exit.i.if.end74_crit_edge, label %for.inc.i

sm501_register_gpio_i2c_instance.exit.i.if.end74_crit_edge: ; preds = %sm501_register_gpio_i2c_instance.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

for.inc.i:                                        ; preds = %sm501_register_gpio_i2c_instance.exit.i
  %inc.i = add nuw i32 %index.05.i, 1
  %incdec.ptr.i144 = getelementptr %struct.sm501_platdata_gpio_i2c, ptr %iic.04.i, i32 1
  %219 = ptrtoint ptr %gpio_i2c_nr to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %gpio_i2c_nr, align 4
  %cmp.i = icmp ult i32 %inc.i, %220
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end74_crit_edge

for.inc.i.if.end74_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end74:                                         ; preds = %for.inc.i.if.end74_crit_edge, %sm501_register_gpio_i2c_instance.exit.i.if.end74_crit_edge, %sm501_create_subdev.exit.i.i.if.end74_crit_edge, %for.body.i.if.end74_crit_edge, %do.end70, %land.lhs.true62.if.end74_crit_edge, %land.lhs.true.if.end74_crit_edge, %if.end36.if.end74_crit_edge
  %mem_avail.2179 = phi i32 [ %mem_avail.2.ph, %do.end70 ], [ %mem_avail.2.ph, %land.lhs.true62.if.end74_crit_edge ], [ %mem_avail.2.ph, %land.lhs.true.if.end74_crit_edge ], [ %15, %if.end36.if.end74_crit_edge ], [ %mem_avail.2.ph, %for.body.i.if.end74_crit_edge ], [ %mem_avail.2.ph, %sm501_create_subdev.exit.i.i.if.end74_crit_edge ], [ %mem_avail.2.ph, %sm501_register_gpio_i2c_instance.exit.i.if.end74_crit_edge ], [ %mem_avail.2.ph, %for.inc.i.if.end74_crit_edge ]
  %221 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %222, i32 60
  %223 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !271
  %224 = and i32 %223, 269484032
  %225 = zext i32 %224 to i64
  call void @__sanitizer_cov_trace_switch(i64 %225, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %224, label %if.end82 [
    i32 268435456, label %if.end74.do.end80_crit_edge
    i32 1048576, label %if.end74.do.end80_crit_edge183
  ]

if.end74.do.end80_crit_edge183:                   ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end80

if.end74.do.end80_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end80

do.end80:                                         ; preds = %if.end74.do.end80_crit_edge, %if.end74.do.end80_crit_edge183
  %226 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %dev25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %227, ptr noundef nonnull @.str.38) #13
  br label %cleanup

if.end82:                                         ; preds = %if.end74
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %228 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i.i146 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %228, i32 noundef 3520, i32 noundef 1128) #14
  %tobool.not.i.i147 = icmp eq ptr %call7.i.i.i.i146, null
  br i1 %tobool.not.i.i147, label %if.end82.cleanup_crit_edge, label %sm501_create_subdev.exit.i158

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sm501_create_subdev.exit.i158:                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  %pdev.i.i148 = getelementptr inbounds %struct.sm501_device, ptr %call7.i.i.i.i146, i32 0, i32 1
  %release.i.i149 = getelementptr inbounds %struct.sm501_device, ptr %call7.i.i.i.i146, i32 0, i32 1, i32 3, i32 35
  %229 = ptrtoint ptr %release.i.i149 to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr @sm501_device_release, ptr %release.i.i149, align 4
  %230 = ptrtoint ptr %pdev.i.i148 to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr @.str.81, ptr %pdev.i.i148, align 8
  %pdev_id.i.i150 = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 12
  %231 = ptrtoint ptr %pdev_id.i.i150 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %pdev_id.i.i150, align 4
  %id.i.i151 = getelementptr inbounds %struct.sm501_device, ptr %call7.i.i.i.i146, i32 0, i32 1, i32 1
  %233 = ptrtoint ptr %id.i.i151 to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %232, ptr %id.i.i151, align 4
  %234 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %dev25, align 4
  %parent.i.i153 = getelementptr inbounds %struct.sm501_device, ptr %call7.i.i.i.i146, i32 0, i32 1, i32 3, i32 1
  %236 = ptrtoint ptr %parent.i.i153 to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr %235, ptr %parent.i.i153, align 8
  %coherent_dma_mask.i.i154 = getelementptr inbounds %struct.sm501_device, ptr %call7.i.i.i.i146, i32 0, i32 1, i32 3, i32 19
  %237 = ptrtoint ptr %coherent_dma_mask.i.i154 to i32
  call void @__asan_store8_noabort(i32 %237)
  store i64 4294967295, ptr %coherent_dma_mask.i.i154, align 8
  %add.ptr.i.i155 = getelementptr %struct.sm501_device, ptr %call7.i.i.i.i146, i32 1
  %resource.i.i156 = getelementptr inbounds %struct.sm501_device, ptr %call7.i.i.i.i146, i32 0, i32 1, i32 7
  %238 = ptrtoint ptr %resource.i.i156 to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr %add.ptr.i.i155, ptr %resource.i.i156, align 8
  %num_resources.i.i157 = getelementptr inbounds %struct.sm501_device, ptr %call7.i.i.i.i146, i32 0, i32 1, i32 6
  %239 = ptrtoint ptr %num_resources.i.i157 to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 4, ptr %num_resources.i.i157, align 4
  %flags.i.i159 = getelementptr %struct.sm501_device, ptr %call7.i.i.i.i146, i32 1, i32 1, i32 1
  %240 = ptrtoint ptr %flags.i.i159 to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 512, ptr %flags.i.i159, align 4
  %io_res.i.i160 = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 5
  %241 = ptrtoint ptr %io_res.i.i160 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %io_res.i.i160, align 4
  %parent.i1.i161 = getelementptr inbounds %struct.resource, ptr %add.ptr.i.i155, i32 0, i32 5
  %243 = ptrtoint ptr %parent.i1.i161 to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr %242, ptr %parent.i1.i161, align 4
  %244 = ptrtoint ptr %242 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %242, align 4
  %add.i.i162 = add i32 %245, 524288
  %246 = ptrtoint ptr %add.ptr.i.i155 to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %add.i.i162, ptr %add.ptr.i.i155, align 8
  %sub.i.i163 = add i32 %245, 589823
  %end.i.i164 = getelementptr %struct.sm501_device, ptr %call7.i.i.i.i146, i32 1, i32 0, i32 1
  %247 = ptrtoint ptr %end.i.i164 to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %sub.i.i163, ptr %end.i.i164, align 4
  %arrayidx2.i165 = getelementptr %struct.sm501_device, ptr %call7.i.i.i.i146, i32 1, i32 1, i32 3, i32 0, i32 1, i32 1
  %flags.i2.i = getelementptr %struct.sm501_device, ptr %call7.i.i.i.i146, i32 1, i32 1, i32 3, i32 0, i32 4
  %248 = ptrtoint ptr %flags.i2.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 512, ptr %flags.i2.i, align 4
  %parent.i4.i166 = getelementptr %struct.sm501_device, ptr %call7.i.i.i.i146, i32 1, i32 1, i32 3, i32 0, i32 6
  %249 = ptrtoint ptr %parent.i4.i166 to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr %242, ptr %parent.i4.i166, align 4
  %250 = load i32, ptr %242, align 4
  %add.i5.i167 = add i32 %250, 1048576
  %251 = ptrtoint ptr %arrayidx2.i165 to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %add.i5.i167, ptr %arrayidx2.i165, align 8
  %sub.i6.i = add i32 %250, 1376255
  %end.i7.i = getelementptr %struct.sm501_device, ptr %call7.i.i.i.i146, i32 1, i32 1, i32 3, i32 0, i32 2
  %252 = ptrtoint ptr %end.i7.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %sub.i6.i, ptr %end.i7.i, align 4
  %arrayidx4.i168 = getelementptr %struct.sm501_device, ptr %call7.i.i.i.i146, i32 1, i32 1, i32 3, i32 0, i32 7, i32 0, i32 1, i32 1
  %flags.i9.i = getelementptr %struct.sm501_device, ptr %call7.i.i.i.i146, i32 1, i32 1, i32 3, i32 0, i32 7, i32 0, i32 3, i32 1
  %253 = ptrtoint ptr %flags.i9.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 512, ptr %flags.i9.i, align 4
  %mem_res.i.i169 = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 6
  %254 = ptrtoint ptr %mem_res.i.i169 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %mem_res.i.i169, align 4
  %parent.i10.i = getelementptr %struct.sm501_device, ptr %call7.i.i.i.i146, i32 1, i32 1, i32 3, i32 0, i32 7, i32 0, i32 3, i32 2
  %256 = ptrtoint ptr %parent.i10.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr %255, ptr %parent.i10.i, align 4
  %257 = ptrtoint ptr %255 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %255, align 4
  %259 = ptrtoint ptr %arrayidx4.i168 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %258, ptr %arrayidx4.i168, align 8
  %add4.i.i = add i32 %mem_avail.2179, -1
  %sub5.i.i170 = add i32 %add4.i.i, %258
  %end.i12.i = getelementptr %struct.sm501_device, ptr %call7.i.i.i.i146, i32 1, i32 1, i32 3, i32 0, i32 7, i32 0, i32 2
  %260 = ptrtoint ptr %end.i12.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %sub5.i.i170, ptr %end.i12.i, align 4
  %arrayidx6.i = getelementptr %struct.sm501_device, ptr %call7.i.i.i.i146, i32 1, i32 1, i32 3, i32 0, i32 7, i32 0, i32 3, i32 7
  %flags.i13.i = getelementptr %struct.sm501_device, ptr %call7.i.i.i.i146, i32 1, i32 1, i32 3, i32 0, i32 7, i32 1, i32 1
  %261 = ptrtoint ptr %flags.i13.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 1024, ptr %flags.i13.i, align 4
  %parent.i14.i = getelementptr %struct.sm501_device, ptr %call7.i.i.i.i146, i32 1, i32 1, i32 3, i32 0, i32 7, i32 1, i32 3
  %262 = ptrtoint ptr %parent.i14.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr null, ptr %parent.i14.i, align 4
  %263 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %irq, align 4
  %end.i15.i = getelementptr %struct.sm501_device, ptr %call7.i.i.i.i146, i32 1, i32 1, i32 3, i32 0, i32 7, i32 1
  %265 = ptrtoint ptr %end.i15.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %264, ptr %end.i15.i, align 4
  %266 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %264, ptr %arrayidx6.i, align 8
  %call7.i = tail call fastcc i32 @sm501_register_device(ptr noundef %sm, ptr noundef nonnull %pdev.i.i148) #10
  br label %cleanup

cleanup:                                          ; preds = %sm501_create_subdev.exit.i158, %if.end82.cleanup_crit_edge, %do.end80, %do.end8
  %retval.0 = phi i32 [ -22, %do.end8 ], [ -22, %do.end80 ], [ 0, %if.end82.cleanup_crit_edge ], [ 0, %sm501_create_subdev.exit.i158 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sm501_init_regs(ptr nocapture noundef readonly %sm, ptr nocapture noundef readonly %init) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %misc_control = getelementptr inbounds %struct.sm501_initdata, ptr %init, i32 0, i32 3
  %2 = ptrtoint ptr %misc_control to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %misc_control, align 4
  %mask = getelementptr inbounds %struct.sm501_initdata, ptr %init, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask, align 4
  %call = tail call i32 @sm501_misc_control(ptr noundef %1, i32 noundef %3, i32 noundef %5)
  %misc_timing = getelementptr inbounds %struct.sm501_initdata, ptr %init, i32 0, i32 2
  %regs.i = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 14
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 104
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !237
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !272
  %mask.i = getelementptr inbounds %struct.sm501_initdata, ptr %init, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask.i, align 4
  %neg.i = xor i32 %11, -1
  %and.i = and i32 %9, %neg.i
  %12 = ptrtoint ptr %misc_timing to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %misc_timing, align 4
  %or.i = or i32 %and.i, %13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !273
  tail call void @arm_heavy_mb() #10
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %16, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %14) #10, !srcloc !240
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr.i36 = getelementptr i8, ptr %18, i32 8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36) #10, !srcloc !237
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !272
  %mask.i37 = getelementptr inbounds %struct.sm501_reg_init, ptr %init, i32 0, i32 1
  %21 = ptrtoint ptr %mask.i37 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mask.i37, align 4
  %neg.i38 = xor i32 %22, -1
  %and.i39 = and i32 %20, %neg.i38
  %23 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %init, align 4
  %or.i40 = or i32 %and.i39, %24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !273
  tail call void @arm_heavy_mb() #10
  %25 = tail call i32 @llvm.bswap.i32(i32 %or.i40) #10
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i41 = getelementptr i8, ptr %27, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i41, i32 %25) #10, !srcloc !240
  %gpio_high = getelementptr inbounds %struct.sm501_initdata, ptr %init, i32 0, i32 1
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  %add.ptr.i43 = getelementptr i8, ptr %29, i32 12
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43) #10, !srcloc !237
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !272
  %mask.i44 = getelementptr inbounds %struct.sm501_initdata, ptr %init, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %mask.i44 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mask.i44, align 4
  %neg.i45 = xor i32 %33, -1
  %and.i46 = and i32 %31, %neg.i45
  %34 = ptrtoint ptr %gpio_high to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %gpio_high, align 4
  %or.i47 = or i32 %and.i46, %35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !273
  tail call void @arm_heavy_mb() #10
  %36 = tail call i32 @llvm.bswap.i32(i32 %or.i47) #10
  %37 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i48 = getelementptr i8, ptr %38, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i48, i32 %36) #10, !srcloc !240
  %m1xclk = getelementptr inbounds %struct.sm501_initdata, ptr %init, i32 0, i32 6
  %39 = ptrtoint ptr %m1xclk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %m1xclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not = icmp eq i32 %40, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %42, ptr noundef nonnull @.str.42, i32 noundef %40) #13
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  %45 = ptrtoint ptr %m1xclk to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %m1xclk, align 4
  %call6 = tail call i32 @sm501_set_clock(ptr noundef %44, i32 noundef 0, i32 noundef %46)
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %mclk = getelementptr inbounds %struct.sm501_initdata, ptr %init, i32 0, i32 5
  %47 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool7.not = icmp eq i32 %48, 0
  br i1 %tobool7.not, label %if.end.if.end16_crit_edge, label %do.end10

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.45, i32 noundef %48) #13
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 4
  %53 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mclk, align 4
  %call15 = tail call i32 @sm501_set_clock(ptr noundef %52, i32 noundef 8, i32 noundef %54)
  br label %if.end16

if.end16:                                         ; preds = %do.end10, %if.end.if.end16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sm501_register_gpio(ptr noundef %sm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio1 = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 3
  %io_res = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 5
  %0 = ptrtoint ptr %io_res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_res, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %add = add i32 %3, 65536
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sm501_register_gpio.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sm501_register_gpio, %if.then)) #10
          to label %do.body4 [label %if.then], !srcloc !242

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 4
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %conv = zext i32 %add to i64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sm501_register_gpio.__UNIQUE_ID_ddebug244, ptr noundef %5, ptr noundef nonnull @.str.56, i64 noundef %conv) #10
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 3, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.57, ptr noundef nonnull @sm501_register_gpio.__key, i16 noundef signext 3) #10
  %call8 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %add, i32 noundef 32, ptr noundef nonnull @.str.58, i32 noundef 0) #10
  %regs_res = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 3, i32 5
  %6 = ptrtoint ptr %regs_res to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8, ptr %regs_res, align 4
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %do.end14, label %if.end16

do.end14:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  %dev15 = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 4
  %7 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.59) #13
  br label %cleanup

if.end16:                                         ; preds = %do.body4
  %call17 = tail call ptr @ioremap(i32 noundef %add, i32 noundef 32) #10
  %regs = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 3, i32 4
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call17, ptr %regs, align 4
  %tobool19.not = icmp eq ptr %call17, null
  br i1 %tobool19.not, label %do.end23, label %if.end25

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %dev24 = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 4
  %10 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.61) #13
  br label %err_claimed

if.end25:                                         ; preds = %if.end16
  %platdata.i = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 8
  %12 = ptrtoint ptr %platdata.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %platdata.i, align 4
  %gpio_base.i = getelementptr inbounds %struct.sm501_platdata, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %gpio_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gpio_base.i, align 4
  %16 = call ptr @memcpy(ptr %gpio1, ptr @gpio_chip_template, i32 348)
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  %regbase9.i = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 3, i32 0, i32 2
  %19 = ptrtoint ptr %regbase9.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %regbase9.i, align 4
  %regs10.i = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 14
  %20 = ptrtoint ptr %regs10.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs10.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %21, i32 8
  %22 = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 3, i32 0, i32 3
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr11.i, ptr %22, align 4
  %24 = ptrtoint ptr %gpio1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.70, ptr %gpio1, align 4
  %base15.i = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 3, i32 0, i32 0, i32 19
  %25 = ptrtoint ptr %base15.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %15, ptr %base15.i, align 4
  %ourgpio.i = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 3, i32 0, i32 1
  %26 = ptrtoint ptr %ourgpio.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %gpio1, ptr %ourgpio.i, align 4
  %call.i = tail call i32 @gpiochip_add_data_with_key(ptr noundef %gpio1, ptr noundef %gpio1, ptr noundef nonnull @sm501_gpio_register_chip.lock_key, ptr noundef nonnull @sm501_gpio_register_chip.request_key) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool27.not = icmp eq i32 %call.i, 0
  br i1 %tobool27.not, label %if.end33, label %do.end31

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %dev32 = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 4
  %27 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev32, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.64) #13
  br label %err_mapped

if.end33:                                         ; preds = %if.end25
  %high = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %platdata.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %platdata.i, align 4
  %gpio_base.i2 = getelementptr inbounds %struct.sm501_platdata, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %gpio_base.i2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %gpio_base.i2, align 4
  %33 = call ptr @memcpy(ptr %high, ptr @gpio_chip_template, i32 348)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp3.i = icmp sgt i32 %32, 0
  %add.i = add i32 %32, 32
  %spec.select.i = select i1 %cmp3.i, i32 %add.i, i32 %32
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %35, i32 4
  %regbase9.i4 = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 3, i32 1, i32 2
  %36 = ptrtoint ptr %regbase9.i4 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr.i, ptr %regbase9.i4, align 4
  %37 = ptrtoint ptr %regs10.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs10.i, align 4
  %add.ptr11.i6 = getelementptr i8, ptr %38, i32 12
  %39 = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 3, i32 1, i32 3
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr11.i6, ptr %39, align 4
  %41 = ptrtoint ptr %high to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str.69, ptr %high, align 4
  %base15.i7 = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 3, i32 1, i32 0, i32 19
  %42 = ptrtoint ptr %base15.i7 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %spec.select.i, ptr %base15.i7, align 4
  %ourgpio.i8 = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 3, i32 1, i32 1
  %43 = ptrtoint ptr %ourgpio.i8 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %gpio1, ptr %ourgpio.i8, align 4
  %call.i9 = tail call i32 @gpiochip_add_data_with_key(ptr noundef %high, ptr noundef %high, ptr noundef nonnull @sm501_gpio_register_chip.lock_key, ptr noundef nonnull @sm501_gpio_register_chip.request_key) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9)
  %tobool35.not = icmp eq i32 %call.i9, 0
  br i1 %tobool35.not, label %if.end41, label %do.end39

do.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %dev40 = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 4
  %44 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.67) #13
  tail call void @gpiochip_remove(ptr noundef %gpio1) #10
  br label %err_mapped

if.end41:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %registered = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 3, i32 3
  %46 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load = load i8, ptr %registered, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %registered, align 4
  br label %cleanup

err_mapped:                                       ; preds = %do.end39, %do.end31
  %47 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs, align 4
  tail call void @iounmap(ptr noundef %48) #10
  br label %err_claimed

err_claimed:                                      ; preds = %err_mapped, %do.end23
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %add, i32 noundef 32) #10
  br label %cleanup

cleanup:                                          ; preds = %err_claimed, %if.end41, %do.end14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dbg_regs_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buff) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regs = getelementptr inbounds %struct.sm501_devdata, ptr %1, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %reg.012 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %ptr.011 = phi ptr [ %buff, %entry ], [ %add.ptr4, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %reg.012
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !237
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !274
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %ptr.011, ptr noundef nonnull @.str.41, i32 noundef %reg.012, i32 noundef %5)
  %add.ptr4 = getelementptr i8, ptr %ptr.011, i32 %call3
  %add = add nuw nsw i32 %reg.012, 4
  %cmp = icmp ult i32 %reg.012, 108
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr4 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buff to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i32 %sub.ptr.sub
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sm501_register_device(ptr noundef %sm, ptr noundef %pdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %pdev, i32 -8
  %num_resources = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 6
  %0 = ptrtoint ptr %num_resources to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_resources, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp33.not = icmp eq i32 %1, 0
  br i1 %cmp33.not, label %entry.for.end_crit_edge, label %do.end.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

do.end.lr.ph:                                     ; preds = %entry
  %resource = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 7
  br label %do.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %do.end.lr.ph
  %ptr.034 = phi i32 [ 0, %do.end.lr.ph ], [ %inc, %do.end.do.end_crit_edge ]
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %4 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resource, align 8
  %arrayidx = getelementptr %struct.resource, ptr %5, i32 %ptr.034
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %3, i32 noundef %ptr.034, ptr noundef %arrayidx) #13
  %inc = add nuw i32 %ptr.034, 1
  %6 = ptrtoint ptr %num_resources to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_resources, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %do.end.do.end_crit_edge, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.end:                                          ; preds = %do.end.for.end_crit_edge, %entry.for.end_crit_edge
  %call2 = tail call i32 @platform_device_register(ptr noundef %pdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2)
  %cmp3 = icmp sgt i32 %call2, -1
  br i1 %cmp3, label %do.body4, label %do.end15

do.body4:                                         ; preds = %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sm501_register_device.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sm501_register_device, %if.then9)) #10
          to label %do.end12 [label %if.then9], !srcloc !242

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 4
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sm501_register_device.__UNIQUE_ID_ddebug240, ptr noundef %9, ptr noundef nonnull @.str.50, ptr noundef %11) #10
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %do.body4
  %devices = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %add.ptr.i, ptr noundef %13, ptr noundef %devices) #10
  br i1 %call.i.i, label %if.end.i.i, label %do.end12.if.end18_crit_edge

do.end12.if.end18_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.end.i.i:                                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr.i, ptr %prev.i, align 4
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %devices, ptr %add.ptr.i, align 4
  %prev3.i.i = getelementptr i8, ptr %pdev, i32 -4
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %add.ptr.i, ptr %13, align 4
  br label %if.end18

do.end15:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev16 = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 4
  %18 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev16, align 4
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.52, ptr noundef %21, i32 noundef %call2) #13
  br label %if.end18

if.end18:                                         ; preds = %do.end15, %if.end.i.i, %do.end12.if.end18_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sm501_device_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -24
  tail call void @kfree(ptr noundef %add.ptr.i) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm501_gpio_input(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #10
  %ourgpio = getelementptr inbounds %struct.sm501_gpio_chip, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %ourgpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ourgpio, align 4
  %regbase = getelementptr inbounds %struct.sm501_gpio_chip, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regbase, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sm501_gpio_input.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sm501_gpio_input, %if.then)) #10
          to label %do.body6 [label %if.then], !srcloc !242

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %1, i32 776
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sm501_gpio_input.__UNIQUE_ID_ddebug242, ptr noundef %5, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.71, ptr noundef %chip, i32 noundef %offset) #10
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  %shl = shl nuw i32 1, %offset
  %lock = getelementptr inbounds %struct.sm501_gpio, ptr %1, i32 0, i32 2
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %add.ptr = getelementptr i8, ptr %3, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !237
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !275
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !276
  tail call void @arm_heavy_mb() #10
  %neg = xor i32 %shl, -1
  %and = and i32 %7, %neg
  %8 = tail call i32 @llvm.bswap.i32(i32 %and)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #10, !srcloc !240
  %regs.i = getelementptr i8, ptr %1, i32 892
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #10, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  %control.i = getelementptr inbounds %struct.sm501_gpio_chip, ptr %call, i32 0, i32 3
  %12 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %control.i, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #10, !srcloc !237
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !277
  %and.i = and i32 %15, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body6.sm501_gpio_ensure_gpio.exit_crit_edge, label %do.end.i

do.body6.sm501_gpio_ensure_gpio.exit_crit_edge:   ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sm501_gpio_ensure_gpio.exit

do.end.i:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %ourgpio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ourgpio, align 4
  %dev.i = getelementptr i8, ptr %17, i32 776
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.73, i32 noundef %shl) #13
  %20 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %control.i, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #10, !srcloc !237
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !278
  %and9.i = and i32 %23, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !279
  tail call void @arm_heavy_mb() #10
  %24 = tail call i32 @llvm.bswap.i32(i32 %and9.i) #10
  %25 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %control.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #10, !srcloc !240
  %27 = ptrtoint ptr %ourgpio to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ourgpio, align 4
  %regs.i.i = getelementptr i8, ptr %28, i32 892
  %29 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i.i, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #10, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  br label %sm501_gpio_ensure_gpio.exit

sm501_gpio_ensure_gpio.exit:                      ; preds = %do.end.i, %do.body6.sm501_gpio_ensure_gpio.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm501_gpio_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #10
  %ourgpio = getelementptr inbounds %struct.sm501_gpio_chip, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %ourgpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ourgpio, align 4
  %regbase = getelementptr inbounds %struct.sm501_gpio_chip, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regbase, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sm501_gpio_output.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sm501_gpio_output, %if.then)) #10
          to label %do.body6 [label %if.then], !srcloc !242

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %1, i32 776
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sm501_gpio_output.__UNIQUE_ID_ddebug243, ptr noundef %5, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.75, ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #10
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  %shl = shl nuw i32 1, %offset
  %lock = getelementptr inbounds %struct.sm501_gpio, ptr %1, i32 0, i32 2
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10, !srcloc !237
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool17.not = icmp eq i32 %value, 0
  %or = or i32 %7, %shl
  %neg = xor i32 %shl, -1
  %and = and i32 %7, %neg
  %val.0 = select i1 %tobool17.not, i32 %and, i32 %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !281
  tail call void @arm_heavy_mb() #10
  %8 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %8) #10, !srcloc !240
  %add.ptr25 = getelementptr i8, ptr %3, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #10, !srcloc !237
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !282
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !283
  tail call void @arm_heavy_mb() #10
  %or32 = or i32 %10, %shl
  %11 = tail call i32 @llvm.bswap.i32(i32 %or32)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %11) #10, !srcloc !240
  %regs.i = getelementptr i8, ptr %1, i32 892
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #10, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !284
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %8) #10, !srcloc !240
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #10, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm501_gpio_get(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #10
  %regbase = getelementptr inbounds %struct.sm501_gpio_chip, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regbase, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #10, !srcloc !237
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %shr = lshr i32 %3, %offset
  %and = and i32 %shr, 1
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sm501_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #10
  %ourgpio = getelementptr inbounds %struct.sm501_gpio_chip, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %ourgpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ourgpio, align 4
  %shl = shl nuw i32 1, %offset
  %regbase = getelementptr inbounds %struct.sm501_gpio_chip, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regbase, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sm501_gpio_set.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sm501_gpio_set, %if.then)) #10
          to label %do.body6 [label %if.then], !srcloc !242

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %1, i32 776
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sm501_gpio_set.__UNIQUE_ID_ddebug241, ptr noundef %5, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.77, ptr noundef %chip, i32 noundef %offset) #10
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.sm501_gpio, ptr %1, i32 0, i32 2
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10, !srcloc !237
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  %neg = xor i32 %shl, -1
  %and = and i32 %7, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool17.not = icmp eq i32 %value, 0
  %or = or i32 %7, %shl
  %spec.select = select i1 %tobool17.not, i32 %and, i32 %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %8 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %8) #10, !srcloc !240
  %regs.i = getelementptr i8, ptr %1, i32 892
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #10, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  %control.i = getelementptr inbounds %struct.sm501_gpio_chip, ptr %call, i32 0, i32 3
  %12 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %control.i, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #10, !srcloc !237
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !277
  %and.i = and i32 %15, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body6.sm501_gpio_ensure_gpio.exit_crit_edge, label %do.end.i

do.body6.sm501_gpio_ensure_gpio.exit_crit_edge:   ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sm501_gpio_ensure_gpio.exit

do.end.i:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %ourgpio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ourgpio, align 4
  %dev.i = getelementptr i8, ptr %17, i32 776
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.73, i32 noundef %shl) #13
  %20 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %control.i, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #10, !srcloc !237
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !278
  %and9.i = and i32 %23, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !279
  tail call void @arm_heavy_mb() #10
  %24 = tail call i32 @llvm.bswap.i32(i32 %and9.i) #10
  %25 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %control.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #10, !srcloc !240
  %27 = ptrtoint ptr %ourgpio to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ourgpio, align 4
  %regs.i.i = getelementptr i8, ptr %28, i32 892
  %29 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i.i, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #10, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  br label %sm501_gpio_ensure_gpio.exit

sm501_gpio_ensure_gpio.exit:                      ; preds = %do.end.i, %do.body6.sm501_gpio_ensure_gpio.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_add_lookup_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sm501_dev_remove(ptr noundef %sm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devices = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 2
  %0 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devices, align 4
  %cmp.not20 = icmp eq ptr %1, %devices
  br i1 %cmp.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %sm501_remove_sub.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %smdev.021 = phi ptr [ %tmp.0, %sm501_remove_sub.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %smdev.021 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %smdev.021, align 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %smdev.021) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.sm501_remove_sub.exit_crit_edge

for.body.sm501_remove_sub.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sm501_remove_sub.exit

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %smdev.021, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %smdev.021 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %smdev.021, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %sm501_remove_sub.exit

sm501_remove_sub.exit:                            ; preds = %if.end.i.i.i, %for.body.sm501_remove_sub.exit_crit_edge
  %9 = ptrtoint ptr %smdev.021 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %smdev.021, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %smdev.021, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %pdev.i = getelementptr inbounds %struct.sm501_device, ptr %smdev.021, i32 0, i32 1
  tail call void @platform_device_unregister(ptr noundef %pdev.i) #10
  %cmp.not = icmp eq ptr %tmp.0, %devices
  br i1 %cmp.not, label %sm501_remove_sub.exit.for.end_crit_edge, label %sm501_remove_sub.exit.for.body_crit_edge

sm501_remove_sub.exit.for.body_crit_edge:         ; preds = %sm501_remove_sub.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

sm501_remove_sub.exit.for.end_crit_edge:          ; preds = %sm501_remove_sub.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %sm501_remove_sub.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %dev = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 4
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void @device_remove_file(ptr noundef %12, ptr noundef nonnull @dev_attr_dbg_regs) #10
  %registered.i = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %registered.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i = load i8, ptr %registered.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %for.end.sm501_gpio_remove.exit_crit_edge, label %if.end.i

for.end.sm501_gpio_remove.exit_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sm501_gpio_remove.exit

if.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %gpio1.i = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 3
  %io_res.i = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 5
  %14 = ptrtoint ptr %io_res.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_res.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add.i = add i32 %17, 65536
  tail call void @gpiochip_remove(ptr noundef %gpio1.i) #10
  %high.i = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 3, i32 1
  tail call void @gpiochip_remove(ptr noundef %high.i) #10
  %regs.i = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 3, i32 4
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  tail call void @iounmap(ptr noundef %19) #10
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %add.i, i32 noundef 32) #10
  br label %sm501_gpio_remove.exit

sm501_gpio_remove.exit:                           ; preds = %if.end.i, %for.end.sm501_gpio_remove.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sm501_set_power(ptr nocapture noundef readonly %sm, i32 noundef %on) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %platdata = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 8
  %0 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platdata, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %get_power = getelementptr inbounds %struct.sm501_platdata, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %get_power to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_power, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end13_crit_edge, label %if.then2

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then2:                                         ; preds = %if.end
  %dev = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 4
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call = tail call i32 %3(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %on)
  %cmp = icmp eq i32 %call, %on
  br i1 %cmp, label %do.body, label %if.then2.if.end13_crit_edge

if.then2.if.end13_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

do.body:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sm501_set_power.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sm501_set_power, %if.then9)) #10
          to label %cleanup [label %if.then9], !srcloc !242

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sm501_set_power.__UNIQUE_ID_ddebug245, ptr noundef %7, ptr noundef nonnull @.str.83, i32 noundef %on) #10
  br label %cleanup

if.end13:                                         ; preds = %if.then2.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %set_power = getelementptr inbounds %struct.sm501_platdata, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %set_power to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_power, align 4
  %tobool14.not = icmp eq ptr %9, null
  br i1 %tobool14.not, label %if.end13.cleanup_crit_edge, label %do.body16

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body16:                                        ; preds = %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sm501_set_power.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sm501_set_power, %if.then28)) #10
          to label %do.end32 [label %if.then28], !srcloc !242

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  %dev29 = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 4
  %10 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev29, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sm501_set_power.__UNIQUE_ID_ddebug246, ptr noundef %11, ptr noundef nonnull @.str.84, i32 noundef %on) #10
  br label %do.end32

do.end32:                                         ; preds = %if.then28, %do.body16
  %12 = ptrtoint ptr %set_power to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_power, align 4
  %dev34 = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 4
  %14 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev34, align 4
  %call35 = tail call i32 %13(ptr noundef %15, i32 noundef %on) #10
  %in_suspend.i = getelementptr inbounds %struct.sm501_devdata, ptr %sm, i32 0, i32 9
  %16 = ptrtoint ptr %in_suspend.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %in_suspend.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %if.else.i, label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #10
  br label %cleanup

if.else.i:                                        ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 10) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %while.body.i.preheader, %if.end13.cleanup_crit_edge, %if.then9, %do.body, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm501_pci_probe(ptr noundef %dev, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1044) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %platdata = getelementptr inbounds %struct.sm501_devdata, ptr %call7.i.i, i32 0, i32 8
  %1 = ptrtoint ptr %platdata to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @sm501_pci_platdata, ptr %platdata, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %platform_data = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 7
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @sm501_pci_platdata, ptr %platform_data, align 8
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 6
  %3 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %devfn, align 4
  %add = add i32 %4, 32
  %pdev_id = getelementptr inbounds %struct.sm501_devdata, ptr %call7.i.i, i32 0, i32 12
  %5 = ptrtoint ptr %pdev_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %pdev_id, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @pci_enable_device(ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.87) #13
  br label %err2

if.end6:                                          ; preds = %if.end
  %dev8 = getelementptr inbounds %struct.sm501_devdata, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev1, ptr %dev8, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %irq9 = getelementptr inbounds %struct.sm501_devdata, ptr %call7.i.i, i32 0, i32 13
  %10 = ptrtoint ptr %irq9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %irq9, align 8
  %11 = load i32, ptr getelementptr inbounds (%struct.sm501_platdata_fb, ptr @sm501_fb_pdata, i32 0, i32 1), align 4
  %or = or i32 %11, 1
  store i32 %or, ptr getelementptr inbounds (%struct.sm501_platdata_fb, ptr @sm501_fb_pdata, i32 0, i32 1), align 4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %flags = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 0, i32 3
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and = and i32 %13, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %do.end14, label %if.end16

do.end14:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.90) #13
  br label %err3

if.end16:                                         ; preds = %if.end6
  %flags19 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 1, i32 3
  %14 = ptrtoint ptr %flags19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags19, align 4
  %and20 = and i32 %15, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.end25, label %if.end27

do.end25:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.93) #13
  br label %err3

if.end27:                                         ; preds = %if.end16
  %arrayidx18 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 1
  %io_res = getelementptr inbounds %struct.sm501_devdata, ptr %call7.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %io_res to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx18, ptr %io_res, align 4
  %mem_res = getelementptr inbounds %struct.sm501_devdata, ptr %call7.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %mem_res to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %resource, ptr %mem_res, align 8
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx18, align 4
  %call33 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %19, i32 noundef 256, ptr noundef nonnull @.str, i32 noundef 0) #10
  %regs_claim = getelementptr inbounds %struct.sm501_devdata, ptr %call7.i.i, i32 0, i32 7
  %20 = ptrtoint ptr %regs_claim to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call33, ptr %regs_claim, align 4
  %tobool35.not = icmp eq ptr %call33, null
  br i1 %tobool35.not, label %do.end39, label %if.end41

do.end39:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #13
  br label %err3

if.end41:                                         ; preds = %if.end27
  %call42 = tail call ptr @pci_ioremap_bar(ptr noundef %dev, i32 noundef 1) #10
  %regs = getelementptr inbounds %struct.sm501_devdata, ptr %call7.i.i, i32 0, i32 14
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call42, ptr %regs, align 4
  %tobool44.not = icmp eq ptr %call42, null
  br i1 %tobool44.not, label %do.end48, label %if.end50

do.end48:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #13
  %22 = ptrtoint ptr %io_res to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io_res, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %25, i32 noundef 256) #10
  br label %err3

if.end50:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %call51 = tail call fastcc i32 @sm501_init_dev(ptr noundef nonnull %call7.i.i)
  br label %cleanup

err3:                                             ; preds = %do.end48, %do.end39, %do.end25, %do.end14
  %err.0 = phi i32 [ -5, %do.end48 ], [ -16, %do.end39 ], [ -22, %do.end25 ], [ -22, %do.end14 ]
  tail call void @pci_disable_device(ptr noundef %dev) #10
  br label %err2

err2:                                             ; preds = %err3, %do.end
  %err.1 = phi i32 [ %call2, %do.end ], [ %err.0, %err3 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err2, %if.end50, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end50 ], [ %err.1, %err2 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sm501_pci_remove(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @sm501_dev_remove(ptr noundef %1)
  %regs = getelementptr inbounds %struct.sm501_devdata, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  tail call void @iounmap(ptr noundef %3) #10
  %io_res = getelementptr inbounds %struct.sm501_devdata, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %io_res to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_res, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %7, i32 noundef 256) #10
  tail call void @pci_disable_device(ptr noundef %dev) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !14, !15, !16, !17, !19, !20, !22, !23, !24, !26, !27, !29, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !49, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !69, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !96, !97, !99, !101, !102, !103, !104, !106, !107, !108, !110, !112, !113, !114, !115, !117, !118, !120, !121, !122, !124, !126, !127, !128, !130, !131, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !153, !155, !156, !158, !160, !161, !162, !164, !165, !166, !167, !169, !170, !171, !173, !174, !176, !178, !179, !180, !181, !183, !185, !186, !187, !189, !190, !192, !193, !194, !195, !197, !199, !201, !203, !204, !205, !206, !208, !209, !210, !212, !213, !214, !216, !217, !219, !220, !222, !224, !226}
!llvm.module.flags = !{!228, !229, !230, !231, !232, !233, !234, !235}
!llvm.ident = !{!236}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mfd/sm501.c", i32 270, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @sm501_misc_control.__UNIQUE_ID_ddebug236, !1, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!6 = !{ptr @__ksymtab_sm501_misc_control, !7, !"__ksymtab_sm501_misc_control", i1 false, i1 false}
!7 = !{!"../drivers/mfd/sm501.c", i32 277, i32 1}
!8 = !{ptr @__ksymtab_sm501_modify_reg, !9, !"__ksymtab_sm501_modify_reg", i1 false, i1 false}
!9 = !{!"../drivers/mfd/sm501.c", i32 308, i32 1}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mfd/sm501.c", i32 331, i32 3}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @sm501_unit_power._entry, !11, !"_entry", i1 false, i1 false}
!16 = !{ptr @sm501_unit_power._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mfd/sm501.c", i32 335, i32 2}
!19 = !{ptr @sm501_unit_power.__UNIQUE_ID_ddebug237, !18, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mfd/sm501.c", i32 339, i32 3}
!22 = !{ptr @sm501_unit_power._entry.9, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @sm501_unit_power._entry_ptr.11, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mfd/sm501.c", i32 377, i32 2}
!26 = !{ptr @sm501_unit_power.__UNIQUE_ID_ddebug238, !25, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!27 = !{ptr @__ksymtab_sm501_unit_power, !28, !"__ksymtab_sm501_unit_power", i1 false, i1 false}
!28 = !{!"../drivers/mfd/sm501.c", i32 387, i32 1}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mfd/sm501.c", i32 621, i32 2}
!31 = !{ptr @sm501_set_clock.__UNIQUE_ID_ddebug239, !30, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!32 = !{ptr @__ksymtab_sm501_set_clock, !33, !"__ksymtab_sm501_set_clock", i1 false, i1 false}
!33 = !{!"../drivers/mfd/sm501.c", i32 632, i32 1}
!34 = !{ptr @__ksymtab_sm501_find_clock, !35, !"__ksymtab_sm501_find_clock", i1 false, i1 false}
!35 = !{!"../drivers/mfd/sm501.c", i32 675, i32 1}
!36 = !{ptr @__UNIQUE_ID_alias247, !37, !"__UNIQUE_ID_alias247", i1 false, i1 false}
!37 = !{!"../drivers/mfd/sm501.c", i32 1702, i32 1}
!38 = !{ptr @__initcall__kmod_sm501__248_1733_sm501_base_init6, !39, !"__initcall__kmod_sm501__248_1733_sm501_base_init6", i1 false, i1 false}
!39 = !{!"../drivers/mfd/sm501.c", i32 1733, i32 1}
!40 = !{ptr @__exitcall_sm501_base_exit, !41, !"__exitcall_sm501_base_exit", i1 false, i1 false}
!41 = !{!"../drivers/mfd/sm501.c", i32 1734, i32 1}
!42 = !{ptr @__UNIQUE_ID_description249, !43, !"__UNIQUE_ID_description249", i1 false, i1 false}
!43 = !{!"../drivers/mfd/sm501.c", i32 1736, i32 1}
!44 = !{ptr @__UNIQUE_ID_author250, !45, !"__UNIQUE_ID_author250", i1 false, i1 false}
!45 = !{!"../drivers/mfd/sm501.c", i32 1737, i32 1}
!46 = !{ptr @__UNIQUE_ID_file251, !47, !"__UNIQUE_ID_file251", i1 false, i1 false}
!47 = !{!"../drivers/mfd/sm501.c", i32 1738, i32 1}
!48 = !{ptr @__UNIQUE_ID_license252, !47, !"__UNIQUE_ID_license252", i1 false, i1 false}
!49 = !{ptr @sm501_plat_driver, !50, !"sm501_plat_driver", i1 false, i1 false}
!50 = !{!"../drivers/mfd/sm501.c", i32 1710, i32 31}
!51 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mfd/sm501.c", i32 1396, i32 3}
!53 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @sm501_plat_probe._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @sm501_plat_probe._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mfd/sm501.c", i32 1404, i32 3}
!58 = !{ptr @sm501_plat_probe._entry.16, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @sm501_plat_probe._entry_ptr.18, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mfd/sm501.c", i32 1413, i32 3}
!62 = !{ptr @sm501_plat_probe._entry.19, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @sm501_plat_probe._entry_ptr.21, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @sm501_init_dev.__key, !65, !"__key", i1 false, i1 false}
!65 = !{!"../drivers/mfd/sm501.c", i32 1306, i32 2}
!66 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @sm501_init_dev.__key.23, !68, !"__key", i1 false, i1 false}
!68 = !{!"../drivers/mfd/sm501.c", i32 1307, i32 2}
!69 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mfd/sm501.c", i32 1314, i32 3}
!72 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @sm501_init_dev._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @sm501_init_dev._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mfd/sm501.c", i32 1324, i32 2}
!77 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @sm501_init_dev._entry.27, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @sm501_init_dev._entry_ptr.30, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mfd/sm501.c", i32 1333, i32 3}
!82 = !{ptr @sm501_init_dev._entry.31, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @sm501_init_dev._entry_ptr.33, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mfd/sm501.c", i32 1355, i32 4}
!86 = !{ptr @sm501_init_dev._entry.34, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @sm501_init_dev._entry_ptr.36, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mfd/sm501.c", i32 1362, i32 3}
!90 = !{ptr @sm501_init_dev._entry.37, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @sm501_init_dev._entry_ptr.39, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @sm501_mem_local, !93, !"sm501_mem_local", i1 false, i1 false}
!93 = !{!"../drivers/mfd/sm501.c", i32 1283, i32 21}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mfd/sm501.c", i32 1216, i32 8}
!96 = !{ptr @dev_attr_dbg_regs, !95, !"dev_attr_dbg_regs", i1 false, i1 false}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/mfd/sm501.c", i32 1207, i32 22}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/mfd/sm501.c", i32 1255, i32 3}
!101 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @sm501_init_regs._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @sm501_init_regs._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/mfd/sm501.c", i32 1260, i32 3}
!106 = !{ptr @sm501_init_regs._entry.44, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @sm501_init_regs._entry_ptr.46, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mfd/sm501.c", i32 809, i32 33}
!110 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/mfd/sm501.c", i32 741, i32 3}
!112 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @sm501_register_device._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @sm501_register_device._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/mfd/sm501.c", i32 748, i32 3}
!117 = !{ptr @sm501_register_device.__UNIQUE_ID_ddebug240, !116, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!118 = !{ptr @.str.52, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/mfd/sm501.c", i32 751, i32 3}
!120 = !{ptr @sm501_register_device._entry.51, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @sm501_register_device._entry_ptr.53, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.54, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/mfd/sm501.c", i32 838, i32 33}
!124 = !{ptr @.str.55, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/mfd/sm501.c", i32 1046, i32 2}
!126 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @sm501_register_gpio.__UNIQUE_ID_ddebug244, !125, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!128 = !{ptr @sm501_register_gpio.__key, !129, !"__key", i1 false, i1 false}
!129 = !{!"../drivers/mfd/sm501.c", i32 1049, i32 2}
!130 = !{ptr @.str.57, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.58, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/mfd/sm501.c", i32 1051, i32 19}
!133 = !{ptr @.str.59, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/mfd/sm501.c", i32 1053, i32 3}
!135 = !{ptr @sm501_register_gpio._entry, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @sm501_register_gpio._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.61, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/mfd/sm501.c", i32 1059, i32 3}
!139 = !{ptr @sm501_register_gpio._entry.60, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @sm501_register_gpio._entry_ptr.62, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.64, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/mfd/sm501.c", i32 1068, i32 3}
!143 = !{ptr @sm501_register_gpio._entry.63, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @sm501_register_gpio._entry_ptr.65, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.67, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/mfd/sm501.c", i32 1074, i32 3}
!147 = !{ptr @sm501_register_gpio._entry.66, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @sm501_register_gpio._entry_ptr.68, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.69, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/mfd/sm501.c", i32 1027, i32 19}
!151 = !{ptr @.str.70, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/mfd/sm501.c", i32 1031, i32 19}
!153 = !{ptr @sm501_gpio_register_chip.lock_key, !154, !"lock_key", i1 false, i1 false}
!154 = !{!"../drivers/mfd/sm501.c", i32 1037, i32 9}
!155 = !{ptr @sm501_gpio_register_chip.request_key, !154, !"request_key", i1 false, i1 false}
!156 = !{ptr @gpio_chip_template, !157, !"gpio_chip_template", i1 false, i1 false}
!157 = !{!"../drivers/mfd/sm501.c", i32 1004, i32 31}
!158 = !{ptr @.str.71, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/mfd/sm501.c", i32 953, i32 2}
!160 = !{ptr @.str.72, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @sm501_gpio_input.__UNIQUE_ID_ddebug242, !159, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!162 = !{ptr @.str.73, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/mfd/sm501.c", i32 907, i32 3}
!164 = !{ptr @.str.74, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @sm501_gpio_ensure_gpio._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @sm501_gpio_ensure_gpio._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.75, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/mfd/sm501.c", i32 980, i32 2}
!169 = !{ptr @.str.76, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @sm501_gpio_output.__UNIQUE_ID_ddebug243, !168, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!171 = !{ptr @.str.77, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/mfd/sm501.c", i32 928, i32 2}
!173 = !{ptr @sm501_gpio_set.__UNIQUE_ID_ddebug241, !172, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!174 = !{ptr @.str.78, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/mfd/sm501.c", i32 1136, i32 33}
!176 = !{ptr @.str.79, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/mfd/sm501.c", i32 1170, i32 2}
!178 = !{ptr @.str.80, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @sm501_register_gpio_i2c_instance._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @sm501_register_gpio_i2c_instance._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.81, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/mfd/sm501.c", i32 868, i32 33}
!183 = !{ptr @.str.82, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/mfd/sm501.c", i32 1448, i32 4}
!185 = !{ptr @.str.83, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @sm501_set_power.__UNIQUE_ID_ddebug245, !184, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!187 = !{ptr @.str.84, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/mfd/sm501.c", i32 1454, i32 3}
!189 = !{ptr @sm501_set_power.__UNIQUE_ID_ddebug246, !188, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!190 = !{ptr @.str.85, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/mfd/sm501.c", i32 1491, i32 3}
!192 = !{ptr @.str.86, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @sm501_plat_resume._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @sm501_plat_resume._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @of_sm501_match_tbl, !196, !"of_sm501_match_tbl", i1 false, i1 false}
!196 = !{!"../drivers/mfd/sm501.c", i32 1704, i32 34}
!197 = !{ptr @sm501_pci_driver, !198, !"sm501_pci_driver", i1 false, i1 false}
!198 = !{!"../drivers/mfd/sm501.c", i32 1695, i32 26}
!199 = !{ptr @sm501_pci_tbl, !200, !"sm501_pci_tbl", i1 false, i1 false}
!200 = !{!"../drivers/mfd/sm501.c", i32 1688, i32 35}
!201 = !{ptr @.str.87, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/mfd/sm501.c", i32 1583, i32 3}
!203 = !{ptr @.str.88, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @sm501_pci_probe._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @sm501_pci_probe._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.90, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/mfd/sm501.c", i32 1601, i32 3}
!208 = !{ptr @sm501_pci_probe._entry.89, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @sm501_pci_probe._entry_ptr.91, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.93, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/mfd/sm501.c", i32 1607, i32 3}
!212 = !{ptr @sm501_pci_probe._entry.92, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @sm501_pci_probe._entry_ptr.94, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @sm501_pci_probe._entry.95, !215, !"_entry", i1 false, i1 false}
!215 = !{!"../drivers/mfd/sm501.c", i32 1620, i32 3}
!216 = !{ptr @sm501_pci_probe._entry_ptr.96, !215, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @sm501_pci_probe._entry.97, !218, !"_entry", i1 false, i1 false}
!218 = !{!"../drivers/mfd/sm501.c", i32 1627, i32 3}
!219 = !{ptr @sm501_pci_probe._entry_ptr.98, !218, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @sm501_pci_platdata, !221, !"sm501_pci_platdata", i1 false, i1 false}
!221 = !{!"../drivers/mfd/sm501.c", i32 1555, i32 30}
!222 = !{ptr @sm501_pci_initdata, !223, !"sm501_pci_initdata", i1 false, i1 false}
!223 = !{!"../drivers/mfd/sm501.c", i32 1519, i32 30}
!224 = !{ptr @sm501_fb_pdata, !225, !"sm501_fb_pdata", i1 false, i1 false}
!225 = !{!"../drivers/mfd/sm501.c", i32 1549, i32 33}
!226 = !{ptr @sm501_pdata_fbsub, !227, !"sm501_pdata_fbsub", i1 false, i1 false}
!227 = !{!"../drivers/mfd/sm501.c", i32 1542, i32 36}
!228 = !{i32 1, !"wchar_size", i32 2}
!229 = !{i32 1, !"min_enum_size", i32 4}
!230 = !{i32 8, !"branch-target-enforcement", i32 0}
!231 = !{i32 8, !"sign-return-address", i32 0}
!232 = !{i32 8, !"sign-return-address-all", i32 0}
!233 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!234 = !{i32 7, !"uwtable", i32 1}
!235 = !{i32 7, !"frame-pointer", i32 2}
!236 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!237 = !{i64 5040673}
!238 = !{i64 2154992271}
!239 = !{i64 2154992542}
!240 = !{i64 5040255}
!241 = !{i64 2154989873}
!242 = !{i64 2148730647, i64 2148730652, i64 2148730665, i64 2148730709, i64 2148730743, i64 2148730764}
!243 = !{i64 2154997313}
!244 = !{i64 2154997563}
!245 = !{i64 2154999798}
!246 = !{i64 2155000345}
!247 = !{i64 2155000892}
!248 = !{i64 2155007191}
!249 = !{i64 2155007650}
!250 = !{i64 2155008110}
!251 = !{i64 2155008569}
!252 = !{i64 2155009029}
!253 = !{i64 2155013985}
!254 = !{i64 2155014532}
!255 = !{i64 2155015079}
!256 = !{i64 2155015687}
!257 = !{i64 2155016234}
!258 = !{i64 2155016781}
!259 = !{i64 2155017056}
!260 = !{i64 2155017515}
!261 = !{i64 2155017975}
!262 = !{i64 2155018434}
!263 = !{i64 2155018894}
!264 = !{i64 2155019357}
!265 = !{i64 2155094082}
!266 = !{i64 2155094636}
!267 = !{i64 2155096645}
!268 = !{i64 2155074207}
!269 = !{i64 2155076126}
!270 = !{i64 2155076846}
!271 = !{i64 2155073286}
!272 = !{i64 2155069096}
!273 = !{i64 2155069344}
!274 = !{i64 2155068159}
!275 = !{i64 2155048933}
!276 = !{i64 2155049200}
!277 = !{i64 2155039543}
!278 = !{i64 2155041795}
!279 = !{i64 2155042047}
!280 = !{i64 2155052607}
!281 = !{i64 2155052835}
!282 = !{i64 2155053500}
!283 = !{i64 2155053765}
!284 = !{i64 2155054207}
!285 = !{i64 2155039037}
!286 = !{i64 2155045383}
!287 = !{i64 2155045611}
