; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/pcie-iproc.c_pt.bc'
source_filename = "../drivers/pci/controller/pcie-iproc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+iproc_pcie_shutdown\22, \22a\22\09"
module asm "\09.weak\09__crc_iproc_pcie_shutdown\09\09\09\09"
module asm "\09.long\09__crc_iproc_pcie_shutdown\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iproc_pcie_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22iproc_pcie_shutdown\22\09\09\09\09\09"
module asm "__kstrtabns_iproc_pcie_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+iproc_pcie_setup\22, \22a\22\09"
module asm "\09.weak\09__crc_iproc_pcie_setup\09\09\09\09"
module asm "\09.long\09__crc_iproc_pcie_setup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iproc_pcie_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22iproc_pcie_setup\22\09\09\09\09\09"
module asm "__kstrtabns_iproc_pcie_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+iproc_pcie_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_iproc_pcie_remove\09\09\09\09"
module asm "\09.long\09__crc_iproc_pcie_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iproc_pcie_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22iproc_pcie_remove\22\09\09\09\09\09"
module asm "__kstrtabns_iproc_pcie_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pci_fixup = type { i16, i16, i32, i32, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.iproc_pcie_ob_map = type { [4 x i32], i32 }
%struct.iproc_pcie_ib_map = type { i32, i32, [9 x i32], i32, i32, i16, i16 }
%struct.atomic_t = type { i32 }
%struct.iproc_pcie = type { ptr, i32, ptr, ptr, i32, %struct.resource, ptr, ptr, i8, i8, i8, i8, i8, i8, %struct.iproc_pcie_ob, ptr, i8, %struct.iproc_pcie_ib, ptr, i8, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.iproc_pcie_ob = type { i32, i32 }
%struct.iproc_pcie_ib = type { i32 }
%struct.resource_entry = type { %struct.list_head, ptr, i32, %struct.resource }
%struct.list_head = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.84, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.84 = type { ptr }

@__kstrtab_iproc_pcie_shutdown = external dso_local constant [0 x i8], align 1
@__kstrtabns_iproc_pcie_shutdown = external dso_local constant [0 x i8], align 1
@__ksymtab_iproc_pcie_shutdown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iproc_pcie_shutdown to i32), ptr @__kstrtab_iproc_pcie_shutdown, ptr @__kstrtabns_iproc_pcie_shutdown }, section "___ksymtab_gpl+iproc_pcie_shutdown", align 4
@iproc_pcie_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1470, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"unable to initialize controller parameters\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iproc_pcie_setup\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/pci/controller/pcie-iproc.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@iproc_pcie_setup._entry_ptr = internal global ptr @iproc_pcie_setup._entry, section ".printk_index", align 4
@iproc_pcie_setup._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 1476, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to initialize PCIe PHY\0A\00", [33 x i8] zeroinitializer }, align 32
@iproc_pcie_setup._entry_ptr.7 = internal global ptr @iproc_pcie_setup._entry.5, section ".printk_index", align 4
@iproc_pcie_setup._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 1482, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to power on PCIe PHY\0A\00", [35 x i8] zeroinitializer }, align 32
@iproc_pcie_setup._entry_ptr.10 = internal global ptr @iproc_pcie_setup._entry.8, section ".printk_index", align 4
@iproc_pcie_setup._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 1494, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"map failed\0A\00", [20 x i8] zeroinitializer }, align 32
@iproc_pcie_setup._entry_ptr.13 = internal global ptr @iproc_pcie_setup._entry.11, section ".printk_index", align 4
@iproc_pcie_setup._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 1507, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no PCIe EP device detected\0A\00", [36 x i8] zeroinitializer }, align 32
@iproc_pcie_setup._entry_ptr.16 = internal global ptr @iproc_pcie_setup._entry.14, section ".printk_index", align 4
@iproc_pcie_setup._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 1515, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"not using iProc MSI\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@iproc_pcie_setup._entry_ptr.20 = internal global ptr @iproc_pcie_setup._entry.17, section ".printk_index", align 4
@iproc_pcie_ops = internal global { %struct.pci_ops, [44 x i8] } { %struct.pci_ops { ptr null, ptr null, ptr @iproc_pcie_bus_map_cfg_bus, ptr @iproc_pcie_config_read32, ptr @iproc_pcie_config_write32 }, [44 x i8] zeroinitializer }, align 32
@iproc_pcie_setup._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 1523, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to scan host: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@iproc_pcie_setup._entry_ptr.23 = internal global ptr @iproc_pcie_setup._entry.21, section ".printk_index", align 4
@__kstrtab_iproc_pcie_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_iproc_pcie_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_iproc_pcie_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iproc_pcie_setup to i32), ptr @__kstrtab_iproc_pcie_setup, ptr @__kstrtabns_iproc_pcie_setup }, section "___ksymtab+iproc_pcie_setup", align 4
@__kstrtab_iproc_pcie_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_iproc_pcie_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_iproc_pcie_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iproc_pcie_remove to i32), ptr @__kstrtab_iproc_pcie_remove, ptr @__kstrtabns_iproc_pcie_remove }, section "___ksymtab+iproc_pcie_remove", align 4
@__pci_fixup_quirk_paxc_disable_msi_parsing1570 = internal constant %struct.pci_fixup { i16 5348, i16 5872, i32 -1, i32 0, ptr @quirk_paxc_disable_msi_parsing }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_paxc_disable_msi_parsing1572 = internal constant %struct.pci_fixup { i16 5348, i16 -10238, i32 -1, i32 0, ptr @quirk_paxc_disable_msi_parsing }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_paxc_disable_msi_parsing1574 = internal constant %struct.pci_fixup { i16 5348, i16 -10236, i32 -1, i32 0, ptr @quirk_paxc_disable_msi_parsing }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_paxc_bridge1594 = internal constant %struct.pci_fixup { i16 5348, i16 5837, i32 -1, i32 0, ptr @quirk_paxc_bridge }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_paxc_bridge1595 = internal constant %struct.pci_fixup { i16 5348, i16 5872, i32 -1, i32 0, ptr @quirk_paxc_bridge }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_paxc_bridge1596 = internal constant %struct.pci_fixup { i16 5348, i16 -10416, i32 -1, i32 0, ptr @quirk_paxc_bridge }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_paxc_bridge1597 = internal constant %struct.pci_fixup { i16 5348, i16 -10238, i32 -1, i32 0, ptr @quirk_paxc_bridge }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_paxc_bridge1598 = internal constant %struct.pci_fixup { i16 5348, i16 -10236, i32 -1, i32 0, ptr @quirk_paxc_bridge }, section ".pci_fixup_early", align 4
@__UNIQUE_ID_author299 = internal constant [46 x i8] c"pcie_iproc.author=Ray Jui <rjui@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description300 = internal constant [57 x i8] c"pcie_iproc.description=Broadcom iPROC PCIe common driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file301 = internal constant [50 x i8] c"pcie_iproc.file=drivers/pci/controller/pcie-iproc\00", section ".modinfo", align 1
@__UNIQUE_ID_license302 = internal constant [26 x i8] c"pcie_iproc.license=GPL v2\00", section ".modinfo", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@iproc_pcie_reg_paxb_bcma = internal constant { [33 x i16], [62 x i8] } { [33 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 288, i16 292, i16 504, i16 508, i16 816, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 3852, i16 0], [62 x i8] zeroinitializer }, align 32
@iproc_pcie_reg_paxb = internal constant { [33 x i16], [62 x i8] } { [33 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 288, i16 292, i16 504, i16 508, i16 816, i16 3360, i16 3392, i16 3368, i16 3400, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 3852, i16 3904], [62 x i8] zeroinitializer }, align 32
@paxb_ob_map = internal constant { [2 x %struct.iproc_pcie_ob_map], [56 x i8] } { [2 x %struct.iproc_pcie_ob_map] [%struct.iproc_pcie_ob_map { [4 x i32] [i32 128, i32 256, i32 0, i32 0], i32 2 }, %struct.iproc_pcie_ob_map { [4 x i32] [i32 128, i32 256, i32 0, i32 0], i32 2 }], [56 x i8] zeroinitializer }, align 32
@iproc_pcie_reg_paxb_v2 = internal constant { [33 x i16], [62 x i8] } { [33 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 288, i16 292, i16 504, i16 508, i16 816, i16 3360, i16 3392, i16 3368, i16 3400, i16 3424, i16 3432, i16 3568, i16 3576, i16 3328, i16 3072, i16 3336, i16 3440, i16 3344, i16 3264, i16 3584, i16 3592, i16 3688, i16 3696, i16 3808, i16 3852, i16 3904], [62 x i8] zeroinitializer }, align 32
@paxb_v2_ob_map = internal constant { [4 x %struct.iproc_pcie_ob_map], [48 x i8] } { [4 x %struct.iproc_pcie_ob_map] [%struct.iproc_pcie_ob_map { [4 x i32] [i32 128, i32 256, i32 0, i32 0], i32 2 }, %struct.iproc_pcie_ob_map { [4 x i32] [i32 128, i32 256, i32 0, i32 0], i32 2 }, %struct.iproc_pcie_ob_map { [4 x i32] [i32 128, i32 256, i32 512, i32 1024], i32 4 }, %struct.iproc_pcie_ob_map { [4 x i32] [i32 128, i32 256, i32 512, i32 1024], i32 4 }], [48 x i8] zeroinitializer }, align 32
@iproc_pcie_rev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 1423, ptr @.str.26, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"reads of config registers that contain %#x return incorrect data\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iproc_pcie_rev_init\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@iproc_pcie_rev_init._entry_ptr = internal global ptr @iproc_pcie_rev_init._entry, section ".printk_index", align 4
@iproc_pcie_rev_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.25, ptr @.str.2, i32 1439, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"incompatible iProc PCIe interface\0A\00", [61 x i8] zeroinitializer }, align 32
@iproc_pcie_rev_init._entry_ptr.29 = internal global ptr @iproc_pcie_rev_init._entry.27, section ".printk_index", align 4
@paxb_v2_ib_map = internal constant { <{ { i32, i32, <{ i32, [8 x i32] }>, i32, i32, i16, i16 }, { i32, i32, <{ i32, [8 x i32] }>, i32, i32, i16, i16 }, %struct.iproc_pcie_ib_map, %struct.iproc_pcie_ib_map, %struct.iproc_pcie_ib_map }>, [72 x i8] } { <{ { i32, i32, <{ i32, [8 x i32] }>, i32, i32, i16, i16 }, { i32, i32, <{ i32, [8 x i32] }>, i32, i32, i16, i16 }, %struct.iproc_pcie_ib_map, %struct.iproc_pcie_ib_map, %struct.iproc_pcie_ib_map }> <{ { i32, i32, <{ i32, [8 x i32] }>, i32, i32, i16, i16 } { i32 1, i32 1024, <{ i32, [8 x i32] }> <{ i32 32, [8 x i32] zeroinitializer }>, i32 1, i32 8, i16 64, i16 4 }, { i32, i32, <{ i32, [8 x i32] }>, i32, i32, i16, i16 } { i32 0, i32 1048576, <{ i32, [8 x i32] }> <{ i32 8, [8 x i32] zeroinitializer }>, i32 1, i32 8, i16 4, i16 8 }, %struct.iproc_pcie_ib_map { i32 0, i32 1048576, [9 x i32] [i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384], i32 9, i32 1, i16 4, i16 8 }, %struct.iproc_pcie_ib_map { i32 0, i32 1073741824, [9 x i32] [i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 0, i32 0, i32 0], i32 6, i32 8, i16 4, i16 8 }, %struct.iproc_pcie_ib_map { i32 0, i32 1073741824, [9 x i32] [i32 32, i32 64, i32 128, i32 256, i32 512, i32 0, i32 0, i32 0, i32 0], i32 5, i32 8, i16 4, i16 8 } }>, [72 x i8] zeroinitializer }, align 32
@iproc_pcie_reg_paxc = internal constant { <{ [11 x i16], [22 x i16] }>, [62 x i8] } { <{ [11 x i16], [22 x i16] }> <{ [11 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 496, i16 500, i16 504, i16 508], [22 x i16] zeroinitializer }>, [62 x i8] zeroinitializer }, align 32
@iproc_pcie_reg_paxc_v2 = internal constant { <{ [11 x i16], [22 x i16] }>, [62 x i8] } { <{ [11 x i16], [22 x i16] }> <{ [11 x i16] [i16 0, i16 80, i16 116, i16 120, i16 124, i16 128, i16 156, i16 496, i16 500, i16 504, i16 508], [22 x i16] zeroinitializer }>, [62 x i8] zeroinitializer }, align 32
@iproc_pcie_map_ranges._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 1032, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid resource %pR\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iproc_pcie_map_ranges\00", [42 x i8] zeroinitializer }, align 32
@iproc_pcie_map_ranges._entry_ptr = internal global ptr @iproc_pcie_map_ranges._entry, section ".printk_index", align 4
@iproc_pcie_setup_ob._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 916, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"axi address %pap less than offset %pap\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iproc_pcie_setup_ob\00", [44 x i8] zeroinitializer }, align 32
@iproc_pcie_setup_ob._entry_ptr = internal global ptr @iproc_pcie_setup_ob._entry, section ".printk_index", align 4
@iproc_pcie_setup_ob._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 972, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"axi %pap or pci %pap not aligned\0A\00", [62 x i8] zeroinitializer }, align 32
@iproc_pcie_setup_ob._entry_ptr.39 = internal global ptr @iproc_pcie_setup_ob._entry.37, section ".printk_index", align 4
@iproc_pcie_setup_ob._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.2, i32 1001, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unable to configure outbound mapping\0A\00", [58 x i8] zeroinitializer }, align 32
@iproc_pcie_setup_ob._entry_ptr.42 = internal global ptr @iproc_pcie_setup_ob._entry.40, section ".printk_index", align 4
@iproc_pcie_setup_ob._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.36, ptr @.str.2, i32 1004, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"axi %pap, axi offset %pap, pci %pap, res size %pap\0A\00", [44 x i8] zeroinitializer }, align 32
@iproc_pcie_setup_ob._entry_ptr.45 = internal global ptr @iproc_pcie_setup_ob._entry.43, section ".printk_index", align 4
@iproc_pcie_ob_write.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.46, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 0, i8 -35, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pcie_iproc\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iproc_pcie_ob_write\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ob window [%d]: offset 0x%x axi %pap pci %pap\0A\00", [49 x i8] zeroinitializer }, align 32
@iproc_pcie_ob_write.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.46, ptr @.str.47, ptr @.str.2, ptr @.str.49, i8 0, i8 -34, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"oarr lo 0x%x oarr hi 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@iproc_pcie_ob_write.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.46, ptr @.str.47, ptr @.str.2, ptr @.str.50, i8 0, i8 -34, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"omap lo 0x%x omap hi 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@iproc_pcie_setup_ib._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.51, ptr @.str.2, i32 1151, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iproc_pcie_setup_ib\00", [44 x i8] zeroinitializer }, align 32
@iproc_pcie_setup_ib._entry_ptr = internal global ptr @iproc_pcie_setup_ib._entry, section ".printk_index", align 4
@iproc_pcie_setup_ib._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.2, i32 1169, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unable to configure inbound mapping\0A\00", [59 x i8] zeroinitializer }, align 32
@iproc_pcie_setup_ib._entry_ptr.54 = internal global ptr @iproc_pcie_setup_ib._entry.52, section ".printk_index", align 4
@iproc_pcie_setup_ib._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.51, ptr @.str.2, i32 1171, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"axi %pap, pci %pap, res size %pap\0A\00", [61 x i8] zeroinitializer }, align 32
@iproc_pcie_setup_ib._entry_ptr.57 = internal global ptr @iproc_pcie_setup_ib._entry.55, section ".printk_index", align 4
@iproc_pcie_ib_write.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.46, ptr @.str.58, ptr @.str.2, ptr @.str.59, i8 1, i8 13, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iproc_pcie_ib_write\00", [44 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ib region [%d]: offset 0x%x axi %pap pci %pap\0A\00", [49 x i8] zeroinitializer }, align 32
@iproc_pcie_ib_write.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.46, ptr @.str.58, ptr @.str.2, ptr @.str.60, i8 1, i8 16, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"iarr lo 0x%x iarr hi 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@iproc_pcie_ib_write.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.46, ptr @.str.58, ptr @.str.2, ptr @.str.61, i8 1, i8 20, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"imap window [%d] lo 0x%x hi 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@iproc_pcie_check_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 781, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"PHY or data link is INACTIVE!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iproc_pcie_check_link\00", [42 x i8] zeroinitializer }, align 32
@iproc_pcie_check_link._entry_ptr = internal global ptr @iproc_pcie_check_link._entry, section ".printk_index", align 4
@iproc_pcie_check_link._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.2, i32 788, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"in EP mode, hdr=%#02x\0A\00", [41 x i8] zeroinitializer }, align 32
@iproc_pcie_check_link._entry_ptr.66 = internal global ptr @iproc_pcie_check_link._entry.64, section ".printk_index", align 4
@iproc_pcie_check_link._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.63, ptr @.str.2, i32 834, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"link: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@iproc_pcie_check_link._entry_ptr.69 = internal global ptr @iproc_pcie_check_link._entry.67, section ".printk_index", align 4
@.str.70 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"UP\00", [29 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DOWN\00", [27 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"msi-parent\00", [21 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msi-map\00", [24 x i8] zeroinitializer }, align 32
@iproc_pcie_msi_steer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 1320, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"msi steering failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iproc_pcie_msi_steer\00", [43 x i8] zeroinitializer }, align 32
@iproc_pcie_msi_steer._entry_ptr = internal global ptr @iproc_pcie_msi_steer._entry, section ".printk_index", align 4
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"arm,gic-v3-its\00", [17 x i8] zeroinitializer }, align 32
@iproce_pcie_get_msi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 1231, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"unable to find compatible MSI controller\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iproce_pcie_get_msi\00", [44 x i8] zeroinitializer }, align 32
@iproce_pcie_get_msi._entry_ptr = internal global ptr @iproce_pcie_get_msi._entry, section ".printk_index", align 4
@iproce_pcie_get_msi._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.2, i32 1238, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"unable to obtain MSI controller resources\0A\00", [53 x i8] zeroinitializer }, align 32
@iproce_pcie_get_msi._entry_ptr.81 = internal global ptr @iproce_pcie_get_msi._entry.79, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 512, i64 4096]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.85 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 72, i64 172, i64 200]
@__sancov_gen_cov_switch_values.86 = internal global [6 x i64] [i64 4, i64 16, i64 5837, i64 5872, i64 55298, i64 55300]
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1470, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1476, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1482, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1494, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1507, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1515, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant [15 x i8] c"iproc_pcie_ops\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 725, i32 23 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1523, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant [25 x i8] c"iproc_pcie_reg_paxb_bcma\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 308, i32 18 }
@___asan_gen_.150 = private unnamed_addr constant [20 x i8] c"iproc_pcie_reg_paxb\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 319, i32 18 }
@___asan_gen_.153 = private unnamed_addr constant [12 x i8] c"paxb_ob_map\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 102, i32 39 }
@___asan_gen_.156 = private unnamed_addr constant [23 x i8] c"iproc_pcie_reg_paxb_v2\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 335, i32 18 }
@___asan_gen_.159 = private unnamed_addr constant [15 x i8] c"paxb_v2_ob_map\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 115, i32 39 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1422, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1439, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant [15 x i8] c"paxb_v2_ib_map\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 174, i32 39 }
@___asan_gen_.183 = private unnamed_addr constant [20 x i8] c"iproc_pcie_reg_paxc\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 366, i32 18 }
@___asan_gen_.186 = private unnamed_addr constant [23 x i8] c"iproc_pcie_reg_paxc_v2\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 375, i32 18 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1032, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 915, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 970, i32 5 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1001, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1002, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 884, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 886, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 889, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1149, i32 5 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1169, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1170, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1075, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1086, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1102, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 781, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 788, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 834, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1350, i32 50 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1356, i32 49 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1320, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1230, i32 41 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1231, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.327 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.328 = private constant [39 x i8] c"../drivers/pci/controller/pcie-iproc.c\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1238, i32 3 }
@llvm.compiler.used = appending global [119 x ptr] [ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file301, ptr @__UNIQUE_ID_license302, ptr @__ksymtab_iproc_pcie_remove, ptr @__ksymtab_iproc_pcie_setup, ptr @__ksymtab_iproc_pcie_shutdown, ptr @__pci_fixup_quirk_paxc_bridge1594, ptr @__pci_fixup_quirk_paxc_bridge1595, ptr @__pci_fixup_quirk_paxc_bridge1596, ptr @__pci_fixup_quirk_paxc_bridge1597, ptr @__pci_fixup_quirk_paxc_bridge1598, ptr @__pci_fixup_quirk_paxc_disable_msi_parsing1570, ptr @__pci_fixup_quirk_paxc_disable_msi_parsing1572, ptr @__pci_fixup_quirk_paxc_disable_msi_parsing1574, ptr @iproc_pcie_check_link._entry, ptr @iproc_pcie_check_link._entry.64, ptr @iproc_pcie_check_link._entry.67, ptr @iproc_pcie_check_link._entry_ptr, ptr @iproc_pcie_check_link._entry_ptr.66, ptr @iproc_pcie_check_link._entry_ptr.69, ptr @iproc_pcie_map_ranges._entry, ptr @iproc_pcie_map_ranges._entry_ptr, ptr @iproc_pcie_msi_steer._entry, ptr @iproc_pcie_msi_steer._entry_ptr, ptr @iproc_pcie_rev_init._entry, ptr @iproc_pcie_rev_init._entry.27, ptr @iproc_pcie_rev_init._entry_ptr, ptr @iproc_pcie_rev_init._entry_ptr.29, ptr @iproc_pcie_setup._entry, ptr @iproc_pcie_setup._entry.11, ptr @iproc_pcie_setup._entry.14, ptr @iproc_pcie_setup._entry.17, ptr @iproc_pcie_setup._entry.21, ptr @iproc_pcie_setup._entry.5, ptr @iproc_pcie_setup._entry.8, ptr @iproc_pcie_setup._entry_ptr, ptr @iproc_pcie_setup._entry_ptr.10, ptr @iproc_pcie_setup._entry_ptr.13, ptr @iproc_pcie_setup._entry_ptr.16, ptr @iproc_pcie_setup._entry_ptr.20, ptr @iproc_pcie_setup._entry_ptr.23, ptr @iproc_pcie_setup._entry_ptr.7, ptr @iproc_pcie_setup_ib._entry, ptr @iproc_pcie_setup_ib._entry.52, ptr @iproc_pcie_setup_ib._entry.55, ptr @iproc_pcie_setup_ib._entry_ptr, ptr @iproc_pcie_setup_ib._entry_ptr.54, ptr @iproc_pcie_setup_ib._entry_ptr.57, ptr @iproc_pcie_setup_ob._entry, ptr @iproc_pcie_setup_ob._entry.37, ptr @iproc_pcie_setup_ob._entry.40, ptr @iproc_pcie_setup_ob._entry.43, ptr @iproc_pcie_setup_ob._entry_ptr, ptr @iproc_pcie_setup_ob._entry_ptr.39, ptr @iproc_pcie_setup_ob._entry_ptr.42, ptr @iproc_pcie_setup_ob._entry_ptr.45, ptr @iproce_pcie_get_msi._entry, ptr @iproce_pcie_get_msi._entry.79, ptr @iproce_pcie_get_msi._entry_ptr, ptr @iproce_pcie_get_msi._entry_ptr.81, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @iproc_pcie_ops, ptr @.str.22, ptr @iproc_pcie_reg_paxb_bcma, ptr @iproc_pcie_reg_paxb, ptr @paxb_ob_map, ptr @iproc_pcie_reg_paxb_v2, ptr @paxb_v2_ob_map, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @paxb_v2_ib_map, ptr @iproc_pcie_reg_paxc, ptr @iproc_pcie_reg_paxc_v2, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.80], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_pcie_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_pcie_setup._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_pcie_setup._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_pcie_setup._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_pcie_setup._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_pcie_setup._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_pcie_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_pcie_setup._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_pcie_reg_paxb_bcma to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_pcie_reg_paxb to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @paxb_ob_map to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_pcie_reg_paxb_v2 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @paxb_v2_ob_map to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_pcie_rev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_pcie_rev_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @paxb_v2_ib_map to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_pcie_reg_paxc to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_pcie_reg_paxc_v2 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_pcie_map_ranges._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_pcie_setup_ob._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_pcie_setup_ob._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_pcie_setup_ob._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_pcie_setup_ob._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_pcie_setup_ib._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_pcie_setup_ib._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_pcie_setup_ib._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_pcie_check_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_pcie_check_link._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_pcie_check_link._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_pcie_msi_steer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproce_pcie_get_msi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproce_pcie_get_msi._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iproc_pcie_shutdown(ptr nocapture noundef readonly %pcie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ep_is_internal.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 8
  %0 = ptrtoint ptr %ep_is_internal.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ep_is_internal.i, align 4, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.iproc_pcie_perst_ctrl.exit_crit_edge

entry.iproc_pcie_perst_ctrl.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_perst_ctrl.exit

if.end.i:                                         ; preds = %entry
  %reg_offsets.i.i.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 2
  %2 = ptrtoint ptr %reg_offsets.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_offsets.i.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %5)
  %cmp.i.i.i = icmp eq i16 %5, -1
  br i1 %cmp.i.i.i, label %if.end.i.iproc_pcie_read_reg.exit.i_crit_edge, label %if.end.i.i

