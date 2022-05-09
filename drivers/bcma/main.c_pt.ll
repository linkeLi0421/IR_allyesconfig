; ModuleID = '/llk/IR_all_yes/drivers/bcma/main.c_pt.bc'
source_filename = "../drivers/bcma/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+bcma_find_core_unit\22, \22a\22\09"
module asm "\09.weak\09__crc_bcma_find_core_unit\09\09\09\09"
module asm "\09.long\09__crc_bcma_find_core_unit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_find_core_unit:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_find_core_unit\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_find_core_unit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bcma_core_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_bcma_core_irq\09\09\09\09"
module asm "\09.long\09__crc_bcma_core_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_core_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_core_irq\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_core_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__bcma_driver_register\22, \22a\22\09"
module asm "\09.weak\09__crc___bcma_driver_register\09\09\09\09"
module asm "\09.long\09__crc___bcma_driver_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___bcma_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22__bcma_driver_register\22\09\09\09\09\09"
module asm "__kstrtabns___bcma_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bcma_driver_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_bcma_driver_unregister\09\09\09\09"
module asm "\09.long\09__crc_bcma_driver_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_driver_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.bcma_bus = type { ptr, ptr, ptr, i32, i8, ptr, %struct.bcma_chipinfo, %struct.bcma_boardinfo, ptr, %struct.list_head, i8, i8, %struct.bcma_drv_cc, %struct.bcma_drv_cc_b, [2 x %struct.bcma_drv_pci], %struct.bcma_drv_pcie2, %struct.bcma_drv_mips, %struct.bcma_drv_gmac_cmn, %struct.ssb_sprom }
%struct.bcma_chipinfo = type { i16, i8, i8 }
%struct.bcma_boardinfo = type { i16, i16 }
%struct.bcma_drv_cc = type { ptr, i32, i32, i32, i8, i16, %struct.bcma_chipcommon_pmu, %struct.bcma_pflash, %struct.bcma_sflash, %struct.bcma_nflash, i32, [4 x %struct.bcma_serial_port], i32, ptr, %struct.spinlock, %struct.gpio_chip }
%struct.bcma_chipcommon_pmu = type { ptr, i8, i32 }
%struct.bcma_pflash = type { i8 }
%struct.bcma_sflash = type { i8, i32, i16, i32 }
%struct.bcma_nflash = type { i8, i8 }
%struct.bcma_serial_port = type { ptr, i32, i32, i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.bcma_drv_cc_b = type { ptr, i8, ptr }
%struct.bcma_drv_pci = type { ptr, i8 }
%struct.bcma_drv_pcie2 = type { ptr, i16 }
%struct.bcma_drv_mips = type { ptr, i8 }
%struct.bcma_drv_gmac_cmn = type { ptr, %struct.mutex }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.69, %struct.anon.70, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.69 = type { i8, i8, i8, i8 }
%struct.anon.70 = type { %struct.anon.71, %struct.anon.72 }
%struct.anon.71 = type { i8, i8, i8, i8, i8 }
%struct.anon.72 = type { i8, i8, i8, i8, i8 }
%struct.bcma_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.bcma_device = type { ptr, %struct.bcma_device_id, %struct.device, ptr, i32, i8, i8, i8, i32, [8 x i32], i32, ptr, ptr, ptr, %struct.list_head }
%struct.bcma_device_id = type { i16, i16, i8, i8 }
%struct.bcma_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_description236 = internal constant [49 x i8] c"bcma.description=Broadcom's specific AMBA driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [28 x i8] c"bcma.file=drivers/bcma/bcma\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [17 x i8] c"bcma.license=GPL\00", section ".modinfo", align 1
@__kstrtab_bcma_find_core_unit = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_find_core_unit = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_find_core_unit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_find_core_unit to i32), ptr @__kstrtab_bcma_find_core_unit, ptr @__kstrtabns_bcma_find_core_unit }, section "___ksymtab_gpl+bcma_find_core_unit", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@bcma_wait_value._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 113, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"bus%d: Timeout waiting for register 0x%04X!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bcma_wait_value\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drivers/bcma/main.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcma_wait_value._entry_ptr = internal global ptr @bcma_wait_value._entry, section ".printk_index", align 4
@__kstrtab_bcma_core_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_core_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_core_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_core_irq to i32), ptr @__kstrtab_bcma_core_irq, ptr @__kstrtabns_bcma_core_irq }, section "___ksymtab+bcma_core_irq", align 4
@bcma_bus_type = internal global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str.29, ptr null, ptr null, ptr null, ptr @bcma_device_groups, ptr null, ptr @bcma_bus_match, ptr @bcma_device_uevent, ptr @bcma_device_probe, ptr null, ptr @bcma_device_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bcma%d:%d\00", [22 x i8] zeroinitializer }, align 32
@bcma_buses_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.40, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @bcma_buses_mutex, i64 52), ptr getelementptr (i8, ptr @bcma_buses_mutex, i64 52) }, ptr @bcma_buses_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.41, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@bcma_bus_next_num = internal global { i32, [28 x i8] } zeroinitializer, align 32
@bcma_bus_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 387, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bus%d: Failed to scan: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bcma_bus_register\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@bcma_bus_register._entry_ptr = internal global ptr @bcma_bus_register._entry, section ".printk_index", align 4
@bcma_bus_register._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.2, i32 417, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bus%d: No SPROM available\0A\00", [37 x i8] zeroinitializer }, align 32
@bcma_bus_register._entry_ptr.11 = internal global ptr @bcma_bus_register._entry.9, section ".printk_index", align 4
@bcma_bus_register._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.7, ptr @.str.2, i32 419, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bus%d: Failed to get SPROM: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@bcma_bus_register._entry_ptr.14 = internal global ptr @bcma_bus_register._entry.12, section ".printk_index", align 4
@bcma_bus_register._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.7, ptr @.str.2, i32 473, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bus%d: Bus registered\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@bcma_bus_register._entry_ptr.18 = internal global ptr @bcma_bus_register._entry.15, section ".printk_index", align 4
@bcma_bus_unregister._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 484, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"bus%d: Some GPIOs are still in use.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bcma_bus_unregister\00", [44 x i8] zeroinitializer }, align 32
@bcma_bus_unregister._entry_ptr = internal global ptr @bcma_bus_unregister._entry, section ".printk_index", align 4
@bcma_bus_unregister._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 486, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"bus%d: Can not unregister GPIO driver: %i\0A\00", [53 x i8] zeroinitializer }, align 32
@bcma_bus_unregister._entry_ptr.23 = internal global ptr @bcma_bus_unregister._entry.21, section ".printk_index", align 4
@bcma_bus_early_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 506, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bus%d: Failed to scan bus: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bcma_bus_early_register\00", [40 x i8] zeroinitializer }, align 32
@bcma_bus_early_register._entry_ptr = internal global ptr @bcma_bus_early_register._entry, section ".printk_index", align 4
@bcma_bus_early_register._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 524, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bus%d: Early bus registered\0A\00", [35 x i8] zeroinitializer }, align 32
@bcma_bus_early_register._entry_ptr.28 = internal global ptr @bcma_bus_early_register._entry.26, section ".printk_index", align 4
@__kstrtab___bcma_driver_register = external dso_local constant [0 x i8], align 1
@__kstrtabns___bcma_driver_register = external dso_local constant [0 x i8], align 1
@__ksymtab___bcma_driver_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__bcma_driver_register to i32), ptr @__kstrtab___bcma_driver_register, ptr @__kstrtabns___bcma_driver_register }, section "___ksymtab_gpl+__bcma_driver_register", align 4
@__kstrtab_bcma_driver_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_driver_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_driver_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_driver_unregister to i32), ptr @__kstrtab_bcma_driver_unregister, ptr @__kstrtabns_bcma_driver_unregister }, section "___ksymtab_gpl+bcma_driver_unregister", align 4
@__initcall__kmod_bcma__241_659_bcma_init_bus_register5 = internal global ptr @bcma_init_bus_register, section ".initcall5.init", align 4
@__initcall__kmod_bcma__242_686_bcma_modinit6 = internal global ptr @bcma_modinit, section ".initcall6.init", align 4
@__exitcall_bcma_modexit = internal global ptr @bcma_modexit, section ".exitcall.exit", align 4
@bcma_of_get_irq.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 0, i8 48, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bcma\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bcma_of_get_irq\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"bus%d: bcma_of_get_irq() failed with rc=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@bcma_device_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @bcma_device_group, ptr null], [24 x i8] zeroinitializer }, align 32
@bcma_device_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @bcma_device_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@bcma_device_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_manuf, ptr @dev_attr_id, ptr @dev_attr_rev, ptr @dev_attr_class, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_manuf = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @manuf_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rev = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rev_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_class = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @class_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"manuf\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%03X\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"id\00", [29 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rev\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%02X\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"class\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%X\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"MODALIAS=bcma:m%04Xid%04Xrev%02Xcl%02X\00", [57 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bcma_buses_mutex.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bcma_buses_mutex\00", [47 x i8] zeroinitializer }, align 32
@bcma_register_core._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 284, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"bus%d: Could not register dev for core 0x%03X\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bcma_register_core\00", [45 x i8] zeroinitializer }, align 32
@bcma_register_core._entry_ptr = internal global ptr @bcma_register_core._entry, section ".printk_index", align 4
@bcma_pflash_dev = external dso_local global %struct.platform_device, align 8
@bcma_register_devices._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 325, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"bus%d: Error registering parallel flash\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bcma_register_devices\00", [42 x i8] zeroinitializer }, align 32
@bcma_register_devices._entry_ptr = internal global ptr @bcma_register_devices._entry, section ".printk_index", align 4
@bcma_sflash_dev = external dso_local global %struct.platform_device, align 8
@bcma_register_devices._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.2, i32 333, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"bus%d: Error registering serial flash\0A\00", [57 x i8] zeroinitializer }, align 32
@bcma_register_devices._entry_ptr.48 = internal global ptr @bcma_register_devices._entry.46, section ".printk_index", align 4
@bcma_nflash_dev = external dso_local global %struct.platform_device, align 8
@bcma_register_devices._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str.2, i32 341, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"bus%d: Error registering NAND flash\0A\00", [59 x i8] zeroinitializer }, align 32
@bcma_register_devices._entry_ptr.51 = internal global ptr @bcma_register_devices._entry.49, section ".printk_index", align 4
@bcma_register_devices.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.45, ptr @.str.2, ptr @.str.52, i8 0, i8 86, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bus%d: GPIO driver not activated\0A\00", [62 x i8] zeroinitializer }, align 32
@bcma_register_devices._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.45, ptr @.str.2, i32 348, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"bus%d: Error registering GPIO driver: %i\0A\00", [54 x i8] zeroinitializer }, align 32
@bcma_register_devices._entry_ptr.55 = internal global ptr @bcma_register_devices._entry.53, section ".printk_index", align 4
@bcma_register_devices._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.45, ptr @.str.2, i32 353, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"bus%d: Error registering watchdog driver\0A\00", [54 x i8] zeroinitializer }, align 32
@bcma_register_devices._entry_ptr.58 = internal global ptr @bcma_register_devices._entry.56, section ".printk_index", align 4
@bcma_bus_registered = internal global { i1, [31 x i8] } zeroinitializer, align 32
@bcma_modinit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013bcma: SoC host initialization failed\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bcma_modinit\00", [19 x i8] zeroinitializer }, align 32
@bcma_modinit._entry_ptr = internal global ptr @bcma_modinit._entry, section ".printk_index", align 4
@bcma_modinit._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.2, i32 679, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013bcma: PCI host initialization failed\0A\00", [56 x i8] zeroinitializer }, align 32
@bcma_modinit._entry_ptr.63 = internal global ptr @bcma_modinit._entry.61, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.66 = internal global [10 x i64] [i64 8, i64 16, i64 1280, i64 1291, i64 1500, i64 2048, i64 2052, i64 2080, i64 2092, i64 2108]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966772]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 113, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [14 x i8] c"bcma_bus_type\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 70, i32 24 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 242, i32 27 }
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"bcma_buses_mutex\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [18 x i8] c"bcma_bus_next_num\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 23, i32 21 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 387, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 417, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 419, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 473, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 484, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 486, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 506, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 524, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 191, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [19 x i8] c"bcma_device_groups\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [18 x i8] c"bcma_device_group\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 68, i32 1 }
@___asan_gen_.177 = private unnamed_addr constant [18 x i8] c"bcma_device_attrs\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 61, i32 26 }
@___asan_gen_.180 = private unnamed_addr constant [15 x i8] c"dev_attr_manuf\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [12 x i8] c"dev_attr_id\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [13 x i8] c"dev_attr_rev\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [15 x i8] c"dev_attr_class\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 38, i32 8 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 36, i32 22 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 45, i32 8 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 52, i32 8 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 50, i32 22 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 59, i32 8 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 57, i32 22 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 633, i32 10 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 26, i32 8 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 283, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 325, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 333, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 341, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 346, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 348, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 353, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant [20 x i8] c"bcma_bus_registered\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 673, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.280 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.281 = private constant [23 x i8] c"../drivers/bcma/main.c\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 679, i32 3 }
@llvm.compiler.used = appending global [100 x ptr] [ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_bcma_modexit, ptr @__initcall__kmod_bcma__241_659_bcma_init_bus_register5, ptr @__initcall__kmod_bcma__242_686_bcma_modinit6, ptr @__ksymtab___bcma_driver_register, ptr @__ksymtab_bcma_core_irq, ptr @__ksymtab_bcma_driver_unregister, ptr @__ksymtab_bcma_find_core_unit, ptr @bcma_bus_early_register._entry, ptr @bcma_bus_early_register._entry.26, ptr @bcma_bus_early_register._entry_ptr, ptr @bcma_bus_early_register._entry_ptr.28, ptr @bcma_bus_register._entry, ptr @bcma_bus_register._entry.12, ptr @bcma_bus_register._entry.15, ptr @bcma_bus_register._entry.9, ptr @bcma_bus_register._entry_ptr, ptr @bcma_bus_register._entry_ptr.11, ptr @bcma_bus_register._entry_ptr.14, ptr @bcma_bus_register._entry_ptr.18, ptr @bcma_bus_unregister._entry, ptr @bcma_bus_unregister._entry.21, ptr @bcma_bus_unregister._entry_ptr, ptr @bcma_bus_unregister._entry_ptr.23, ptr @bcma_modexit, ptr @bcma_modinit._entry, ptr @bcma_modinit._entry.61, ptr @bcma_modinit._entry_ptr, ptr @bcma_modinit._entry_ptr.63, ptr @bcma_register_core._entry, ptr @bcma_register_core._entry_ptr, ptr @bcma_register_devices._entry, ptr @bcma_register_devices._entry.46, ptr @bcma_register_devices._entry.49, ptr @bcma_register_devices._entry.53, ptr @bcma_register_devices._entry.56, ptr @bcma_register_devices._entry_ptr, ptr @bcma_register_devices._entry_ptr.48, ptr @bcma_register_devices._entry_ptr.51, ptr @bcma_register_devices._entry_ptr.55, ptr @bcma_register_devices._entry_ptr.58, ptr @bcma_wait_value._entry, ptr @bcma_wait_value._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @bcma_bus_type, ptr @.str.5, ptr @bcma_buses_mutex, ptr @bcma_bus_next_num, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @bcma_device_groups, ptr @bcma_device_group, ptr @bcma_device_attrs, ptr @dev_attr_manuf, ptr @dev_attr_id, ptr @dev_attr_rev, ptr @dev_attr_class, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @bcma_bus_registered, ptr @.str.59, ptr @.str.60, ptr @.str.62], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_wait_value._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_bus_type to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_buses_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_bus_next_num to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_bus_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_bus_register._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_bus_register._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_bus_register._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_bus_unregister._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_bus_unregister._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_bus_early_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_bus_early_register._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_device_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_device_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_device_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_manuf to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rev to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_class to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_register_core._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_register_devices._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_register_devices._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_register_devices._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_register_devices._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_register_devices._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_bus_registered to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_modinit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_modinit._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bcma_find_core_unit(ptr noundef readonly %bus, i16 noundef zeroext %coreid, i8 noundef zeroext %unit) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cores = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 9
  %0 = ptrtoint ptr %cores to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn22 = load ptr, ptr %cores, align 4
  %cmp.not23 = icmp eq ptr %.pn22, %cores
  br i1 %cmp.not23, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn24 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn22, %entry.for.body_crit_edge ]
  %id2 = getelementptr i8, ptr %.pn24, i32 -1002
  %1 = ptrtoint ptr %id2 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %id2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %coreid)
  %cmp4 = icmp eq i16 %2, %coreid
  br i1 %cmp4, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %core_unit = getelementptr i8, ptr %.pn24, i32 -54
  %3 = ptrtoint ptr %core_unit to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %core_unit, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %unit)
  %cmp8 = icmp eq i8 %4, %unit
  br i1 %cmp8, label %cleanup.split.loop.exit20, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %5 = ptrtoint ptr %.pn24 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn24, align 4
  %cmp.not = icmp eq ptr %.pn, %cores
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.split.loop.exit20:                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %core.0.le = getelementptr i8, ptr %.pn24, i32 -1008
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit20, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %core.0.le, %cleanup.split.loop.exit20 ], [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @bcma_wait_value(ptr noundef %core, i16 noundef zeroext %reg, i32 noundef %mask, i32 noundef %value, i32 noundef %timeout) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = add i32 %0, %timeout
  br label %do.body

do.body:                                          ; preds = %do.end.do.body_crit_edge, %entry
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %7(ptr noundef %core, i16 noundef zeroext %reg) #8
  %and = and i32 %call.i, %mask
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %value)
  %cmp = icmp eq i32 %and, %value
  br i1 %cmp, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 2147480) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %9, %1
  %cmp9 = icmp slt i32 %sub, 0
  br i1 %cmp9, label %do.end.do.body_crit_edge, label %do.end13