if.end.i.iproc_pcie_read_reg.exit.i_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_read_reg.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %base.i.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 3
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %conv.i.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  %9 = and i32 %8, -117440513
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  br label %iproc_pcie_read_reg.exit.i

iproc_pcie_read_reg.exit.i:                       ; preds = %if.end.i.i, %if.end.i.iproc_pcie_read_reg.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %10, %if.end.i.i ], [ 0, %if.end.i.iproc_pcie_read_reg.exit.i_crit_edge ]
  %11 = ptrtoint ptr %reg_offsets.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_offsets.i.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %12, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %14)
  %cmp.i.i13.i = icmp eq i16 %14, -1
  br i1 %cmp.i.i13.i, label %iproc_pcie_read_reg.exit.i.iproc_pcie_write_reg.exit.i_crit_edge, label %do.body.i.i

iproc_pcie_read_reg.exit.i.iproc_pcie_write_reg.exit.i_crit_edge: ; preds = %iproc_pcie_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_write_reg.exit.i

do.body.i.i:                                      ; preds = %iproc_pcie_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !194
  tail call void @arm_heavy_mb() #7
  %15 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i) #7
  %base.i14.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 3
  %16 = ptrtoint ptr %base.i14.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i14.i, align 4
  %conv.i15.i = zext i16 %14 to i32
  %add.ptr.i16.i = getelementptr i8, ptr %17, i32 %conv.i15.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 %15) #7, !srcloc !195
  br label %iproc_pcie_write_reg.exit.i

iproc_pcie_write_reg.exit.i:                      ; preds = %do.body.i.i, %iproc_pcie_read_reg.exit.i.iproc_pcie_write_reg.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 53687000) #7
  br label %iproc_pcie_perst_ctrl.exit

iproc_pcie_perst_ctrl.exit:                       ; preds = %iproc_pcie_write_reg.exit.i, %entry.iproc_pcie_perst_ctrl.exit_crit_edge
  tail call void @msleep(i32 noundef 500) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iproc_pcie_setup(ptr noundef %pcie, ptr noundef readonly %res) #0 align 64 {
entry:
  %entry1.i.i.i = alloca %struct.resource_entry, align 4
  %res.i.i.i = alloca %struct.resource, align 4
  %args.i.i = alloca %struct.of_phandle_args, align 4
  %len.i = alloca i32, align 4
  %link_ctrl.i = alloca i32, align 4
  %link_status.i = alloca i32, align 4
  %class.i = alloca i32, align 4
  %axi_addr.addr.i.i = alloca i64, align 8
  %pci_addr.addr.i.i = alloca i64, align 8
  %size.addr.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %pcie, i32 -1024
  %0 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie, align 4
  %type.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 1
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end21.i [
    i32 0, label %entry.sw.epilog.i_crit_edge
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb3.i
    i32 3, label %sw.bb12.i
    i32 4, label %sw.bb14.i
  ]

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %entry
  %has_apb_err_disable.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 11
  %5 = ptrtoint ptr %has_apb_err_disable.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %has_apb_err_disable.i, align 1
  %need_ob_cfg.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 13
  %6 = ptrtoint ptr %need_ob_cfg.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %need_ob_cfg.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %sw.bb2.i.sw.epilog.i_crit_edge, label %if.then.i

sw.bb2.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.then.i:                                        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #9
  %ob_map.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 15
  %8 = ptrtoint ptr %ob_map.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @paxb_ob_map, ptr %ob_map.i, align 4
  %nr_windows.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 14, i32 1
  %9 = ptrtoint ptr %nr_windows.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %nr_windows.i, align 4
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %entry
  %iproc_cfg_read.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 9
  %10 = ptrtoint ptr %iproc_cfg_read.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %iproc_cfg_read.i, align 1
  %has_apb_err_disable4.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 11
  %11 = ptrtoint ptr %has_apb_err_disable4.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %has_apb_err_disable4.i, align 1
  %need_ob_cfg5.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 13
  %12 = ptrtoint ptr %need_ob_cfg5.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %need_ob_cfg5.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool6.not.i = icmp eq i8 %13, 0
  br i1 %tobool6.not.i, label %sw.bb3.i.if.end11.i_crit_edge, label %if.then7.i

sw.bb3.i.if.end11.i_crit_edge:                    ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then7.i:                                       ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  %ob_map8.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 15
  %14 = ptrtoint ptr %ob_map8.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @paxb_v2_ob_map, ptr %ob_map8.i, align 4
  %nr_windows10.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 14, i32 1
  %15 = ptrtoint ptr %nr_windows10.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %nr_windows10.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then7.i, %sw.bb3.i.if.end11.i_crit_edge
  %ib.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 17
  %16 = ptrtoint ptr %ib.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 5, ptr %ib.i, align 4
  %ib_map.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 18
  %17 = ptrtoint ptr %ib_map.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @paxb_v2_ib_map, ptr %ib_map.i, align 4
  %need_msi_steer.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 19
  %18 = ptrtoint ptr %need_msi_steer.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %need_msi_steer.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.24, i32 noundef -65535) #10
  br label %sw.epilog.i

sw.bb12.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ep_is_internal.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 8
  %19 = ptrtoint ptr %ep_is_internal.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %ep_is_internal.i, align 4
  %iproc_cfg_read13.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 9
  %20 = ptrtoint ptr %iproc_cfg_read13.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %iproc_cfg_read13.i, align 1
  %rej_unconfig_pf.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 10
  %21 = ptrtoint ptr %rej_unconfig_pf.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %rej_unconfig_pf.i, align 2
  br label %sw.epilog.i

sw.bb14.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ep_is_internal15.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 8
  %22 = ptrtoint ptr %ep_is_internal15.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %ep_is_internal15.i, align 4
  %iproc_cfg_read16.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 9
  %23 = ptrtoint ptr %iproc_cfg_read16.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %iproc_cfg_read16.i, align 1
  %rej_unconfig_pf17.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 10
  %24 = ptrtoint ptr %rej_unconfig_pf17.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %rej_unconfig_pf17.i, align 2
  %need_msi_steer18.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 19
  %25 = ptrtoint ptr %need_msi_steer18.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %need_msi_steer18.i, align 4
  br label %sw.epilog.i

do.end21.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.28) #10
  br label %do.end

sw.epilog.i:                                      ; preds = %sw.bb14.i, %sw.bb12.i, %if.end11.i, %if.then.i, %sw.bb2.i.sw.epilog.i_crit_edge, %entry.sw.epilog.i_crit_edge
  %regs.0.i = phi ptr [ @iproc_pcie_reg_paxc_v2, %sw.bb14.i ], [ @iproc_pcie_reg_paxc, %sw.bb12.i ], [ @iproc_pcie_reg_paxb_v2, %if.end11.i ], [ @iproc_pcie_reg_paxb, %if.then.i ], [ @iproc_pcie_reg_paxb, %sw.bb2.i.sw.epilog.i_crit_edge ], [ @iproc_pcie_reg_paxb_bcma, %entry.sw.epilog.i_crit_edge ]
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 66, i32 noundef 3520) #7
  %reg_offsets.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 2
  %26 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call5.i.i.i, ptr %reg_offsets.i, align 4
  %tobool23.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool23.not.i, label %sw.epilog.i.do.end_crit_edge, label %if.end25.i

sw.epilog.i.do.end_crit_edge:                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end25.i:                                       ; preds = %sw.epilog.i
  %27 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %28)
  %cmp.i = icmp eq i32 %28, 4
  br i1 %cmp.i, label %if.end25.i.cond.end.i_crit_edge, label %cond.false.i

if.end25.i.cond.end.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %regs.0.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %regs.0.i, align 2
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end25.i.cond.end.i_crit_edge
  %cond.i = phi i16 [ %30, %cond.false.i ], [ -1, %if.end25.i.cond.end.i_crit_edge ]
  %31 = ptrtoint ptr %call5.i.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %cond.i, ptr %call5.i.i.i, align 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %cond.end.i
  %reg_idx.079.i = phi i32 [ 1, %cond.end.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx32.i = getelementptr i16, ptr %regs.0.i, i32 %reg_idx.079.i
  %32 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx32.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool34.not.i = icmp eq i16 %33, 0
  %spec.select.i = select i1 %tobool34.not.i, i16 -1, i16 %33
  %34 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg_offsets.i, align 4
  %arrayidx43.i = getelementptr i16, ptr %35, i32 %reg_idx.079.i
  %36 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %spec.select.i, ptr %arrayidx43.i, align 2
  %inc.i = add nuw nsw i32 %reg_idx.079.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 33
  br i1 %exitcond.not.i, label %if.end, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do.end:                                           ; preds = %sw.epilog.i.do.end_crit_edge, %do.end21.i
  %retval.0.i.ph = phi i32 [ -12, %sw.epilog.i.do.end_crit_edge ], [ -22, %do.end21.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str) #10
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  %phy = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 6
  %37 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %phy, align 4
  %call3 = tail call i32 @phy_init(ptr noundef %38) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end9, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.6) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %39 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %phy, align 4
  %call11 = tail call i32 @phy_power_on(ptr noundef %40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end17, label %do.end16

do.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.9) #10
  br label %err_exit_phy

if.end17:                                         ; preds = %if.end9
  %ep_is_internal.i123 = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 8
  %41 = ptrtoint ptr %ep_is_internal.i123 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ep_is_internal.i123, align 4, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i124 = icmp eq i8 %42, 0
  br i1 %tobool.not.i124, label %if.end.i, label %if.end17.iproc_pcie_invalidate_mapping.exit_crit_edge

if.end17.iproc_pcie_invalidate_mapping.exit_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_invalidate_mapping.exit

if.end.i:                                         ; preds = %if.end17
  %43 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg_offsets.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %44, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %46)
  %cmp.i.i.i = icmp eq i16 %46, -1
  br i1 %cmp.i.i.i, label %if.end.i.iproc_pcie_read_reg.exit.i_crit_edge, label %if.end.i.i

if.end.i.iproc_pcie_read_reg.exit.i_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_read_reg.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %base.i.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 3
  %47 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i.i, align 4
  %conv.i.i = zext i16 %46 to i32
  %add.ptr.i.i = getelementptr i8, ptr %48, i32 %conv.i.i
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  %50 = and i32 %49, -117440513
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #7
  br label %iproc_pcie_read_reg.exit.i

iproc_pcie_read_reg.exit.i:                       ; preds = %if.end.i.i, %if.end.i.iproc_pcie_read_reg.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %51, %if.end.i.i ], [ 0, %if.end.i.iproc_pcie_read_reg.exit.i_crit_edge ]
  %52 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg_offsets.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %53, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %55)
  %cmp.i.i13.i = icmp eq i16 %55, -1
  br i1 %cmp.i.i13.i, label %iproc_pcie_read_reg.exit.i.iproc_pcie_perst_ctrl.exit_crit_edge, label %do.body.i.i

iproc_pcie_read_reg.exit.i.iproc_pcie_perst_ctrl.exit_crit_edge: ; preds = %iproc_pcie_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_perst_ctrl.exit

do.body.i.i:                                      ; preds = %iproc_pcie_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !194
  tail call void @arm_heavy_mb() #7
  %56 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i) #7
  %base.i14.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 3
  %57 = ptrtoint ptr %base.i14.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i14.i, align 4
  %conv.i15.i = zext i16 %55 to i32
  %add.ptr.i16.i = getelementptr i8, ptr %58, i32 %conv.i15.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 %56) #7, !srcloc !195
  br label %iproc_pcie_perst_ctrl.exit

iproc_pcie_perst_ctrl.exit:                       ; preds = %do.body.i.i, %iproc_pcie_read_reg.exit.i.iproc_pcie_perst_ctrl.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 53687000) #7
  %60 = ptrtoint ptr %ep_is_internal.i123 to i32
  call void @__asan_load1_noabort(i32 %60)
  %.pr = load i8, ptr %ep_is_internal.i123, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool.not.i126 = icmp eq i8 %.pr, 0
  br i1 %tobool.not.i126, label %if.end.i129, label %iproc_pcie_perst_ctrl.exit.iproc_pcie_invalidate_mapping.exit_crit_edge

iproc_pcie_perst_ctrl.exit.iproc_pcie_invalidate_mapping.exit_crit_edge: ; preds = %iproc_pcie_perst_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_invalidate_mapping.exit

if.end.i129:                                      ; preds = %iproc_pcie_perst_ctrl.exit
  %61 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %reg_offsets.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %62, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %64)
  %cmp.i.i.i128 = icmp eq i16 %64, -1
  br i1 %cmp.i.i.i128, label %if.end.i129.iproc_pcie_read_reg.exit24.i_crit_edge, label %if.end.i22.i

if.end.i129.iproc_pcie_read_reg.exit24.i_crit_edge: ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_read_reg.exit24.i

if.end.i22.i:                                     ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #9
  %base.i19.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 3
  %65 = ptrtoint ptr %base.i19.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base.i19.i, align 4
  %conv.i20.i = zext i16 %64 to i32
  %add.ptr.i21.i = getelementptr i8, ptr %66, i32 %conv.i20.i
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21.i) #7, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  %68 = or i32 %67, 16777216
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #7
  br label %iproc_pcie_read_reg.exit24.i

iproc_pcie_read_reg.exit24.i:                     ; preds = %if.end.i22.i, %if.end.i129.iproc_pcie_read_reg.exit24.i_crit_edge
  %retval.0.i23.i = phi i32 [ %69, %if.end.i22.i ], [ 1, %if.end.i129.iproc_pcie_read_reg.exit24.i_crit_edge ]
  %70 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %reg_offsets.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %71, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %73)
  %cmp.i.i26.i = icmp eq i16 %73, -1
  br i1 %cmp.i.i26.i, label %iproc_pcie_read_reg.exit24.i.iproc_pcie_perst_ctrl.exit130_crit_edge, label %do.body.i30.i

iproc_pcie_read_reg.exit24.i.iproc_pcie_perst_ctrl.exit130_crit_edge: ; preds = %iproc_pcie_read_reg.exit24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_perst_ctrl.exit130

do.body.i30.i:                                    ; preds = %iproc_pcie_read_reg.exit24.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !194
  tail call void @arm_heavy_mb() #7
  %74 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i23.i) #7
  %base.i27.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 3
  %75 = ptrtoint ptr %base.i27.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base.i27.i, align 4
  %conv.i28.i = zext i16 %73 to i32
  %add.ptr.i29.i = getelementptr i8, ptr %76, i32 %conv.i28.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 %74) #7, !srcloc !195
  br label %iproc_pcie_perst_ctrl.exit130

iproc_pcie_perst_ctrl.exit130:                    ; preds = %do.body.i30.i, %iproc_pcie_read_reg.exit24.i.iproc_pcie_perst_ctrl.exit130_crit_edge
  tail call void @msleep(i32 noundef 100) #7
  %77 = ptrtoint ptr %ep_is_internal.i123 to i32
  call void @__asan_load1_noabort(i32 %77)
  %.pr199 = load i8, ptr %ep_is_internal.i123, align 4
  %ib1.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr199)
  %tobool.not.i132 = icmp eq i8 %.pr199, 0
  br i1 %tobool.not.i132, label %if.end.i134, label %iproc_pcie_perst_ctrl.exit130.iproc_pcie_invalidate_mapping.exit_crit_edge

iproc_pcie_perst_ctrl.exit130.iproc_pcie_invalidate_mapping.exit_crit_edge: ; preds = %iproc_pcie_perst_ctrl.exit130
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_invalidate_mapping.exit

if.end.i134:                                      ; preds = %iproc_pcie_perst_ctrl.exit130
  %need_ob_cfg.i133 = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 13
  %78 = ptrtoint ptr %need_ob_cfg.i133 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %need_ob_cfg.i133, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool3.not.i = icmp eq i8 %79, 0
  br i1 %tobool3.not.i, label %if.end.i134.if.end5.i_crit_edge, label %if.then4.i

if.end.i134.if.end5.i_crit_edge:                  ; preds = %if.end.i134
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i134
  %nr_windows.i135 = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 14, i32 1
  %80 = ptrtoint ptr %nr_windows.i135 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %nr_windows.i135, align 4
  %idx.037.i = add i32 %81, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %idx.037.i)
  %cmp38.i = icmp sgt i32 %idx.037.i, -1
  br i1 %cmp38.i, label %for.body.lr.ph.i, label %if.then4.i.if.end5.i_crit_edge

if.then4.i.if.end5.i_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

for.body.lr.ph.i:                                 ; preds = %if.then4.i
  %base.i.i137 = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 3
  br label %for.body.i139

for.body.i139:                                    ; preds = %iproc_pcie_write_reg.exit.i144.for.body.i139_crit_edge, %for.body.lr.ph.i
  %idx.039.i = phi i32 [ %idx.037.i, %for.body.lr.ph.i ], [ %idx.0.i, %iproc_pcie_write_reg.exit.i144.for.body.i139_crit_edge ]
  %mul.i = shl nuw i32 %idx.039.i, 1
  %add.i = add i32 %mul.i, 12
  %82 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %reg_offsets.i, align 4
  %arrayidx.i.i.i = getelementptr i16, ptr %83, i32 %add.i
  %84 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %arrayidx.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %85)
  %cmp.i.i.i138 = icmp eq i16 %85, -1
  br i1 %cmp.i.i.i138, label %for.body.i139.iproc_pcie_write_reg.exit.i144_crit_edge, label %do.body.i.i142

for.body.i139.iproc_pcie_write_reg.exit.i144_crit_edge: ; preds = %for.body.i139
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_write_reg.exit.i144

do.body.i.i142:                                   ; preds = %for.body.i139
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !194
  tail call void @arm_heavy_mb() #7
  %86 = ptrtoint ptr %base.i.i137 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base.i.i137, align 4
  %conv.i.i140 = zext i16 %85 to i32
  %add.ptr.i.i141 = getelementptr i8, ptr %87, i32 %conv.i.i140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i141, i32 0) #7, !srcloc !195
  br label %iproc_pcie_write_reg.exit.i144

iproc_pcie_write_reg.exit.i144:                   ; preds = %do.body.i.i142, %for.body.i139.iproc_pcie_write_reg.exit.i144_crit_edge
  %idx.0.i = add i32 %idx.039.i, -1
  %cmp.i143 = icmp sgt i32 %idx.0.i, -1
  br i1 %cmp.i143, label %iproc_pcie_write_reg.exit.i144.for.body.i139_crit_edge, label %iproc_pcie_write_reg.exit.i144.if.end5.i_crit_edge

iproc_pcie_write_reg.exit.i144.if.end5.i_crit_edge: ; preds = %iproc_pcie_write_reg.exit.i144
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

iproc_pcie_write_reg.exit.i144.for.body.i139_crit_edge: ; preds = %iproc_pcie_write_reg.exit.i144
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i139

if.end5.i:                                        ; preds = %iproc_pcie_write_reg.exit.i144.if.end5.i_crit_edge, %if.then4.i.if.end5.i_crit_edge, %if.end.i134.if.end5.i_crit_edge
  %need_ib_cfg.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 16
  %88 = ptrtoint ptr %need_ib_cfg.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %need_ib_cfg.i, align 4, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool6.not.i145 = icmp eq i8 %89, 0
  br i1 %tobool6.not.i145, label %if.end5.i.iproc_pcie_invalidate_mapping.exit_crit_edge, label %for.cond8.preheader.i

if.end5.i.iproc_pcie_invalidate_mapping.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_invalidate_mapping.exit

for.cond8.preheader.i:                            ; preds = %if.end5.i
  %90 = ptrtoint ptr %ib1.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %ib1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp940.not.i = icmp eq i32 %91, 0
  br i1 %cmp940.not.i, label %for.cond8.preheader.i.iproc_pcie_invalidate_mapping.exit_crit_edge, label %for.body10.lr.ph.i

for.cond8.preheader.i.iproc_pcie_invalidate_mapping.exit_crit_edge: ; preds = %for.cond8.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_invalidate_mapping.exit

for.body10.lr.ph.i:                               ; preds = %for.cond8.preheader.i
  %base.i32.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 3
  br label %for.body10.i

for.body10.i:                                     ; preds = %iproc_pcie_write_reg.exit36.i.for.body10.i_crit_edge, %for.body10.lr.ph.i
  %idx.141.i = phi i32 [ 0, %for.body10.lr.ph.i ], [ %inc.i146, %iproc_pcie_write_reg.exit36.i.for.body10.i_crit_edge ]
  %mul11.i = shl i32 %idx.141.i, 1
  %add12.i = add i32 %mul11.i, 20
  %92 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %reg_offsets.i, align 4
  %arrayidx.i.i30.i = getelementptr i16, ptr %93, i32 %add12.i
  %94 = ptrtoint ptr %arrayidx.i.i30.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %arrayidx.i.i30.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %95)
  %cmp.i.i31.i = icmp eq i16 %95, -1
  br i1 %cmp.i.i31.i, label %for.body10.i.iproc_pcie_write_reg.exit36.i_crit_edge, label %do.body.i35.i

for.body10.i.iproc_pcie_write_reg.exit36.i_crit_edge: ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_write_reg.exit36.i