do.end.do.body_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end13:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %core, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %num = getelementptr inbounds %struct.bcma_bus, ptr %11, i32 0, i32 11
  %14 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num, align 1
  %conv = zext i8 %15 to i32
  %conv15 = zext i16 %reg to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str, i32 noundef %conv, i32 noundef %conv15) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %do.body.cleanup_crit_edge
  ret i1 %cmp
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcma_core_irq(ptr noundef %core, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 8
  %hosttype = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %hosttype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hosttype, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %host_pci = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %host_pci to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host_pci, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 46
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %drv_mips = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 16
  %9 = ptrtoint ptr %drv_mips to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drv_mips, align 4
  %tobool.not = icmp ne ptr %10, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp = icmp eq i32 %num, 0
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @bcma_core_mips_irq(ptr noundef %core) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call)
  %cmp4 = icmp ult i32 %call, 5
  %add = add i32 %call, 2
  %spec.select = select i1 %cmp4, i32 %add, i32 0
  br label %cleanup

if.end:                                           ; preds = %sw.bb2
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %tobool5.not = icmp eq ptr %12, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call fastcc i32 @bcma_of_get_irq(ptr noundef nonnull %12, ptr noundef %core, i32 noundef %num)
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %if.then, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.then ], [ %call8, %if.then6 ], [ %8, %sw.bb ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_core_mips_irq(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcma_of_get_irq(ptr nocapture noundef readonly %parent, ptr nocapture noundef readonly %core, i32 noundef %num) unnamed_addr #2 align 64 {
entry:
  %laddr.i = alloca [1 x i32], align 4
  %out_irq = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %out_irq) #8
  %0 = call ptr @memset(ptr %out_irq, i32 255, i32 72)
  %of_node = getelementptr inbounds %struct.device, ptr %parent, i32 0, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %laddr.i) #8
  %of_node.i = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 2, i32 27
  %3 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.bcma_of_irq_parse.exit_crit_edge, label %if.then.i

if.end.bcma_of_irq_parse.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcma_of_irq_parse.exit

if.then.i:                                        ; preds = %if.end
  %call.i = call i32 @of_irq_parse_one(ptr noundef nonnull %4, i32 noundef %num, ptr noundef nonnull %out_irq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %bcma_of_irq_parse.exit.thread, label %if.then.i.bcma_of_irq_parse.exit_crit_edge

if.then.i.bcma_of_irq_parse.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcma_of_irq_parse.exit

bcma_of_irq_parse.exit.thread:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %laddr.i) #8
  br label %if.end12

bcma_of_irq_parse.exit:                           ; preds = %if.then.i.bcma_of_irq_parse.exit_crit_edge, %if.end.bcma_of_irq_parse.exit_crit_edge
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %7 = ptrtoint ptr %out_irq to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %out_irq, align 4
  %args_count.i = getelementptr inbounds %struct.of_phandle_args, ptr %out_irq, i32 0, i32 1
  %8 = ptrtoint ptr %args_count.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %args_count.i, align 4
  %args.i = getelementptr inbounds %struct.of_phandle_args, ptr %out_irq, i32 0, i32 2
  %9 = ptrtoint ptr %args.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %num, ptr %args.i, align 4
  %addr.i = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 8
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i, align 4
  %12 = ptrtoint ptr %laddr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %laddr.i, align 4
  %call8.i = call i32 @of_irq_parse_raw(ptr noundef nonnull %laddr.i, ptr noundef nonnull %out_irq) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %laddr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool1.not = icmp eq i32 %call8.i, 0
  br i1 %tobool1.not, label %bcma_of_irq_parse.exit.if.end12_crit_edge, label %do.body

bcma_of_irq_parse.exit.if.end12_crit_edge:        ; preds = %bcma_of_irq_parse.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

do.body:                                          ; preds = %bcma_of_irq_parse.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcma_of_get_irq.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcma_of_get_irq, %cleanup)) #8
          to label %if.then8 [label %cleanup], !srcloc !155

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %core, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %num10 = getelementptr inbounds %struct.bcma_bus, ptr %14, i32 0, i32 11
  %17 = ptrtoint ptr %num10 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %num10, align 1
  %conv = zext i8 %18 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcma_of_get_irq.__UNIQUE_ID_ddebug239, ptr noundef %16, ptr noundef nonnull @.str.31, i32 noundef %conv, i32 noundef %call8.i) #8
  br label %cleanup

if.end12:                                         ; preds = %bcma_of_irq_parse.exit.if.end12_crit_edge, %bcma_of_irq_parse.exit.thread
  %call13 = call i32 @irq_create_of_mapping(ptr noundef nonnull %out_irq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then8, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end12 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then8 ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %out_irq) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcma_prepare_core(ptr nocapture noundef readonly %bus, ptr noundef %core) local_unnamed_addr #2 align 64 {
entry:
  %size.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 2
  tail call void @device_initialize(ptr noundef %dev) #8
  %release = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 2, i32 35
  %0 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @bcma_release_core_dev, ptr %release, align 4
  %bus3 = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 2, i32 5
  %1 = ptrtoint ptr %bus3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bcma_bus_type, ptr %bus3, align 8
  %num = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 11
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num, align 1
  %conv = zext i8 %3 to i32
  %core_index = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 6
  %4 = ptrtoint ptr %core_index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %core_index, align 1
  %conv5 = zext i8 %5 to i32
  %call = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %conv, i32 noundef %conv5) #8
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 4
  %parent = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %parent, align 8
  %9 = load ptr, ptr %bus, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %size.i.i) #8
  %10 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %size.i.i, align 8, !annotation !156
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 27
  %11 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.then.bcma_of_find_child_device.exit.thread.i_crit_edge, label %if.end.i.i

if.then.bcma_of_find_child_device.exit.thread.i_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcma_of_find_child_device.exit.thread.i

if.end.i.i:                                       ; preds = %if.then
  %call.i.i = tail call ptr @of_get_next_child(ptr noundef nonnull %12, ptr noundef null) #8
  %cmp.not22.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.not22.i.i, label %if.end.i.i.bcma_of_find_child_device.exit.thread.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i.i.bcma_of_find_child_device.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcma_of_find_child_device.exit.thread.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i
  %addr.i.i = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %node.023.i.i = phi ptr [ %call.i.i, %for.body.lr.ph.i.i ], [ %call12.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %call.i.i.i = call ptr @__of_get_address(ptr noundef nonnull %node.023.i.i, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %size.i.i, ptr noundef null) #8
  %tobool3.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool3.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end5.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.end5.i.i:                                      ; preds = %for.body.i.i
  %call6.i.i = call i64 @of_translate_address(ptr noundef nonnull %node.023.i.i, ptr noundef nonnull %call.i.i.i) #8
  %13 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr.i.i, align 4
  %conv.i.i = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %call6.i.i, i64 %conv.i.i)
  %cmp7.i.i = icmp eq i64 %call6.i.i, %conv.i.i
  br i1 %cmp7.i.i, label %if.then.i, label %if.end5.i.i.for.inc.i.i_crit_edge

if.end5.i.i.for.inc.i.i_crit_edge:                ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end5.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %15 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node.i.i, align 8
  %call12.i.i = call ptr @of_get_next_child(ptr noundef %16, ptr noundef nonnull %node.023.i.i) #8
  %cmp.not.i.i = icmp eq ptr %call12.i.i, null
  br i1 %cmp.not.i.i, label %for.inc.i.i.bcma_of_find_child_device.exit.thread.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.bcma_of_find_child_device.exit.thread.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcma_of_find_child_device.exit.thread.i

bcma_of_find_child_device.exit.thread.i:          ; preds = %for.inc.i.i.bcma_of_find_child_device.exit.thread.i_crit_edge, %if.end.i.i.bcma_of_find_child_device.exit.thread.i_crit_edge, %if.then.bcma_of_find_child_device.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %size.i.i) #8
  br label %bcma_of_fill_device.exit