do.body.i35.i:                                    ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !194
  tail call void @arm_heavy_mb() #7
  %96 = ptrtoint ptr %base.i32.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %base.i32.i, align 4
  %conv.i33.i = zext i16 %95 to i32
  %add.ptr.i34.i = getelementptr i8, ptr %97, i32 %conv.i33.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i, i32 0) #7, !srcloc !195
  br label %iproc_pcie_write_reg.exit36.i

iproc_pcie_write_reg.exit36.i:                    ; preds = %do.body.i35.i, %for.body10.i.iproc_pcie_write_reg.exit36.i_crit_edge
  %inc.i146 = add nuw i32 %idx.141.i, 1
  %98 = ptrtoint ptr %ib1.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %ib1.i, align 4
  %cmp9.i = icmp ult i32 %inc.i146, %99
  br i1 %cmp9.i, label %iproc_pcie_write_reg.exit36.i.for.body10.i_crit_edge, label %iproc_pcie_write_reg.exit36.i.iproc_pcie_invalidate_mapping.exit_crit_edge

iproc_pcie_write_reg.exit36.i.iproc_pcie_invalidate_mapping.exit_crit_edge: ; preds = %iproc_pcie_write_reg.exit36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_invalidate_mapping.exit

iproc_pcie_write_reg.exit36.i.for.body10.i_crit_edge: ; preds = %iproc_pcie_write_reg.exit36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body10.i

iproc_pcie_invalidate_mapping.exit:               ; preds = %iproc_pcie_write_reg.exit36.i.iproc_pcie_invalidate_mapping.exit_crit_edge, %for.cond8.preheader.i.iproc_pcie_invalidate_mapping.exit_crit_edge, %if.end5.i.iproc_pcie_invalidate_mapping.exit_crit_edge, %iproc_pcie_perst_ctrl.exit130.iproc_pcie_invalidate_mapping.exit_crit_edge, %iproc_pcie_perst_ctrl.exit.iproc_pcie_invalidate_mapping.exit_crit_edge, %if.end17.iproc_pcie_invalidate_mapping.exit_crit_edge
  %need_ob_cfg = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 13
  %100 = ptrtoint ptr %need_ob_cfg to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %need_ob_cfg, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool18.not = icmp eq i8 %101, 0
  br i1 %tobool18.not, label %iproc_pcie_invalidate_mapping.exit.if.end27_crit_edge, label %if.then19

iproc_pcie_invalidate_mapping.exit.if.end27_crit_edge: ; preds = %iproc_pcie_invalidate_mapping.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then19:                                        ; preds = %iproc_pcie_invalidate_mapping.exit
  %102 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pcie, align 4
  %104 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %104)
  %window.048.i = load ptr, ptr %res, align 4
  %cmp.not49.i = icmp eq ptr %window.048.i, %res
  br i1 %cmp.not49.i, label %if.then19.if.end27_crit_edge, label %for.body.lr.ph.i147

if.then19.if.end27_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

for.body.lr.ph.i147:                              ; preds = %if.then19
  %ob1.i.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 14
  %nr_windows.i.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 14, i32 1
  %ob_map10.i.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 15
  %base.i.i.i.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 3
  br label %for.body.i148

for.body.i148:                                    ; preds = %cleanup.i.for.body.i148_crit_edge, %for.body.lr.ph.i147
  %window.050.i = phi ptr [ %window.048.i, %for.body.lr.ph.i147 ], [ %window.0.i, %cleanup.i.for.body.i148_crit_edge ]
  %res2.i = getelementptr inbounds %struct.resource_entry, ptr %window.050.i, i32 0, i32 1
  %105 = ptrtoint ptr %res2.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %res2.i, align 4
  %flags.i.i = getelementptr inbounds %struct.resource, ptr %106, i32 0, i32 3
  %107 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %108, 7936
  %109 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %and.i.i, label %do.end.i [
    i32 256, label %for.body.i148.cleanup.i_crit_edge
    i32 4096, label %for.body.i148.cleanup.i_crit_edge291
    i32 512, label %sw.bb3.i149
  ]

for.body.i148.cleanup.i_crit_edge291:             ; preds = %for.body.i148
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

for.body.i148.cleanup.i_crit_edge:                ; preds = %for.body.i148
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

sw.bb3.i149:                                      ; preds = %for.body.i148
  %110 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %106, align 4
  %conv4.i = zext i32 %111 to i64
  %offset.i = getelementptr inbounds %struct.resource_entry, ptr %window.050.i, i32 0, i32 2
  %112 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %offset.i, align 4
  %sub.i = sub i32 %111, %113
  %conv6.i = zext i32 %sub.i to i64
  %end.i.i = getelementptr inbounds %struct.resource, ptr %106, i32 0, i32 1
  %114 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %end.i.i, align 4
  %sub.i.i = sub i32 1, %111
  %add.i.i = add i32 %sub.i.i, %115
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %axi_addr.addr.i.i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pci_addr.addr.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.addr.i.i) #7
  %116 = ptrtoint ptr %axi_addr.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %conv4.i, ptr %axi_addr.addr.i.i, align 8
  %117 = ptrtoint ptr %pci_addr.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %conv6.i, ptr %pci_addr.addr.i.i, align 8
  %118 = ptrtoint ptr %size.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %add.i.i, ptr %size.addr.i.i, align 4
  %119 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pcie, align 4
  %121 = ptrtoint ptr %ob1.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %ob1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %111, i32 %122)
  %cmp.i.i = icmp ult i32 %111, %122
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i151

do.end.i.i:                                       ; preds = %sw.bb3.i149
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.35, ptr noundef nonnull %axi_addr.addr.i.i, ptr noundef %ob1.i.i) #10
  br label %iproc_pcie_setup_ob.exit.thread.i

if.end.i.i151:                                    ; preds = %sw.bb3.i149
  %conv.i.i150 = zext i32 %122 to i64
  %sub.i28.i = sub nsw i64 %conv4.i, %conv.i.i150
  %123 = ptrtoint ptr %axi_addr.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 %sub.i28.i, ptr %axi_addr.addr.i.i, align 8
  %124 = ptrtoint ptr %nr_windows.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %nr_windows.i.i, align 4
  %window_idx.0149.i.i = add i32 %125, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %window_idx.0149.i.i)
  %cmp8150.i.i = icmp sgt i32 %window_idx.0149.i.i, -1
  br i1 %cmp8150.i.i, label %if.end.i.i151.for.body.i.i_crit_edge, label %if.end.i.i151.iproc_pcie_setup_ob.exit.i_crit_edge

if.end.i.i151.iproc_pcie_setup_ob.exit.i_crit_edge: ; preds = %if.end.i.i151
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_setup_ob.exit.i

if.end.i.i151.for.body.i.i_crit_edge:             ; preds = %if.end.i.i151
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc76.i.i.for.body.i.i_crit_edge, %if.end.i.i151.for.body.i.i_crit_edge
  %window_idx.0152.i.i = phi i32 [ %window_idx.0.i.i, %for.inc76.i.i.for.body.i.i_crit_edge ], [ %window_idx.0149.i.i, %if.end.i.i151.for.body.i.i_crit_edge ]
  %ret.0151.i.i = phi i32 [ %ret.4.ph.i.i, %for.inc76.i.i.for.body.i.i_crit_edge ], [ -22, %if.end.i.i151.for.body.i.i_crit_edge ]
  %126 = ptrtoint ptr %ob_map10.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ob_map10.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.iproc_pcie_ob_map, ptr %127, i32 %window_idx.0152.i.i
  %mul.i.i.i = shl nuw i32 %window_idx.0152.i.i, 1
  %add.i.i.i = add i32 %mul.i.i.i, 12
  %128 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %reg_offsets.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr i16, ptr %129, i32 %add.i.i.i
  %130 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %arrayidx.i.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %131)
  %cmp.i.i.i.i.i = icmp eq i16 %131, -1
  br i1 %cmp.i.i.i.i.i, label %for.body.i.i.if.end12.i.i_crit_edge, label %iproc_pcie_ob_is_valid.exit.i.i

for.body.i.i.if.end12.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i.i

iproc_pcie_ob_is_valid.exit.i.i:                  ; preds = %for.body.i.i
  %132 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %base.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %131 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %133, i32 %conv.i.i.i.i
  %134 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #7, !srcloc !192
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  %135 = and i32 %134, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %phi.cmp.i.not.i.i = icmp eq i32 %135, 0
  br i1 %phi.cmp.i.not.i.i, label %iproc_pcie_ob_is_valid.exit.i.i.if.end12.i.i_crit_edge, label %iproc_pcie_ob_is_valid.exit.i.i.for.inc76.i.i_crit_edge

iproc_pcie_ob_is_valid.exit.i.i.for.inc76.i.i_crit_edge: ; preds = %iproc_pcie_ob_is_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc76.i.i

iproc_pcie_ob_is_valid.exit.i.i.if.end12.i.i_crit_edge: ; preds = %iproc_pcie_ob_is_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %iproc_pcie_ob_is_valid.exit.i.i.if.end12.i.i_crit_edge, %for.body.i.i.if.end12.i.i_crit_edge
  %nr_sizes.i.i = getelementptr %struct.iproc_pcie_ob_map, ptr %127, i32 %window_idx.0152.i.i, i32 1
  %136 = ptrtoint ptr %nr_sizes.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %nr_sizes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %window_idx.0152.i.i)
  %cmp24.i.i = icmp ne i32 %window_idx.0152.i.i, 0
  br label %for.cond14.i.i

for.cond14.i.i:                                   ; preds = %if.then21.i.i.for.cond14.i.i_crit_edge, %if.end12.i.i
  %size_idx.0.in.i.i = phi i32 [ %137, %if.end12.i.i ], [ %size_idx.0.i.i, %if.then21.i.i.for.cond14.i.i_crit_edge ]
  %size_idx.0.i.i = add i32 %size_idx.0.in.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %size_idx.0.i.i)
  %cmp15.i.i = icmp sgt i32 %size_idx.0.i.i, -1
  br i1 %cmp15.i.i, label %for.body17.i.i, label %for.cond14.i.i.for.inc76.i.i_crit_edge

for.cond14.i.i.for.inc76.i.i_crit_edge:           ; preds = %for.cond14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc76.i.i

for.body17.i.i:                                   ; preds = %for.cond14.i.i
  %arrayidx18.i.i = getelementptr [4 x i32], ptr %arrayidx.i.i, i32 0, i32 %size_idx.0.i.i
  %138 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx18.i.i, align 4
  %mul.i.i = shl i32 %139, 20
  %140 = ptrtoint ptr %size.addr.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %size.addr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %141, i32 %mul.i.i)
  %cmp19.i.i = icmp ult i32 %141, %mul.i.i
  br i1 %cmp19.i.i, label %if.then21.i.i, label %if.end45.loopexit.i.i

if.then21.i.i:                                    ; preds = %for.body17.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size_idx.0.i.i)
  %cmp22.i.i = icmp ne i32 %size_idx.0.i.i, 0
  %or.cond.i.i = select i1 %cmp22.i.i, i1 true, i1 %cmp24.i.i
  br i1 %or.cond.i.i, label %if.then21.i.i.for.cond14.i.i_crit_edge, label %if.end27.i.i

if.then21.i.i.for.cond14.i.i_crit_edge:           ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond14.i.i

if.end27.i.i:                                     ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %142 = ptrtoint ptr %axi_addr.addr.i.i to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %axi_addr.addr.i.i, align 8
  %sub28.i.i = add i32 %mul.i.i, -1
  %conv29.i.i = zext i32 %sub28.i.i to i64
  %conv31.i.i = zext i32 %mul.i.i to i64
  %sub32.i.i = add nsw i64 %conv31.i.i, -1
  %sub30.i.i = sub nsw i64 %sub32.i.i, %conv29.i.i
  %add.i29.i = add i64 %143, %sub30.i.i
  %neg.i.i = sub nsw i64 0, %conv31.i.i
  %and.i30.i = and i64 %add.i29.i, %neg.i.i
  store i64 %and.i30.i, ptr %axi_addr.addr.i.i, align 8
  %144 = ptrtoint ptr %pci_addr.addr.i.i to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %pci_addr.addr.i.i, align 8
  %add40.i.i = add i64 %145, %sub30.i.i
  %and44.i.i = and i64 %add40.i.i, %neg.i.i
  store i64 %and44.i.i, ptr %pci_addr.addr.i.i, align 8
  %146 = ptrtoint ptr %size.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %mul.i.i, ptr %size.addr.i.i, align 4
  br label %if.end45.i.i

if.end45.loopexit.i.i:                            ; preds = %for.body17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %.pre.i.i = zext i32 %mul.i.i to i64
  %.pre159.i.i = add nsw i64 %.pre.i.i, -1
  br label %if.end45.i.i

if.end45.i.i:                                     ; preds = %if.end45.loopexit.i.i, %if.end27.i.i
  %sub47.pre-phi.i.i = phi i64 [ %.pre159.i.i, %if.end45.loopexit.i.i ], [ %sub32.i.i, %if.end27.i.i ]
  %conv46.pre-phi.i.i = phi i64 [ %.pre.i.i, %if.end45.loopexit.i.i ], [ %conv31.i.i, %if.end27.i.i ]
  %147 = ptrtoint ptr %axi_addr.addr.i.i to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %axi_addr.addr.i.i, align 8
  %and48.i.i = and i64 %148, %sub47.pre-phi.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and48.i.i)
  %cmp49.i.i = icmp eq i64 %and48.i.i, 0
  br i1 %cmp49.i.i, label %lor.lhs.false51.i.i, label %if.end45.i.i.do.end60.i.i_crit_edge

if.end45.i.i.do.end60.i.i_crit_edge:              ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end60.i.i

lor.lhs.false51.i.i:                              ; preds = %if.end45.i.i
  %149 = ptrtoint ptr %pci_addr.addr.i.i to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %pci_addr.addr.i.i, align 8
  %and54.i.i = and i64 %150, %sub47.pre-phi.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and54.i.i)
  %cmp55.i.i = icmp eq i64 %and54.i.i, 0
  br i1 %cmp55.i.i, label %if.end61.i.i, label %lor.lhs.false51.i.i.do.end60.i.i_crit_edge

lor.lhs.false51.i.i.do.end60.i.i_crit_edge:       ; preds = %lor.lhs.false51.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end60.i.i

do.end60.i.i:                                     ; preds = %lor.lhs.false51.i.i.do.end60.i.i_crit_edge, %if.end45.i.i.do.end60.i.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.38, ptr noundef nonnull %axi_addr.addr.i.i, ptr noundef nonnull %pci_addr.addr.i.i) #10
  br label %iproc_pcie_setup_ob.exit.thread.i

if.end61.i.i:                                     ; preds = %lor.lhs.false51.i.i
  %call62.i.i = call fastcc i32 @iproc_pcie_ob_write(ptr noundef %pcie, i32 noundef %window_idx.0152.i.i, i32 noundef %size_idx.0.i.i, i64 noundef %148, i64 noundef %150) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i.i)
  %tobool.not.i.i = icmp eq i32 %call62.i.i, 0
  br i1 %tobool.not.i.i, label %if.end64.i.i, label %if.end61.i.i.iproc_pcie_setup_ob.exit.i_crit_edge

if.end61.i.i.iproc_pcie_setup_ob.exit.i_crit_edge: ; preds = %if.end61.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_setup_ob.exit.i

if.end64.i.i:                                     ; preds = %if.end61.i.i
  %151 = ptrtoint ptr %size.addr.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %size.addr.i.i, align 4
  %sub65.i.i = sub i32 %152, %mul.i.i
  store i32 %sub65.i.i, ptr %size.addr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %152, i32 %mul.i.i)
  %cmp66.i.i = icmp eq i32 %152, %mul.i.i
  br i1 %cmp66.i.i, label %iproc_pcie_setup_ob.exit.thread33.i, label %cleanup.thread130.i.i

iproc_pcie_setup_ob.exit.thread33.i:              ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %axi_addr.addr.i.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pci_addr.addr.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.addr.i.i) #7
  br label %cleanup.i

cleanup.thread130.i.i:                            ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %153 = ptrtoint ptr %axi_addr.addr.i.i to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %axi_addr.addr.i.i, align 8
  %add71.i.i = add i64 %154, %conv46.pre-phi.i.i
  store i64 %add71.i.i, ptr %axi_addr.addr.i.i, align 8
  %155 = ptrtoint ptr %pci_addr.addr.i.i to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %pci_addr.addr.i.i, align 8
  %add73.i.i = add i64 %156, %conv46.pre-phi.i.i
  store i64 %add73.i.i, ptr %pci_addr.addr.i.i, align 8
  br label %for.inc76.i.i

for.inc76.i.i:                                    ; preds = %cleanup.thread130.i.i, %for.cond14.i.i.for.inc76.i.i_crit_edge, %iproc_pcie_ob_is_valid.exit.i.i.for.inc76.i.i_crit_edge
  %ret.4.ph.i.i = phi i32 [ 0, %cleanup.thread130.i.i ], [ %ret.0151.i.i, %iproc_pcie_ob_is_valid.exit.i.i.for.inc76.i.i_crit_edge ], [ %ret.0151.i.i, %for.cond14.i.i.for.inc76.i.i_crit_edge ]
  %window_idx.0.i.i = add i32 %window_idx.0152.i.i, -1
  %cmp8.i.i = icmp sgt i32 %window_idx.0.i.i, -1
  br i1 %cmp8.i.i, label %for.inc76.i.i.for.body.i.i_crit_edge, label %for.inc76.i.i.iproc_pcie_setup_ob.exit.i_crit_edge

for.inc76.i.i.iproc_pcie_setup_ob.exit.i_crit_edge: ; preds = %for.inc76.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_setup_ob.exit.i

for.inc76.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc76.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

iproc_pcie_setup_ob.exit.thread.i:                ; preds = %do.end60.i.i, %do.end.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %axi_addr.addr.i.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pci_addr.addr.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.addr.i.i) #7
  br label %do.end25

iproc_pcie_setup_ob.exit.i:                       ; preds = %for.inc76.i.i.iproc_pcie_setup_ob.exit.i_crit_edge, %if.end61.i.i.iproc_pcie_setup_ob.exit.i_crit_edge, %if.end.i.i151.iproc_pcie_setup_ob.exit.i_crit_edge
  %ret.5.i.i = phi i32 [ -22, %if.end.i.i151.iproc_pcie_setup_ob.exit.i_crit_edge ], [ %call62.i.i, %if.end61.i.i.iproc_pcie_setup_ob.exit.i_crit_edge ], [ %ret.4.ph.i.i, %for.inc76.i.i.iproc_pcie_setup_ob.exit.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.41) #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.44, ptr noundef nonnull %axi_addr.addr.i.i, ptr noundef %ob1.i.i, ptr noundef nonnull %pci_addr.addr.i.i, ptr noundef nonnull %size.addr.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %axi_addr.addr.i.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pci_addr.addr.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.addr.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.5.i.i)
  %tobool.not.i152 = icmp eq i32 %ret.5.i.i, 0
  br i1 %tobool.not.i152, label %iproc_pcie_setup_ob.exit.i.cleanup.i_crit_edge, label %iproc_pcie_setup_ob.exit.i.do.end25_crit_edge

iproc_pcie_setup_ob.exit.i.do.end25_crit_edge:    ; preds = %iproc_pcie_setup_ob.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

iproc_pcie_setup_ob.exit.i.cleanup.i_crit_edge:   ; preds = %iproc_pcie_setup_ob.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

do.end.i:                                         ; preds = %for.body.i148
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.33, ptr noundef %106) #10
  br label %do.end25

cleanup.i:                                        ; preds = %iproc_pcie_setup_ob.exit.i.cleanup.i_crit_edge, %iproc_pcie_setup_ob.exit.thread33.i, %for.body.i148.cleanup.i_crit_edge, %for.body.i148.cleanup.i_crit_edge291
  %157 = ptrtoint ptr %window.050.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %window.0.i = load ptr, ptr %window.050.i, align 4
  %cmp.not.i = icmp eq ptr %window.0.i, %res
  br i1 %cmp.not.i, label %cleanup.i.if.end27_crit_edge, label %cleanup.i.for.body.i148_crit_edge

cleanup.i.for.body.i148_crit_edge:                ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i148

cleanup.i.if.end27_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

do.end25:                                         ; preds = %do.end.i, %iproc_pcie_setup_ob.exit.i.do.end25_crit_edge, %iproc_pcie_setup_ob.exit.thread.i
  %retval.2.i.ph = phi i32 [ -22, %do.end.i ], [ -22, %iproc_pcie_setup_ob.exit.thread.i ], [ %ret.5.i.i, %iproc_pcie_setup_ob.exit.i.do.end25_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.12) #10
  br label %err_power_off_phy

if.end27:                                         ; preds = %cleanup.i.if.end27_crit_edge, %if.then19.if.end27_crit_edge, %iproc_pcie_invalidate_mapping.exit.if.end27_crit_edge
  %need_ib_cfg = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 16
  %158 = ptrtoint ptr %need_ib_cfg to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %need_ib_cfg, align 4, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool28.not = icmp eq i8 %159, 0
  br i1 %tobool28.not, label %if.end27.if.end34_crit_edge, label %if.then29

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then29:                                        ; preds = %if.end27
  %dma_ranges.i = getelementptr i8, ptr %pcie, i32 -64
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i155.for.cond.i_crit_edge, %if.then29
  %entry1.0.in.i = phi ptr [ %dma_ranges.i, %if.then29 ], [ %entry1.0.i, %for.body.i155.for.cond.i_crit_edge ]
  %160 = ptrtoint ptr %entry1.0.in.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %entry1.0.i = load ptr, ptr %entry1.0.in.i, align 4
  %cmp.not.i153 = icmp eq ptr %entry1.0.i, %dma_ranges.i
  br i1 %cmp.not.i153, label %for.cond.i.if.end34_crit_edge, label %for.body.i155

for.cond.i.if.end34_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

for.body.i155:                                    ; preds = %for.cond.i
  %call3.i = call fastcc i32 @iproc_pcie_setup_ib(ptr noundef %pcie, ptr noundef %entry1.0.i, i32 noundef 0) #7
  %161 = zext i32 %call3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %161, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %call3.i, label %for.body.i155.err_power_off_phy_crit_edge [
    i32 0, label %for.body.i155.for.cond.i_crit_edge
    i32 -2, label %for.body.i155.if.end34_crit_edge
  ]

for.body.i155.if.end34_crit_edge:                 ; preds = %for.body.i155
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

for.body.i155.for.cond.i_crit_edge:               ; preds = %for.body.i155
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

for.body.i155.err_power_off_phy_crit_edge:        ; preds = %for.body.i155
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_power_off_phy

if.end34:                                         ; preds = %for.body.i155.if.end34_crit_edge, %for.cond.i.if.end34_crit_edge, %if.end27.if.end34_crit_edge
  %162 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %pcie, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_ctrl.i) #7
  %164 = ptrtoint ptr %link_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 -1, ptr %link_ctrl.i, align 4, !annotation !196
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_status.i) #7
  %165 = ptrtoint ptr %link_status.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 -1, ptr %link_status.i, align 4, !annotation !196
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %class.i) #7
  %166 = ptrtoint ptr %class.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 -1, ptr %class.i, align 4, !annotation !196
  %167 = ptrtoint ptr %ep_is_internal.i123 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %ep_is_internal.i123, align 4, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool.not.i157 = icmp eq i8 %168, 0
  br i1 %tobool.not.i157, label %if.end.i161, label %if.end34.if.end41_crit_edge

if.end34.if.end41_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.end.i161:                                      ; preds = %if.end34
  %169 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %reg_offsets.i, align 4
  %arrayidx.i.i.i159 = getelementptr i16, ptr %170, i32 31
  %171 = ptrtoint ptr %arrayidx.i.i.i159 to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %arrayidx.i.i.i159, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %172)
  %cmp.i.i.i160 = icmp eq i16 %172, -1
  br i1 %cmp.i.i.i160, label %if.end.i161.do.end.i166_crit_edge, label %iproc_pcie_read_reg.exit.i165

if.end.i161.do.end.i166_crit_edge:                ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i166

iproc_pcie_read_reg.exit.i165:                    ; preds = %if.end.i161
  %base.i.i162 = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 3
  %173 = ptrtoint ptr %base.i.i162 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %base.i.i162, align 4
  %conv.i.i163 = zext i16 %172 to i32
  %add.ptr.i.i164 = getelementptr i8, ptr %174, i32 %conv.i.i163
  %175 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i164) #7, !srcloc !192
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  %176 = and i32 %175, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 201326592, i32 %176)
  %.not.i = icmp eq i32 %176, 201326592
  br i1 %.not.i, label %if.end6.i, label %iproc_pcie_read_reg.exit.i165.do.end.i166_crit_edge

iproc_pcie_read_reg.exit.i165.do.end.i166_crit_edge: ; preds = %iproc_pcie_read_reg.exit.i165
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i166

do.end.i166:                                      ; preds = %iproc_pcie_read_reg.exit.i165.do.end.i166_crit_edge, %if.end.i161.do.end.i166_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %163, ptr noundef nonnull @.str.62) #10
  br label %do.end40

if.end6.i:                                        ; preds = %iproc_pcie_read_reg.exit.i165
  %177 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %reg_offsets.i, align 4
  %arrayidx.i.i.i.i.i167 = getelementptr i16, ptr %178, i32 7
  %179 = ptrtoint ptr %arrayidx.i.i.i.i.i167 to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %arrayidx.i.i.i.i.i167, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %180)
  %cmp.i.i.i.i.i168 = icmp eq i16 %180, -1
  br i1 %cmp.i.i.i.i.i168, label %if.end6.i.iproc_pcie_write_reg.exit.i.i.i_crit_edge, label %do.body.i.i.i.i

if.end6.i.iproc_pcie_write_reg.exit.i.i.i_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_write_reg.exit.i.i.i

do.body.i.i.i.i:                                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !194
  call void @arm_heavy_mb() #7
  %181 = ptrtoint ptr %base.i.i162 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %base.i.i162, align 4
  %conv.i.i.i.i169 = zext i16 %180 to i32
  %add.ptr.i.i.i.i170 = getelementptr i8, ptr %182, i32 %conv.i.i.i.i169
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i170, i32 201326592) #7, !srcloc !195
  br label %iproc_pcie_write_reg.exit.i.i.i

iproc_pcie_write_reg.exit.i.i.i:                  ; preds = %do.body.i.i.i.i, %if.end6.i.iproc_pcie_write_reg.exit.i.i.i_crit_edge
  %183 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %reg_offsets.i, align 4
  %arrayidx.i.i.i.i = getelementptr i16, ptr %184, i32 8
  %185 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %arrayidx.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %186)
  %cmp.i.i.i.i = icmp eq i16 %186, -1
  br i1 %cmp.i.i.i.i, label %iproc_pcie_write_reg.exit.i.i.i.do.end12.i_crit_edge, label %iproc_pcie_map_cfg_bus.exit.i.i

iproc_pcie_write_reg.exit.i.i.i.do.end12.i_crit_edge: ; preds = %iproc_pcie_write_reg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i

iproc_pcie_map_cfg_bus.exit.i.i:                  ; preds = %iproc_pcie_write_reg.exit.i.i.i
  %187 = ptrtoint ptr %base.i.i162 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %base.i.i162, align 4
  %conv.i18.i.i.i = zext i16 %186 to i32
  %add.ptr.i19.i.i.i = getelementptr i8, ptr %188, i32 %conv.i18.i.i.i
  %tobool.not.i.i171 = icmp eq ptr %add.ptr.i19.i.i.i, null
  br i1 %tobool.not.i.i171, label %iproc_pcie_map_cfg_bus.exit.i.i.do.end12.i_crit_edge, label %iproc_pci_raw_config_read32.exit.i

iproc_pcie_map_cfg_bus.exit.i.i.do.end12.i_crit_edge: ; preds = %iproc_pcie_map_cfg_bus.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i

iproc_pci_raw_config_read32.exit.i:               ; preds = %iproc_pcie_map_cfg_bus.exit.i.i
  %189 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %add.ptr.i19.i.i.i) #7, !srcloc !192
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  %190 = lshr i32 %189, 8
  %and6.i.i = and i32 %190, 255
  %191 = and i32 %189, 32512
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %191)
  %cmp.not.i172 = icmp eq i32 %191, 256
  br i1 %cmp.not.i172, label %if.end13.i, label %iproc_pci_raw_config_read32.exit.i.do.end12.i_crit_edge

iproc_pci_raw_config_read32.exit.i.do.end12.i_crit_edge: ; preds = %iproc_pci_raw_config_read32.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i

do.end12.i:                                       ; preds = %iproc_pci_raw_config_read32.exit.i.do.end12.i_crit_edge, %iproc_pcie_map_cfg_bus.exit.i.i.do.end12.i_crit_edge, %iproc_pcie_write_reg.exit.i.i.i.do.end12.i_crit_edge
  %hdr_type.076.i = phi i32 [ %and6.i.i, %iproc_pci_raw_config_read32.exit.i.do.end12.i_crit_edge ], [ -1, %iproc_pcie_write_reg.exit.i.i.i.do.end12.i_crit_edge ], [ -1, %iproc_pcie_map_cfg_bus.exit.i.i.do.end12.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %163, ptr noundef nonnull @.str.65, i32 noundef %hdr_type.076.i) #10
  br label %do.end40

if.end13.i:                                       ; preds = %iproc_pci_raw_config_read32.exit.i
  call fastcc void @iproc_pci_raw_config_read32(ptr noundef %pcie, i32 noundef 1084, i32 noundef 4, ptr noundef nonnull %class.i) #7
  %192 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %class.i, align 4
  %and15.i = and i32 %193, -16776961
  %or.i = or i32 %and15.i, 394240
  call fastcc void @iproc_pci_raw_config_write32(ptr noundef %pcie, i32 noundef 1084, i32 noundef %or.i) #7
  call fastcc void @iproc_pci_raw_config_read32(ptr noundef %pcie, i32 noundef 190, i32 noundef 2, ptr noundef nonnull %link_status.i) #7
  %194 = ptrtoint ptr %link_status.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %link_status.i, align 4
  %and18.i = and i32 %195, 1008
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  %196 = xor i1 %tobool19.not.i, true
  br i1 %tobool19.not.i, label %if.then23.i, label %if.end13.i.do.end40.thread.i_crit_edge

if.end13.i.do.end40.thread.i_crit_edge:           ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end40.thread.i

if.then23.i:                                      ; preds = %if.end13.i
  call fastcc void @iproc_pci_raw_config_read32(ptr noundef %pcie, i32 noundef 220, i32 noundef 4, ptr noundef nonnull %link_ctrl.i) #7
  %197 = ptrtoint ptr %link_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %link_ctrl.i, align 4
  %and25.i = and i32 %198, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and25.i)
  %cmp26.i = icmp eq i32 %and25.i, 2
  br i1 %cmp26.i, label %do.end40.i, label %if.then23.i..thread.i_crit_edge

if.then23.i..thread.i_crit_edge:                  ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %.thread.i

do.end40.i:                                       ; preds = %if.then23.i
  %and28.i = and i32 %198, -16
  %or29.i = or i32 %and28.i, 1
  call fastcc void @iproc_pci_raw_config_write32(ptr noundef %pcie, i32 noundef 220, i32 noundef %or29.i) #7
  call void @msleep(i32 noundef 100) #7
  call fastcc void @iproc_pci_raw_config_read32(ptr noundef %pcie, i32 noundef 190, i32 noundef 2, ptr noundef nonnull %link_status.i) #7
  %199 = ptrtoint ptr %link_status.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %link_status.i, align 4
  %and32.i = and i32 %200, 1008
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp ne i32 %and32.i, 0
  %spec.select.i173 = select i1 %tobool33.not.i, i1 true, i1 %196
  br i1 %spec.select.i173, label %do.end40.i.do.end40.thread.i_crit_edge, label %do.end40.i..thread.i_crit_edge

do.end40.i..thread.i_crit_edge:                   ; preds = %do.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %.thread.i

do.end40.i.do.end40.thread.i_crit_edge:           ; preds = %do.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end40.thread.i

.thread.i:                                        ; preds = %do.end40.i..thread.i_crit_edge, %if.then23.i..thread.i_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %163, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.71) #10
  br label %do.end40

do.end40.thread.i:                                ; preds = %do.end40.i.do.end40.thread.i_crit_edge, %if.end13.i.do.end40.thread.i_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %163, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.70) #10
  br label %if.end41

do.end40:                                         ; preds = %.thread.i, %do.end12.i, %do.end.i166
  %retval.0.i174.ph = phi i32 [ -19, %.thread.i ], [ -19, %do.end.i166 ], [ -14, %do.end12.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %class.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_status.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_ctrl.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.15) #10
  br label %err_power_off_phy

if.end41:                                         ; preds = %do.end40.thread.i, %if.end34.if.end41_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %class.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_status.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_ctrl.i) #7
  %201 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %reg_offsets.i, align 4
  %arrayidx.i.i.i177 = getelementptr i16, ptr %202, i32 11
  %203 = ptrtoint ptr %arrayidx.i.i.i177 to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %arrayidx.i.i.i177, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %204)
  %cmp.i.i.i178 = icmp eq i16 %204, -1
  br i1 %cmp.i.i.i178, label %if.end41.iproc_pcie_enable.exit_crit_edge, label %do.body.i.i182

if.end41.iproc_pcie_enable.exit_crit_edge:        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_enable.exit

do.body.i.i182:                                   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !194
  call void @arm_heavy_mb() #7
  %base.i.i179 = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 3
  %205 = ptrtoint ptr %base.i.i179 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %base.i.i179, align 4
  %conv.i.i180 = zext i16 %204 to i32
  %add.ptr.i.i181 = getelementptr i8, ptr %206, i32 %conv.i.i180
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i181, i32 251658240) #7, !srcloc !195
  br label %iproc_pcie_enable.exit

iproc_pcie_enable.exit:                           ; preds = %do.body.i.i182, %if.end41.iproc_pcie_enable.exit_crit_edge
  %207 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %pcie, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %208, i32 0, i32 27
  %209 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #7
  %211 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %210, ptr noundef nonnull @.str.72, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i184 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i184, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %iproc_pcie_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  br label %if.then.i187

of_parse_phandle.exit.i:                          ; preds = %iproc_pcie_enable.exit
  %212 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  %tobool.not.i185 = icmp eq ptr %213, null
  br i1 %tobool.not.i185, label %of_parse_phandle.exit.i.if.then.i187_crit_edge, label %of_parse_phandle.exit.i.if.end13.i191_crit_edge

of_parse_phandle.exit.i.if.end13.i191_crit_edge:  ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i191

of_parse_phandle.exit.i.if.then.i187_crit_edge:   ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i187

if.then.i187:                                     ; preds = %of_parse_phandle.exit.i.if.then.i187_crit_edge, %of_parse_phandle.exit.thread.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #7
  %214 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 -1, ptr %len.i, align 4, !annotation !196
  %215 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %pcie, align 4
  %of_node2.i = getelementptr inbounds %struct.device, ptr %216, i32 0, i32 27
  %217 = ptrtoint ptr %of_node2.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %of_node2.i, align 8
  %call3.i186 = call ptr @of_get_property(ptr noundef %218, ptr noundef nonnull @.str.73, ptr noundef nonnull %len.i) #7
  %tobool4.not.i = icmp eq ptr %call3.i186, null
  br i1 %tobool4.not.i, label %cleanup.thread.i, label %cleanup.i189

cleanup.thread.i:                                 ; preds = %if.then.i187
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #7
  br label %do.end47

cleanup.i189:                                     ; preds = %if.then.i187
  %add.ptr.i188 = getelementptr i32, ptr %call3.i186, i32 1
  %219 = ptrtoint ptr %add.ptr.i188 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %add.ptr.i188, align 4
  %call7.i = call ptr @of_find_node_by_phandle(i32 noundef %220) #7
  %tobool8.not.not.i = icmp eq ptr %call7.i, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #7
  br i1 %tobool8.not.not.i, label %cleanup.i189.do.end47_crit_edge, label %cleanup.i189.if.end13.i191_crit_edge

cleanup.i189.if.end13.i191_crit_edge:             ; preds = %cleanup.i189
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i191

cleanup.i189.do.end47_crit_edge:                  ; preds = %cleanup.i189
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end47

if.end13.i191:                                    ; preds = %cleanup.i189.if.end13.i191_crit_edge, %of_parse_phandle.exit.i.if.end13.i191_crit_edge
  %msi_node.1.i = phi ptr [ %213, %of_parse_phandle.exit.i.if.end13.i191_crit_edge ], [ %call7.i, %cleanup.i189.if.end13.i191_crit_edge ]
  %need_msi_steer.i190 = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 19
  %221 = ptrtoint ptr %need_msi_steer.i190 to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %need_msi_steer.i190, align 4, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %222)
  %tobool14.not.i = icmp eq i8 %222, 0
  br i1 %tobool14.not.i, label %if.end13.i191.iproc_pcie_msi_enable.exit_crit_edge, label %if.then15.i

if.end13.i191.iproc_pcie_msi_enable.exit_crit_edge: ; preds = %if.end13.i191
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_msi_enable.exit

if.then15.i:                                      ; preds = %if.end13.i191
  %223 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %pcie, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i.i.i) #7
  %225 = call ptr @memset(ptr %res.i.i.i, i32 255, i32 32)
  %call.i.i.i = call i32 @of_device_is_compatible(ptr noundef nonnull %msi_node.1.i, ptr noundef nonnull @.str.76) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then15.i.do.end.i.i193_crit_edge, label %if.end.i.i.i

if.then15.i.do.end.i.i193_crit_edge:              ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i193

if.end.i.i.i:                                     ; preds = %if.then15.i
  %call2.i.i.i = call i32 @of_address_to_resource(ptr noundef nonnull %msi_node.1.i, i32 noundef 0, ptr noundef nonnull %res.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %cmp.i.i.i192 = icmp slt i32 %call2.i.i.i, 0
  br i1 %cmp.i.i.i192, label %if.end.i.i.i.do.end.i.i193_crit_edge, label %if.end.i34.i

if.end.i.i.i.do.end.i.i193_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i193

do.end.i.i193:                                    ; preds = %if.end.i.i.i.do.end.i.i193_crit_edge, %if.then15.i.do.end.i.i193_crit_edge
  %.str.80.sink.i = phi ptr [ @.str.77, %if.then15.i.do.end.i.i193_crit_edge ], [ @.str.80, %if.end.i.i.i.do.end.i.i193_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %224, ptr noundef nonnull %.str.80.sink.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i.i.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %224, ptr noundef nonnull @.str.74) #10
  br label %iproc_pcie_msi_enable.exit.thread212

if.end.i34.i:                                     ; preds = %if.end.i.i.i
  %226 = ptrtoint ptr %res.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %res.i.i.i, align 4
  %add.i.i.i194 = add i32 %227, 65600
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i.i.i) #7
  %228 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %type.i, align 4
  %230 = zext i32 %229 to i64
  call void @__sanitizer_cov_trace_switch(i64 %230, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %229, label %if.end.i34.i.iproc_pcie_msi_enable.exit.thread212_crit_edge [
    i32 2, label %sw.bb.i.i
    i32 4, label %sw.bb5.i.i
  ]

if.end.i34.i.iproc_pcie_msi_enable.exit.thread212_crit_edge: ; preds = %if.end.i34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_msi_enable.exit.thread212

sw.bb.i.i:                                        ; preds = %if.end.i34.i
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %entry1.i.i.i) #7
  %231 = call ptr @memset(ptr %entry1.i.i.i, i32 0, i32 48)
  %__res.i.i.i = getelementptr inbounds %struct.resource_entry, ptr %entry1.i.i.i, i32 0, i32 3
  %res.i15.i.i = getelementptr inbounds %struct.resource_entry, ptr %entry1.i.i.i, i32 0, i32 1
  %232 = ptrtoint ptr %res.i15.i.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %__res.i.i.i, ptr %res.i15.i.i, align 4
  %conv.i16.i.i = and i32 %add.i.i.i194, -32768
  %233 = ptrtoint ptr %__res.i.i.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %conv.i16.i.i, ptr %__res.i.i.i, align 4
  %conv3.i.i.i = or i32 %add.i.i.i194, 32767
  %end.i.i.i = getelementptr inbounds %struct.resource_entry, ptr %entry1.i.i.i, i32 0, i32 3, i32 1
  %234 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %conv3.i.i.i, ptr %end.i.i.i, align 4
  %call.i17.i.i = call fastcc i32 @iproc_pcie_setup_ib(ptr noundef %pcie, ptr noundef nonnull %entry1.i.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %entry1.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i.i)
  %tobool.not.i35.i = icmp eq i32 %call.i17.i.i, 0
  br i1 %tobool.not.i35.i, label %sw.bb.i.i.iproc_pcie_msi_enable.exit_crit_edge, label %sw.bb.i.i.iproc_pcie_msi_enable.exit.thread212_crit_edge

sw.bb.i.i.iproc_pcie_msi_enable.exit.thread212_crit_edge: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_msi_enable.exit.thread212

sw.bb.i.i.iproc_pcie_msi_enable.exit_crit_edge:   ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_msi_enable.exit

sw.bb5.i.i:                                       ; preds = %if.end.i34.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i = zext i32 %add.i.i.i194 to i64
  call fastcc void @iproc_pcie_paxc_v2_msi_steer(ptr noundef %pcie, i64 noundef %conv.i.i.i, i1 noundef zeroext true) #7
  br label %iproc_pcie_msi_enable.exit

iproc_pcie_msi_enable.exit.thread212:             ; preds = %sw.bb.i.i.iproc_pcie_msi_enable.exit.thread212_crit_edge, %if.end.i34.i.iproc_pcie_msi_enable.exit.thread212_crit_edge, %do.end.i.i193
  call void @of_node_put(ptr noundef nonnull %msi_node.1.i) #7
  br label %do.end47

iproc_pcie_msi_enable.exit:                       ; preds = %sw.bb5.i.i, %sw.bb.i.i.iproc_pcie_msi_enable.exit_crit_edge, %if.end13.i191.iproc_pcie_msi_enable.exit_crit_edge
  %call21.i = call i32 @iproc_msi_init(ptr noundef %pcie, ptr noundef nonnull %msi_node.1.i) #7
  call void @of_node_put(ptr noundef nonnull %msi_node.1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool43.not = icmp eq i32 %call21.i, 0
  br i1 %tobool43.not, label %iproc_pcie_msi_enable.exit.if.end48_crit_edge, label %iproc_pcie_msi_enable.exit.do.end47_crit_edge

iproc_pcie_msi_enable.exit.do.end47_crit_edge:    ; preds = %iproc_pcie_msi_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end47

iproc_pcie_msi_enable.exit.if.end48_crit_edge:    ; preds = %iproc_pcie_msi_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

do.end47:                                         ; preds = %iproc_pcie_msi_enable.exit.do.end47_crit_edge, %iproc_pcie_msi_enable.exit.thread212, %cleanup.i189.do.end47_crit_edge, %cleanup.thread.i
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.18) #10
  br label %if.end48

if.end48:                                         ; preds = %do.end47, %iproc_pcie_msi_enable.exit.if.end48_crit_edge
  %ops = getelementptr i8, ptr %pcie, i32 -92
  %235 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr @iproc_pcie_ops, ptr %ops, align 4
  %sysdata = getelementptr i8, ptr %pcie, i32 -84
  %236 = ptrtoint ptr %sysdata to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr %pcie, ptr %sysdata, align 4
  %map_irq = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 7
  %237 = ptrtoint ptr %map_irq to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %map_irq, align 4
  %map_irq49 = getelementptr i8, ptr %pcie, i32 -52
  %239 = ptrtoint ptr %map_irq49 to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr %238, ptr %map_irq49, align 4
  %call50 = call i32 @pci_host_probe(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %do.end55, label %if.end56

do.end55:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef %call50) #10
  br label %err_power_off_phy

if.end56:                                         ; preds = %if.end48
  %bus = getelementptr i8, ptr %pcie, i32 -96
  %240 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %bus, align 32
  %devices = getelementptr inbounds %struct.pci_bus, ptr %241, i32 0, i32 3
  %242 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %242)
  %pdev.0227 = load ptr, ptr %devices, align 4
  %cmp59.not229 = icmp eq ptr %pdev.0227, %devices
  br i1 %cmp59.not229, label %if.end56.cleanup_crit_edge, label %if.end56.for.body_crit_edge

if.end56.for.body_crit_edge:                      ; preds = %if.end56
  br label %for.body

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end56.for.body_crit_edge
  %pdev.0230 = phi ptr [ %pdev.0, %for.inc.for.body_crit_edge ], [ %pdev.0227, %if.end56.for.body_crit_edge ]
  %hdr_type.i = getelementptr inbounds %struct.pci_dev, ptr %pdev.0230, i32 0, i32 13
  %243 = ptrtoint ptr %hdr_type.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %hdr_type.i, align 1
  %245 = add i8 %244, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %245)
  %246 = icmp ult i8 %245, 2
  br i1 %246, label %if.else, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.else:                                          ; preds = %for.body
  %pcie_flags_reg.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev.0230, i32 0, i32 25
  %247 = ptrtoint ptr %pcie_flags_reg.i.i to i32
  call void @__asan_load2_noabort(i32 %247)
  %248 = load i16, ptr %pcie_flags_reg.i.i, align 2
  %249 = and i16 %248, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %249)
  %cmp63 = icmp eq i16 %249, 64
  br i1 %cmp63, label %if.then64, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then64:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @pcie_print_link_status(ptr noundef %pdev.0230) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then64, %if.else.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %250 = ptrtoint ptr %pdev.0230 to i32
  call void @__asan_load4_noabort(i32 %250)
  %pdev.0 = load ptr, ptr %pdev.0230, align 4
  %251 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %bus, align 32
  %devices58 = getelementptr inbounds %struct.pci_bus, ptr %252, i32 0, i32 3
  %cmp59.not = icmp eq ptr %pdev.0, %devices58
  br i1 %cmp59.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_power_off_phy:                                ; preds = %do.end55, %do.end40, %for.body.i155.err_power_off_phy_crit_edge, %do.end25
  %ret.0 = phi i32 [ %retval.2.i.ph, %do.end25 ], [ %retval.0.i174.ph, %do.end40 ], [ %call50, %do.end55 ], [ %call3.i, %for.body.i155.err_power_off_phy_crit_edge ]
  %253 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %phy, align 4
  %call73 = call i32 @phy_power_off(ptr noundef %254) #7
  br label %err_exit_phy