if.then.i:                                        ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %size.i.i) #8
  %of_node.i = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 2, i32 27
  %17 = ptrtoint ptr %of_node.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %node.023.i.i, ptr %of_node.i, align 8
  br label %bcma_of_fill_device.exit

bcma_of_fill_device.exit:                         ; preds = %if.then.i, %bcma_of_find_child_device.exit.thread.i
  %retval.0.i14.i = phi ptr [ null, %bcma_of_find_child_device.exit.thread.i ], [ %node.023.i.i, %if.then.i ]
  %call1.i = call fastcc i32 @bcma_of_get_irq(ptr noundef nonnull %9, ptr noundef %core, i32 noundef 0) #8
  %irq.i = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 4
  %18 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call1.i, ptr %irq.i, align 4
  %call.i11.i = call i32 @of_dma_configure_id(ptr noundef %dev, ptr noundef %retval.0.i14.i, i1 noundef zeroext false, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %bcma_of_fill_device.exit, %entry.if.end_crit_edge
  %hosttype = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 3
  %19 = ptrtoint ptr %hosttype to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hosttype, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %20, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb12
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus, align 4
  %dma_dev = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 3
  %24 = ptrtoint ptr %dma_dev to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %dma_dev, align 8
  %host_pci = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 5
  %25 = ptrtoint ptr %host_pci to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %host_pci, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 46
  %27 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq, align 4
  %irq11 = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 4
  %29 = ptrtoint ptr %irq11 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %irq11, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  %30 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus, align 4
  %tobool14.not = icmp eq ptr %31, null
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  %dma_dev17 = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 3
  %32 = ptrtoint ptr %dma_dev17 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %dma_dev17, align 8
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  %coherent_dma_mask = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 2, i32 19
  %dma_mask = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 2, i32 18
  %33 = ptrtoint ptr %dma_mask to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %coherent_dma_mask, ptr %dma_mask, align 8
  %dma_dev21 = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 3
  %34 = ptrtoint ptr %dma_dev21 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %dev, ptr %dma_dev21, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.then15, %sw.bb, %if.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcma_release_core_dev(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %io_addr = getelementptr i8, ptr %dev, i32 980
  %0 = ptrtoint ptr %io_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_addr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @iounmap(ptr noundef nonnull %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %io_wrap = getelementptr i8, ptr %dev, i32 984
  %2 = ptrtoint ptr %io_wrap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_wrap, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @iounmap(ptr noundef nonnull %3) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  tail call void @kfree(ptr noundef %add.ptr) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcma_init_bus(ptr noundef %bus) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @bcma_buses_mutex, i32 noundef 0) #8
  %0 = load i32, ptr @bcma_bus_next_num, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @bcma_bus_next_num, align 4
  %conv = trunc i32 %0 to i8
  %num = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 11
  %1 = ptrtoint ptr %num to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %num, align 1
  tail call void @mutex_unlock(ptr noundef nonnull @bcma_buses_mutex) #8
  %cores = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 9
  %2 = ptrtoint ptr %cores to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %cores, ptr %cores, align 4
  %prev.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 9, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cores, ptr %prev.i, align 4
  %nr_cores = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 10
  %4 = ptrtoint ptr %nr_cores to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %nr_cores, align 4
  tail call void @bcma_detect_chip(ptr noundef %bus) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_detect_chip(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcma_unregister_cores(ptr noundef readonly %bus) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cores = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 9
  %0 = ptrtoint ptr %cores to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cores, align 4
  %cmp.not68 = icmp eq ptr %1, %cores
  br i1 %cmp.not68, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in69 = phi ptr [ %.pn71, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %.pn.in69 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn71 = load ptr, ptr %.pn.in69, align 8
  %dev_registered = getelementptr i8, ptr %.pn.in69, i32 -56
  %3 = ptrtoint ptr %dev_registered to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dev_registered, align 8, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in69) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in69, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %.pn.in69 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn.in69, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %11 = ptrtoint ptr %.pn.in69 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in69, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in69, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %dev = getelementptr i8, ptr %.pn.in69, i32 -992
  tail call void @device_unregister(ptr noundef %dev) #8
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn71, %cores
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %hosttype = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 3
  %13 = ptrtoint ptr %hosttype to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hosttype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp14 = icmp eq i32 %14, 2
  br i1 %cmp14, label %if.then15, label %for.end.if.end16_crit_edge

for.end.if.end16_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then15:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %watchdog = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 12, i32 13
  %15 = ptrtoint ptr %watchdog to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %watchdog, align 4
  tail call void @platform_device_unregister(ptr noundef %16) #8
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %for.end.if.end16_crit_edge
  %17 = ptrtoint ptr %cores to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cores, align 4
  %cmp30.not72 = icmp eq ptr %18, %cores
  br i1 %cmp30.not72, label %if.end16.for.end41_crit_edge, label %if.end16.for.body32_crit_edge

if.end16.for.body32_crit_edge:                    ; preds = %if.end16
  br label %for.body32

if.end16.for.end41_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end41

for.body32:                                       ; preds = %list_del.exit66.for.body32_crit_edge, %if.end16.for.body32_crit_edge
  %.pn58.in73 = phi ptr [ %.pn58, %list_del.exit66.for.body32_crit_edge ], [ %18, %if.end16.for.body32_crit_edge ]
  %19 = ptrtoint ptr %.pn58.in73 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn58 = load ptr, ptr %.pn58.in73, align 8
  %call.i.i61 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn58.in73) #8
  br i1 %call.i.i61, label %if.end.i.i64, label %for.body32.list_del.exit66_crit_edge

for.body32.list_del.exit66_crit_edge:             ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit66

if.end.i.i64:                                     ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i62 = getelementptr inbounds %struct.list_head, ptr %.pn58.in73, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i62 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i62, align 4
  %22 = ptrtoint ptr %.pn58.in73 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %.pn58.in73, align 4
  %prev1.i.i.i63 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i63 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i63, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit66

list_del.exit66:                                  ; preds = %if.end.i.i64, %for.body32.list_del.exit66_crit_edge
  %26 = ptrtoint ptr %.pn58.in73 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn58.in73, align 4
  %prev.i65 = getelementptr inbounds %struct.list_head, ptr %.pn58.in73, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i65 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i65, align 4
  %dev34 = getelementptr i8, ptr %.pn58.in73, i32 -992
  tail call void @put_device(ptr noundef %dev34) #8
  %cmp30.not = icmp eq ptr %.pn58, %cores
  br i1 %cmp30.not, label %list_del.exit66.for.end41_crit_edge, label %list_del.exit66.for.body32_crit_edge

list_del.exit66.for.body32_crit_edge:             ; preds = %list_del.exit66
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body32

list_del.exit66.for.end41_crit_edge:              ; preds = %list_del.exit66
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end41

for.end41:                                        ; preds = %list_del.exit66.for.end41_crit_edge, %if.end16.for.end41_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcma_bus_register(ptr noundef %bus) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bcma_bus_scan(ptr noundef %bus) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %num = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 11
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num, align 1
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %conv, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %chipinfo.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 6
  %4 = ptrtoint ptr %chipinfo.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %chipinfo.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 21248, i16 %5)
  %cmp.i = icmp eq i16 %5, 21248
  %..i = select i1 %cmp.i, i16 1280, i16 2048
  %cores.i.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 9
  %6 = ptrtoint ptr %cores.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn22.i.i = load ptr, ptr %cores.i.i, align 4
  %cmp.not23.i.i = icmp eq ptr %.pn22.i.i, %cores.i.i
  br i1 %cmp.not23.i.i, label %if.end.if.end7_crit_edge, label %if.end.for.body.i.i_crit_edge

if.end.for.body.i.i_crit_edge:                    ; preds = %if.end
  br label %for.body.i.i

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.for.body.i.i_crit_edge
  %.pn24.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn22.i.i, %if.end.for.body.i.i_crit_edge ]
  %id2.i.i = getelementptr i8, ptr %.pn24.i.i, i32 -1002
  %7 = ptrtoint ptr %id2.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %id2.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %..i)
  %cmp4.i.i = icmp eq i16 %8, %..i
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %core_unit.i.i = getelementptr i8, ptr %.pn24.i.i, i32 -54
  %9 = ptrtoint ptr %core_unit.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %core_unit.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp8.i.i = icmp eq i8 %10, 0
  br i1 %cmp8.i.i, label %bcma_find_core.exit, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %11 = ptrtoint ptr %.pn24.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i.i = load ptr, ptr %.pn24.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %cores.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.if.end7_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.if.end7_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

bcma_find_core.exit:                              ; preds = %land.lhs.true.i.i
  %core.0.le.i.i = getelementptr i8, ptr %.pn24.i.i, i32 -1008
  %tobool3.not = icmp eq ptr %core.0.le.i.i, null
  br i1 %tobool3.not, label %bcma_find_core.exit.if.end7_crit_edge, label %if.then4

bcma_find_core.exit.if.end7_crit_edge:            ; preds = %bcma_find_core.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then4:                                         ; preds = %bcma_find_core.exit
  call void @__sanitizer_cov_trace_pc() #10
  %drv_cc = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 12
  %12 = ptrtoint ptr %drv_cc to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %core.0.le.i.i, ptr %drv_cc, align 4
  tail call void @bcma_core_chipcommon_early_init(ptr noundef %drv_cc) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %bcma_find_core.exit.if.end7_crit_edge, %for.inc.i.i.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %13 = ptrtoint ptr %cores.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn22.i.i184 = load ptr, ptr %cores.i.i, align 4
  %cmp.not23.i.i185 = icmp eq ptr %.pn22.i.i184, %cores.i.i
  br i1 %cmp.not23.i.i185, label %if.end7.if.end14_crit_edge, label %if.end7.for.body.i.i189_crit_edge

if.end7.for.body.i.i189_crit_edge:                ; preds = %if.end7
  br label %for.body.i.i189

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

for.body.i.i189:                                  ; preds = %for.inc.i.i195.for.body.i.i189_crit_edge, %if.end7.for.body.i.i189_crit_edge
  %.pn24.i.i186 = phi ptr [ %.pn.i.i193, %for.inc.i.i195.for.body.i.i189_crit_edge ], [ %.pn22.i.i184, %if.end7.for.body.i.i189_crit_edge ]
  %id2.i.i187 = getelementptr i8, ptr %.pn24.i.i186, i32 -1002
  %14 = ptrtoint ptr %id2.i.i187 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %id2.i.i187, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2080, i16 %15)
  %cmp4.i.i188 = icmp eq i16 %15, 2080
  br i1 %cmp4.i.i188, label %land.lhs.true.i.i192, label %for.body.i.i189.for.inc.i.i195_crit_edge

for.body.i.i189.for.inc.i.i195_crit_edge:         ; preds = %for.body.i.i189
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i195

land.lhs.true.i.i192:                             ; preds = %for.body.i.i189
  %core_unit.i.i190 = getelementptr i8, ptr %.pn24.i.i186, i32 -54
  %16 = ptrtoint ptr %core_unit.i.i190 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %core_unit.i.i190, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp8.i.i191 = icmp eq i8 %17, 0
  br i1 %cmp8.i.i191, label %bcma_find_core.exit199, label %land.lhs.true.i.i192.for.inc.i.i195_crit_edge

land.lhs.true.i.i192.for.inc.i.i195_crit_edge:    ; preds = %land.lhs.true.i.i192
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i195

for.inc.i.i195:                                   ; preds = %land.lhs.true.i.i192.for.inc.i.i195_crit_edge, %for.body.i.i189.for.inc.i.i195_crit_edge
  %18 = ptrtoint ptr %.pn24.i.i186 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn.i.i193 = load ptr, ptr %.pn24.i.i186, align 4
  %cmp.not.i.i194 = icmp eq ptr %.pn.i.i193, %cores.i.i
  br i1 %cmp.not.i.i194, label %for.inc.i.i195.if.end14_crit_edge, label %for.inc.i.i195.for.body.i.i189_crit_edge

for.inc.i.i195.for.body.i.i189_crit_edge:         ; preds = %for.inc.i.i195
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i189

for.inc.i.i195.if.end14_crit_edge:                ; preds = %for.inc.i.i195
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

bcma_find_core.exit199:                           ; preds = %land.lhs.true.i.i192
  %core.0.le.i.i196 = getelementptr i8, ptr %.pn24.i.i186, i32 -1008
  %tobool9.not = icmp eq ptr %core.0.le.i.i196, null
  br i1 %tobool9.not, label %bcma_find_core.exit199.if.end14_crit_edge, label %if.then10

bcma_find_core.exit199.if.end14_crit_edge:        ; preds = %bcma_find_core.exit199
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then10:                                        ; preds = %bcma_find_core.exit199
  call void @__sanitizer_cov_trace_pc() #10
  %drv_pci = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 14
  %19 = ptrtoint ptr %drv_pci to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %core.0.le.i.i196, ptr %drv_pci, align 4
  tail call void @bcma_core_pci_early_init(ptr noundef %drv_pci) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %bcma_find_core.exit199.if.end14_crit_edge, %for.inc.i.i195.if.end14_crit_edge, %if.end7.if.end14_crit_edge
  %20 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus, align 4
  %tobool16.not = icmp eq ptr %21, null
  br i1 %tobool16.not, label %if.end14.if.end21_crit_edge, label %if.then17

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %of_node = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 27
  %22 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node, align 8
  %call20 = tail call i32 @of_platform_default_populate(ptr noundef %23, ptr noundef null, ptr noundef nonnull %21) #8
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end14.if.end21_crit_edge
  %24 = ptrtoint ptr %cores.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn333 = load ptr, ptr %cores.i.i, align 4
  %cmp.not334 = icmp eq ptr %.pn333, %cores.i.i
  br i1 %cmp.not334, label %if.end21.for.end_crit_edge, label %for.body.lr.ph

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end21
  %num.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn335 = phi ptr [ %.pn333, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %id24 = getelementptr i8, ptr %.pn335, i32 -1002
  %25 = ptrtoint ptr %id24 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %id24, align 2
  %core_id.off.i = add i16 %26, -1289
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %core_id.off.i)
  %switch.i = icmp ult i16 %core_id.off.i, 2
  br i1 %switch.i, label %if.then26, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then26:                                        ; preds = %for.body
  %dev.i = getelementptr i8, ptr %.pn335, i32 -992
  %call.i = tail call i32 @device_add(ptr noundef %dev.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus, align 4
  %29 = ptrtoint ptr %num.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %num.i, align 1
  %conv.i = zext i8 %30 to i32
  %31 = ptrtoint ptr %id24 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %id24, align 2
  %conv3.i = zext i16 %32 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.42, i32 noundef %conv.i, i32 noundef %conv3.i) #11
  br label %for.inc

if.end.i:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %dev_registered.i = getelementptr i8, ptr %.pn335, i32 -56
  %33 = ptrtoint ptr %dev_registered.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %dev_registered.i, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.i, %do.end.i, %for.body.for.inc_crit_edge
  %34 = ptrtoint ptr %.pn335 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn = load ptr, ptr %.pn335, align 4
  %cmp.not = icmp eq ptr %.pn, %cores.i.i
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end21.for.end_crit_edge
  %call33 = tail call i32 @bcma_sprom_get(ptr noundef %bus) #8
  %35 = zext i32 %call33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %call33, label %do.end47 [
    i32 -2, label %do.end39
    i32 0, label %for.end.if.end52_crit_edge
  ]

for.end.if.end52_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

do.end39:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus, align 4
  %num41 = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 11
  %38 = ptrtoint ptr %num41 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %num41, align 1
  %conv42 = zext i8 %39 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.10, i32 noundef %conv42) #11
  br label %if.end52

do.end47:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus, align 4
  %num49 = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 11
  %42 = ptrtoint ptr %num49 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %num49, align 1
  %conv50 = zext i8 %43 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.13, i32 noundef %conv50, i32 noundef %call33) #11
  br label %if.end52

if.end52:                                         ; preds = %do.end47, %do.end39, %for.end.if.end52_crit_edge
  %44 = ptrtoint ptr %chipinfo.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %chipinfo.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 21248, i16 %45)
  %cmp.i201 = icmp eq i16 %45, 21248
  %..i202 = select i1 %cmp.i201, i16 1280, i16 2048
  %46 = ptrtoint ptr %cores.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn22.i.i204 = load ptr, ptr %cores.i.i, align 4
  %cmp.not23.i.i205 = icmp eq ptr %.pn22.i.i204, %cores.i.i
  br i1 %cmp.not23.i.i205, label %if.end52.if.end60_crit_edge, label %if.end52.for.body.i.i209_crit_edge

if.end52.for.body.i.i209_crit_edge:               ; preds = %if.end52
  br label %for.body.i.i209

if.end52.if.end60_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

for.body.i.i209:                                  ; preds = %for.inc.i.i215.for.body.i.i209_crit_edge, %if.end52.for.body.i.i209_crit_edge
  %.pn24.i.i206 = phi ptr [ %.pn.i.i213, %for.inc.i.i215.for.body.i.i209_crit_edge ], [ %.pn22.i.i204, %if.end52.for.body.i.i209_crit_edge ]
  %id2.i.i207 = getelementptr i8, ptr %.pn24.i.i206, i32 -1002
  %47 = ptrtoint ptr %id2.i.i207 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %id2.i.i207, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %48, i16 %..i202)
  %cmp4.i.i208 = icmp eq i16 %48, %..i202
  br i1 %cmp4.i.i208, label %land.lhs.true.i.i212, label %for.body.i.i209.for.inc.i.i215_crit_edge

for.body.i.i209.for.inc.i.i215_crit_edge:         ; preds = %for.body.i.i209
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i215

land.lhs.true.i.i212:                             ; preds = %for.body.i.i209
  %core_unit.i.i210 = getelementptr i8, ptr %.pn24.i.i206, i32 -54
  %49 = ptrtoint ptr %core_unit.i.i210 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %core_unit.i.i210, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp8.i.i211 = icmp eq i8 %50, 0
  br i1 %cmp8.i.i211, label %bcma_find_core.exit219, label %land.lhs.true.i.i212.for.inc.i.i215_crit_edge

land.lhs.true.i.i212.for.inc.i.i215_crit_edge:    ; preds = %land.lhs.true.i.i212
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i215

for.inc.i.i215:                                   ; preds = %land.lhs.true.i.i212.for.inc.i.i215_crit_edge, %for.body.i.i209.for.inc.i.i215_crit_edge
  %51 = ptrtoint ptr %.pn24.i.i206 to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pn.i.i213 = load ptr, ptr %.pn24.i.i206, align 4
  %cmp.not.i.i214 = icmp eq ptr %.pn.i.i213, %cores.i.i
  br i1 %cmp.not.i.i214, label %for.inc.i.i215.if.end60_crit_edge, label %for.inc.i.i215.for.body.i.i209_crit_edge

for.inc.i.i215.for.body.i.i209_crit_edge:         ; preds = %for.inc.i.i215
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i209

for.inc.i.i215.if.end60_crit_edge:                ; preds = %for.inc.i.i215
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

bcma_find_core.exit219:                           ; preds = %land.lhs.true.i.i212
  %core.0.le.i.i216 = getelementptr i8, ptr %.pn24.i.i206, i32 -1008
  %tobool55.not = icmp eq ptr %core.0.le.i.i216, null
  br i1 %tobool55.not, label %bcma_find_core.exit219.if.end60_crit_edge, label %if.then56

bcma_find_core.exit219.if.end60_crit_edge:        ; preds = %bcma_find_core.exit219
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then56:                                        ; preds = %bcma_find_core.exit219
  call void @__sanitizer_cov_trace_pc() #10
  %drv_cc57 = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 12
  %52 = ptrtoint ptr %drv_cc57 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %core.0.le.i.i216, ptr %drv_cc57, align 4
  tail call void @bcma_core_chipcommon_init(ptr noundef %drv_cc57) #8
  br label %if.end60

if.end60:                                         ; preds = %if.then56, %bcma_find_core.exit219.if.end60_crit_edge, %for.inc.i.i215.if.end60_crit_edge, %if.end52.if.end60_crit_edge
  %53 = ptrtoint ptr %cores.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pn22.i.i221 = load ptr, ptr %cores.i.i, align 4
  %cmp.not23.i.i222 = icmp eq ptr %.pn22.i.i221, %cores.i.i
  br i1 %cmp.not23.i.i222, label %if.end60.if.end67_crit_edge, label %if.end60.for.body.i.i226_crit_edge

if.end60.for.body.i.i226_crit_edge:               ; preds = %if.end60
  br label %for.body.i.i226

if.end60.if.end67_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

for.body.i.i226:                                  ; preds = %for.inc.i.i232.for.body.i.i226_crit_edge, %if.end60.for.body.i.i226_crit_edge
  %.pn24.i.i223 = phi ptr [ %.pn.i.i230, %for.inc.i.i232.for.body.i.i226_crit_edge ], [ %.pn22.i.i221, %if.end60.for.body.i.i226_crit_edge ]
  %id2.i.i224 = getelementptr i8, ptr %.pn24.i.i223, i32 -1002
  %54 = ptrtoint ptr %id2.i.i224 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %id2.i.i224, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1291, i16 %55)
  %cmp4.i.i225 = icmp eq i16 %55, 1291
  br i1 %cmp4.i.i225, label %land.lhs.true.i.i229, label %for.body.i.i226.for.inc.i.i232_crit_edge

for.body.i.i226.for.inc.i.i232_crit_edge:         ; preds = %for.body.i.i226
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i232

land.lhs.true.i.i229:                             ; preds = %for.body.i.i226
  %core_unit.i.i227 = getelementptr i8, ptr %.pn24.i.i223, i32 -54
  %56 = ptrtoint ptr %core_unit.i.i227 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %core_unit.i.i227, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp8.i.i228 = icmp eq i8 %57, 0
  br i1 %cmp8.i.i228, label %bcma_find_core.exit236, label %land.lhs.true.i.i229.for.inc.i.i232_crit_edge

land.lhs.true.i.i229.for.inc.i.i232_crit_edge:    ; preds = %land.lhs.true.i.i229
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i232

for.inc.i.i232:                                   ; preds = %land.lhs.true.i.i229.for.inc.i.i232_crit_edge, %for.body.i.i226.for.inc.i.i232_crit_edge
  %58 = ptrtoint ptr %.pn24.i.i223 to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pn.i.i230 = load ptr, ptr %.pn24.i.i223, align 4
  %cmp.not.i.i231 = icmp eq ptr %.pn.i.i230, %cores.i.i
  br i1 %cmp.not.i.i231, label %for.inc.i.i232.if.end67_crit_edge, label %for.inc.i.i232.for.body.i.i226_crit_edge

for.inc.i.i232.for.body.i.i226_crit_edge:         ; preds = %for.inc.i.i232
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i226

for.inc.i.i232.if.end67_crit_edge:                ; preds = %for.inc.i.i232
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

bcma_find_core.exit236:                           ; preds = %land.lhs.true.i.i229
  %core.0.le.i.i233 = getelementptr i8, ptr %.pn24.i.i223, i32 -1008
  %tobool62.not = icmp eq ptr %core.0.le.i.i233, null
  br i1 %tobool62.not, label %bcma_find_core.exit236.if.end67_crit_edge, label %if.then63

bcma_find_core.exit236.if.end67_crit_edge:        ; preds = %bcma_find_core.exit236
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then63:                                        ; preds = %bcma_find_core.exit236
  call void @__sanitizer_cov_trace_pc() #10
  %drv_cc_b = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 13
  %59 = ptrtoint ptr %drv_cc_b to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %core.0.le.i.i233, ptr %drv_cc_b, align 4
  %call66 = tail call i32 @bcma_core_chipcommon_b_init(ptr noundef %drv_cc_b) #8
  br label %if.end67

if.end67:                                         ; preds = %if.then63, %bcma_find_core.exit236.if.end67_crit_edge, %for.inc.i.i232.if.end67_crit_edge, %if.end60.if.end67_crit_edge
  %60 = ptrtoint ptr %cores.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pn22.i.i238 = load ptr, ptr %cores.i.i, align 4
  %cmp.not23.i.i239 = icmp eq ptr %.pn22.i.i238, %cores.i.i
  br i1 %cmp.not23.i.i239, label %if.end67.if.end73_crit_edge, label %if.end67.for.body.i.i243_crit_edge

if.end67.for.body.i.i243_crit_edge:               ; preds = %if.end67
  br label %for.body.i.i243

if.end67.if.end73_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

for.body.i.i243:                                  ; preds = %for.inc.i.i249.for.body.i.i243_crit_edge, %if.end67.for.body.i.i243_crit_edge
  %.pn24.i.i240 = phi ptr [ %.pn.i.i247, %for.inc.i.i249.for.body.i.i243_crit_edge ], [ %.pn22.i.i238, %if.end67.for.body.i.i243_crit_edge ]
  %id2.i.i241 = getelementptr i8, ptr %.pn24.i.i240, i32 -1002
  %61 = ptrtoint ptr %id2.i.i241 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %id2.i.i241, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2092, i16 %62)
  %cmp4.i.i242 = icmp eq i16 %62, 2092
  br i1 %cmp4.i.i242, label %land.lhs.true.i.i246, label %for.body.i.i243.for.inc.i.i249_crit_edge

for.body.i.i243.for.inc.i.i249_crit_edge:         ; preds = %for.body.i.i243
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i249