err_exit_phy:                                     ; preds = %err_power_off_phy, %do.end16
  %ret.1 = phi i32 [ %call11, %do.end16 ], [ %ret.0, %err_power_off_phy ]
  %255 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %phy, align 4
  %call75 = call i32 @phy_exit(ptr noundef %256) #7
  br label %cleanup

cleanup:                                          ; preds = %err_exit_phy, %for.inc.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %do.end8, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %call3, %do.end8 ], [ %ret.1, %err_exit_phy ], [ 0, %if.end56.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_host_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcie_print_link_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iproc_pcie_remove(ptr noundef %pcie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr i8, ptr %pcie, i32 -96
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 32
  tail call void @pci_stop_root_bus(ptr noundef %1) #7
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 32
  tail call void @pci_remove_root_bus(ptr noundef %3) #7
  tail call void @iproc_msi_exit(ptr noundef %pcie) #7
  %phy = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 6
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 4
  %call2 = tail call i32 @phy_power_off(ptr noundef %5) #7
  %6 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy, align 4
  %call4 = tail call i32 @phy_exit(ptr noundef %7) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_stop_root_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_remove_root_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @quirk_paxc_disable_msi_parsing(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %sysdata.i = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %sysdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sysdata.i, align 4
  %hdr_type = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 13
  %4 = ptrtoint ptr %hdr_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hdr_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %reg_offsets.i.i33.i = getelementptr inbounds %struct.iproc_pcie, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %reg_offsets.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_offsets.i.i33.i, align 4
  %arrayidx.i.i.i = getelementptr i16, ptr %7, i32 6
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %9)
  %cmp.i.i.i = icmp eq i16 %9, -1
  br i1 %cmp.i.i.i, label %if.then.iproc_pcie_read_reg.exit.i_crit_edge, label %if.end.i.i

if.then.iproc_pcie_read_reg.exit.i_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_read_reg.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %base.i.i = getelementptr inbounds %struct.iproc_pcie, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i, align 4
  %conv.i.i = zext i16 %9 to i32
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %conv.i.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  %13 = and i32 %12, -16777217
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  br label %iproc_pcie_read_reg.exit.i

iproc_pcie_read_reg.exit.i:                       ; preds = %if.end.i.i, %if.then.iproc_pcie_read_reg.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %14, %if.end.i.i ], [ 0, %if.then.iproc_pcie_read_reg.exit.i_crit_edge ]
  %15 = ptrtoint ptr %reg_offsets.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_offsets.i.i33.i, align 4
  %arrayidx.i.i28.i = getelementptr i16, ptr %16, i32 6
  %17 = ptrtoint ptr %arrayidx.i.i28.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx.i.i28.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %18)
  %cmp.i.i29.i = icmp eq i16 %18, -1
  br i1 %cmp.i.i29.i, label %iproc_pcie_read_reg.exit.i.if.end_crit_edge, label %do.body.i.i

iproc_pcie_read_reg.exit.i.if.end_crit_edge:      ; preds = %iproc_pcie_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body.i.i:                                      ; preds = %iproc_pcie_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !194
  tail call void @arm_heavy_mb() #7
  %19 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i) #7
  %base.i30.i = getelementptr inbounds %struct.iproc_pcie, ptr %3, i32 0, i32 3
  %20 = ptrtoint ptr %base.i30.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i30.i, align 4
  %conv.i31.i = zext i16 %18 to i32
  %add.ptr.i32.i = getelementptr i8, ptr %21, i32 %conv.i31.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 %19) #7, !srcloc !195
  br label %if.end

if.end:                                           ; preds = %do.body.i.i, %iproc_pcie_read_reg.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @quirk_paxc_bridge(ptr nocapture noundef %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hdr_type = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 13
  %0 = ptrtoint ptr %hdr_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hdr_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %class = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 11
  %2 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 394240, ptr %class, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pcie_mpss = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 22
  %3 = ptrtoint ptr %pcie_mpss to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %pcie_mpss, align 1
  %bf.clear = and i8 %bf.load, 31
  %bf.set = or i8 %bf.clear, 64
  store i8 %bf.set, ptr %pcie_mpss, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iproc_pcie_ob_write(ptr nocapture noundef readonly %pcie, i32 noundef %window_idx, i32 noundef %size_idx, i64 noundef %axi_addr, i64 noundef %pci_addr) unnamed_addr #6 align 64 {
entry:
  %axi_addr.addr = alloca i64, align 8
  %pci_addr.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %axi_addr.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %axi_addr, ptr %axi_addr.addr, align 8
  %1 = ptrtoint ptr %pci_addr.addr to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %pci_addr, ptr %pci_addr.addr, align 8
  %2 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie, align 4
  %mul = shl i32 %window_idx, 1
  %add = add i32 %mul, 12
  %reg_offsets.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 2
  %4 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_offsets.i, align 4
  %arrayidx.i = getelementptr i16, ptr %5, i32 %add
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i, align 2
  %add3 = add i32 %mul, 13
  %arrayidx.i146 = getelementptr i16, ptr %5, i32 %add3
  %8 = ptrtoint ptr %arrayidx.i146 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.i146, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %cmp.i = icmp eq i16 %7, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %9)
  %cmp.i147 = icmp eq i16 %9, -1
  %or.cond = select i1 %cmp.i, i1 true, i1 %cmp.i147
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !198
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %axi_addr.addr to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %axi_addr.addr, align 8
  %conv = trunc i64 %11 to i32
  %shl = shl i32 %size_idx, 1
  %or = or i32 %shl, %conv
  %or7 = or i32 %or, 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %or7)
  %base = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 3
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %conv8 = zext i16 %7 to i32
  %add.ptr = getelementptr i8, ptr %14, i32 %conv8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #7, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !199
  tail call void @arm_heavy_mb() #7
  %shr = lshr i64 %11, 32
  %conv13 = trunc i64 %shr to i32
  %15 = tail call i32 @llvm.bswap.i32(i32 %conv13)
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr16 = getelementptr i8, ptr %17, i32 %conv8
  %add.ptr17 = getelementptr i8, ptr %add.ptr16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %15) #7, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !200
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %pci_addr.addr to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %pci_addr.addr, align 8
  %conv22 = trunc i64 %19 to i32
  %20 = tail call i32 @llvm.bswap.i32(i32 %conv22)
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 4
  %conv24 = zext i16 %9 to i32
  %add.ptr25 = getelementptr i8, ptr %22, i32 %conv24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %20) #7, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %shr29 = lshr i64 %19, 32
  %conv31 = trunc i64 %shr29 to i32
  %23 = tail call i32 @llvm.bswap.i32(i32 %conv31)
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %add.ptr34 = getelementptr i8, ptr %25, i32 %conv24
  %add.ptr35 = getelementptr i8, ptr %add.ptr34, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %23) #7, !srcloc !195
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iproc_pcie_ob_write.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@iproc_pcie_ob_write, %do.body46)) #7
          to label %if.then41 [label %do.body46], !srcloc !202

if.then41:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iproc_pcie_ob_write.__UNIQUE_ID_ddebug293, ptr noundef %3, ptr noundef nonnull @.str.48, i32 noundef %window_idx, i32 noundef %conv8, ptr noundef nonnull %axi_addr.addr, ptr noundef nonnull %pci_addr.addr) #7
  br label %do.body46

do.body46:                                        ; preds = %if.then41, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iproc_pcie_ob_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@iproc_pcie_ob_write, %do.body79)) #7
          to label %if.then60 [label %do.body79], !srcloc !202

if.then60:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add.ptr63 = getelementptr i8, ptr %27, i32 %conv8
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr63) #7, !srcloc !192
  %29 = call i32 @llvm.bswap.i32(i32 %28)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 4
  %add.ptr71 = getelementptr i8, ptr %31, i32 %conv8
  %add.ptr72 = getelementptr i8, ptr %add.ptr71, i32 4
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr72) #7, !srcloc !192
  %33 = call i32 @llvm.bswap.i32(i32 %32)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !204
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iproc_pcie_ob_write.__UNIQUE_ID_ddebug294, ptr noundef %3, ptr noundef nonnull @.str.49, i32 noundef %29, i32 noundef %33) #7
  br label %do.body79

do.body79:                                        ; preds = %if.then60, %do.body46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iproc_pcie_ob_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@iproc_pcie_ob_write, %cleanup)) #7
          to label %if.then93 [label %cleanup], !srcloc !202

if.then93:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base, align 4
  %add.ptr98 = getelementptr i8, ptr %35, i32 %conv24
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr98) #7, !srcloc !192
  %37 = call i32 @llvm.bswap.i32(i32 %36)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !205
  %38 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base, align 4
  %add.ptr106 = getelementptr i8, ptr %39, i32 %conv24
  %add.ptr107 = getelementptr i8, ptr %add.ptr106, i32 4
  %40 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr107) #7, !srcloc !192
  %41 = call i32 @llvm.bswap.i32(i32 %40)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iproc_pcie_ob_write.__UNIQUE_ID_ddebug295, ptr noundef %3, ptr noundef nonnull @.str.50, i32 noundef %37, i32 noundef %41) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then93, %do.body79, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then93 ], [ 0, %do.body79 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iproc_pcie_setup_ib(ptr nocapture noundef readonly %pcie, ptr nocapture noundef readonly %entry1, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  %axi_addr = alloca i64, align 8
  %pci_addr = alloca i64, align 8
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie, align 4
  %ib3 = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %axi_addr) #7
  %res = getelementptr inbounds %struct.resource_entry, ptr %entry1, i32 0, i32 1
  %2 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %conv = zext i32 %5 to i64
  %6 = ptrtoint ptr %axi_addr to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv, ptr %axi_addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pci_addr) #7
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %3, align 4
  %offset = getelementptr inbounds %struct.resource_entry, ptr %entry1, i32 0, i32 2
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset, align 4
  %sub = sub i32 %8, %10
  %conv6 = zext i32 %sub to i64
  %11 = ptrtoint ptr %pci_addr to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv6, ptr %pci_addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #7
  %end.i = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %end.i, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %3, align 4
  %sub.i = add i32 %13, 1
  %add.i = sub i32 %sub.i, %15
  %16 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add.i, ptr %size, align 4
  %17 = ptrtoint ptr %ib3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ib3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp99.not = icmp eq i32 %18, 0
  br i1 %cmp99.not, label %entry.do.end43_crit_edge, label %for.body.lr.ph

entry.do.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end43

for.body.lr.ph:                                   ; preds = %entry
  %ib_map9 = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 18
  %reg_offsets.i.i.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 2
  %base.i.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc38.for.body_crit_edge, %for.body.lr.ph
  %region_idx.0100 = phi i32 [ 0, %for.body.lr.ph ], [ %inc39, %for.inc38.for.body_crit_edge ]
  %19 = ptrtoint ptr %ib_map9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ib_map9, align 4
  %mul.i = shl i32 %region_idx.0100, 1
  %add.i79 = add i32 %mul.i, 20
  %21 = ptrtoint ptr %reg_offsets.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_offsets.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i16, ptr %22, i32 %add.i79
  %23 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %24)
  %cmp.i.i.i = icmp eq i16 %24, -1
  br i1 %cmp.i.i.i, label %for.body.iproc_pcie_ib_is_in_use.exit_crit_edge, label %if.end.i.i

for.body.iproc_pcie_ib_is_in_use.exit_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_ib_is_in_use.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i, align 4
  %conv.i.i = zext i16 %24 to i32
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 %conv.i.i
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !192
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  br label %iproc_pcie_ib_is_in_use.exit

iproc_pcie_ib_is_in_use.exit:                     ; preds = %if.end.i.i, %for.body.iproc_pcie_ib_is_in_use.exit_crit_edge
  %retval.0.i.i = phi i32 [ %28, %if.end.i.i ], [ 0, %for.body.iproc_pcie_ib_is_in_use.exit_crit_edge ]
  %nr_sizes.i = getelementptr %struct.iproc_pcie_ib_map, ptr %20, i32 %region_idx.0100, i32 3
  %29 = ptrtoint ptr %nr_sizes.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr_sizes.i, align 4
  %notmask.i = shl nsw i32 -1, %30
  %sub.i80 = xor i32 %notmask.i, -1
  %and.i = and i32 %retval.0.i.i, %sub.i80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false, label %iproc_pcie_ib_is_in_use.exit.for.inc38_crit_edge

iproc_pcie_ib_is_in_use.exit.for.inc38_crit_edge: ; preds = %iproc_pcie_ib_is_in_use.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc38

lor.lhs.false:                                    ; preds = %iproc_pcie_ib_is_in_use.exit
  %arrayidx = getelementptr %struct.iproc_pcie_ib_map, ptr %20, i32 %region_idx.0100
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %type)
  %cmp.i = icmp eq i32 %32, %type
  br i1 %cmp.i, label %for.cond13.preheader, label %lor.lhs.false.for.inc38_crit_edge

lor.lhs.false.for.inc38_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc38

for.cond13.preheader:                             ; preds = %lor.lhs.false
  %33 = ptrtoint ptr %nr_sizes.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr_sizes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp1497.not = icmp eq i32 %34, 0
  br i1 %cmp1497.not, label %for.cond13.preheader.for.inc38_crit_edge, label %for.body16.lr.ph

for.cond13.preheader.for.inc38_crit_edge:         ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc38

for.body16.lr.ph:                                 ; preds = %for.cond13.preheader
  %size_unit = getelementptr %struct.iproc_pcie_ib_map, ptr %20, i32 %region_idx.0100, i32 1
  %35 = ptrtoint ptr %size_unit to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size_unit, align 4
  %37 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size, align 4
  br label %for.body16

for.body16:                                       ; preds = %for.inc.for.body16_crit_edge, %for.body16.lr.ph
  %size_idx.098 = phi i32 [ 0, %for.body16.lr.ph ], [ %inc, %for.inc.for.body16_crit_edge ]
  %arrayidx17 = getelementptr %struct.iproc_pcie_ib_map, ptr %20, i32 %region_idx.0100, i32 2, i32 %size_idx.098
  %39 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx17, align 4
  %mul = mul i32 %36, %40
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %mul)
  %cmp18.not = icmp eq i32 %38, %mul
  br i1 %cmp18.not, label %if.end21, label %for.inc

if.end21:                                         ; preds = %for.body16
  %41 = ptrtoint ptr %axi_addr to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %axi_addr, align 8
  %conv22 = zext i32 %38 to i64
  %sub23 = add nsw i64 %conv22, -1
  %and = and i64 %42, %sub23
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp24 = icmp eq i64 %and, 0
  br i1 %cmp24, label %lor.lhs.false26, label %if.end21.do.end_crit_edge

if.end21.do.end_crit_edge:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false26:                                  ; preds = %if.end21
  %43 = ptrtoint ptr %pci_addr to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %pci_addr, align 8
  %and29 = and i64 %44, %sub23
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and29)
  %cmp30 = icmp eq i64 %and29, 0
  br i1 %cmp30, label %if.end33, label %lor.lhs.false26.do.end_crit_edge

lor.lhs.false26.do.end_crit_edge:                 ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false26.do.end_crit_edge, %if.end21.do.end_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.38, ptr noundef nonnull %axi_addr, ptr noundef nonnull %pci_addr) #10
  br label %cleanup47

if.end33:                                         ; preds = %lor.lhs.false26
  %nr_windows = getelementptr %struct.iproc_pcie_ib_map, ptr %20, i32 %region_idx.0100, i32 4
  %45 = ptrtoint ptr %nr_windows to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nr_windows, align 4
  %call34 = tail call fastcc i32 @iproc_pcie_ib_write(ptr noundef %pcie, i32 noundef %region_idx.0100, i32 noundef %size_idx.098, i32 noundef %46, i64 noundef %42, i64 noundef %44, i32 noundef %38)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool.not = icmp eq i32 %call34, 0
  br i1 %tobool.not, label %if.end33.cleanup47_crit_edge, label %if.end33.do.end43_crit_edge

if.end33.do.end43_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end43

if.end33.cleanup47_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup47

for.inc:                                          ; preds = %for.body16
  %inc = add nuw i32 %size_idx.098, 1
  %exitcond.not = icmp eq i32 %inc, %34
  br i1 %exitcond.not, label %for.inc.for.inc38_crit_edge, label %for.inc.for.body16_crit_edge

for.inc.for.body16_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body16

for.inc.for.inc38_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc38

for.inc38:                                        ; preds = %for.inc.for.inc38_crit_edge, %for.cond13.preheader.for.inc38_crit_edge, %lor.lhs.false.for.inc38_crit_edge, %iproc_pcie_ib_is_in_use.exit.for.inc38_crit_edge
  %inc39 = add nuw i32 %region_idx.0100, 1
  %47 = ptrtoint ptr %ib3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ib3, align 4
  %cmp = icmp ult i32 %inc39, %48
  br i1 %cmp, label %for.inc38.for.body_crit_edge, label %for.inc38.do.end43_crit_edge

for.inc38.do.end43_crit_edge:                     ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end43

for.inc38.for.body_crit_edge:                     ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end43:                                         ; preds = %for.inc38.do.end43_crit_edge, %if.end33.do.end43_crit_edge, %entry.do.end43_crit_edge
  %ret.4 = phi i32 [ %call34, %if.end33.do.end43_crit_edge ], [ -22, %entry.do.end43_crit_edge ], [ -22, %for.inc38.do.end43_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.53) #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.56, ptr noundef nonnull %axi_addr, ptr noundef nonnull %pci_addr, ptr noundef nonnull %size) #10
  br label %cleanup47

cleanup47:                                        ; preds = %do.end43, %if.end33.cleanup47_crit_edge, %do.end
  %retval.4 = phi i32 [ %ret.4, %do.end43 ], [ -22, %do.end ], [ 0, %if.end33.cleanup47_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pci_addr) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %axi_addr) #7
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iproc_pcie_ib_write(ptr nocapture noundef readonly %pcie, i32 noundef %region_idx, i32 noundef %size_idx, i32 noundef %nr_windows, i64 noundef %axi_addr, i64 noundef %pci_addr, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  %axi_addr.addr = alloca i64, align 8
  %pci_addr.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %axi_addr.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %axi_addr, ptr %axi_addr.addr, align 8
  %1 = ptrtoint ptr %pci_addr.addr to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %pci_addr, ptr %pci_addr.addr, align 8
  %2 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie, align 4
  %ib_map2 = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 18
  %4 = ptrtoint ptr %ib_map2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ib_map2, align 4
  %mul = shl i32 %region_idx, 1
  %add = add i32 %mul, 20
  %reg_offsets.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 2
  %6 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_offsets.i, align 4
  %arrayidx.i = getelementptr i16, ptr %7, i32 %add
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.i, align 2
  %add4 = add i32 %mul, 21
  %arrayidx.i193 = getelementptr i16, ptr %7, i32 %add4
  %10 = ptrtoint ptr %arrayidx.i193 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.i193, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %9)
  %cmp.i = icmp eq i16 %9, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %11)
  %cmp.i194 = icmp eq i16 %11, -1
  %or.cond = select i1 %cmp.i, i1 true, i1 %cmp.i194
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iproc_pcie_ib_write.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@iproc_pcie_ib_write, %do.body14)) #7
          to label %if.then12 [label %do.body14], !srcloc !202

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %9 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iproc_pcie_ib_write.__UNIQUE_ID_ddebug296, ptr noundef %3, ptr noundef nonnull @.str.59, i32 noundef %region_idx, i32 noundef %conv, ptr noundef nonnull %axi_addr.addr, ptr noundef nonnull %pci_addr.addr) #7
  br label %do.body14

do.body14:                                        ; preds = %if.then12, %do.body
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !207
  call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %pci_addr.addr to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %pci_addr.addr, align 8
  %conv17 = trunc i64 %13 to i32
  %shl = shl nuw i32 1, %size_idx
  %or = or i32 %shl, %conv17
  %14 = call i32 @llvm.bswap.i32(i32 %or)
  %base = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 3
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %conv18 = zext i16 %9 to i32
  %add.ptr = getelementptr i8, ptr %16, i32 %conv18
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %14) #7, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %pci_addr.addr to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %pci_addr.addr, align 8
  %shr = lshr i64 %18, 32
  %conv23 = trunc i64 %shr to i32
  %19 = call i32 @llvm.bswap.i32(i32 %conv23)
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr26 = getelementptr i8, ptr %21, i32 %conv18
  %add.ptr27 = getelementptr i8, ptr %add.ptr26, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %19) #7, !srcloc !195
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iproc_pcie_ib_write.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@iproc_pcie_ib_write, %cond.false64)) #7
          to label %if.then42 [label %cond.false64], !srcloc !202

if.then42:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %add.ptr45 = getelementptr i8, ptr %23, i32 %conv18
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #7, !srcloc !192
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add.ptr53 = getelementptr i8, ptr %27, i32 %conv18
  %add.ptr54 = getelementptr i8, ptr %add.ptr53, i32 4
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #7, !srcloc !192
  %29 = call i32 @llvm.bswap.i32(i32 %28)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iproc_pcie_ib_write.__UNIQUE_ID_ddebug297, ptr noundef %3, ptr noundef nonnull @.str.60, i32 noundef %25, i32 noundef %29) #7
  br label %cond.false64

cond.false64:                                     ; preds = %if.then42, %do.body14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_windows)
  %cmp69199 = icmp sgt i32 %nr_windows, 0
  br i1 %cmp69199, label %for.body.lr.ph, label %cond.false64.cleanup_crit_edge

cond.false64.cleanup_crit_edge:                   ; preds = %cond.false64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %cond.false64
  %30 = call i32 @llvm.ctlz.i32(i32 %nr_windows, i1 true) #7, !range !211
  %sub.i.op.i = xor i32 %30, 31
  %shr68 = lshr i32 %size, %sub.i.op.i
  %imap_addr_offset = getelementptr %struct.iproc_pcie_ib_map, ptr %5, i32 %region_idx, i32 5
  %imap_window_offset = getelementptr %struct.iproc_pcie_ib_map, ptr %5, i32 %region_idx, i32 6
  %conv141 = zext i32 %shr68 to i64
  br label %for.body

for.body:                                         ; preds = %do.end136.for.body_crit_edge, %for.body.lr.ph
  %imap_offset.0202 = phi i16 [ %11, %for.body.lr.ph ], [ %add139, %do.end136.for.body_crit_edge ]
  %window_idx.0200 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end136.for.body_crit_edge ]
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base, align 4
  %conv74 = zext i16 %imap_offset.0202 to i32
  %add.ptr75 = getelementptr i8, ptr %32, i32 %conv74
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr75) #7, !srcloc !192
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !212
  %34 = ptrtoint ptr %axi_addr.addr to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %axi_addr.addr, align 8
  %conv80 = trunc i64 %35 to i32
  %36 = or i32 %33, 16777216
  %37 = call i32 @llvm.bswap.i32(i32 %36)
  %or82 = or i32 %37, %conv80
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !213
  call void @arm_heavy_mb() #7
  %38 = call i32 @llvm.bswap.i32(i32 %or82)
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base, align 4
  %add.ptr88 = getelementptr i8, ptr %40, i32 %conv74
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88, i32 %38) #7, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !214
  call void @arm_heavy_mb() #7
  %41 = ptrtoint ptr %axi_addr.addr to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %axi_addr.addr, align 8
  %shr92 = lshr i64 %42, 32
  %conv94 = trunc i64 %shr92 to i32
  %43 = call i32 @llvm.bswap.i32(i32 %conv94)
  %44 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base, align 4
  %add.ptr97 = getelementptr i8, ptr %45, i32 %conv74
  %46 = ptrtoint ptr %imap_addr_offset to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %imap_addr_offset, align 4
  %conv98 = zext i16 %47 to i32
  %add.ptr99 = getelementptr i8, ptr %add.ptr97, i32 %conv98
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99, i32 %43) #7, !srcloc !195
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iproc_pcie_ib_write.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@iproc_pcie_ib_write, %do.end136)) #7
          to label %if.then114 [label %do.end136], !srcloc !202