land.lhs.true.i.i246:                             ; preds = %for.body.i.i243
  %core_unit.i.i244 = getelementptr i8, ptr %.pn24.i.i240, i32 -54
  %63 = ptrtoint ptr %core_unit.i.i244 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %core_unit.i.i244, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp8.i.i245 = icmp eq i8 %64, 0
  br i1 %cmp8.i.i245, label %bcma_find_core.exit253, label %land.lhs.true.i.i246.for.inc.i.i249_crit_edge

land.lhs.true.i.i246.for.inc.i.i249_crit_edge:    ; preds = %land.lhs.true.i.i246
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i249

for.inc.i.i249:                                   ; preds = %land.lhs.true.i.i246.for.inc.i.i249_crit_edge, %for.body.i.i243.for.inc.i.i249_crit_edge
  %65 = ptrtoint ptr %.pn24.i.i240 to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pn.i.i247 = load ptr, ptr %.pn24.i.i240, align 4
  %cmp.not.i.i248 = icmp eq ptr %.pn.i.i247, %cores.i.i
  br i1 %cmp.not.i.i248, label %for.inc.i.i249.if.end73_crit_edge, label %for.inc.i.i249.for.body.i.i243_crit_edge

for.inc.i.i249.for.body.i.i243_crit_edge:         ; preds = %for.inc.i.i249
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i243

for.inc.i.i249.if.end73_crit_edge:                ; preds = %for.inc.i.i249
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

bcma_find_core.exit253:                           ; preds = %land.lhs.true.i.i246
  %core.0.le.i.i250 = getelementptr i8, ptr %.pn24.i.i240, i32 -1008
  %tobool69.not = icmp eq ptr %core.0.le.i.i250, null
  br i1 %tobool69.not, label %bcma_find_core.exit253.if.end73_crit_edge, label %if.then70

bcma_find_core.exit253.if.end73_crit_edge:        ; preds = %bcma_find_core.exit253
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.then70:                                        ; preds = %bcma_find_core.exit253
  call void @__sanitizer_cov_trace_pc() #10
  %drv_mips = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 16
  %66 = ptrtoint ptr %drv_mips to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %core.0.le.i.i250, ptr %drv_mips, align 4
  tail call void @bcma_core_mips_init(ptr noundef %drv_mips) #8
  br label %if.end73

if.end73:                                         ; preds = %if.then70, %bcma_find_core.exit253.if.end73_crit_edge, %for.inc.i.i249.if.end73_crit_edge, %if.end67.if.end73_crit_edge
  %67 = ptrtoint ptr %cores.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pn22.i = load ptr, ptr %cores.i.i, align 4
  %cmp.not23.i = icmp eq ptr %.pn22.i, %cores.i.i
  br i1 %cmp.not23.i, label %if.end73.if.end82_crit_edge, label %if.end73.for.body.i_crit_edge

if.end73.for.body.i_crit_edge:                    ; preds = %if.end73
  br label %for.body.i

if.end73.if.end82_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end73.for.body.i_crit_edge
  %.pn24.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn22.i, %if.end73.for.body.i_crit_edge ]
  %id2.i254 = getelementptr i8, ptr %.pn24.i, i32 -1002
  %68 = ptrtoint ptr %id2.i254 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %id2.i254, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2080, i16 %69)
  %cmp4.i = icmp eq i16 %69, 2080
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %core_unit.i = getelementptr i8, ptr %.pn24.i, i32 -54
  %70 = ptrtoint ptr %core_unit.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %core_unit.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %cmp8.i = icmp eq i8 %71, 0
  br i1 %cmp8.i, label %bcma_find_core_unit.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %72 = ptrtoint ptr %.pn24.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pn.i = load ptr, ptr %.pn24.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %cores.i.i
  br i1 %cmp.not.i, label %for.inc.i.if.end82_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.end82_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

bcma_find_core_unit.exit:                         ; preds = %land.lhs.true.i
  %core.0.le.i = getelementptr i8, ptr %.pn24.i, i32 -1008
  %tobool75.not = icmp eq ptr %core.0.le.i, null
  br i1 %tobool75.not, label %bcma_find_core_unit.exit.if.end82_crit_edge, label %if.then76

bcma_find_core_unit.exit.if.end82_crit_edge:      ; preds = %bcma_find_core_unit.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

if.then76:                                        ; preds = %bcma_find_core_unit.exit
  call void @__sanitizer_cov_trace_pc() #10
  %drv_pci77 = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 14
  %73 = ptrtoint ptr %drv_pci77 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %core.0.le.i, ptr %drv_pci77, align 4
  tail call void @bcma_core_pci_init(ptr noundef %drv_pci77) #8
  br label %if.end82

if.end82:                                         ; preds = %if.then76, %bcma_find_core_unit.exit.if.end82_crit_edge, %for.inc.i.if.end82_crit_edge, %if.end73.if.end82_crit_edge
  %74 = ptrtoint ptr %cores.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pn22.i256 = load ptr, ptr %cores.i.i, align 4
  %cmp.not23.i257 = icmp eq ptr %.pn22.i256, %cores.i.i
  br i1 %cmp.not23.i257, label %if.end82.if.end91_crit_edge, label %if.end82.for.body.i261_crit_edge

if.end82.for.body.i261_crit_edge:                 ; preds = %if.end82
  br label %for.body.i261

if.end82.if.end91_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

for.body.i261:                                    ; preds = %for.inc.i267.for.body.i261_crit_edge, %if.end82.for.body.i261_crit_edge
  %.pn24.i258 = phi ptr [ %.pn.i265, %for.inc.i267.for.body.i261_crit_edge ], [ %.pn22.i256, %if.end82.for.body.i261_crit_edge ]
  %id2.i259 = getelementptr i8, ptr %.pn24.i258, i32 -1002
  %75 = ptrtoint ptr %id2.i259 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %id2.i259, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2080, i16 %76)
  %cmp4.i260 = icmp eq i16 %76, 2080
  br i1 %cmp4.i260, label %land.lhs.true.i264, label %for.body.i261.for.inc.i267_crit_edge

for.body.i261.for.inc.i267_crit_edge:             ; preds = %for.body.i261
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i267

land.lhs.true.i264:                               ; preds = %for.body.i261
  %core_unit.i262 = getelementptr i8, ptr %.pn24.i258, i32 -54
  %77 = ptrtoint ptr %core_unit.i262 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %core_unit.i262, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %78)
  %cmp8.i263 = icmp eq i8 %78, 1
  br i1 %cmp8.i263, label %bcma_find_core_unit.exit271, label %land.lhs.true.i264.for.inc.i267_crit_edge

land.lhs.true.i264.for.inc.i267_crit_edge:        ; preds = %land.lhs.true.i264
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i267

for.inc.i267:                                     ; preds = %land.lhs.true.i264.for.inc.i267_crit_edge, %for.body.i261.for.inc.i267_crit_edge
  %79 = ptrtoint ptr %.pn24.i258 to i32
  call void @__asan_load4_noabort(i32 %79)
  %.pn.i265 = load ptr, ptr %.pn24.i258, align 4
  %cmp.not.i266 = icmp eq ptr %.pn.i265, %cores.i.i
  br i1 %cmp.not.i266, label %for.inc.i267.if.end91_crit_edge, label %for.inc.i267.for.body.i261_crit_edge

for.inc.i267.for.body.i261_crit_edge:             ; preds = %for.inc.i267
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i261

for.inc.i267.if.end91_crit_edge:                  ; preds = %for.inc.i267
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

bcma_find_core_unit.exit271:                      ; preds = %land.lhs.true.i264
  %core.0.le.i268 = getelementptr i8, ptr %.pn24.i258, i32 -1008
  %tobool84.not = icmp eq ptr %core.0.le.i268, null
  br i1 %tobool84.not, label %bcma_find_core_unit.exit271.if.end91_crit_edge, label %if.then85

bcma_find_core_unit.exit271.if.end91_crit_edge:   ; preds = %bcma_find_core_unit.exit271
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

if.then85:                                        ; preds = %bcma_find_core_unit.exit271
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx87 = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 14, i32 1
  %80 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %core.0.le.i268, ptr %arrayidx87, align 4
  tail call void @bcma_core_pci_init(ptr noundef %arrayidx87) #8
  br label %if.end91

if.end91:                                         ; preds = %if.then85, %bcma_find_core_unit.exit271.if.end91_crit_edge, %for.inc.i267.if.end91_crit_edge, %if.end82.if.end91_crit_edge
  %81 = ptrtoint ptr %cores.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %.pn22.i273 = load ptr, ptr %cores.i.i, align 4
  %cmp.not23.i274 = icmp eq ptr %.pn22.i273, %cores.i.i
  br i1 %cmp.not23.i274, label %if.end91.if.end97_crit_edge, label %if.end91.for.body.i278_crit_edge

if.end91.for.body.i278_crit_edge:                 ; preds = %if.end91
  br label %for.body.i278

if.end91.if.end97_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

for.body.i278:                                    ; preds = %for.inc.i284.for.body.i278_crit_edge, %if.end91.for.body.i278_crit_edge
  %.pn24.i275 = phi ptr [ %.pn.i282, %for.inc.i284.for.body.i278_crit_edge ], [ %.pn22.i273, %if.end91.for.body.i278_crit_edge ]
  %id2.i276 = getelementptr i8, ptr %.pn24.i275, i32 -1002
  %82 = ptrtoint ptr %id2.i276 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %id2.i276, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2108, i16 %83)
  %cmp4.i277 = icmp eq i16 %83, 2108
  br i1 %cmp4.i277, label %land.lhs.true.i281, label %for.body.i278.for.inc.i284_crit_edge

for.body.i278.for.inc.i284_crit_edge:             ; preds = %for.body.i278
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i284

land.lhs.true.i281:                               ; preds = %for.body.i278
  %core_unit.i279 = getelementptr i8, ptr %.pn24.i275, i32 -54
  %84 = ptrtoint ptr %core_unit.i279 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %core_unit.i279, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %cmp8.i280 = icmp eq i8 %85, 0
  br i1 %cmp8.i280, label %bcma_find_core_unit.exit288, label %land.lhs.true.i281.for.inc.i284_crit_edge

land.lhs.true.i281.for.inc.i284_crit_edge:        ; preds = %land.lhs.true.i281
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i284

for.inc.i284:                                     ; preds = %land.lhs.true.i281.for.inc.i284_crit_edge, %for.body.i278.for.inc.i284_crit_edge
  %86 = ptrtoint ptr %.pn24.i275 to i32
  call void @__asan_load4_noabort(i32 %86)
  %.pn.i282 = load ptr, ptr %.pn24.i275, align 4
  %cmp.not.i283 = icmp eq ptr %.pn.i282, %cores.i.i
  br i1 %cmp.not.i283, label %for.inc.i284.if.end97_crit_edge, label %for.inc.i284.for.body.i278_crit_edge

for.inc.i284.for.body.i278_crit_edge:             ; preds = %for.inc.i284
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i278

for.inc.i284.if.end97_crit_edge:                  ; preds = %for.inc.i284
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

bcma_find_core_unit.exit288:                      ; preds = %land.lhs.true.i281
  %core.0.le.i285 = getelementptr i8, ptr %.pn24.i275, i32 -1008
  %tobool93.not = icmp eq ptr %core.0.le.i285, null
  br i1 %tobool93.not, label %bcma_find_core_unit.exit288.if.end97_crit_edge, label %if.then94

bcma_find_core_unit.exit288.if.end97_crit_edge:   ; preds = %bcma_find_core_unit.exit288
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

if.then94:                                        ; preds = %bcma_find_core_unit.exit288
  call void @__sanitizer_cov_trace_pc() #10
  %drv_pcie2 = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 15
  %87 = ptrtoint ptr %drv_pcie2 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %core.0.le.i285, ptr %drv_pcie2, align 4
  tail call void @bcma_core_pcie2_init(ptr noundef %drv_pcie2) #8
  br label %if.end97

if.end97:                                         ; preds = %if.then94, %bcma_find_core_unit.exit288.if.end97_crit_edge, %for.inc.i284.if.end97_crit_edge, %if.end91.if.end97_crit_edge
  %88 = ptrtoint ptr %cores.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %.pn22.i.i290 = load ptr, ptr %cores.i.i, align 4
  %cmp.not23.i.i291 = icmp eq ptr %.pn22.i.i290, %cores.i.i
  br i1 %cmp.not23.i.i291, label %if.end97.if.end103_crit_edge, label %if.end97.for.body.i.i295_crit_edge

if.end97.for.body.i.i295_crit_edge:               ; preds = %if.end97
  br label %for.body.i.i295

if.end97.if.end103_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

for.body.i.i295:                                  ; preds = %for.inc.i.i301.for.body.i.i295_crit_edge, %if.end97.for.body.i.i295_crit_edge
  %.pn24.i.i292 = phi ptr [ %.pn.i.i299, %for.inc.i.i301.for.body.i.i295_crit_edge ], [ %.pn22.i.i290, %if.end97.for.body.i.i295_crit_edge ]
  %id2.i.i293 = getelementptr i8, ptr %.pn24.i.i292, i32 -1002
  %89 = ptrtoint ptr %id2.i.i293 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %id2.i.i293, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1500, i16 %90)
  %cmp4.i.i294 = icmp eq i16 %90, 1500
  br i1 %cmp4.i.i294, label %land.lhs.true.i.i298, label %for.body.i.i295.for.inc.i.i301_crit_edge

for.body.i.i295.for.inc.i.i301_crit_edge:         ; preds = %for.body.i.i295
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i301

land.lhs.true.i.i298:                             ; preds = %for.body.i.i295
  %core_unit.i.i296 = getelementptr i8, ptr %.pn24.i.i292, i32 -54
  %91 = ptrtoint ptr %core_unit.i.i296 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %core_unit.i.i296, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %cmp8.i.i297 = icmp eq i8 %92, 0
  br i1 %cmp8.i.i297, label %bcma_find_core.exit305, label %land.lhs.true.i.i298.for.inc.i.i301_crit_edge

land.lhs.true.i.i298.for.inc.i.i301_crit_edge:    ; preds = %land.lhs.true.i.i298
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i301

for.inc.i.i301:                                   ; preds = %land.lhs.true.i.i298.for.inc.i.i301_crit_edge, %for.body.i.i295.for.inc.i.i301_crit_edge
  %93 = ptrtoint ptr %.pn24.i.i292 to i32
  call void @__asan_load4_noabort(i32 %93)
  %.pn.i.i299 = load ptr, ptr %.pn24.i.i292, align 4
  %cmp.not.i.i300 = icmp eq ptr %.pn.i.i299, %cores.i.i
  br i1 %cmp.not.i.i300, label %for.inc.i.i301.if.end103_crit_edge, label %for.inc.i.i301.for.body.i.i295_crit_edge

for.inc.i.i301.for.body.i.i295_crit_edge:         ; preds = %for.inc.i.i301
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i295

for.inc.i.i301.if.end103_crit_edge:               ; preds = %for.inc.i.i301
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

bcma_find_core.exit305:                           ; preds = %land.lhs.true.i.i298
  %core.0.le.i.i302 = getelementptr i8, ptr %.pn24.i.i292, i32 -1008
  %tobool99.not = icmp eq ptr %core.0.le.i.i302, null
  br i1 %tobool99.not, label %bcma_find_core.exit305.if.end103_crit_edge, label %if.then100

bcma_find_core.exit305.if.end103_crit_edge:       ; preds = %bcma_find_core.exit305
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

if.then100:                                       ; preds = %bcma_find_core.exit305
  call void @__sanitizer_cov_trace_pc() #10
  %drv_gmac_cmn = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 17
  %94 = ptrtoint ptr %drv_gmac_cmn to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %core.0.le.i.i302, ptr %drv_gmac_cmn, align 4
  tail call void @bcma_core_gmac_cmn_init(ptr noundef %drv_gmac_cmn) #8
  br label %if.end103

if.end103:                                        ; preds = %if.then100, %bcma_find_core.exit305.if.end103_crit_edge, %for.inc.i.i301.if.end103_crit_edge, %if.end97.if.end103_crit_edge
  tail call fastcc void @bcma_register_devices(ptr noundef %bus)
  %95 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bus, align 4
  %num109 = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 11
  %97 = ptrtoint ptr %num109 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %num109, align 1
  %conv110 = zext i8 %98 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %96, ptr noundef nonnull @.str.16, i32 noundef %conv110) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end103, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.end103 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_bus_scan(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_core_chipcommon_early_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_core_pci_early_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_default_populate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_sprom_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_core_chipcommon_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_core_chipcommon_b_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_core_mips_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_core_pci_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_core_pcie2_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_core_gmac_cmn_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcma_register_devices(ptr noundef %bus) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cores = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 9
  %0 = ptrtoint ptr %cores to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn2 = load ptr, ptr %cores, align 4
  %cmp.not3 = icmp eq ptr %.pn2, %cores
  br i1 %cmp.not3, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %num.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn4 = phi ptr [ %.pn2, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %id2 = getelementptr i8, ptr %.pn4, i32 -1002
  %1 = ptrtoint ptr %id2 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %id2, align 2
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.66)
  switch i16 %2, label %sw.epilog [
    i16 1280, label %for.body.for.inc_crit_edge
    i16 2048, label %for.body.for.inc_crit_edge5
    i16 1291, label %for.body.for.inc_crit_edge6
    i16 2052, label %for.body.for.inc_crit_edge7
    i16 2080, label %for.body.for.inc_crit_edge8
    i16 2108, label %for.body.for.inc_crit_edge9
    i16 2092, label %for.body.for.inc_crit_edge10
    i16 1500, label %for.body.for.inc_crit_edge11
  ]

for.body.for.inc_crit_edge11:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.body.for.inc_crit_edge10:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.body.for.inc_crit_edge9:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.body.for.inc_crit_edge8:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.body.for.inc_crit_edge7:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.body.for.inc_crit_edge6:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.body.for.inc_crit_edge5:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

sw.epilog:                                        ; preds = %for.body
  %core_id.off.i = add i16 %2, -1289
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %core_id.off.i)
  %switch.i = icmp ult i16 %core_id.off.i, 2
  br i1 %switch.i, label %sw.epilog.for.inc_crit_edge, label %if.end

sw.epilog.for.inc_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp2(i16 1325, i16 %2)
  %cmp8 = icmp eq i16 %2, 1325
  br i1 %cmp8, label %land.lhs.true, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end
  %core_unit = getelementptr i8, ptr %.pn4, i32 -54
  %4 = ptrtoint ptr %core_unit to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %core_unit, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp11.not = icmp eq i8 %5, 0
  br i1 %cmp11.not, label %land.lhs.true.if.end14_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %dev.i = getelementptr i8, ptr %.pn4, i32 -992
  %call.i = tail call i32 @device_add(ptr noundef %dev.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 4
  %8 = ptrtoint ptr %num.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num.i, align 1
  %conv.i = zext i8 %9 to i32
  %10 = ptrtoint ptr %id2 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %id2, align 2
  %conv3.i = zext i16 %11 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.42, i32 noundef %conv.i, i32 noundef %conv3.i) #11
  br label %for.inc

if.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %dev_registered.i = getelementptr i8, ptr %.pn4, i32 -56
  %12 = ptrtoint ptr %dev_registered.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %dev_registered.i, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.i, %do.end.i, %land.lhs.true.for.inc_crit_edge, %sw.epilog.for.inc_crit_edge, %for.body.for.inc_crit_edge, %for.body.for.inc_crit_edge5, %for.body.for.inc_crit_edge6, %for.body.for.inc_crit_edge7, %for.body.for.inc_crit_edge8, %for.body.for.inc_crit_edge9, %for.body.for.inc_crit_edge10, %for.body.for.inc_crit_edge11
  %13 = ptrtoint ptr %.pn4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn4, align 4
  %cmp.not = icmp eq ptr %.pn, %cores
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %drv_cc = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 12
  %pflash = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 12, i32 7
  %14 = ptrtoint ptr %pflash to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pflash, align 4, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %for.end.if.end26_crit_edge, label %if.then20

for.end.if.end26_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then20:                                        ; preds = %for.end
  %call21 = tail call i32 @platform_device_register(ptr noundef nonnull @bcma_pflash_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then20.if.end26_crit_edge, label %do.end

if.then20.if.end26_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

do.end:                                           ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus, align 4
  %num = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 11
  %18 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %num, align 1
  %conv24 = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.44, i32 noundef %conv24) #11
  br label %if.end26

if.end26:                                         ; preds = %do.end, %if.then20.if.end26_crit_edge, %for.end.if.end26_crit_edge
  %sflash = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 12, i32 8
  %20 = ptrtoint ptr %sflash to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sflash, align 4, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool29.not = icmp eq i8 %21, 0
  br i1 %tobool29.not, label %if.end26.if.end41_crit_edge, label %if.then30

if.end26.if.end41_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then30:                                        ; preds = %if.end26
  %call31 = tail call i32 @platform_device_register(ptr noundef nonnull @bcma_sflash_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then30.if.end41_crit_edge, label %do.end36

if.then30.if.end41_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

do.end36:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus, align 4
  %num38 = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 11
  %24 = ptrtoint ptr %num38 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %num38, align 1
  %conv39 = zext i8 %25 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.47, i32 noundef %conv39) #11
  br label %if.end41

if.end41:                                         ; preds = %do.end36, %if.then30.if.end41_crit_edge, %if.end26.if.end41_crit_edge
  %nflash = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 12, i32 9
  %26 = ptrtoint ptr %nflash to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %nflash, align 4, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool44.not = icmp eq i8 %27, 0
  br i1 %tobool44.not, label %if.end41.if.end56_crit_edge, label %if.then45

if.end41.if.end56_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then45:                                        ; preds = %if.end41
  %call46 = tail call i32 @platform_device_register(ptr noundef nonnull @bcma_nflash_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then45.if.end56_crit_edge, label %do.end51

if.then45.if.end56_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

do.end51:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus, align 4
  %num53 = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 11
  %30 = ptrtoint ptr %num53 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %num53, align 1
  %conv54 = zext i8 %31 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.50, i32 noundef %conv54) #11
  br label %if.end56

if.end56:                                         ; preds = %do.end51, %if.then45.if.end56_crit_edge, %if.end41.if.end56_crit_edge
  %call58 = tail call i32 @bcma_gpio_init(ptr noundef %drv_cc) #8
  %32 = zext i32 %call58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %call58, label %do.end81 [
    i32 -524, label %do.body62
    i32 0, label %if.end56.if.end86_crit_edge
  ]

if.end56.if.end86_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

do.body62:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcma_register_devices.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcma_register_devices, %if.end86)) #8
          to label %if.then70 [label %if.end86], !srcloc !155

if.then70:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bus, align 4
  %num72 = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 11
  %35 = ptrtoint ptr %num72 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %num72, align 1
  %conv73 = zext i8 %36 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcma_register_devices.__UNIQUE_ID_ddebug240, ptr noundef %34, ptr noundef nonnull @.str.52, i32 noundef %conv73) #8
  br label %if.end86

do.end81:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bus, align 4
  %num83 = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 11
  %39 = ptrtoint ptr %num83 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %num83, align 1
  %conv84 = zext i8 %40 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.54, i32 noundef %conv84, i32 noundef %call58) #11
  br label %if.end86

if.end86:                                         ; preds = %do.end81, %if.then70, %do.body62, %if.end56.if.end86_crit_edge
  %hosttype = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 3
  %41 = ptrtoint ptr %hosttype to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %hosttype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %cmp87 = icmp eq i32 %42, 2
  br i1 %cmp87, label %if.then89, label %if.end86.if.end101_crit_edge

if.end86.if.end101_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

if.then89:                                        ; preds = %if.end86
  %call91 = tail call i32 @bcma_chipco_watchdog_register(ptr noundef %drv_cc) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.then89.if.end101_crit_edge, label %do.end96

if.then89.if.end101_crit_edge:                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

do.end96:                                         ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus, align 4
  %num98 = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 11
  %45 = ptrtoint ptr %num98 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %num98, align 1
  %conv99 = zext i8 %46 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.57, i32 noundef %conv99) #11
  br label %if.end101

if.end101:                                        ; preds = %do.end96, %if.then89.if.end101_crit_edge, %if.end86.if.end101_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcma_bus_unregister(ptr noundef %bus) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_cc = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 12
  %call = tail call i32 @bcma_gpio_unregister(ptr noundef %drv_cc) #8
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %call, label %do.end4 [
    i32 -16, label %do.end
    i32 0, label %entry.if.end8_crit_edge
  ]

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus, align 4
  %num = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 11
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num, align 1
  %conv = zext i8 %4 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef %conv) #11
  br label %if.end8

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus, align 4
  %num6 = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 11
  %7 = ptrtoint ptr %num6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num6, align 1
  %conv7 = zext i8 %8 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.22, i32 noundef %conv7, i32 noundef %call) #11
  br label %if.end8

if.end8:                                          ; preds = %do.end4, %do.end, %entry.if.end8_crit_edge
  %drv_cc_b = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 13
  tail call void @bcma_core_chipcommon_b_free(ptr noundef %drv_cc_b) #8
  tail call void @bcma_unregister_cores(ptr noundef %bus)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_gpio_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_core_chipcommon_b_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcma_bus_early_register(ptr noundef %bus) local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bcma_bus_scan(ptr noundef %bus) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %num = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 11
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num, align 1
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.24, i32 noundef %conv, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %chipinfo.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 6
  %4 = ptrtoint ptr %chipinfo.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %chipinfo.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 21248, i16 %5)
  %cmp.i = icmp eq i16 %5, 21248
  %..i = select i1 %cmp.i, i16 1280, i16 2048
  %cores.i.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 9
  %6 = ptrtoint ptr %cores.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn22.i.i = load ptr, ptr %cores.i.i, align 4
  %cmp.not23.i.i = icmp eq ptr %.pn22.i.i, %cores.i.i
  br i1 %cmp.not23.i.i, label %if.end.if.end7_crit_edge, label %if.end.for.body.i.i_crit_edge