if.then114:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base, align 4
  %add.ptr119 = getelementptr i8, ptr %49, i32 %conv74
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr119) #7, !srcloc !192
  %51 = call i32 @llvm.bswap.i32(i32 %50)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !215
  %52 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base, align 4
  %add.ptr127 = getelementptr i8, ptr %53, i32 %conv74
  %54 = ptrtoint ptr %imap_addr_offset to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %imap_addr_offset, align 4
  %conv129 = zext i16 %55 to i32
  %add.ptr130 = getelementptr i8, ptr %add.ptr127, i32 %conv129
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr130) #7, !srcloc !192
  %57 = call i32 @llvm.bswap.i32(i32 %56)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !216
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iproc_pcie_ib_write.__UNIQUE_ID_ddebug298, ptr noundef %3, ptr noundef nonnull @.str.61, i32 noundef %window_idx.0200, i32 noundef %51, i32 noundef %57) #7
  br label %do.end136

do.end136:                                        ; preds = %if.then114, %for.body
  %58 = ptrtoint ptr %imap_window_offset to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %imap_window_offset, align 2
  %add139 = add i16 %59, %imap_offset.0202
  %60 = ptrtoint ptr %axi_addr.addr to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %axi_addr.addr, align 8
  %add142 = add i64 %61, %conv141
  store i64 %add142, ptr %axi_addr.addr, align 8
  %inc = add nuw nsw i32 %window_idx.0200, 1
  %exitcond.not = icmp eq i32 %inc, %nr_windows
  br i1 %exitcond.not, label %do.end136.cleanup_crit_edge, label %do.end136.for.body_crit_edge

do.end136.for.body_crit_edge:                     ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end136.cleanup_crit_edge:                      ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %do.end136.cleanup_crit_edge, %cond.false64.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cond.false64.cleanup_crit_edge ], [ 0, %do.end136.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iproc_pci_raw_config_read32(ptr nocapture noundef readonly %pcie, i32 noundef %where, i32 noundef %size, ptr nocapture noundef writeonly %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_offsets.i.i.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 2
  %0 = ptrtoint ptr %reg_offsets.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_offsets.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i16, ptr %1, i32 7
  %2 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %cmp.i.i.i = icmp eq i16 %3, -1
  br i1 %cmp.i.i.i, label %entry.iproc_pcie_write_reg.exit.i_crit_edge, label %do.body.i.i

entry.iproc_pcie_write_reg.exit.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_write_reg.exit.i

do.body.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and3.i = and i32 %where, 8188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !194
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %and3.i) #7
  %base.i.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 3
  %5 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %conv.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %4) #7, !srcloc !195
  br label %iproc_pcie_write_reg.exit.i

iproc_pcie_write_reg.exit.i:                      ; preds = %do.body.i.i, %entry.iproc_pcie_write_reg.exit.i_crit_edge
  %7 = ptrtoint ptr %reg_offsets.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_offsets.i.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %8, i32 8
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %10)
  %cmp.i.i = icmp eq i16 %10, -1
  br i1 %cmp.i.i, label %iproc_pcie_write_reg.exit.i.cleanup_crit_edge, label %iproc_pcie_map_cfg_bus.exit

iproc_pcie_write_reg.exit.i.cleanup_crit_edge:    ; preds = %iproc_pcie_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

iproc_pcie_map_cfg_bus.exit:                      ; preds = %iproc_pcie_write_reg.exit.i
  %base.i17.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 3
  %11 = ptrtoint ptr %base.i17.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i17.i, align 4
  %conv.i18.i = zext i16 %10 to i32
  %add.ptr.i19.i = getelementptr i8, ptr %12, i32 %conv.i18.i
  %tobool.not = icmp eq ptr %add.ptr.i19.i, null
  br i1 %tobool.not, label %iproc_pcie_map_cfg_bus.exit.cleanup_crit_edge, label %if.end

iproc_pcie_map_cfg_bus.exit.cleanup_crit_edge:    ; preds = %iproc_pcie_map_cfg_bus.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %iproc_pcie_map_cfg_bus.exit
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %add.ptr.i19.i) #7, !srcloc !192
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %size)
  %cmp = icmp slt i32 %size, 3
  br i1 %cmp, label %if.then3, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %and4 = shl i32 %where, 3
  %mul = and i32 %and4, 24
  %shr = lshr i32 %14, %mul
  %mul5 = shl i32 %size, 3
  %notmask = shl nsw i32 -1, %mul5
  %sub = xor i32 %notmask, -1
  %and6 = and i32 %shr, %sub
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  %storemerge = phi i32 [ %and6, %if.then3 ], [ %14, %if.end.if.end7_crit_edge ]
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %storemerge, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %iproc_pcie_map_cfg_bus.exit.cleanup_crit_edge, %iproc_pcie_write_reg.exit.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iproc_pci_raw_config_write32(ptr nocapture noundef readonly %pcie, i32 noundef %where, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_offsets.i.i.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 2
  %0 = ptrtoint ptr %reg_offsets.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_offsets.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i16, ptr %1, i32 7
  %2 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %cmp.i.i.i = icmp eq i16 %3, -1
  br i1 %cmp.i.i.i, label %entry.iproc_pcie_write_reg.exit.i_crit_edge, label %do.body.i.i

entry.iproc_pcie_write_reg.exit.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_write_reg.exit.i

do.body.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and3.i = and i32 %where, 8188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !194
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %and3.i) #7
  %base.i.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 3
  %5 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %conv.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %4) #7, !srcloc !195
  br label %iproc_pcie_write_reg.exit.i

iproc_pcie_write_reg.exit.i:                      ; preds = %do.body.i.i, %entry.iproc_pcie_write_reg.exit.i_crit_edge
  %7 = ptrtoint ptr %reg_offsets.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_offsets.i.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %8, i32 8
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %10)
  %cmp.i.i = icmp eq i16 %10, -1
  br i1 %cmp.i.i, label %iproc_pcie_write_reg.exit.i.cleanup_crit_edge, label %iproc_pcie_map_cfg_bus.exit

iproc_pcie_write_reg.exit.i.cleanup_crit_edge:    ; preds = %iproc_pcie_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

iproc_pcie_map_cfg_bus.exit:                      ; preds = %iproc_pcie_write_reg.exit.i
  %base.i17.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 3
  %11 = ptrtoint ptr %base.i17.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i17.i, align 4
  %conv.i18.i = zext i16 %10 to i32
  %add.ptr.i19.i = getelementptr i8, ptr %12, i32 %conv.i18.i
  %tobool.not = icmp eq ptr %add.ptr.i19.i, null
  br i1 %tobool.not, label %iproc_pcie_map_cfg_bus.exit.cleanup_crit_edge, label %do.body

iproc_pcie_map_cfg_bus.exit.cleanup_crit_edge:    ; preds = %iproc_pcie_map_cfg_bus.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %iproc_pcie_map_cfg_bus.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !217
  tail call void @arm_heavy_mb() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %val)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %add.ptr.i19.i, i32 %13) #7, !srcloc !195
  br label %cleanup

cleanup:                                          ; preds = %do.body, %iproc_pcie_map_cfg_bus.exit.cleanup_crit_edge, %iproc_pcie_write_reg.exit.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_phandle(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iproc_msi_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iproc_pcie_paxc_v2_msi_steer(ptr nocapture noundef readonly %pcie, i64 noundef %msi_addr, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_offsets.i.i33 = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 2
  %0 = ptrtoint ptr %reg_offsets.i.i33 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_offsets.i.i33, align 4
  br i1 %enable, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx.i.i = getelementptr i16, ptr %1, i32 6
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %cmp.i.i = icmp eq i16 %3, -1
  br i1 %cmp.i.i, label %if.then.iproc_pcie_read_reg.exit_crit_edge, label %if.end.i

if.then.iproc_pcie_read_reg.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_read_reg.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %base.i = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 3
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %conv.i = zext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %5, i32 %conv.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  %7 = and i32 %6, -16777217
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  br label %iproc_pcie_read_reg.exit

iproc_pcie_read_reg.exit:                         ; preds = %if.end.i, %if.then.iproc_pcie_read_reg.exit_crit_edge
  %retval.0.i = phi i32 [ %8, %if.end.i ], [ 0, %if.then.iproc_pcie_read_reg.exit_crit_edge ]
  %9 = ptrtoint ptr %reg_offsets.i.i33 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_offsets.i.i33, align 4
  %arrayidx.i.i28 = getelementptr i16, ptr %10, i32 6
  %11 = ptrtoint ptr %arrayidx.i.i28 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx.i.i28, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %12)
  %cmp.i.i29 = icmp eq i16 %12, -1
  br i1 %cmp.i.i29, label %iproc_pcie_read_reg.exit.cleanup_crit_edge, label %do.body.i

iproc_pcie_read_reg.exit.cleanup_crit_edge:       ; preds = %iproc_pcie_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body.i:                                        ; preds = %iproc_pcie_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !194
  tail call void @arm_heavy_mb() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i) #7
  %base.i30 = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 3
  %14 = ptrtoint ptr %base.i30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i30, align 4
  %conv.i31 = zext i16 %12 to i32
  %add.ptr.i32 = getelementptr i8, ptr %15, i32 %conv.i31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %13) #7, !srcloc !195
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i.i34 = getelementptr i16, ptr %1, i32 2
  %16 = ptrtoint ptr %arrayidx.i.i34 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.i.i34, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %17)
  %cmp.i.i35 = icmp eq i16 %17, -1
  br i1 %cmp.i.i35, label %if.end.iproc_pcie_write_reg.exit40_crit_edge, label %do.body.i39

if.end.iproc_pcie_write_reg.exit40_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_write_reg.exit40

do.body.i39:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %shr = lshr i64 %msi_addr, 13
  %conv = trunc i64 %shr to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !194
  tail call void @arm_heavy_mb() #7
  %18 = tail call i32 @llvm.bswap.i32(i32 %conv) #7
  %base.i36 = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 3
  %19 = ptrtoint ptr %base.i36 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i36, align 4
  %conv.i37 = zext i16 %17 to i32
  %add.ptr.i38 = getelementptr i8, ptr %20, i32 %conv.i37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 %18) #7, !srcloc !195
  br label %iproc_pcie_write_reg.exit40

iproc_pcie_write_reg.exit40:                      ; preds = %do.body.i39, %if.end.iproc_pcie_write_reg.exit40_crit_edge
  %21 = ptrtoint ptr %reg_offsets.i.i33 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_offsets.i.i33, align 4
  %arrayidx.i.i42 = getelementptr i16, ptr %22, i32 3
  %23 = ptrtoint ptr %arrayidx.i.i42 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx.i.i42, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %24)
  %cmp.i.i43 = icmp eq i16 %24, -1
  br i1 %cmp.i.i43, label %iproc_pcie_write_reg.exit40.iproc_pcie_write_reg.exit48_crit_edge, label %do.body.i47

iproc_pcie_write_reg.exit40.iproc_pcie_write_reg.exit48_crit_edge: ; preds = %iproc_pcie_write_reg.exit40
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_write_reg.exit48

do.body.i47:                                      ; preds = %iproc_pcie_write_reg.exit40
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !194
  tail call void @arm_heavy_mb() #7
  %base.i44 = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 3
  %25 = ptrtoint ptr %base.i44 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i44, align 4
  %conv.i45 = zext i16 %24 to i32
  %add.ptr.i46 = getelementptr i8, ptr %26, i32 %conv.i45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 0) #7, !srcloc !195
  br label %iproc_pcie_write_reg.exit48

iproc_pcie_write_reg.exit48:                      ; preds = %do.body.i47, %iproc_pcie_write_reg.exit40.iproc_pcie_write_reg.exit48_crit_edge
  %27 = ptrtoint ptr %reg_offsets.i.i33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_offsets.i.i33, align 4
  %arrayidx.i.i50 = getelementptr i16, ptr %28, i32 1
  %29 = ptrtoint ptr %arrayidx.i.i50 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx.i.i50, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %30)
  %cmp.i.i51 = icmp eq i16 %30, -1
  br i1 %cmp.i.i51, label %iproc_pcie_write_reg.exit48.iproc_pcie_read_reg.exit57_crit_edge, label %if.end.i55

iproc_pcie_write_reg.exit48.iproc_pcie_read_reg.exit57_crit_edge: ; preds = %iproc_pcie_write_reg.exit48
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_read_reg.exit57

if.end.i55:                                       ; preds = %iproc_pcie_write_reg.exit48
  call void @__sanitizer_cov_trace_pc() #9
  %base.i52 = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 3
  %31 = ptrtoint ptr %base.i52 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i52, align 4
  %conv.i53 = zext i16 %30 to i32
  %add.ptr.i54 = getelementptr i8, ptr %32, i32 %conv.i53
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54) #7, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  %34 = or i32 %33, 16777216
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  br label %iproc_pcie_read_reg.exit57

iproc_pcie_read_reg.exit57:                       ; preds = %if.end.i55, %iproc_pcie_write_reg.exit48.iproc_pcie_read_reg.exit57_crit_edge
  %retval.0.i56 = phi i32 [ %35, %if.end.i55 ], [ 1, %iproc_pcie_write_reg.exit48.iproc_pcie_read_reg.exit57_crit_edge ]
  %36 = ptrtoint ptr %reg_offsets.i.i33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg_offsets.i.i33, align 4
  %arrayidx.i.i59 = getelementptr i16, ptr %37, i32 1
  %38 = ptrtoint ptr %arrayidx.i.i59 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx.i.i59, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %39)
  %cmp.i.i60 = icmp eq i16 %39, -1
  br i1 %cmp.i.i60, label %iproc_pcie_read_reg.exit57.iproc_pcie_write_reg.exit65_crit_edge, label %do.body.i64

iproc_pcie_read_reg.exit57.iproc_pcie_write_reg.exit65_crit_edge: ; preds = %iproc_pcie_read_reg.exit57
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_write_reg.exit65

do.body.i64:                                      ; preds = %iproc_pcie_read_reg.exit57
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !194
  tail call void @arm_heavy_mb() #7
  %40 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i56) #7
  %base.i61 = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 3
  %41 = ptrtoint ptr %base.i61 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i61, align 4
  %conv.i62 = zext i16 %39 to i32
  %add.ptr.i63 = getelementptr i8, ptr %42, i32 %conv.i62
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 %40) #7, !srcloc !195
  br label %iproc_pcie_write_reg.exit65

iproc_pcie_write_reg.exit65:                      ; preds = %do.body.i64, %iproc_pcie_read_reg.exit57.iproc_pcie_write_reg.exit65_crit_edge
  %shr2 = lshr i64 %msi_addr, 2
  %43 = ptrtoint ptr %reg_offsets.i.i33 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg_offsets.i.i33, align 4
  %arrayidx.i.i67 = getelementptr i16, ptr %44, i32 5
  %45 = ptrtoint ptr %arrayidx.i.i67 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx.i.i67, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %46)
  %cmp.i.i68 = icmp eq i16 %46, -1
  br i1 %cmp.i.i68, label %iproc_pcie_write_reg.exit65.iproc_pcie_write_reg.exit73_crit_edge, label %do.body.i72

iproc_pcie_write_reg.exit65.iproc_pcie_write_reg.exit73_crit_edge: ; preds = %iproc_pcie_write_reg.exit65
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_write_reg.exit73

do.body.i72:                                      ; preds = %iproc_pcie_write_reg.exit65
  call void @__sanitizer_cov_trace_pc() #9
  %shr3 = lshr i64 %msi_addr, 34
  %conv5 = trunc i64 %shr3 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !194
  tail call void @arm_heavy_mb() #7
  %47 = tail call i32 @llvm.bswap.i32(i32 %conv5) #7
  %base.i69 = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 3
  %48 = ptrtoint ptr %base.i69 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i69, align 4
  %conv.i70 = zext i16 %46 to i32
  %add.ptr.i71 = getelementptr i8, ptr %49, i32 %conv.i70
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71, i32 %47) #7, !srcloc !195
  br label %iproc_pcie_write_reg.exit73

iproc_pcie_write_reg.exit73:                      ; preds = %do.body.i72, %iproc_pcie_write_reg.exit65.iproc_pcie_write_reg.exit73_crit_edge
  %50 = ptrtoint ptr %reg_offsets.i.i33 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg_offsets.i.i33, align 4
  %arrayidx.i.i75 = getelementptr i16, ptr %51, i32 4
  %52 = ptrtoint ptr %arrayidx.i.i75 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx.i.i75, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %53)
  %cmp.i.i76 = icmp eq i16 %53, -1
  br i1 %cmp.i.i76, label %iproc_pcie_write_reg.exit73.iproc_pcie_write_reg.exit81_crit_edge, label %do.body.i80

iproc_pcie_write_reg.exit73.iproc_pcie_write_reg.exit81_crit_edge: ; preds = %iproc_pcie_write_reg.exit73
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_write_reg.exit81

do.body.i80:                                      ; preds = %iproc_pcie_write_reg.exit73
  call void @__sanitizer_cov_trace_pc() #9
  %conv7 = trunc i64 %shr2 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !194
  tail call void @arm_heavy_mb() #7
  %54 = tail call i32 @llvm.bswap.i32(i32 %conv7) #7
  %base.i77 = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 3
  %55 = ptrtoint ptr %base.i77 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i77, align 4
  %conv.i78 = zext i16 %53 to i32
  %add.ptr.i79 = getelementptr i8, ptr %56, i32 %conv.i78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79, i32 %54) #7, !srcloc !195
  br label %iproc_pcie_write_reg.exit81

iproc_pcie_write_reg.exit81:                      ; preds = %do.body.i80, %iproc_pcie_write_reg.exit73.iproc_pcie_write_reg.exit81_crit_edge
  %57 = ptrtoint ptr %reg_offsets.i.i33 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %reg_offsets.i.i33, align 4
  %arrayidx.i.i83 = getelementptr i16, ptr %58, i32 6
  %59 = ptrtoint ptr %arrayidx.i.i83 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx.i.i83, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %60)
  %cmp.i.i84 = icmp eq i16 %60, -1
  br i1 %cmp.i.i84, label %iproc_pcie_write_reg.exit81.iproc_pcie_read_reg.exit90_crit_edge, label %if.end.i88

iproc_pcie_write_reg.exit81.iproc_pcie_read_reg.exit90_crit_edge: ; preds = %iproc_pcie_write_reg.exit81
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_read_reg.exit90

if.end.i88:                                       ; preds = %iproc_pcie_write_reg.exit81
  call void @__sanitizer_cov_trace_pc() #9
  %base.i85 = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 3
  %61 = ptrtoint ptr %base.i85 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i85, align 4
  %conv.i86 = zext i16 %60 to i32
  %add.ptr.i87 = getelementptr i8, ptr %62, i32 %conv.i86
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i87) #7, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  %64 = or i32 %63, 16777216
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  br label %iproc_pcie_read_reg.exit90

iproc_pcie_read_reg.exit90:                       ; preds = %if.end.i88, %iproc_pcie_write_reg.exit81.iproc_pcie_read_reg.exit90_crit_edge
  %retval.0.i89 = phi i32 [ %65, %if.end.i88 ], [ 1, %iproc_pcie_write_reg.exit81.iproc_pcie_read_reg.exit90_crit_edge ]
  %66 = ptrtoint ptr %reg_offsets.i.i33 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg_offsets.i.i33, align 4
  %arrayidx.i.i92 = getelementptr i16, ptr %67, i32 6
  %68 = ptrtoint ptr %arrayidx.i.i92 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %arrayidx.i.i92, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %69)
  %cmp.i.i93 = icmp eq i16 %69, -1
  br i1 %cmp.i.i93, label %iproc_pcie_read_reg.exit90.cleanup_crit_edge, label %do.body.i97

iproc_pcie_read_reg.exit90.cleanup_crit_edge:     ; preds = %iproc_pcie_read_reg.exit90
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body.i97:                                      ; preds = %iproc_pcie_read_reg.exit90
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !194
  tail call void @arm_heavy_mb() #7
  %70 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i89) #7
  %base.i94 = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 3
  %71 = ptrtoint ptr %base.i94 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base.i94, align 4
  %conv.i95 = zext i16 %69 to i32
  %add.ptr.i96 = getelementptr i8, ptr %72, i32 %conv.i95
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96, i32 %70) #7, !srcloc !195
  br label %cleanup

cleanup:                                          ; preds = %do.body.i97, %iproc_pcie_read_reg.exit90.cleanup_crit_edge, %do.body.i, %iproc_pcie_read_reg.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @iproc_pcie_bus_map_cfg_bus(ptr nocapture noundef readonly %bus, i32 noundef %devfn, i32 noundef %where) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata.i, align 4
  %number = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %2 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %number, align 4
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i = icmp eq i8 %3, 0
  br i1 %cmp.i, label %if.then.i, label %if.end6.i

if.then.i:                                        ; preds = %entry
  %4 = and i32 %devfn, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1.not.i = icmp eq i32 %4, 0
  br i1 %cmp1.not.i, label %if.end.i, label %if.then.i.iproc_pcie_map_cfg_bus.exit_crit_edge

if.then.i.iproc_pcie_map_cfg_bus.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_map_cfg_bus.exit

if.end.i:                                         ; preds = %if.then.i
  %reg_offsets.i.i.i = getelementptr inbounds %struct.iproc_pcie, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %reg_offsets.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_offsets.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i16, ptr %6, i32 7
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %8)
  %cmp.i.i.i = icmp eq i16 %8, -1
  br i1 %cmp.i.i.i, label %if.end.i.iproc_pcie_write_reg.exit.i_crit_edge, label %do.body.i.i

if.end.i.iproc_pcie_write_reg.exit.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_write_reg.exit.i

do.body.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %and3.i = and i32 %where, 8188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !194
  tail call void @arm_heavy_mb() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %and3.i) #7
  %base.i.i = getelementptr inbounds %struct.iproc_pcie, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i, align 4
  %conv.i.i = zext i16 %8 to i32
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %conv.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %9) #7, !srcloc !195
  br label %iproc_pcie_write_reg.exit.i

iproc_pcie_write_reg.exit.i:                      ; preds = %do.body.i.i, %if.end.i.iproc_pcie_write_reg.exit.i_crit_edge
  %12 = ptrtoint ptr %reg_offsets.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_offsets.i.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %13, i32 8
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %15)
  %cmp.i.i = icmp eq i16 %15, -1
  br i1 %cmp.i.i, label %iproc_pcie_write_reg.exit.i.iproc_pcie_map_cfg_bus.exit_crit_edge, label %iproc_pcie_write_reg.exit.i.cleanup.sink.split.i_crit_edge

iproc_pcie_write_reg.exit.i.cleanup.sink.split.i_crit_edge: ; preds = %iproc_pcie_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

iproc_pcie_write_reg.exit.i.iproc_pcie_map_cfg_bus.exit_crit_edge: ; preds = %iproc_pcie_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_map_cfg_bus.exit

if.end6.i:                                        ; preds = %entry
  %reg_offsets.i.i.i.i = getelementptr inbounds %struct.iproc_pcie, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %reg_offsets.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_offsets.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr i16, ptr %17, i32 9
  %18 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %19)
  %cmp.i.i.i.i = icmp eq i16 %19, -1
  br i1 %cmp.i.i.i.i, label %if.end6.i.iproc_pcie_write_reg.exit.i.i_crit_edge, label %do.body.i.i.i

if.end6.i.iproc_pcie_write_reg.exit.i.i_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_write_reg.exit.i.i

do.body.i.i.i:                                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i = shl nuw nsw i32 %conv, 20
  %and1.i.i = shl i32 %devfn, 12
  %shl2.i.i = and i32 %and1.i.i, 1044480
  %and3.i.i = and i32 %where, 4092
  %or.i.i = or i32 %and.i.i, %shl2.i.i
  %or4.i.i = or i32 %or.i.i, %and3.i.i
  %or6.i.i = or i32 %or4.i.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !194
  tail call void @arm_heavy_mb() #7
  %20 = tail call i32 @llvm.bswap.i32(i32 %or6.i.i) #7
  %base.i.i.i = getelementptr inbounds %struct.iproc_pcie, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i.i.i, align 4
  %conv.i.i.i = zext i16 %19 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %22, i32 %conv.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %20) #7, !srcloc !195
  br label %iproc_pcie_write_reg.exit.i.i

iproc_pcie_write_reg.exit.i.i:                    ; preds = %do.body.i.i.i, %if.end6.i.iproc_pcie_write_reg.exit.i.i_crit_edge
  %23 = ptrtoint ptr %reg_offsets.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_offsets.i.i.i.i, align 4
  %arrayidx.i.i15.i = getelementptr i16, ptr %24, i32 10
  %25 = ptrtoint ptr %arrayidx.i.i15.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx.i.i15.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %26)
  %cmp.i.i16.i = icmp eq i16 %26, -1
  br i1 %cmp.i.i16.i, label %iproc_pcie_write_reg.exit.i.i.iproc_pcie_map_cfg_bus.exit_crit_edge, label %iproc_pcie_write_reg.exit.i.i.cleanup.sink.split.i_crit_edge

iproc_pcie_write_reg.exit.i.i.cleanup.sink.split.i_crit_edge: ; preds = %iproc_pcie_write_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

iproc_pcie_write_reg.exit.i.i.iproc_pcie_map_cfg_bus.exit_crit_edge: ; preds = %iproc_pcie_write_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_map_cfg_bus.exit

cleanup.sink.split.i:                             ; preds = %iproc_pcie_write_reg.exit.i.i.cleanup.sink.split.i_crit_edge, %iproc_pcie_write_reg.exit.i.cleanup.sink.split.i_crit_edge
  %.sink20.i = phi i16 [ %15, %iproc_pcie_write_reg.exit.i.cleanup.sink.split.i_crit_edge ], [ %26, %iproc_pcie_write_reg.exit.i.i.cleanup.sink.split.i_crit_edge ]
  %base.i17.i = getelementptr inbounds %struct.iproc_pcie, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %base.i17.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i17.i, align 4
  %conv.i18.i = zext i16 %.sink20.i to i32
  %add.ptr.i19.i = getelementptr i8, ptr %28, i32 %conv.i18.i
  br label %iproc_pcie_map_cfg_bus.exit

iproc_pcie_map_cfg_bus.exit:                      ; preds = %cleanup.sink.split.i, %iproc_pcie_write_reg.exit.i.i.iproc_pcie_map_cfg_bus.exit_crit_edge, %iproc_pcie_write_reg.exit.i.iproc_pcie_map_cfg_bus.exit_crit_edge, %if.then.i.iproc_pcie_map_cfg_bus.exit_crit_edge
  %retval.0.i = phi ptr [ null, %if.then.i.iproc_pcie_map_cfg_bus.exit_crit_edge ], [ null, %iproc_pcie_write_reg.exit.i.iproc_pcie_map_cfg_bus.exit_crit_edge ], [ null, %iproc_pcie_write_reg.exit.i.i.iproc_pcie_map_cfg_bus.exit_crit_edge ], [ %add.ptr.i19.i, %cleanup.sink.split.i ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_pcie_config_read32(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata.i, align 4
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %2 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %number.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.iproc_pcie_apb_err_disable.exit_crit_edge, label %land.lhs.true.i

entry.iproc_pcie_apb_err_disable.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_apb_err_disable.exit

land.lhs.true.i:                                  ; preds = %entry
  %has_apb_err_disable.i = getelementptr inbounds %struct.iproc_pcie, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %has_apb_err_disable.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_apb_err_disable.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i = icmp eq i8 %5, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.iproc_pcie_apb_err_disable.exit_crit_edge, label %if.then.i

land.lhs.true.i.iproc_pcie_apb_err_disable.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_apb_err_disable.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %reg_offsets.i.i.i = getelementptr inbounds %struct.iproc_pcie, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %reg_offsets.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_offsets.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i16, ptr %7, i32 32
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %9)
  %cmp.i.i.i = icmp eq i16 %9, -1
  br i1 %cmp.i.i.i, label %if.then.i.iproc_pcie_read_reg.exit.i_crit_edge, label %if.end.i.i

if.then.i.iproc_pcie_read_reg.exit.i_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_read_reg.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %base.i.i = getelementptr inbounds %struct.iproc_pcie, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i, align 4
  %conv.i.i = zext i16 %9 to i32
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %conv.i.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  %13 = and i32 %12, -16777217
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  br label %iproc_pcie_read_reg.exit.i

iproc_pcie_read_reg.exit.i:                       ; preds = %if.end.i.i, %if.then.i.iproc_pcie_read_reg.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %14, %if.end.i.i ], [ 0, %if.then.i.iproc_pcie_read_reg.exit.i_crit_edge ]
  %15 = ptrtoint ptr %reg_offsets.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_offsets.i.i.i, align 4
  %arrayidx.i.i13.i = getelementptr i16, ptr %16, i32 32
  %17 = ptrtoint ptr %arrayidx.i.i13.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx.i.i13.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %18)
  %cmp.i.i14.i = icmp eq i16 %18, -1
  br i1 %cmp.i.i14.i, label %iproc_pcie_read_reg.exit.i.iproc_pcie_apb_err_disable.exit_crit_edge, label %do.body.i.i

iproc_pcie_read_reg.exit.i.iproc_pcie_apb_err_disable.exit_crit_edge: ; preds = %iproc_pcie_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_apb_err_disable.exit

do.body.i.i:                                      ; preds = %iproc_pcie_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !194
  tail call void @arm_heavy_mb() #7
  %19 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i) #7
  %base.i15.i = getelementptr inbounds %struct.iproc_pcie, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %base.i15.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i15.i, align 4
  %conv.i16.i = zext i16 %18 to i32
  %add.ptr.i17.i = getelementptr i8, ptr %21, i32 %conv.i16.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 %19) #7, !srcloc !195
  br label %iproc_pcie_apb_err_disable.exit

iproc_pcie_apb_err_disable.exit:                  ; preds = %do.body.i.i, %iproc_pcie_read_reg.exit.i.iproc_pcie_apb_err_disable.exit_crit_edge, %land.lhs.true.i.iproc_pcie_apb_err_disable.exit_crit_edge, %entry.iproc_pcie_apb_err_disable.exit_crit_edge
  %iproc_cfg_read = getelementptr inbounds %struct.iproc_pcie, ptr %1, i32 0, i32 9
  %22 = ptrtoint ptr %iproc_cfg_read to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %iproc_cfg_read, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not = icmp eq i8 %23, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %iproc_pcie_apb_err_disable.exit
  %24 = ptrtoint ptr %sysdata.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sysdata.i, align 4
  %26 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %number.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp.i = icmp eq i8 %27, 0
  br i1 %cmp.i, label %if.then.i13, label %if.end6.i

if.then.i13:                                      ; preds = %if.then
  %call2.i = tail call i32 @pci_generic_config_read32(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr noundef %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.i, label %if.then5.i, label %if.then.i13.if.end_crit_edge

if.then.i13.if.end_crit_edge:                     ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then5.i:                                       ; preds = %if.then.i13
  %and.i.i = and i32 %where, -4
  %28 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %and.i.i, label %if.then5.i.if.end_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 72, label %sw.bb3.i.i
    i32 172, label %sw.bb8.i.i
    i32 200, label %sw.bb13.i.i
  ]

if.then5.i.if.end_crit_edge:                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb.i.i:                                        ; preds = %if.then5.i
  %29 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val, align 4
  %shr.i.i = lshr i32 %30, 16
  %fix_paxc_cap.i.i = getelementptr inbounds %struct.iproc_pcie, ptr %25, i32 0, i32 12
  %trunc.i.i = trunc i32 %shr.i.i to i16
  %31 = zext i16 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.86)
  switch i16 %trunc.i.i, label %sw.bb.i.i.if.end_crit_edge [
    i16 5837, label %for.inc.thread.i.i
    i16 5872, label %if.then.1.i.i
    i16 -10238, label %if.then.2.i.i
    i16 -10236, label %if.then.3.i.i
  ]

sw.bb.i.i.if.end_crit_edge:                       ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.thread.i.i:                               ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %fix_paxc_cap.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %fix_paxc_cap.i.i, align 4
  br label %if.end

if.then.1.i.i:                                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %fix_paxc_cap.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %fix_paxc_cap.i.i, align 4
  br label %if.end

if.then.2.i.i:                                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %fix_paxc_cap.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %fix_paxc_cap.i.i, align 4
  br label %if.end

if.then.3.i.i:                                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %fix_paxc_cap.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %fix_paxc_cap.i.i, align 4
  br label %if.end

sw.bb3.i.i:                                       ; preds = %if.then5.i
  %fix_paxc_cap4.i.i = getelementptr inbounds %struct.iproc_pcie, ptr %25, i32 0, i32 12
  %36 = ptrtoint ptr %fix_paxc_cap4.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %fix_paxc_cap4.i.i, align 4, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i.i, label %sw.bb3.i.i.if.end_crit_edge, label %if.then5.i.i

sw.bb3.i.i.if.end_crit_edge:                      ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then5.i.i:                                     ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val, align 4
  %and6.i.i = and i32 %39, -65536
  %or.i.i = or i32 %and6.i.i, 44033
  store i32 %or.i.i, ptr %val, align 4
  br label %if.end

sw.bb8.i.i:                                       ; preds = %if.then5.i
  %fix_paxc_cap9.i.i = getelementptr inbounds %struct.iproc_pcie, ptr %25, i32 0, i32 12
  %40 = ptrtoint ptr %fix_paxc_cap9.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %fix_paxc_cap9.i.i, align 4, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool10.not.i.i = icmp eq i8 %41, 0
  br i1 %tobool10.not.i.i, label %sw.bb8.i.i.if.end_crit_edge, label %if.then11.i.i

sw.bb8.i.i.if.end_crit_edge:                      ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then11.i.i:                                    ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 4325392, ptr %val, align 4
  br label %if.end

sw.bb13.i.i:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %val, align 4
  %and14.i.i = and i32 %44, -65537
  store i32 %and14.i.i, ptr %val, align 4
  br label %if.end

if.end6.i:                                        ; preds = %if.then
  %reg_offsets.i.i.i.i = getelementptr inbounds %struct.iproc_pcie, ptr %25, i32 0, i32 2
  %45 = ptrtoint ptr %reg_offsets.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg_offsets.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr i16, ptr %46, i32 9
  %47 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %48)
  %cmp.i.i.i.i = icmp eq i16 %48, -1
  br i1 %cmp.i.i.i.i, label %if.end6.i.iproc_pcie_write_reg.exit.i.i_crit_edge, label %do.body.i.i.i

if.end6.i.iproc_pcie_write_reg.exit.i.i_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_write_reg.exit.i.i

do.body.i.i.i:                                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i8 %27 to i32
  %and.i53.i = shl nuw nsw i32 %conv.i, 20
  %and1.i.i = shl i32 %devfn, 12
  %shl2.i.i = and i32 %and1.i.i, 1044480
  %and3.i.i = and i32 %where, 4092
  %or.i54.i = or i32 %and.i53.i, %shl2.i.i
  %or4.i.i = or i32 %or.i54.i, %and3.i.i
  %or6.i.i = or i32 %or4.i.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !194
  tail call void @arm_heavy_mb() #7
  %49 = tail call i32 @llvm.bswap.i32(i32 %or6.i.i) #7
  %base.i.i.i = getelementptr inbounds %struct.iproc_pcie, ptr %25, i32 0, i32 3
  %50 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i.i.i, align 4
  %conv.i.i.i = zext i16 %48 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %51, i32 %conv.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %49) #7, !srcloc !195
  br label %iproc_pcie_write_reg.exit.i.i

iproc_pcie_write_reg.exit.i.i:                    ; preds = %do.body.i.i.i, %if.end6.i.iproc_pcie_write_reg.exit.i.i_crit_edge
  %52 = ptrtoint ptr %reg_offsets.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg_offsets.i.i.i.i, align 4
  %arrayidx.i.i.i14 = getelementptr i16, ptr %53, i32 10
  %54 = ptrtoint ptr %arrayidx.i.i.i14 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx.i.i.i14, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %55)
  %cmp.i.i.i15 = icmp eq i16 %55, -1
  br i1 %cmp.i.i.i15, label %iproc_pcie_write_reg.exit.i.i.if.end_crit_edge, label %iproc_pcie_map_ep_cfg_reg.exit.i

iproc_pcie_write_reg.exit.i.i.if.end_crit_edge:   ; preds = %iproc_pcie_write_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

iproc_pcie_map_ep_cfg_reg.exit.i:                 ; preds = %iproc_pcie_write_reg.exit.i.i
  %base.i.i16 = getelementptr inbounds %struct.iproc_pcie, ptr %25, i32 0, i32 3
  %56 = ptrtoint ptr %base.i.i16 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i.i16, align 4
  %conv.i.i17 = zext i16 %55 to i32
  %add.ptr.i.i18 = getelementptr i8, ptr %57, i32 %conv.i.i17
  %tobool.not.i19 = icmp eq ptr %add.ptr.i.i18, null
  br i1 %tobool.not.i19, label %iproc_pcie_map_ep_cfg_reg.exit.i.if.end_crit_edge, label %if.end9.i

iproc_pcie_map_ep_cfg_reg.exit.i.if.end_crit_edge: ; preds = %iproc_pcie_map_ep_cfg_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end9.i:                                        ; preds = %iproc_pcie_map_ep_cfg_reg.exit.i
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %add.ptr.i.i18) #7, !srcloc !192
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  call void @__sanitizer_cov_trace_const_cmp4(i32 16842751, i32 %58)
  %cmp20.i.i = icmp eq i32 %58, 16842751
  br i1 %cmp20.i.i, label %if.end9.i.land.rhs.i.i_crit_edge, label %if.end9.i.iproc_pcie_cfg_retry.exit.i_crit_edge

if.end9.i.iproc_pcie_cfg_retry.exit.i_crit_edge:  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_cfg_retry.exit.i

if.end9.i.land.rhs.i.i_crit_edge:                 ; preds = %if.end9.i
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %if.end.i62.i.land.rhs.i.i_crit_edge, %if.end9.i.land.rhs.i.i_crit_edge
  %timeout.021.i.i = phi i32 [ %dec.i.i, %if.end.i62.i.land.rhs.i.i_crit_edge ], [ 500000, %if.end9.i.land.rhs.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %timeout.021.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.021.i.i)
  %tobool.not.i57.i = icmp eq i32 %timeout.021.i.i, 0
  br i1 %tobool.not.i57.i, label %land.rhs.i.i.iproc_pcie_cfg_retry.exit.i_crit_edge, label %while.body.i.i

land.rhs.i.i.iproc_pcie_cfg_retry.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_cfg_retry.exit.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %60 = ptrtoint ptr %reg_offsets.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %reg_offsets.i.i.i.i, align 4
  %arrayidx.i.i.i58.i = getelementptr i16, ptr %61, i32 30
  %62 = ptrtoint ptr %arrayidx.i.i.i58.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx.i.i.i58.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %63)
  %cmp.i.i.i59.i = icmp eq i16 %63, -1
  br i1 %cmp.i.i.i59.i, label %while.body.i.i.iproc_pcie_cfg_retry.exit.i_crit_edge, label %iproc_pcie_read_reg.exit.i.i

while.body.i.i.iproc_pcie_cfg_retry.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_cfg_retry.exit.i

iproc_pcie_read_reg.exit.i.i:                     ; preds = %while.body.i.i
  %64 = ptrtoint ptr %base.i.i16 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i.i16, align 4
  %conv.i.i60.i = zext i16 %63 to i32
  %add.ptr.i.i61.i = getelementptr i8, ptr %65, i32 %conv.i.i60.i
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i61.i) #7, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %66)
  %cmp3.not.i.i = icmp eq i32 %66, 33554432
  br i1 %cmp3.not.i.i, label %if.end.i62.i, label %iproc_pcie_read_reg.exit.i.i.iproc_pcie_cfg_retry.exit.i_crit_edge

iproc_pcie_read_reg.exit.i.i.iproc_pcie_cfg_retry.exit.i_crit_edge: ; preds = %iproc_pcie_read_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_cfg_retry.exit.i

if.end.i62.i:                                     ; preds = %iproc_pcie_read_reg.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 214748) #7
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %add.ptr.i.i18) #7, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !219
  %cmp.i.i = icmp eq i32 %68, 16842751
  br i1 %cmp.i.i, label %if.end.i62.i.land.rhs.i.i_crit_edge, label %cleanup.loopexit.split.loop.exit27.i.i

if.end.i62.i.land.rhs.i.i_crit_edge:              ; preds = %if.end.i62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i.i

cleanup.loopexit.split.loop.exit27.i.i:           ; preds = %if.end.i62.i
  call void @__sanitizer_cov_trace_pc() #9
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #7
  br label %iproc_pcie_cfg_retry.exit.i

iproc_pcie_cfg_retry.exit.i:                      ; preds = %cleanup.loopexit.split.loop.exit27.i.i, %iproc_pcie_read_reg.exit.i.i.iproc_pcie_cfg_retry.exit.i_crit_edge, %while.body.i.i.iproc_pcie_cfg_retry.exit.i_crit_edge, %land.rhs.i.i.iproc_pcie_cfg_retry.exit.i_crit_edge, %if.end9.i.iproc_pcie_cfg_retry.exit.i_crit_edge
  %retval.0.i63.i = phi i32 [ %59, %if.end9.i.iproc_pcie_cfg_retry.exit.i_crit_edge ], [ %69, %cleanup.loopexit.split.loop.exit27.i.i ], [ -65535, %while.body.i.i.iproc_pcie_cfg_retry.exit.i_crit_edge ], [ -1, %land.rhs.i.i.iproc_pcie_cfg_retry.exit.i_crit_edge ], [ -65535, %iproc_pcie_read_reg.exit.i.i.iproc_pcie_cfg_retry.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %size)
  %cmp11.i = icmp slt i32 %size, 3
  br i1 %cmp11.i, label %if.then13.i, label %iproc_pcie_cfg_retry.exit.i.if.end16.i_crit_edge

iproc_pcie_cfg_retry.exit.i.if.end16.i_crit_edge: ; preds = %iproc_pcie_cfg_retry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.then13.i:                                      ; preds = %iproc_pcie_cfg_retry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = shl i32 %where, 3
  %mul.i = and i32 %and.i, 24
  %shr.i = lshr i32 %retval.0.i63.i, %mul.i
  %mul14.i = shl i32 %size, 3
  %notmask.i = shl nsw i32 -1, %mul14.i
  %sub.i = xor i32 %notmask.i, -1
  %and15.i = and i32 %shr.i, %sub.i
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then13.i, %iproc_pcie_cfg_retry.exit.i.if.end16.i_crit_edge
  %storemerge.i = phi i32 [ %and15.i, %if.then13.i ], [ %retval.0.i63.i, %iproc_pcie_cfg_retry.exit.i.if.end16.i_crit_edge ]
  %70 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %storemerge.i, ptr %val, align 4
  %rej_unconfig_pf.i = getelementptr inbounds %struct.iproc_pcie, ptr %25, i32 0, i32 10
  %71 = ptrtoint ptr %rej_unconfig_pf.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %rej_unconfig_pf.i, align 2, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool17.not.i = icmp ne i8 %72, 0
  %and19.i = and i32 %where, 4092
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %cmp20.i = icmp eq i32 %and19.i, 0
  %or.cond.i = and i1 %cmp20.i, %tobool17.not.i
  %and23.i = and i32 %storemerge.i, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 378404864, i32 %and23.i)
  %cmp24.i = icmp eq i32 %and23.i, 378404864
  %or.cond66.i = select i1 %or.cond.i, i1 %cmp24.i, i1 false
  %spec.select.i = select i1 %or.cond66.i, i32 129, i32 0
  br label %if.end

if.else:                                          ; preds = %iproc_pcie_apb_err_disable.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @pci_generic_config_read32(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr noundef %val) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.end16.i, %iproc_pcie_map_ep_cfg_reg.exit.i.if.end_crit_edge, %iproc_pcie_write_reg.exit.i.i.if.end_crit_edge, %sw.bb13.i.i, %if.then11.i.i, %sw.bb8.i.i.if.end_crit_edge, %if.then5.i.i, %sw.bb3.i.i.if.end_crit_edge, %if.then.3.i.i, %if.then.2.i.i, %if.then.1.i.i, %for.inc.thread.i.i, %sw.bb.i.i.if.end_crit_edge, %if.then5.i.if.end_crit_edge, %if.then.i13.if.end_crit_edge
  %ret.0 = phi i32 [ %call2, %if.else ], [ %call2.i, %if.then.i13.if.end_crit_edge ], [ 134, %iproc_pcie_map_ep_cfg_reg.exit.i.if.end_crit_edge ], [ 0, %if.then5.i.if.end_crit_edge ], [ 0, %sw.bb.i.i.if.end_crit_edge ], [ 0, %for.inc.thread.i.i ], [ 0, %if.then.1.i.i ], [ 0, %if.then.2.i.i ], [ 0, %if.then.3.i.i ], [ 0, %sw.bb3.i.i.if.end_crit_edge ], [ 0, %if.then5.i.i ], [ 0, %sw.bb8.i.i.if.end_crit_edge ], [ 0, %if.then11.i.i ], [ 0, %sw.bb13.i.i ], [ 134, %iproc_pcie_write_reg.exit.i.i.if.end_crit_edge ], [ %spec.select.i, %if.end16.i ]
  %73 = ptrtoint ptr %sysdata.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %sysdata.i, align 4
  %75 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %number.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.not.i22 = icmp eq i8 %76, 0
  br i1 %tobool.not.i22, label %if.end.iproc_pcie_apb_err_disable.exit43_crit_edge, label %land.lhs.true.i25

if.end.iproc_pcie_apb_err_disable.exit43_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_apb_err_disable.exit43