if.end.for.body.i.i_crit_edge:                    ; preds = %if.end
  br label %for.body.i.i

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.for.body.i.i_crit_edge
  %.pn24.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn22.i.i, %if.end.for.body.i.i_crit_edge ]
  %id2.i.i = getelementptr i8, ptr %.pn24.i.i, i32 -1002
  %7 = ptrtoint ptr %id2.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %id2.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %..i)
  %cmp4.i.i = icmp eq i16 %8, %..i
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %core_unit.i.i = getelementptr i8, ptr %.pn24.i.i, i32 -54
  %9 = ptrtoint ptr %core_unit.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %core_unit.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp8.i.i = icmp eq i8 %10, 0
  br i1 %cmp8.i.i, label %bcma_find_core.exit, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %11 = ptrtoint ptr %.pn24.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i.i = load ptr, ptr %.pn24.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %cores.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.if.end7_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.if.end7_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

bcma_find_core.exit:                              ; preds = %land.lhs.true.i.i
  %core.0.le.i.i = getelementptr i8, ptr %.pn24.i.i, i32 -1008
  %tobool3.not = icmp eq ptr %core.0.le.i.i, null
  br i1 %tobool3.not, label %bcma_find_core.exit.if.end7_crit_edge, label %if.then4

bcma_find_core.exit.if.end7_crit_edge:            ; preds = %bcma_find_core.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then4:                                         ; preds = %bcma_find_core.exit
  call void @__sanitizer_cov_trace_pc() #10
  %drv_cc = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 12
  %12 = ptrtoint ptr %drv_cc to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %core.0.le.i.i, ptr %drv_cc, align 4
  tail call void @bcma_core_chipcommon_early_init(ptr noundef %drv_cc) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %bcma_find_core.exit.if.end7_crit_edge, %for.inc.i.i.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %13 = ptrtoint ptr %cores.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn22.i.i37 = load ptr, ptr %cores.i.i, align 4
  %cmp.not23.i.i38 = icmp eq ptr %.pn22.i.i37, %cores.i.i
  br i1 %cmp.not23.i.i38, label %if.end7.do.end16_crit_edge, label %if.end7.for.body.i.i42_crit_edge

if.end7.for.body.i.i42_crit_edge:                 ; preds = %if.end7
  br label %for.body.i.i42

if.end7.do.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16

for.body.i.i42:                                   ; preds = %for.inc.i.i48.for.body.i.i42_crit_edge, %if.end7.for.body.i.i42_crit_edge
  %.pn24.i.i39 = phi ptr [ %.pn.i.i46, %for.inc.i.i48.for.body.i.i42_crit_edge ], [ %.pn22.i.i37, %if.end7.for.body.i.i42_crit_edge ]
  %id2.i.i40 = getelementptr i8, ptr %.pn24.i.i39, i32 -1002
  %14 = ptrtoint ptr %id2.i.i40 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %id2.i.i40, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2092, i16 %15)
  %cmp4.i.i41 = icmp eq i16 %15, 2092
  br i1 %cmp4.i.i41, label %land.lhs.true.i.i45, label %for.body.i.i42.for.inc.i.i48_crit_edge

for.body.i.i42.for.inc.i.i48_crit_edge:           ; preds = %for.body.i.i42
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i48

land.lhs.true.i.i45:                              ; preds = %for.body.i.i42
  %core_unit.i.i43 = getelementptr i8, ptr %.pn24.i.i39, i32 -54
  %16 = ptrtoint ptr %core_unit.i.i43 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %core_unit.i.i43, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp8.i.i44 = icmp eq i8 %17, 0
  br i1 %cmp8.i.i44, label %bcma_find_core.exit52, label %land.lhs.true.i.i45.for.inc.i.i48_crit_edge

land.lhs.true.i.i45.for.inc.i.i48_crit_edge:      ; preds = %land.lhs.true.i.i45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i48

for.inc.i.i48:                                    ; preds = %land.lhs.true.i.i45.for.inc.i.i48_crit_edge, %for.body.i.i42.for.inc.i.i48_crit_edge
  %18 = ptrtoint ptr %.pn24.i.i39 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn.i.i46 = load ptr, ptr %.pn24.i.i39, align 4
  %cmp.not.i.i47 = icmp eq ptr %.pn.i.i46, %cores.i.i
  br i1 %cmp.not.i.i47, label %for.inc.i.i48.do.end16_crit_edge, label %for.inc.i.i48.for.body.i.i42_crit_edge

for.inc.i.i48.for.body.i.i42_crit_edge:           ; preds = %for.inc.i.i48
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i42

for.inc.i.i48.do.end16_crit_edge:                 ; preds = %for.inc.i.i48
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16

bcma_find_core.exit52:                            ; preds = %land.lhs.true.i.i45
  %core.0.le.i.i49 = getelementptr i8, ptr %.pn24.i.i39, i32 -1008
  %tobool9.not = icmp eq ptr %core.0.le.i.i49, null
  br i1 %tobool9.not, label %bcma_find_core.exit52.do.end16_crit_edge, label %if.then10

bcma_find_core.exit52.do.end16_crit_edge:         ; preds = %bcma_find_core.exit52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16

if.then10:                                        ; preds = %bcma_find_core.exit52
  call void @__sanitizer_cov_trace_pc() #10
  %drv_mips = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 16
  %19 = ptrtoint ptr %drv_mips to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %core.0.le.i.i49, ptr %drv_mips, align 4
  tail call void @bcma_core_mips_early_init(ptr noundef %drv_mips) #8
  br label %do.end16

do.end16:                                         ; preds = %if.then10, %bcma_find_core.exit52.do.end16_crit_edge, %for.inc.i.i48.do.end16_crit_edge, %if.end7.do.end16_crit_edge
  %20 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus, align 4
  %num18 = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 11
  %22 = ptrtoint ptr %num18 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %num18, align 1
  %conv19 = zext i8 %23 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.27, i32 noundef %conv19) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %do.end16 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_core_mips_early_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcma_bus_suspend(ptr noundef readonly %bus) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cores = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 9
  %0 = ptrtoint ptr %cores to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn21 = load ptr, ptr %cores, align 4
  %cmp.not23 = icmp eq ptr %.pn21, %cores
  br i1 %cmp.not23, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %if.end8.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn24 = phi ptr [ %.pn, %if.end8.for.body_crit_edge ], [ %.pn21, %entry.for.body_crit_edge ]
  %core.025 = getelementptr i8, ptr %.pn24, i32 -1008
  %driver = getelementptr i8, ptr %.pn24, i32 -836
  %1 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %for.body.if.end8_crit_edge, label %if.then

for.body.if.end8_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then:                                          ; preds = %for.body
  %suspend = getelementptr i8, ptr %2, i32 -12
  %3 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %suspend, align 4
  %tobool5.not = icmp eq ptr %4, null
  br i1 %tobool5.not, label %if.then.if.end8_crit_edge, label %if.then6

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %4(ptr noundef %core.025) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then.if.end8_crit_edge, %for.body.if.end8_crit_edge
  %5 = ptrtoint ptr %.pn24 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn24, align 4
  %cmp.not = icmp eq ptr %.pn, %cores
  br i1 %cmp.not, label %if.end8.for.end_crit_edge, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end8.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcma_bus_resume(ptr noundef %bus) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_cc = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 12
  %0 = ptrtoint ptr %drv_cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_cc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %setup_done = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 12, i32 4
  %2 = ptrtoint ptr %setup_done to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %setup_done, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %setup_done, align 4
  tail call void @bcma_core_chipcommon_init(ptr noundef %drv_cc) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cores = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 9
  %3 = ptrtoint ptr %cores to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn30 = load ptr, ptr %cores, align 4
  %cmp.not32 = icmp eq ptr %.pn30, %cores
  br i1 %cmp.not32, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %if.end14.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn33 = phi ptr [ %.pn, %if.end14.for.body_crit_edge ], [ %.pn30, %if.end.for.body_crit_edge ]
  %core.034 = getelementptr i8, ptr %.pn33, i32 -1008
  %driver = getelementptr i8, ptr %.pn33, i32 -836
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %for.body.if.end14_crit_edge, label %if.then6

for.body.if.end14_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then6:                                         ; preds = %for.body
  %resume = getelementptr i8, ptr %5, i32 -8
  %6 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resume, align 4
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %if.then6.if.end14_crit_edge, label %if.then11

if.then6.if.end14_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then11:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %7(ptr noundef %core.034) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.then6.if.end14_crit_edge, %for.body.if.end14_crit_edge
  %8 = ptrtoint ptr %.pn33 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load ptr, ptr %.pn33, align 4
  %cmp.not = icmp eq ptr %.pn, %cores
  br i1 %cmp.not, label %if.end14.for.end_crit_edge, label %if.end14.for.body_crit_edge

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end14.for.end_crit_edge, %if.end.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__bcma_driver_register(ptr noundef %drv, ptr noundef %owner) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv, align 4
  %drv1 = getelementptr inbounds %struct.bcma_driver, ptr %drv, i32 0, i32 7
  %2 = ptrtoint ptr %drv1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %drv1, align 4
  %bus = getelementptr inbounds %struct.bcma_driver, ptr %drv, i32 0, i32 7, i32 1
  %3 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @bcma_bus_type, ptr %bus, align 4
  %owner5 = getelementptr inbounds %struct.bcma_driver, ptr %drv, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %owner5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %owner, ptr %owner5, align 4
  %call = tail call i32 @driver_register(ptr noundef %drv1) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcma_driver_unregister(ptr noundef %drv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv1 = getelementptr inbounds %struct.bcma_driver, ptr %drv, i32 0, i32 7
  tail call void @driver_unregister(ptr noundef %drv1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcma_init_bus_register() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @bcma_bus_registered, align 4
  br i1 %.b, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @bus_register(ptr noundef nonnull @bcma_bus_type) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @bcma_bus_registered, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then2 ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcma_modinit() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %.b.i = load i1, ptr @bcma_bus_registered, align 4
  br i1 %.b.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %call.i = tail call i32 @bus_register(ptr noundef nonnull @bcma_bus_type) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @bcma_bus_registered, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2.i, %entry.if.end_crit_edge
  %call1 = tail call i32 @bcma_host_soc_register_driver() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %do.end

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #11
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.end.if.end5_crit_edge
  %call6 = tail call i32 @bcma_host_pci_init() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %do.end11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %if.end5.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end11 ], [ 0, %if.end5.cleanup_crit_edge ], [ %call.i, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcma_modexit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @bcma_host_pci_exit() #11
  tail call void @bcma_host_soc_unregister_driver() #11
  tail call void @bus_unregister(ptr noundef nonnull @bcma_bus_type) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @bcma_host_pci_exit() local_unnamed_addr #3 section ".exit.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @bcma_host_soc_unregister_driver() local_unnamed_addr #3 section ".exit.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_of_mapping(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_parse_one(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_parse_raw(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @bcma_bus_match(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr i8, ptr %dev, i32 -12
  %id_table = getelementptr i8, ptr %drv, i32 -24
  %0 = ptrtoint ptr %id_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %id_table, align 4
  %id21 = getelementptr i8, ptr %dev, i32 -10
  %rev33 = getelementptr i8, ptr %dev, i32 -8
  %class44 = getelementptr i8, ptr %dev, i32 -7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %did.0 = phi ptr [ %1, %entry ], [ %incdec.ptr, %for.inc ]
  %2 = ptrtoint ptr %did.0 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %did.0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

lor.lhs.false:                                    ; preds = %for.cond
  %id4 = getelementptr inbounds %struct.bcma_device_id, ptr %did.0, i32 0, i32 1
  %4 = ptrtoint ptr %id4 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool6.not = icmp eq i16 %5, 0
  br i1 %tobool6.not, label %lor.rhs, label %lor.lhs.false.for.body_crit_edge

lor.lhs.false.for.body_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

lor.rhs:                                          ; preds = %lor.lhs.false
  %rev = getelementptr inbounds %struct.bcma_device_id, ptr %did.0, i32 0, i32 2
  %6 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool8.not = icmp eq i8 %7, 0
  br i1 %tobool8.not, label %lor.rhs.cleanup_crit_edge, label %lor.rhs.for.body_crit_edge

lor.rhs.for.body_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %lor.rhs.for.body_crit_edge, %lor.lhs.false.for.body_crit_edge, %for.cond.for.body_crit_edge
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %id, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %9)
  %cmp = icmp eq i16 %3, %9
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %cmp17 = icmp eq i16 %3, -1
  %or.cond = or i1 %cmp17, %cmp
  br i1 %or.cond, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %id19 = getelementptr inbounds %struct.bcma_device_id, ptr %did.0, i32 0, i32 1
  %10 = ptrtoint ptr %id19 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %id19, align 2
  %12 = ptrtoint ptr %id21 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %id21, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %13)
  %cmp23 = icmp eq i16 %11, %13
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %11)
  %cmp28 = icmp eq i16 %11, -1
  %or.cond71 = or i1 %cmp28, %cmp23
  br i1 %or.cond71, label %land.lhs.true30, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true30:                                  ; preds = %land.lhs.true
  %rev31 = getelementptr inbounds %struct.bcma_device_id, ptr %did.0, i32 0, i32 2
  %14 = ptrtoint ptr %rev31 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rev31, align 2
  %16 = ptrtoint ptr %rev33 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rev33, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %17)
  %cmp35 = icmp eq i8 %15, %17
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %cmp40 = icmp eq i8 %15, -1
  %or.cond72 = or i1 %cmp40, %cmp35
  br i1 %or.cond72, label %land.lhs.true42, label %land.lhs.true30.for.inc_crit_edge

land.lhs.true30.for.inc_crit_edge:                ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true42:                                  ; preds = %land.lhs.true30
  %class = getelementptr inbounds %struct.bcma_device_id, ptr %did.0, i32 0, i32 3
  %18 = ptrtoint ptr %class to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %class, align 1
  %20 = ptrtoint ptr %class44 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %class44, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %21)
  %cmp46 = icmp eq i8 %19, %21
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %cmp51 = icmp eq i8 %19, -1
  %or.cond73 = or i1 %cmp51, %cmp46
  br i1 %or.cond73, label %land.lhs.true42.cleanup_crit_edge, label %land.lhs.true42.for.inc_crit_edge

land.lhs.true42.for.inc_crit_edge:                ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true42.cleanup_crit_edge:                ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true42.for.inc_crit_edge, %land.lhs.true30.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.bcma_device_id, ptr %did.0, i32 1
  br label %for.cond

cleanup:                                          ; preds = %land.lhs.true42.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %land.lhs.true42.cleanup_crit_edge ], [ 0, %lor.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcma_device_uevent(ptr nocapture noundef readonly %dev, ptr noundef %env) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr i8, ptr %dev, i32 -12
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %id, align 4
  %conv = zext i16 %1 to i32
  %id2 = getelementptr i8, ptr %dev, i32 -10
  %2 = ptrtoint ptr %id2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %id2, align 2
  %conv3 = zext i16 %3 to i32
  %rev = getelementptr i8, ptr %dev, i32 -8
  %4 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rev, align 4
  %conv5 = zext i8 %5 to i32
  %class = getelementptr i8, ptr %dev, i32 -7
  %6 = ptrtoint ptr %class to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %class, align 1
  %conv7 = zext i8 %7 to i32
  %call = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.39, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv5, i32 noundef %conv7) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcma_device_probe(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %call = tail call ptr @get_device(ptr noundef %dev) #8
  %probe = getelementptr i8, ptr %1, i32 -20
  %2 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %probe, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.end

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %call5 = tail call i32 %3(ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @put_device(ptr noundef %dev) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge, %entry.if.end8_crit_edge
  %err.016 = phi i32 [ %call5, %if.then7 ], [ 0, %if.end.if.end8_crit_edge ], [ 0, %entry.if.end8_crit_edge ]
  ret i32 %err.016
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcma_device_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %remove = getelementptr i8, ptr %1, i32 -16
  %2 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remove, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  tail call void %3(ptr noundef %add.ptr) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @put_device(ptr noundef %dev) #8
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @manuf_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr i8, ptr %dev, i32 -12
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %id, align 4
  %conv = zext i16 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.33, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %id1 = getelementptr i8, ptr %dev, i32 -10
  %0 = ptrtoint ptr %id1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %id1, align 2
  %conv = zext i16 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.33, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rev_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rev = getelementptr i8, ptr %dev, i32 -8
  %0 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rev, align 4
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.36, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @class_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %class = getelementptr i8, ptr %dev, i32 -7
  %0 = ptrtoint ptr %class to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %class, align 1
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @of_translate_address(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_configure_id(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_gpio_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_chipco_watchdog_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @bcma_host_soc_register_driver() local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @bcma_host_pci_init() local_unnamed_addr #3 section ".init.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !11, !12, !13, !14, !15, !17, !19, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !60, !62, !64, !66, !68, !70, !71, !72, !73, !75, !77, !78, !80, !82, !83, !85, !87, !88, !90, !91, !93, !95, !96, !98, !100, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !127, !128, !129, !131, !132, !133, !135, !137, !138, !139, !140, !142, !143}
!llvm.module.flags = !{!144, !145, !146, !147, !148, !149, !150, !151}
!llvm.ident = !{!152}

!0 = !{ptr @__UNIQUE_ID_description236, !1, !"__UNIQUE_ID_description236", i1 false, i1 false}
!1 = !{!"../drivers/bcma/main.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_file237, !3, !"__UNIQUE_ID_file237", i1 false, i1 false}
!3 = !{!"../drivers/bcma/main.c", i32 20, i32 1}
!4 = !{ptr @__UNIQUE_ID_license238, !3, !"__UNIQUE_ID_license238", i1 false, i1 false}
!5 = !{ptr @__ksymtab_bcma_find_core_unit, !6, !"__ksymtab_bcma_find_core_unit", i1 false, i1 false}
!6 = !{!"../drivers/bcma/main.c", i32 97, i32 1}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/bcma/main.c", i32 113, i32 2}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @bcma_wait_value._entry, !8, !"_entry", i1 false, i1 false}
!14 = !{ptr @bcma_wait_value._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @__ksymtab_bcma_core_irq, !16, !"__ksymtab_bcma_core_irq", i1 false, i1 false}
!16 = !{!"../drivers/bcma/main.c", i32 235, i32 1}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/bcma/main.c", i32 242, i32 27}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/bcma/main.c", i32 387, i32 3}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @bcma_bus_register._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @bcma_bus_register._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/bcma/main.c", i32 417, i32 3}
!27 = !{ptr @bcma_bus_register._entry.9, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @bcma_bus_register._entry_ptr.11, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/bcma/main.c", i32 419, i32 3}
!31 = !{ptr @bcma_bus_register._entry.12, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @bcma_bus_register._entry_ptr.14, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/bcma/main.c", i32 473, i32 2}
!35 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @bcma_bus_register._entry.15, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @bcma_bus_register._entry_ptr.18, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/bcma/main.c", i32 484, i32 3}
!40 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @bcma_bus_unregister._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @bcma_bus_unregister._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/bcma/main.c", i32 486, i32 3}
!45 = !{ptr @bcma_bus_unregister._entry.21, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @bcma_bus_unregister._entry_ptr.23, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/bcma/main.c", i32 506, i32 3}
!49 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @bcma_bus_early_register._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @bcma_bus_early_register._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/bcma/main.c", i32 524, i32 2}
!54 = !{ptr @bcma_bus_early_register._entry.26, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @bcma_bus_early_register._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @__ksymtab___bcma_driver_register, !57, !"__ksymtab___bcma_driver_register", i1 false, i1 false}
!57 = !{!"../drivers/bcma/main.c", i32 576, i32 1}
!58 = !{ptr @__ksymtab_bcma_driver_unregister, !59, !"__ksymtab_bcma_driver_unregister", i1 false, i1 false}
!59 = !{!"../drivers/bcma/main.c", i32 582, i32 1}
!60 = !{ptr @__initcall__kmod_bcma__241_659_bcma_init_bus_register5, !61, !"__initcall__kmod_bcma__241_659_bcma_init_bus_register5", i1 false, i1 false}
!61 = !{!"../drivers/bcma/main.c", i32 659, i32 1}
!62 = !{ptr @__initcall__kmod_bcma__242_686_bcma_modinit6, !63, !"__initcall__kmod_bcma__242_686_bcma_modinit6", i1 false, i1 false}
!63 = !{!"../drivers/bcma/main.c", i32 686, i32 1}
!64 = !{ptr @__exitcall_bcma_modexit, !65, !"__exitcall_bcma_modexit", i1 false, i1 false}
!65 = !{!"../drivers/bcma/main.c", i32 696, i32 1}
!66 = !{ptr @bcma_bus_next_num, !67, !"bcma_bus_next_num", i1 false, i1 false}
!67 = !{!"../drivers/bcma/main.c", i32 23, i32 21}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/bcma/main.c", i32 191, i32 3}
!70 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @bcma_of_get_irq.__UNIQUE_ID_ddebug239, !69, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!73 = !{ptr @bcma_bus_type, !74, !"bcma_bus_type", i1 false, i1 false}
!74 = !{!"../drivers/bcma/main.c", i32 70, i32 24}
!75 = !{ptr @bcma_device_groups, !76, !"bcma_device_groups", i1 false, i1 false}
!76 = !{!"../drivers/bcma/main.c", i32 68, i32 1}
!77 = !{ptr @bcma_device_group, !76, !"bcma_device_group", i1 false, i1 false}
!78 = !{ptr @bcma_device_attrs, !79, !"bcma_device_attrs", i1 false, i1 false}
!79 = !{!"../drivers/bcma/main.c", i32 61, i32 26}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/bcma/main.c", i32 38, i32 8}
!82 = !{ptr @dev_attr_manuf, !81, !"dev_attr_manuf", i1 false, i1 false}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/bcma/main.c", i32 36, i32 22}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/bcma/main.c", i32 45, i32 8}
!87 = !{ptr @dev_attr_id, !86, !"dev_attr_id", i1 false, i1 false}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/bcma/main.c", i32 52, i32 8}
!90 = !{ptr @dev_attr_rev, !89, !"dev_attr_rev", i1 false, i1 false}
!91 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/bcma/main.c", i32 50, i32 22}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/bcma/main.c", i32 59, i32 8}
!95 = !{ptr @dev_attr_class, !94, !"dev_attr_class", i1 false, i1 false}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/bcma/main.c", i32 57, i32 22}
!98 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/bcma/main.c", i32 633, i32 10}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/bcma/main.c", i32 26, i32 8}
!102 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @bcma_buses_mutex, !101, !"bcma_buses_mutex", i1 false, i1 false}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/bcma/main.c", i32 283, i32 3}
!106 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @bcma_register_core._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @bcma_register_core._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.44, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/bcma/main.c", i32 325, i32 4}
!111 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @bcma_register_devices._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @bcma_register_devices._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.47, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/bcma/main.c", i32 333, i32 4}
!116 = !{ptr @bcma_register_devices._entry.46, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @bcma_register_devices._entry_ptr.48, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.50, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/bcma/main.c", i32 341, i32 4}
!120 = !{ptr @bcma_register_devices._entry.49, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @bcma_register_devices._entry_ptr.51, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.52, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/bcma/main.c", i32 346, i32 3}
!124 = !{ptr @bcma_register_devices.__UNIQUE_ID_ddebug240, !123, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!125 = !{ptr @.str.54, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/bcma/main.c", i32 348, i32 3}
!127 = !{ptr @bcma_register_devices._entry.53, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @bcma_register_devices._entry_ptr.55, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.57, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/bcma/main.c", i32 353, i32 4}
!131 = !{ptr @bcma_register_devices._entry.56, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @bcma_register_devices._entry_ptr.58, !130, !"_entry_ptr", i1 false, i1 false}
!133 = distinct !{null, !134, !"bcma_bus_registered", i1 false, i1 false}
!134 = !{!"../drivers/bcma/main.c", i32 638, i32 21}
!135 = !{ptr @.str.59, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/bcma/main.c", i32 673, i32 3}
!137 = !{ptr @.str.60, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @bcma_modinit._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @bcma_modinit._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.62, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/bcma/main.c", i32 679, i32 3}
!142 = !{ptr @bcma_modinit._entry.61, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @bcma_modinit._entry_ptr.63, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{i32 1, !"wchar_size", i32 2}
!145 = !{i32 1, !"min_enum_size", i32 4}
!146 = !{i32 8, !"branch-target-enforcement", i32 0}
!147 = !{i32 8, !"sign-return-address", i32 0}
!148 = !{i32 8, !"sign-return-address-all", i32 0}
!149 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!150 = !{i32 7, !"uwtable", i32 1}
!151 = !{i32 7, !"frame-pointer", i32 2}
!152 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!153 = !{i64 2154952000}
!154 = !{i64 2154951842}
!155 = !{i64 2148521379, i64 2148521384, i64 2148521397, i64 2148521441, i64 2148521475, i64 2148521496}
!156 = !{!"auto-init"}
!157 = !{i8 0, i8 2}