land.lhs.true.i25:                                ; preds = %if.end
  %has_apb_err_disable.i23 = getelementptr inbounds %struct.iproc_pcie, ptr %74, i32 0, i32 11
  %77 = ptrtoint ptr %has_apb_err_disable.i23 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %has_apb_err_disable.i23, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool1.not.i24 = icmp eq i8 %78, 0
  br i1 %tobool1.not.i24, label %land.lhs.true.i25.iproc_pcie_apb_err_disable.exit43_crit_edge, label %if.then.i29

land.lhs.true.i25.iproc_pcie_apb_err_disable.exit43_crit_edge: ; preds = %land.lhs.true.i25
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_apb_err_disable.exit43

if.then.i29:                                      ; preds = %land.lhs.true.i25
  %reg_offsets.i.i.i26 = getelementptr inbounds %struct.iproc_pcie, ptr %74, i32 0, i32 2
  %79 = ptrtoint ptr %reg_offsets.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %reg_offsets.i.i.i26, align 4
  %arrayidx.i.i.i27 = getelementptr i16, ptr %80, i32 32
  %81 = ptrtoint ptr %arrayidx.i.i.i27 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %arrayidx.i.i.i27, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %82)
  %cmp.i.i.i28 = icmp eq i16 %82, -1
  br i1 %cmp.i.i.i28, label %if.then.i29.iproc_pcie_read_reg.exit.i37_crit_edge, label %if.end.i.i33

if.then.i29.iproc_pcie_read_reg.exit.i37_crit_edge: ; preds = %if.then.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_read_reg.exit.i37

if.end.i.i33:                                     ; preds = %if.then.i29
  call void @__sanitizer_cov_trace_pc() #9
  %base.i.i30 = getelementptr inbounds %struct.iproc_pcie, ptr %74, i32 0, i32 3
  %83 = ptrtoint ptr %base.i.i30 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base.i.i30, align 4
  %conv.i.i31 = zext i16 %82 to i32
  %add.ptr.i.i32 = getelementptr i8, ptr %84, i32 %conv.i.i31
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i32) #7, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  %86 = or i32 %85, 16777216
  %87 = tail call i32 @llvm.bswap.i32(i32 %86)
  br label %iproc_pcie_read_reg.exit.i37

iproc_pcie_read_reg.exit.i37:                     ; preds = %if.end.i.i33, %if.then.i29.iproc_pcie_read_reg.exit.i37_crit_edge
  %retval.0.i.i34 = phi i32 [ %87, %if.end.i.i33 ], [ 1, %if.then.i29.iproc_pcie_read_reg.exit.i37_crit_edge ]
  %88 = ptrtoint ptr %reg_offsets.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %reg_offsets.i.i.i26, align 4
  %arrayidx.i.i13.i35 = getelementptr i16, ptr %89, i32 32
  %90 = ptrtoint ptr %arrayidx.i.i13.i35 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %arrayidx.i.i13.i35, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %91)
  %cmp.i.i14.i36 = icmp eq i16 %91, -1
  br i1 %cmp.i.i14.i36, label %iproc_pcie_read_reg.exit.i37.iproc_pcie_apb_err_disable.exit43_crit_edge, label %do.body.i.i41

iproc_pcie_read_reg.exit.i37.iproc_pcie_apb_err_disable.exit43_crit_edge: ; preds = %iproc_pcie_read_reg.exit.i37
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_apb_err_disable.exit43

do.body.i.i41:                                    ; preds = %iproc_pcie_read_reg.exit.i37
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !194
  tail call void @arm_heavy_mb() #7
  %92 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i34) #7
  %base.i15.i38 = getelementptr inbounds %struct.iproc_pcie, ptr %74, i32 0, i32 3
  %93 = ptrtoint ptr %base.i15.i38 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %base.i15.i38, align 4
  %conv.i16.i39 = zext i16 %91 to i32
  %add.ptr.i17.i40 = getelementptr i8, ptr %94, i32 %conv.i16.i39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i40, i32 %92) #7, !srcloc !195
  br label %iproc_pcie_apb_err_disable.exit43

iproc_pcie_apb_err_disable.exit43:                ; preds = %do.body.i.i41, %iproc_pcie_read_reg.exit.i37.iproc_pcie_apb_err_disable.exit43_crit_edge, %land.lhs.true.i25.iproc_pcie_apb_err_disable.exit43_crit_edge, %if.end.iproc_pcie_apb_err_disable.exit43_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_pcie_config_write32(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata.i.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata.i.i, align 4
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %2 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %number.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.iproc_pcie_apb_err_disable.exit_crit_edge, label %land.lhs.true.i

entry.iproc_pcie_apb_err_disable.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_apb_err_disable.exit

land.lhs.true.i:                                  ; preds = %entry
  %has_apb_err_disable.i = getelementptr inbounds %struct.iproc_pcie, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %has_apb_err_disable.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_apb_err_disable.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i = icmp eq i8 %5, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.iproc_pcie_apb_err_disable.exit_crit_edge, label %if.then.i

land.lhs.true.i.iproc_pcie_apb_err_disable.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_apb_err_disable.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %reg_offsets.i.i.i = getelementptr inbounds %struct.iproc_pcie, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %reg_offsets.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_offsets.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i16, ptr %7, i32 32
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %9)
  %cmp.i.i.i = icmp eq i16 %9, -1
  br i1 %cmp.i.i.i, label %if.then.i.iproc_pcie_read_reg.exit.i_crit_edge, label %if.end.i.i

if.then.i.iproc_pcie_read_reg.exit.i_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_read_reg.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %base.i.i = getelementptr inbounds %struct.iproc_pcie, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i, align 4
  %conv.i.i = zext i16 %9 to i32
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %conv.i.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  %13 = and i32 %12, -16777217
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  br label %iproc_pcie_read_reg.exit.i

iproc_pcie_read_reg.exit.i:                       ; preds = %if.end.i.i, %if.then.i.iproc_pcie_read_reg.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %14, %if.end.i.i ], [ 0, %if.then.i.iproc_pcie_read_reg.exit.i_crit_edge ]
  %15 = ptrtoint ptr %reg_offsets.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_offsets.i.i.i, align 4
  %arrayidx.i.i13.i = getelementptr i16, ptr %16, i32 32
  %17 = ptrtoint ptr %arrayidx.i.i13.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx.i.i13.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %18)
  %cmp.i.i14.i = icmp eq i16 %18, -1
  br i1 %cmp.i.i14.i, label %iproc_pcie_read_reg.exit.i.iproc_pcie_apb_err_disable.exit_crit_edge, label %do.body.i.i

iproc_pcie_read_reg.exit.i.iproc_pcie_apb_err_disable.exit_crit_edge: ; preds = %iproc_pcie_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_apb_err_disable.exit

do.body.i.i:                                      ; preds = %iproc_pcie_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !194
  tail call void @arm_heavy_mb() #7
  %19 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i) #7
  %base.i15.i = getelementptr inbounds %struct.iproc_pcie, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %base.i15.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i15.i, align 4
  %conv.i16.i = zext i16 %18 to i32
  %add.ptr.i17.i = getelementptr i8, ptr %21, i32 %conv.i16.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 %19) #7, !srcloc !195
  br label %iproc_pcie_apb_err_disable.exit

iproc_pcie_apb_err_disable.exit:                  ; preds = %do.body.i.i, %iproc_pcie_read_reg.exit.i.iproc_pcie_apb_err_disable.exit_crit_edge, %land.lhs.true.i.iproc_pcie_apb_err_disable.exit_crit_edge, %entry.iproc_pcie_apb_err_disable.exit_crit_edge
  %call = tail call i32 @pci_generic_config_write32(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, i32 noundef %val) #7
  %22 = ptrtoint ptr %sysdata.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sysdata.i.i, align 4
  %24 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %number.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i5 = icmp eq i8 %25, 0
  br i1 %tobool.not.i5, label %iproc_pcie_apb_err_disable.exit.iproc_pcie_apb_err_disable.exit25_crit_edge, label %land.lhs.true.i8

iproc_pcie_apb_err_disable.exit.iproc_pcie_apb_err_disable.exit25_crit_edge: ; preds = %iproc_pcie_apb_err_disable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_apb_err_disable.exit25

land.lhs.true.i8:                                 ; preds = %iproc_pcie_apb_err_disable.exit
  %has_apb_err_disable.i6 = getelementptr inbounds %struct.iproc_pcie, ptr %23, i32 0, i32 11
  %26 = ptrtoint ptr %has_apb_err_disable.i6 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %has_apb_err_disable.i6, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool1.not.i7 = icmp eq i8 %27, 0
  br i1 %tobool1.not.i7, label %land.lhs.true.i8.iproc_pcie_apb_err_disable.exit25_crit_edge, label %if.then.i12

land.lhs.true.i8.iproc_pcie_apb_err_disable.exit25_crit_edge: ; preds = %land.lhs.true.i8
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_apb_err_disable.exit25

if.then.i12:                                      ; preds = %land.lhs.true.i8
  %reg_offsets.i.i.i9 = getelementptr inbounds %struct.iproc_pcie, ptr %23, i32 0, i32 2
  %28 = ptrtoint ptr %reg_offsets.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_offsets.i.i.i9, align 4
  %arrayidx.i.i.i10 = getelementptr i16, ptr %29, i32 32
  %30 = ptrtoint ptr %arrayidx.i.i.i10 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx.i.i.i10, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %31)
  %cmp.i.i.i11 = icmp eq i16 %31, -1
  br i1 %cmp.i.i.i11, label %if.then.i12.iproc_pcie_read_reg.exit.i20_crit_edge, label %if.end.i.i16

if.then.i12.iproc_pcie_read_reg.exit.i20_crit_edge: ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_read_reg.exit.i20

if.end.i.i16:                                     ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #9
  %base.i.i13 = getelementptr inbounds %struct.iproc_pcie, ptr %23, i32 0, i32 3
  %32 = ptrtoint ptr %base.i.i13 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i13, align 4
  %conv.i.i14 = zext i16 %31 to i32
  %add.ptr.i.i15 = getelementptr i8, ptr %33, i32 %conv.i.i14
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i15) #7, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  %35 = or i32 %34, 16777216
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  br label %iproc_pcie_read_reg.exit.i20

iproc_pcie_read_reg.exit.i20:                     ; preds = %if.end.i.i16, %if.then.i12.iproc_pcie_read_reg.exit.i20_crit_edge
  %retval.0.i.i17 = phi i32 [ %36, %if.end.i.i16 ], [ 1, %if.then.i12.iproc_pcie_read_reg.exit.i20_crit_edge ]
  %37 = ptrtoint ptr %reg_offsets.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_offsets.i.i.i9, align 4
  %arrayidx.i.i13.i18 = getelementptr i16, ptr %38, i32 32
  %39 = ptrtoint ptr %arrayidx.i.i13.i18 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx.i.i13.i18, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %40)
  %cmp.i.i14.i19 = icmp eq i16 %40, -1
  br i1 %cmp.i.i14.i19, label %iproc_pcie_read_reg.exit.i20.iproc_pcie_apb_err_disable.exit25_crit_edge, label %do.body.i.i24

iproc_pcie_read_reg.exit.i20.iproc_pcie_apb_err_disable.exit25_crit_edge: ; preds = %iproc_pcie_read_reg.exit.i20
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_pcie_apb_err_disable.exit25

do.body.i.i24:                                    ; preds = %iproc_pcie_read_reg.exit.i20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !194
  tail call void @arm_heavy_mb() #7
  %41 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i17) #7
  %base.i15.i21 = getelementptr inbounds %struct.iproc_pcie, ptr %23, i32 0, i32 3
  %42 = ptrtoint ptr %base.i15.i21 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i15.i21, align 4
  %conv.i16.i22 = zext i16 %40 to i32
  %add.ptr.i17.i23 = getelementptr i8, ptr %43, i32 %conv.i16.i22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i23, i32 %41) #7, !srcloc !195
  br label %iproc_pcie_apb_err_disable.exit25

iproc_pcie_apb_err_disable.exit25:                ; preds = %do.body.i.i24, %iproc_pcie_read_reg.exit.i20.iproc_pcie_apb_err_disable.exit25_crit_edge, %land.lhs.true.i8.iproc_pcie_apb_err_disable.exit25_crit_edge, %iproc_pcie_apb_err_disable.exit.iproc_pcie_apb_err_disable.exit25_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_read32(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_write32(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iproc_msi_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !62, !64, !65, !66, !67, !68, !70, !71, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !115, !117, !118, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !142, !143, !145, !146, !147, !148, !150, !151, !152, !154, !155, !156, !157, !158, !160, !162, !164, !165, !166, !167, !169, !171, !172, !173, !174, !176, !177, !178, !180}
!llvm.module.flags = !{!182, !183, !184, !185, !186, !187, !188, !189}
!llvm.ident = !{!190}

!0 = !{ptr @__ksymtab_iproc_pcie_shutdown, !1, !"__ksymtab_iproc_pcie_shutdown", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 764, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 1470, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @iproc_pcie_setup._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @iproc_pcie_setup._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 1476, i32 3}
!12 = !{ptr @iproc_pcie_setup._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @iproc_pcie_setup._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 1482, i32 3}
!16 = !{ptr @iproc_pcie_setup._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @iproc_pcie_setup._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 1494, i32 4}
!20 = !{ptr @iproc_pcie_setup._entry.11, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @iproc_pcie_setup._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 1507, i32 3}
!24 = !{ptr @iproc_pcie_setup._entry.14, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @iproc_pcie_setup._entry_ptr.16, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 1515, i32 4}
!28 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @iproc_pcie_setup._entry.17, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @iproc_pcie_setup._entry_ptr.20, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.22, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 1523, i32 3}
!33 = !{ptr @iproc_pcie_setup._entry.21, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @iproc_pcie_setup._entry_ptr.23, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @__ksymtab_iproc_pcie_setup, !36, !"__ksymtab_iproc_pcie_setup", i1 false, i1 false}
!36 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 1540, i32 1}
!37 = !{ptr @__ksymtab_iproc_pcie_remove, !38, !"__ksymtab_iproc_pcie_remove", i1 false, i1 false}
!38 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 1556, i32 1}
!39 = !{ptr @__pci_fixup_quirk_paxc_disable_msi_parsing1570, !40, !"__pci_fixup_quirk_paxc_disable_msi_parsing1570", i1 false, i1 false}
!40 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 1569, i32 1}
!41 = !{ptr @__pci_fixup_quirk_paxc_disable_msi_parsing1572, !42, !"__pci_fixup_quirk_paxc_disable_msi_parsing1572", i1 false, i1 false}
!42 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 1571, i32 1}
!43 = !{ptr @__pci_fixup_quirk_paxc_disable_msi_parsing1574, !44, !"__pci_fixup_quirk_paxc_disable_msi_parsing1574", i1 false, i1 false}
!44 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 1573, i32 1}
!45 = !{ptr @__pci_fixup_quirk_paxc_bridge1594, !46, !"__pci_fixup_quirk_paxc_bridge1594", i1 false, i1 false}
!46 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 1594, i32 1}
!47 = !{ptr @__pci_fixup_quirk_paxc_bridge1595, !48, !"__pci_fixup_quirk_paxc_bridge1595", i1 false, i1 false}
!48 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 1595, i32 1}
!49 = !{ptr @__pci_fixup_quirk_paxc_bridge1596, !50, !"__pci_fixup_quirk_paxc_bridge1596", i1 false, i1 false}
!50 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 1596, i32 1}
!51 = !{ptr @__pci_fixup_quirk_paxc_bridge1597, !52, !"__pci_fixup_quirk_paxc_bridge1597", i1 false, i1 false}
!52 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 1597, i32 1}
!53 = !{ptr @__pci_fixup_quirk_paxc_bridge1598, !54, !"__pci_fixup_quirk_paxc_bridge1598", i1 false, i1 false}
!54 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 1598, i32 1}
!55 = !{ptr @__UNIQUE_ID_author299, !56, !"__UNIQUE_ID_author299", i1 false, i1 false}
!56 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 1600, i32 1}
!57 = !{ptr @__UNIQUE_ID_description300, !58, !"__UNIQUE_ID_description300", i1 false, i1 false}
!58 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 1601, i32 1}
!59 = !{ptr @__UNIQUE_ID_file301, !60, !"__UNIQUE_ID_file301", i1 false, i1 false}
!60 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 1602, i32 1}
!61 = !{ptr @__UNIQUE_ID_license302, !60, !"__UNIQUE_ID_license302", i1 false, i1 false}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 1422, i32 3}
!64 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @iproc_pcie_rev_init._entry, !63, !"_entry", i1 false, i1 false}
!67 = !{ptr @iproc_pcie_rev_init._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 1439, i32 3}
!70 = !{ptr @iproc_pcie_rev_init._entry.27, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @iproc_pcie_rev_init._entry_ptr.29, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @iproc_pcie_reg_paxb_bcma, !73, !"iproc_pcie_reg_paxb_bcma", i1 false, i1 false}
!73 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 308, i32 18}
!74 = !{ptr @iproc_pcie_reg_paxb, !75, !"iproc_pcie_reg_paxb", i1 false, i1 false}
!75 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 319, i32 18}
!76 = !{ptr @paxb_ob_map, !77, !"paxb_ob_map", i1 false, i1 false}
!77 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 102, i32 39}
!78 = !{ptr @iproc_pcie_reg_paxb_v2, !79, !"iproc_pcie_reg_paxb_v2", i1 false, i1 false}
!79 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 335, i32 18}
!80 = !{ptr @paxb_v2_ob_map, !81, !"paxb_v2_ob_map", i1 false, i1 false}
!81 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 115, i32 39}
!82 = !{ptr @paxb_v2_ib_map, !83, !"paxb_v2_ib_map", i1 false, i1 false}
!83 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 174, i32 39}
!84 = !{ptr @iproc_pcie_reg_paxc, !85, !"iproc_pcie_reg_paxc", i1 false, i1 false}
!85 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 366, i32 18}
!86 = !{ptr @iproc_pcie_reg_paxc_v2, !87, !"iproc_pcie_reg_paxc_v2", i1 false, i1 false}
!87 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 375, i32 18}
!88 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 1032, i32 4}
!90 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @iproc_pcie_map_ranges._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @iproc_pcie_map_ranges._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.35, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 915, i32 3}
!95 = !{ptr @.str.36, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @iproc_pcie_setup_ob._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @iproc_pcie_setup_ob._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.38, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 970, i32 5}
!100 = !{ptr @iproc_pcie_setup_ob._entry.37, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @iproc_pcie_setup_ob._entry_ptr.39, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 1001, i32 2}
!104 = !{ptr @iproc_pcie_setup_ob._entry.40, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @iproc_pcie_setup_ob._entry_ptr.42, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 1002, i32 2}
!108 = !{ptr @iproc_pcie_setup_ob._entry.43, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @iproc_pcie_setup_ob._entry_ptr.45, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.46, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 884, i32 2}
!112 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @iproc_pcie_ob_write.__UNIQUE_ID_ddebug293, !111, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!115 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 886, i32 2}
!117 = !{ptr @iproc_pcie_ob_write.__UNIQUE_ID_ddebug294, !116, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!118 = !{ptr @.str.50, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 889, i32 2}
!120 = !{ptr @iproc_pcie_ob_write.__UNIQUE_ID_ddebug295, !119, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!121 = !{ptr @.str.51, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 1149, i32 5}
!123 = !{ptr @iproc_pcie_setup_ib._entry, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @iproc_pcie_setup_ib._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.53, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 1169, i32 2}
!127 = !{ptr @iproc_pcie_setup_ib._entry.52, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @iproc_pcie_setup_ib._entry_ptr.54, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.56, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 1170, i32 2}
!131 = !{ptr @iproc_pcie_setup_ib._entry.55, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @iproc_pcie_setup_ib._entry_ptr.57, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.58, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 1075, i32 2}
!135 = !{ptr @.str.59, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @iproc_pcie_ib_write.__UNIQUE_ID_ddebug296, !134, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!137 = !{ptr @.str.60, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 1086, i32 2}
!139 = !{ptr @iproc_pcie_ib_write.__UNIQUE_ID_ddebug297, !138, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!140 = !{ptr @.str.61, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 1102, i32 3}
!142 = !{ptr @iproc_pcie_ib_write.__UNIQUE_ID_ddebug298, !141, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!143 = !{ptr @.str.62, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 781, i32 3}
!145 = !{ptr @.str.63, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @iproc_pcie_check_link._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @iproc_pcie_check_link._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.65, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 788, i32 3}
!150 = !{ptr @iproc_pcie_check_link._entry.64, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @iproc_pcie_check_link._entry_ptr.66, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.68, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 834, i32 2}
!154 = !{ptr @iproc_pcie_check_link._entry.67, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @iproc_pcie_check_link._entry_ptr.69, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.70, !153, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.71, !153, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.72, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 1350, i32 50}
!160 = !{ptr @.str.73, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 1356, i32 49}
!162 = !{ptr @.str.74, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 1320, i32 3}
!164 = !{ptr @.str.75, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @iproc_pcie_msi_steer._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @iproc_pcie_msi_steer._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.76, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 1230, i32 41}
!169 = !{ptr @.str.77, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 1231, i32 3}
!171 = !{ptr @.str.78, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @iproce_pcie_get_msi._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @iproce_pcie_get_msi._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.80, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 1238, i32 3}
!176 = !{ptr @iproce_pcie_get_msi._entry.79, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @iproce_pcie_get_msi._entry_ptr.81, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @iproc_pcie_ops, !179, !"iproc_pcie_ops", i1 false, i1 false}
!179 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 725, i32 23}
!180 = distinct !{null, !181, !"iproc_pcie_corrupt_cap_did", i1 false, i1 false}
!181 = !{!"../drivers/pci/controller/pcie-iproc.c", i32 392, i32 18}
!182 = !{i32 1, !"wchar_size", i32 2}
!183 = !{i32 1, !"min_enum_size", i32 4}
!184 = !{i32 8, !"branch-target-enforcement", i32 0}
!185 = !{i32 8, !"sign-return-address", i32 0}
!186 = !{i32 8, !"sign-return-address-all", i32 0}
!187 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!188 = !{i32 7, !"uwtable", i32 1}
!189 = !{i32 7, !"frame-pointer", i32 2}
!190 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!191 = !{i8 0, i8 2}
!192 = !{i64 5020603}
!193 = !{i64 2155643296}
!194 = !{i64 2155643681}
!195 = !{i64 5020185}
!196 = !{!"auto-init"}
!197 = !{i64 2155647942}
!198 = !{i64 2155657796}
!199 = !{i64 2155658511}
!200 = !{i64 2155659080}
!201 = !{i64 2155659648}
!202 = !{i64 2148731895, i64 2148731900, i64 2148731913, i64 2148731957, i64 2148731991, i64 2148732012}
!203 = !{i64 2155665654}
!204 = !{i64 2155666184}
!205 = !{i64 2155669263}
!206 = !{i64 2155669793}
!207 = !{i64 2155686727}
!208 = !{i64 2155687406}
!209 = !{i64 2155690768}
!210 = !{i64 2155691298}
!211 = !{i32 0, i32 33}
!212 = !{i64 2155692031}
!213 = !{i64 2155692386}
!214 = !{i64 2155692884}
!215 = !{i64 2155696512}
!216 = !{i64 2155697170}
!217 = !{i64 2155648153}
!218 = !{i64 2155645753}
!219 = !{i64 2155646760}
