; ModuleID = '/llk/IR_all_yes/arch/arm/kernel/bios32.c_pt.bc'
source_filename = "../arch/arm/kernel/bios32.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+pcibios_fixup_bus\22, \22a\22\09"
module asm "\09.weak\09__crc_pcibios_fixup_bus\09\09\09\09"
module asm "\09.long\09__crc_pcibios_fixup_bus\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcibios_fixup_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22pcibios_fixup_bus\22\09\09\09\09\09"
module asm "__kstrtabns_pcibios_fixup_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.list_head = type { ptr, ptr }
%struct.pci_fixup = type { i16, i16, i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.map_desc = type { i32, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.hw_pci = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [32 x i8], [0 x i32] }
%struct.resource_entry = type { %struct.list_head, ptr, i32, %struct.resource }
%struct.pci_sys_data = type { %struct.list_head, i32, i64, i32, ptr, %struct.list_head, %struct.resource, [12 x i8], ptr, ptr, ptr }

@pci_root_buses = external dso_local global %struct.list_head, align 4
@__pci_fixup_pci_fixup_83c553129 = internal constant %struct.pci_fixup { i16 4269, i16 1381, i32 -1, i32 0, ptr @pci_fixup_83c553 }, section ".pci_fixup_header", align 4
@__pci_fixup_pci_fixup_unassign136 = internal constant %struct.pci_fixup { i16 4176, i16 23130, i32 -1, i32 0, ptr @pci_fixup_unassign }, section ".pci_fixup_header", align 4
@__pci_fixup_pci_fixup_dec21285157 = internal constant %struct.pci_fixup { i16 4113, i16 4197, i32 -1, i32 0, ptr @pci_fixup_dec21285 }, section ".pci_fixup_header", align 4
@__pci_fixup_pci_fixup_ide_bases178 = internal constant %struct.pci_fixup { i16 -1, i16 -1, i32 -1, i32 0, ptr @pci_fixup_ide_bases }, section ".pci_fixup_header", align 4
@__pci_fixup_pci_fixup_dec21142187 = internal constant %struct.pci_fixup { i16 4113, i16 25, i32 -1, i32 0, ptr @pci_fixup_dec21142 }, section ".pci_fixup_header", align 4
@__pci_fixup_pci_fixup_cy82c693253 = internal constant %struct.pci_fixup { i16 4224, i16 -14701, i32 -1, i32 0, ptr @pci_fixup_cy82c693 }, section ".pci_fixup_header", align 4
@pcibios_fixup_bus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016PCI: bus%d: Fast back to back transfers %sabled\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pcibios_fixup_bus\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"arch/arm/kernel/bios32.c\00", [39 x i8] zeroinitializer }, align 32
@pcibios_fixup_bus._entry_ptr = internal global ptr @pcibios_fixup_bus._entry, section ".printk_index", align 4
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@__kstrtab_pcibios_fixup_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcibios_fixup_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_pcibios_fixup_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcibios_fixup_bus to i32), ptr @__kstrtab_pcibios_fixup_bus, ptr @__kstrtabns_pcibios_fixup_bus }, section "___ksymtab+pcibios_fixup_bus", align 4
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"debug\00", [26 x i8] zeroinitializer }, align 32
@debug_pci = internal global { i1, [31 x i8] } zeroinitializer, align 32
@__const.pci_map_io_early.pci_io_desc = private unnamed_addr constant %struct.map_desc { i32 -18874368, i32 0, i32 65536, i32 0 }, align 4
@pcibios_bus_report_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(%s: %04X) \00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pcibios_bus_report_status\00", [38 x i8] zeroinitializer }, align 32
@pcibios_bus_report_status._entry_ptr = internal global ptr @pcibios_bus_report_status._entry, section ".printk_index", align 4
@pci_flags = external dso_local local_unnamed_addr global i32, align 4
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"PCI: unable to allocate bridge!\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PCI: unable to scan bus!\00", [39 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@pcibios_min_io = external dso_local local_unnamed_addr global i32, align 4
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PCI%d I/O\00", [22 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@pcibios_init_resource._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013PCI: unable to allocate I/O port region (%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pcibios_init_resource\00", [42 x i8] zeroinitializer }, align 32
@pcibios_init_resource._entry_ptr = internal global ptr @pcibios_init_resource._entry, section ".printk_index", align 4
@pcibios_map_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"PCI: %s mapping slot %d pin %d => irq %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pcibios_map_irq\00", [16 x i8] zeroinitializer }, align 32
@pcibios_map_irq._entry_ptr = internal global ptr @pcibios_map_irq._entry, section ".printk_index", align 4
@pcibios_swizzle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"PCI: %s swizzling pin %d => pin %d slot %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pcibios_swizzle\00", [16 x i8] zeroinitializer }, align 32
@pcibios_swizzle._entry_ptr = internal global ptr @pcibios_swizzle._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 4330, i64 4739]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 1540, i64 1543]
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 342, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 541, i32 19 }
@___asan_gen_.39 = private unnamed_addr constant [10 x i8] c"debug_pci\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 51, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 439, i32 7 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 478, i32 8 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 415, i32 28 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 419, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 391, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private constant [28 x i8] c"../arch/arm/kernel/bios32.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 373, i32 3 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__ksymtab_pcibios_fixup_bus, ptr @__pci_fixup_pci_fixup_83c553129, ptr @__pci_fixup_pci_fixup_cy82c693253, ptr @__pci_fixup_pci_fixup_dec21142187, ptr @__pci_fixup_pci_fixup_dec21285157, ptr @__pci_fixup_pci_fixup_ide_bases178, ptr @__pci_fixup_pci_fixup_unassign136, ptr @pcibios_bus_report_status._entry, ptr @pcibios_bus_report_status._entry_ptr, ptr @pcibios_fixup_bus._entry, ptr @pcibios_fixup_bus._entry_ptr, ptr @pcibios_init_resource._entry, ptr @pcibios_init_resource._entry_ptr, ptr @pcibios_map_irq._entry, ptr @pcibios_map_irq._entry_ptr, ptr @pcibios_swizzle._entry, ptr @pcibios_swizzle._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @debug_pci, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcibios_fixup_bus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_pci to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcibios_bus_report_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcibios_init_resource._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcibios_map_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcibios_swizzle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pcibios_report_status(i32 noundef %status_mask, i32 noundef %warn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pci_root_buses to i32))
  %bus.07 = load ptr, ptr @pci_root_buses, align 4
  %cmp.not8 = icmp eq ptr %bus.07, @pci_root_buses
  br i1 %cmp.not8, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %bus.09 = phi ptr [ %bus.0, %for.body.for.body_crit_edge ], [ %bus.07, %entry.for.body_crit_edge ]
  tail call fastcc void @pcibios_bus_report_status(ptr noundef %bus.09, i32 noundef %status_mask, i32 noundef %warn)
  %0 = ptrtoint ptr %bus.09 to i32
  call void @__asan_load4_noabort(i32 %0)
  %bus.0 = load ptr, ptr %bus.09, align 4
  %cmp.not = icmp eq ptr %bus.0, @pci_root_buses
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcibios_bus_report_status(ptr noundef readonly %bus, i32 noundef %status_mask, i32 noundef %warn) unnamed_addr #0 align 64 {
entry:
  %status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %devices = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %0)
  %dev.071 = load ptr, ptr %devices, align 4
  %cmp.not72 = icmp eq ptr %dev.071, %devices
  br i1 %cmp.not72, label %entry.for.cond37.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond37.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond37.preheader

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %warn)
  %tobool.not = icmp eq i32 %warn, 0
  br label %for.body

for.cond37.preheader:                             ; preds = %cleanup.for.cond37.preheader_crit_edge, %entry.for.cond37.preheader_crit_edge
  %1 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %1)
  %dev.174 = load ptr, ptr %devices, align 4
  %cmp40.not75 = icmp eq ptr %dev.174, %devices
  br i1 %cmp40.not75, label %for.cond37.preheader.for.end54_crit_edge, label %for.cond37.preheader.for.body43_crit_edge

for.cond37.preheader.for.body43_crit_edge:        ; preds = %for.cond37.preheader
  br label %for.body43

for.cond37.preheader.for.end54_crit_edge:         ; preds = %for.cond37.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end54

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %dev.073 = phi ptr [ %dev.071, %for.body.lr.ph ], [ %dev.0, %cleanup.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status) #11
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %status, align 2, !annotation !61
  %bus2 = getelementptr inbounds %struct.pci_dev, ptr %dev.073, i32 0, i32 1
  %3 = ptrtoint ptr %bus2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus2, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %4, i32 0, i32 12
  %5 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %number, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp3 = icmp eq i8 %6, 0
  br i1 %cmp3, label %land.lhs.true, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %dev.073, i32 0, i32 6
  %7 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %devfn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp5 = icmp eq i32 %8, 0
  br i1 %cmp5, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %call = call i32 @pci_read_config_word(ptr noundef %dev.073, i32 noundef 6, ptr noundef nonnull %status) #11
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %status, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %10)
  %cmp8 = icmp eq i16 %10, -1
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %conv7 = zext i16 %10 to i32
  %and = and i32 %conv7, %status_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp13 = icmp eq i32 %and, 0
  br i1 %cmp13, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %conv19 = trunc i32 %and to i16
  %call20 = call i32 @pci_write_config_word(ptr noundef %dev.073, i32 noundef 6, i16 noundef zeroext %conv19) #11
  br i1 %tobool.not, label %if.end16.cleanup_crit_edge, label %do.end

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.end16
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.073, i32 0, i32 44, i32 3
  %11 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.pci_name.exit_crit_edge

do.end.pci_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %dev.073, i32 0, i32 44
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %14, %if.end.i.i ], [ %12, %do.end.pci_name.exit_crit_edge ]
  %15 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %status, align 2
  %conv24 = zext i16 %16 to i32
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %retval.0.i.i, i32 noundef %conv24) #14
  br label %cleanup

cleanup:                                          ; preds = %pci_name.exit, %if.end16.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status) #11
  %17 = ptrtoint ptr %dev.073 to i32
  call void @__asan_load4_noabort(i32 %17)
  %dev.0 = load ptr, ptr %dev.073, align 4
  %cmp.not = icmp eq ptr %dev.0, %devices
  br i1 %cmp.not, label %cleanup.for.cond37.preheader_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup.for.cond37.preheader_crit_edge:           ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond37.preheader

for.body43:                                       ; preds = %for.inc48.for.body43_crit_edge, %for.cond37.preheader.for.body43_crit_edge
  %dev.176 = phi ptr [ %dev.1, %for.inc48.for.body43_crit_edge ], [ %dev.174, %for.cond37.preheader.for.body43_crit_edge ]
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %dev.176, i32 0, i32 2
  %18 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %subordinate, align 4
  %tobool44.not = icmp eq ptr %19, null
  br i1 %tobool44.not, label %for.body43.for.inc48_crit_edge, label %if.then45

for.body43.for.inc48_crit_edge:                   ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc48

if.then45:                                        ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @pcibios_bus_report_status(ptr noundef nonnull %19, i32 noundef %status_mask, i32 noundef %warn)
  br label %for.inc48

for.inc48:                                        ; preds = %if.then45, %for.body43.for.inc48_crit_edge
  %20 = ptrtoint ptr %dev.176 to i32
  call void @__asan_load4_noabort(i32 %20)
  %dev.1 = load ptr, ptr %dev.176, align 4
  %cmp40.not = icmp eq ptr %dev.1, %devices
  br i1 %cmp40.not, label %for.inc48.for.end54_crit_edge, label %for.inc48.for.body43_crit_edge

for.inc48.for.body43_crit_edge:                   ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body43

for.inc48.for.end54_crit_edge:                    ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end54

for.end54:                                        ; preds = %for.inc48.for.end54_crit_edge, %for.cond37.preheader.for.end54_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_fixup_83c553(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 16, i32 noundef 0) #11
  %call1 = tail call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef 4, i16 noundef zeroext 1) #11
  %resource = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 0, i32 1
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end, align 4
  %sub = sub i32 %3, %1
  store i32 %sub, ptr %end, align 4
  store i32 0, ptr %resource, align 8
  %call7 = tail call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 72, i8 noundef zeroext -1) #11
  %call8 = tail call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 66, i8 noundef zeroext 1) #11
  %call9 = tail call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 64, i8 noundef zeroext 34) #11
  %call10 = tail call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 131, i8 noundef zeroext 2) #11
  %call11 = tail call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 128, i8 noundef zeroext 17) #11
  %call12 = tail call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 129, i8 noundef zeroext 0) #11
  %call13 = tail call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef 68, i16 noundef zeroext -20480) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !62
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873135 to ptr), i8 8) #11, !srcloc !63
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @pci_fixup_unassign(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %resource = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 0, i32 1
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end, align 4
  %sub = sub i32 %3, %1
  store i32 %sub, ptr %end, align 4
  store i32 0, ptr %resource, align 8
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_fixup_dec21285(ptr nocapture noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %devfn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %class = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 11
  %2 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %class, align 8
  %and = and i32 %3, 255
  %or = or i32 %and, 393216
  store i32 %or, ptr %class, align 8
  %arrayidx = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %arrayidx, align 8
  %end = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 0, i32 1
  %5 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %end, align 4
  %flags = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %flags, align 4
  %arrayidx.1 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %arrayidx.1, align 8
  %end.1 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 1, i32 1
  %8 = ptrtoint ptr %end.1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %end.1, align 4
  %flags.1 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 1, i32 3
  %9 = ptrtoint ptr %flags.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %flags.1, align 4
  %arrayidx.2 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %arrayidx.2, align 8
  %end.2 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 2, i32 1
  %11 = ptrtoint ptr %end.2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %end.2, align 4
  %flags.2 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 2, i32 3
  %12 = ptrtoint ptr %flags.2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %flags.2, align 4
  %arrayidx.3 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 3
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %arrayidx.3, align 8
  %end.3 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 3, i32 1
  %14 = ptrtoint ptr %end.3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %end.3, align 4
  %flags.3 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 3, i32 3
  %15 = ptrtoint ptr %flags.3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %flags.3, align 4
  %arrayidx.4 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 4
  %16 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %arrayidx.4, align 8
  %end.4 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 4, i32 1
  %17 = ptrtoint ptr %end.4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %end.4, align 4
  %flags.4 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 4, i32 3
  %18 = ptrtoint ptr %flags.4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %flags.4, align 4
  %arrayidx.5 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 5
  %19 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %arrayidx.5, align 8
  %end.5 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 5, i32 1
  %20 = ptrtoint ptr %end.5 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %end.5, align 4
  %flags.5 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 5, i32 3
  %21 = ptrtoint ptr %flags.5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %flags.5, align 4
  %arrayidx.6 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 6
  %22 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %arrayidx.6, align 8
  %end.6 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 6, i32 1
  %23 = ptrtoint ptr %end.6 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %end.6, align 4
  %flags.6 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 6, i32 3
  %24 = ptrtoint ptr %flags.6 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %flags.6, align 4
  %arrayidx.7 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 7
  %25 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %arrayidx.7, align 8
  %end.7 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 7, i32 1
  %26 = ptrtoint ptr %end.7 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %end.7, align 4
  %flags.7 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 7, i32 3
  %27 = ptrtoint ptr %flags.7 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %flags.7, align 4
  %arrayidx.8 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 8
  %28 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %arrayidx.8, align 8
  %end.8 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 8, i32 1
  %29 = ptrtoint ptr %end.8 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %end.8, align 4
  %flags.8 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 8, i32 3
  %30 = ptrtoint ptr %flags.8 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %flags.8, align 4
  %arrayidx.9 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 9
  %31 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %arrayidx.9, align 8
  %end.9 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 9, i32 1
  %32 = ptrtoint ptr %end.9 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %end.9, align 4
  %flags.9 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 9, i32 3
  %33 = ptrtoint ptr %flags.9 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %flags.9, align 4
  %arrayidx.10 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 10
  %34 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %arrayidx.10, align 8
  %end.10 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 10, i32 1
  %35 = ptrtoint ptr %end.10 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %end.10, align 4
  %flags.10 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 10, i32 3
  %36 = ptrtoint ptr %flags.10 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %flags.10, align 4
  %arrayidx.11 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 11
  %37 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %arrayidx.11, align 8
  %end.11 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 11, i32 1
  %38 = ptrtoint ptr %end.11 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %end.11, align 4
  %flags.11 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 11, i32 3
  %39 = ptrtoint ptr %flags.11 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %flags.11, align 4
  %arrayidx.12 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 12
  %40 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %arrayidx.12, align 8
  %end.12 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 12, i32 1
  %41 = ptrtoint ptr %end.12 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %end.12, align 4
  %flags.12 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 12, i32 3
  %42 = ptrtoint ptr %flags.12 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %flags.12, align 4
  %arrayidx.13 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 13
  %43 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %arrayidx.13, align 8
  %end.13 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 13, i32 1
  %44 = ptrtoint ptr %end.13 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %end.13, align 4
  %flags.13 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 13, i32 3
  %45 = ptrtoint ptr %flags.13 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %flags.13, align 4
  %arrayidx.14 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 14
  %46 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %arrayidx.14, align 8
  %end.14 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 14, i32 1
  %47 = ptrtoint ptr %end.14 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %end.14, align 4
  %flags.14 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 14, i32 3
  %48 = ptrtoint ptr %flags.14 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %flags.14, align 4
  %arrayidx.15 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 15
  %49 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %arrayidx.15, align 8
  %end.15 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 15, i32 1
  %50 = ptrtoint ptr %end.15 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %end.15, align 4
  %flags.15 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 15, i32 3
  %51 = ptrtoint ptr %flags.15 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %flags.15, align 4
  %arrayidx.16 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 16
  %52 = ptrtoint ptr %arrayidx.16 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %arrayidx.16, align 8
  %end.16 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 16, i32 1
  %53 = ptrtoint ptr %end.16 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %end.16, align 4
  %flags.16 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 16, i32 3
  %54 = ptrtoint ptr %flags.16 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %flags.16, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_fixup_ide_bases(ptr nocapture noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %class = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %class, align 8
  %shr.mask = and i32 %1, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 65792, i32 %shr.mask)
  %cmp.not = icmp eq i32 %shr.mask, 65792
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %resource = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.014 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.resource, ptr %resource, i32 %i.014
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %and = and i32 %3, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 884, i32 %and)
  %cmp2 = icmp eq i32 %and, 884
  br i1 %cmp2, label %if.then3, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %or = or i32 %3, 2
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %add.ptr, align 4
  %end = getelementptr %struct.resource, ptr %resource, i32 %i.014, i32 1
  %5 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %end, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_fixup_dec21142(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 64, i32 noundef -2147483648) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_fixup_cy82c693(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %class = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %class, align 8
  %shr.mask = and i32 %1, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 65792, i32 %shr.mask)
  %cmp = icmp eq i32 %shr.mask, 65792
  br i1 %cmp, label %if.then, label %if.else18

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and = and i32 %1, 128
  %2 = or i32 %and, 369
  %3 = or i32 %and, 885
  %call = tail call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 16, i32 noundef %2) #11
  %call4 = tail call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 20, i32 noundef %3) #11
  %resource = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %4 = ptrtoint ptr %resource to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 0, i32 1
  %5 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %end, align 4
  %flags = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %flags, align 4
  %arrayidx10 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 1
  %7 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %arrayidx10, align 8
  %end14 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 1, i32 1
  %8 = ptrtoint ptr %end14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %end14, align 4
  %flags17 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 1, i32 3
  %9 = ptrtoint ptr %flags17 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %flags17, align 4
  br label %if.end28

if.else18:                                        ; preds = %entry
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 6
  %10 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %devfn, align 4
  %and19 = and i32 %11, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %cmp20 = icmp eq i32 %and19, 0
  br i1 %cmp20, label %if.then21, label %if.else18.if.end28_crit_edge

if.else18.if.end28_crit_edge:                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then21:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #13
  %call22 = tail call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 75, i8 noundef zeroext 14) #11
  %call23 = tail call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 76, i8 noundef zeroext 15) #11
  %call24 = tail call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 77, i8 noundef zeroext 65) #11
  %call25 = tail call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 68, i8 noundef zeroext 23) #11
  %call26 = tail call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 69, i8 noundef zeroext 3) #11
  br label %if.end28

if.end28:                                         ; preds = %if.then21, %if.else18.if.end28_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pcibios_fixup_bus(ptr noundef %bus) #0 align 64 {
entry:
  %status = alloca i16, align 2
  %cmd = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %devices = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %0)
  %dev.0113 = load ptr, ptr %devices, align 4
  %cmp.not114 = icmp eq ptr %dev.0113, %devices
  br i1 %cmp.not114, label %entry.for.cond35.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond35.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond35.preheader

for.cond35.preheader:                             ; preds = %sw.epilog.for.cond35.preheader_crit_edge, %entry.for.cond35.preheader_crit_edge
  %features.0.lcssa = phi i16 [ 832, %entry.for.cond35.preheader_crit_edge ], [ %17, %sw.epilog.for.cond35.preheader_crit_edge ]
  %1 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %1)
  %dev.1117 = load ptr, ptr %devices, align 4
  %cmp38.not118 = icmp eq ptr %dev.1117, %devices
  br i1 %cmp38.not118, label %for.cond35.preheader.for.end55_crit_edge, label %for.cond35.preheader.for.body41_crit_edge

for.cond35.preheader.for.body41_crit_edge:        ; preds = %for.cond35.preheader
  br label %for.body41

for.cond35.preheader.for.end55_crit_edge:         ; preds = %for.cond35.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end55

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %entry.for.body_crit_edge
  %dev.0116 = phi ptr [ %dev.0, %sw.epilog.for.body_crit_edge ], [ %dev.0113, %entry.for.body_crit_edge ]
  %features.0115 = phi i16 [ %17, %sw.epilog.for.body_crit_edge ], [ 832, %entry.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status) #11
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %status, align 2, !annotation !61
  %call = call i32 @pci_read_config_word(ptr noundef %dev.0116, i32 noundef 6, ptr noundef nonnull %status) #11
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %status, align 2
  %5 = and i16 %4, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  %6 = and i16 %features.0115, -513
  %spec.select = select i1 %tobool.not, i16 %6, i16 %features.0115
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %dev.0116, i32 0, i32 7
  %7 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vendor.i, align 8
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i16 %8, label %for.body.pdev_bad_for_parity.exit.thread_crit_edge [
    i16 4330, label %pdev_bad_for_parity.exit
    i16 4739, label %land.rhs.i
  ]

for.body.pdev_bad_for_parity.exit.thread_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %pdev_bad_for_parity.exit.thread

land.rhs.i:                                       ; preds = %for.body
  %device13.i = getelementptr inbounds %struct.pci_dev, ptr %dev.0116, i32 0, i32 8
  %10 = ptrtoint ptr %device13.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %device13.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32430, i16 %11)
  %cmp15.i = icmp eq i16 %11, -32430
  br i1 %cmp15.i, label %land.rhs.i._crit_edge, label %land.rhs.i.pdev_bad_for_parity.exit.thread_crit_edge

land.rhs.i.pdev_bad_for_parity.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pdev_bad_for_parity.exit.thread

land.rhs.i._crit_edge:                            ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %15

pdev_bad_for_parity.exit:                         ; preds = %for.body
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %dev.0116, i32 0, i32 8
  %12 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %device.i, align 2
  %14 = add i16 %13, -8192
  %switch.and.i = and i16 %14, -17
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %switch.and.i)
  %switch.selectcmp.i = icmp eq i16 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %pdev_bad_for_parity.exit._crit_edge, label %pdev_bad_for_parity.exit.pdev_bad_for_parity.exit.thread_crit_edge

pdev_bad_for_parity.exit.pdev_bad_for_parity.exit.thread_crit_edge: ; preds = %pdev_bad_for_parity.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %pdev_bad_for_parity.exit.thread

pdev_bad_for_parity.exit._crit_edge:              ; preds = %pdev_bad_for_parity.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %15

15:                                               ; preds = %pdev_bad_for_parity.exit._crit_edge, %land.rhs.i._crit_edge
  %16 = and i16 %spec.select, -321
  br label %pdev_bad_for_parity.exit.thread

pdev_bad_for_parity.exit.thread:                  ; preds = %15, %pdev_bad_for_parity.exit.pdev_bad_for_parity.exit.thread_crit_edge, %land.rhs.i.pdev_bad_for_parity.exit.thread_crit_edge, %for.body.pdev_bad_for_parity.exit.thread_crit_edge
  %17 = phi i16 [ %16, %15 ], [ %spec.select, %pdev_bad_for_parity.exit.pdev_bad_for_parity.exit.thread_crit_edge ], [ %spec.select, %land.rhs.i.pdev_bad_for_parity.exit.thread_crit_edge ], [ %spec.select, %for.body.pdev_bad_for_parity.exit.thread_crit_edge ]
  %class = getelementptr inbounds %struct.pci_dev, ptr %dev.0116, i32 0, i32 11
  %18 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %class, align 8
  %shr = lshr i32 %19, 8
  %20 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %shr, label %pdev_bad_for_parity.exit.thread.sw.epilog_crit_edge [
    i32 1540, label %sw.bb
    i32 1543, label %sw.bb19
  ]

pdev_bad_for_parity.exit.thread.sw.epilog_crit_edge: ; preds = %pdev_bad_for_parity.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %pdev_bad_for_parity.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = call i32 @pci_read_config_word(ptr noundef %dev.0116, i32 noundef 62, ptr noundef nonnull %status) #11
  %21 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %status, align 2
  %23 = and i16 %22, -226
  br label %sw.epilog.sink.split

sw.bb19:                                          ; preds = %pdev_bad_for_parity.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  %call20 = call i32 @pci_read_config_word(ptr noundef %dev.0116, i32 noundef 62, ptr noundef nonnull %status) #11
  %24 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %status, align 2
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb19, %sw.bb
  %.sink.in = phi i16 [ %25, %sw.bb19 ], [ %23, %sw.bb ]
  %.sink = or i16 %.sink.in, 33
  %26 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %.sink, ptr %status, align 2
  %call24 = call i32 @pci_write_config_word(ptr noundef %dev.0116, i32 noundef 62, i16 noundef zeroext %.sink) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %pdev_bad_for_parity.exit.thread.sw.epilog_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status) #11
  %27 = ptrtoint ptr %dev.0116 to i32
  call void @__asan_load4_noabort(i32 %27)
  %dev.0 = load ptr, ptr %dev.0116, align 4
  %cmp.not = icmp eq ptr %dev.0, %devices
  br i1 %cmp.not, label %sw.epilog.for.cond35.preheader_crit_edge, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

sw.epilog.for.cond35.preheader_crit_edge:         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond35.preheader

for.body41:                                       ; preds = %for.body41.for.body41_crit_edge, %for.cond35.preheader.for.body41_crit_edge
  %dev.1119 = phi ptr [ %dev.1, %for.body41.for.body41_crit_edge ], [ %dev.1117, %for.cond35.preheader.for.body41_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #11
  %28 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 -1, ptr %cmd, align 2, !annotation !61
  %call42 = call i32 @pci_read_config_word(ptr noundef %dev.1119, i32 noundef 4, ptr noundef nonnull %cmd) #11
  %29 = ptrtoint ptr %cmd to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %cmd, align 2
  %or45112 = or i16 %30, %features.0.lcssa
  store i16 %or45112, ptr %cmd, align 2
  %call47 = call i32 @pci_write_config_word(ptr noundef %dev.1119, i32 noundef 4, i16 noundef zeroext %or45112) #11
  %call48 = call i32 @pci_write_config_byte(ptr noundef %dev.1119, i32 noundef 12, i8 noundef zeroext 32) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #11
  %31 = ptrtoint ptr %dev.1119 to i32
  call void @__asan_load4_noabort(i32 %31)
  %dev.1 = load ptr, ptr %dev.1119, align 4
  %cmp38.not = icmp eq ptr %dev.1, %devices
  br i1 %cmp38.not, label %for.body41.for.end55_crit_edge, label %for.body41.for.body41_crit_edge

for.body41.for.body41_crit_edge:                  ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body41

for.body41.for.end55_crit_edge:                   ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end55

for.end55:                                        ; preds = %for.body41.for.end55_crit_edge, %for.cond35.preheader.for.end55_crit_edge
  %self = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 4
  %32 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %self, align 4
  %tobool56.not = icmp eq ptr %33, null
  br i1 %tobool56.not, label %for.end55.do.end_crit_edge, label %land.lhs.true

for.end55.do.end_crit_edge:                       ; preds = %for.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %for.end55
  %hdr_type = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 13
  %34 = ptrtoint ptr %hdr_type to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %hdr_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %35)
  %cmp59 = icmp eq i8 %35, 1
  br i1 %cmp59, label %if.then61, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then61:                                        ; preds = %land.lhs.true
  %conv62 = zext i16 %features.0.lcssa to i32
  %and63 = and i32 %conv62, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.then61.if.end69_crit_edge, label %if.then65

if.then61.if.end69_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then65:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  %bridge_ctl = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 18
  %36 = ptrtoint ptr %bridge_ctl to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %bridge_ctl, align 4
  %38 = or i16 %37, 128
  store i16 %38, ptr %bridge_ctl, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then65, %if.then61.if.end69_crit_edge
  %and71 = and i32 %conv62, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.end69.do.end_crit_edge, label %if.then73

if.end69.do.end_crit_edge:                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  %bridge_ctl74 = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 18
  %39 = ptrtoint ptr %bridge_ctl74 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %bridge_ctl74, align 4
  %41 = or i16 %40, 1
  store i16 %41, ptr %bridge_ctl74, align 4
  br label %do.end

do.end:                                           ; preds = %if.then73, %if.end69.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %for.end55.do.end_crit_edge
  %number = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %42 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %number, align 4
  %conv81 = zext i8 %43 to i32
  %44 = and i16 %features.0.lcssa, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool84.not = icmp eq i16 %44, 0
  %cond = select i1 %tobool84.not, ptr @.str.4, ptr @.str.3
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv81, ptr noundef nonnull %cond) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_common_init_dev(ptr noundef %parent, ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  %head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head) #11
  %0 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %1 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head, ptr %head, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head, ptr %0, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pci_flags to i32))
  %3 = load i32, ptr @pci_flags, align 4
  %or.i = or i32 %3, 2
  store i32 %or.i, ptr @pci_flags, align 4
  %preinit = getelementptr inbounds %struct.hw_pci, ptr %hw, i32 0, i32 5
  %4 = ptrtoint ptr %preinit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %preinit, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void %5() #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %nr_controllers.i = getelementptr inbounds %struct.hw_pci, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %nr_controllers.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_controllers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp149.i = icmp sgt i32 %7, 0
  br i1 %cmp149.i, label %for.body.lr.ph.i, label %if.end.pcibios_init_hw.exit_crit_edge

if.end.pcibios_init_hw.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %pcibios_init_hw.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %swizzle.i = getelementptr inbounds %struct.hw_pci, ptr %hw, i32 0, i32 7
  %map_irq.i = getelementptr inbounds %struct.hw_pci, ptr %hw, i32 0, i32 8
  %private_data.i = getelementptr inbounds %struct.hw_pci, ptr %hw, i32 0, i32 2
  %setup.i = getelementptr inbounds %struct.hw_pci, ptr %hw, i32 0, i32 3
  %scan.i = getelementptr inbounds %struct.hw_pci, ptr %hw, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %busnr.0153.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %busnr.1.i, %for.inc.i.for.body.i_crit_edge ]
  %nr.0150.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %call.i = call ptr @pci_alloc_host_bridge(i32 noundef 96) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !64

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 439, i32 noundef 9, ptr noundef nonnull @.str.8) #11
  br label %pcibios_init_hw.exit

if.end23.i:                                       ; preds = %for.body.i
  %private.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call.i, i32 0, i32 16
  %busnr25.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call.i, i32 1, i32 0, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %busnr25.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %busnr.0153.i, ptr %busnr25.i, align 8
  %9 = ptrtoint ptr %swizzle.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %swizzle.i, align 4
  %swizzle26.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call.i, i32 1, i32 0, i32 0, i32 7, i32 1, i32 1
  %11 = ptrtoint ptr %swizzle26.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %swizzle26.i, align 4
  %12 = ptrtoint ptr %map_irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map_irq.i, align 4
  %map_irq27.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call.i, i32 1, i32 0, i32 0, i32 7, i32 1, i32 2
  %14 = ptrtoint ptr %map_irq27.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %map_irq27.i, align 8
  %resources.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call.i, i32 1, i32 0, i32 0, i32 7
  %15 = ptrtoint ptr %resources.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %resources.i, ptr %resources.i, align 4
  %prev.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call.i, i32 1, i32 0, i32 0, i32 7, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %resources.i, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private_data.i, align 4
  %tobool28.not.i = icmp eq ptr %18, null
  br i1 %tobool28.not.i, label %if.end23.i.if.end32.i_crit_edge, label %if.then29.i

if.end23.i.if.end32.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i

if.then29.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr ptr, ptr %18, i32 %nr.0150.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %private_data31.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call.i, i32 1, i32 0, i32 0, i32 7, i32 1, i32 3
  %21 = ptrtoint ptr %private_data31.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %private_data31.i, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then29.i, %if.end23.i.if.end32.i_crit_edge
  %22 = ptrtoint ptr %setup.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %setup.i, align 4
  %call33.i = call i32 %23(i32 noundef %nr.0150.i, ptr noundef %private.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %cmp34.i = icmp sgt i32 %call33.i, 0
  br i1 %cmp34.i, label %if.then35.i, label %if.else88.i

if.then35.i:                                      ; preds = %if.end32.i
  %24 = ptrtoint ptr %resources.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %resources.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %25, %resources.i
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %if.then35.i.for.cond.i.i.preheader_crit_edge

if.then35.i.for.cond.i.i.preheader_crit_edge:     ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i.preheader

if.then.i.i:                                      ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #13
  %mem_offset.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call.i, i32 1, i32 0, i32 0, i32 3
  %26 = ptrtoint ptr %mem_offset.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %mem_offset.i.i, align 8
  %conv.i.i = trunc i64 %27 to i32
  call void @pci_add_resource_offset(ptr noundef %resources.i, ptr noundef nonnull @iomem_resource, i32 noundef %conv.i.i) #11
  br label %for.cond.i.i.preheader

for.cond.i.i.preheader:                           ; preds = %if.then.i.i, %if.then35.i.for.cond.i.i.preheader_crit_edge
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.cond.i.i.preheader
  %window.0.in.i.i = phi ptr [ %window.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ %resources.i, %for.cond.i.i.preheader ]
  %28 = ptrtoint ptr %window.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %window.0.i.i = load ptr, ptr %window.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %window.0.i.i, %resources.i
  br i1 %cmp.not.i.i, label %for.end.i.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %res.i.i = getelementptr inbounds %struct.resource_entry, ptr %window.0.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %res.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %res.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.resource, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %32, 7936
  %cmp6.i.i = icmp eq i32 %and.i.i.i, 256
  br i1 %cmp6.i.i, label %for.body.i.i.if.end39.i_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i

for.body.i.i.if.end39.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39.i

for.end.i.i:                                      ; preds = %for.cond.i.i
  %mul.i.i = shl i32 %nr.0150.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i)
  %tobool15.not.i.i = icmp eq i32 %mul.i.i, 0
  br i1 %tobool15.not.i.i, label %cond.false.i.i, label %for.end.i.i.cond.end.i.i_crit_edge

for.end.i.i.cond.end.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pcibios_min_io to i32))
  %33 = load i32, ptr @pcibios_min_io, align 4
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %for.end.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %33, %cond.false.i.i ], [ %mul.i.i, %for.end.i.i.cond.end.i.i_crit_edge ]
  %io_res.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call.i, i32 1, i32 0, i32 0, i32 7, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %io_res.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %cond.i.i, ptr %io_res.i.i, align 8
  %sub.i.i = or i32 %mul.i.i, 65535
  %end.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call.i, i32 1, i32 0, i32 0, i32 7, i32 0, i32 2
  %35 = ptrtoint ptr %end.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub.i.i, ptr %end.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call.i, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3, i32 1
  %36 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 256, ptr %flags.i.i, align 4
  %io_res_name.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call.i, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3, i32 7
  %name.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call.i, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3
  %37 = ptrtoint ptr %name.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %io_res_name.i.i, ptr %name.i.i, align 8
  %call22.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %io_res_name.i.i, ptr noundef nonnull @.str.10, i32 noundef %nr.0150.i) #11
  %call24.i.i = call i32 @request_resource(ptr noundef nonnull @ioport_resource, ptr noundef %io_res.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %tobool25.not.i.i = icmp eq i32 %call24.i.i, 0
  br i1 %tobool25.not.i.i, label %if.end29.i.i, label %if.then38.i

if.end29.i.i:                                     ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %io_offset.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call.i, i32 1, i32 0, i32 0, i32 5
  %38 = ptrtoint ptr %io_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %io_offset.i.i, align 8
  call void @pci_add_resource_offset(ptr noundef %resources.i, ptr noundef %io_res.i.i, i32 noundef %39) #11
  br label %if.end39.i

if.then38.i:                                      ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call28.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %call24.i.i) #14
  call void @pci_free_host_bridge(ptr noundef nonnull %call.i) #11
  br label %pcibios_init_hw.exit

if.end39.i:                                       ; preds = %if.end29.i.i, %for.body.i.i.if.end39.i_crit_edge
  %map_irq40.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call.i, i32 0, i32 10
  %40 = ptrtoint ptr %map_irq40.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @pcibios_map_irq, ptr %map_irq40.i, align 4
  %swizzle_irq.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call.i, i32 0, i32 9
  %41 = ptrtoint ptr %swizzle_irq.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @pcibios_swizzle, ptr %swizzle_irq.i, align 8
  %42 = ptrtoint ptr %scan.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %scan.i, align 4
  %tobool41.not.i = icmp eq ptr %43, null
  br i1 %tobool41.not.i, label %if.else.i, label %if.then42.i

if.then42.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  %call44.i = call i32 %43(i32 noundef %nr.0150.i, ptr noundef nonnull %call.i) #11
  br label %if.end51.i

if.else.i:                                        ; preds = %if.end39.i
  %44 = ptrtoint ptr %resources.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %resources.i, align 4
  %cmp.i.not.i138.i = icmp eq ptr %45, %resources.i
  br i1 %cmp.i.not.i138.i, label %if.else.i.list_splice_init.exit.i_crit_edge, label %if.then.i139.i

if.else.i.list_splice_init.exit.i_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_init.exit.i

if.then.i139.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %windows.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call.i, i32 0, i32 7
  %46 = ptrtoint ptr %windows.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %windows.i, align 4
  %48 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %50 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %windows.i, ptr %prev3.i.i.i, align 4
  store ptr %45, ptr %windows.i, align 4
  %51 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %47, ptr %49, align 4
  %prev6.i.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %52 = ptrtoint ptr %prev6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev6.i.i.i, align 4
  %53 = ptrtoint ptr %resources.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %resources.i, ptr %resources.i, align 4
  store ptr %resources.i, ptr %prev.i.i, align 4
  br label %list_splice_init.exit.i

list_splice_init.exit.i:                          ; preds = %if.then.i139.i, %if.else.i.list_splice_init.exit.i_crit_edge
  %parent46.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 1
  %54 = ptrtoint ptr %parent46.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %parent, ptr %parent46.i, align 8
  %sysdata.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call.i, i32 0, i32 4
  %55 = ptrtoint ptr %sysdata.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %private.i.i, ptr %sysdata.i, align 4
  %56 = ptrtoint ptr %busnr25.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %busnr25.i, align 8
  %busnr48.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call.i, i32 0, i32 5
  %58 = ptrtoint ptr %busnr48.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %busnr48.i, align 16
  %59 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hw, align 4
  %ops49.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call.i, i32 0, i32 2
  %61 = ptrtoint ptr %ops49.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %ops49.i, align 4
  %call50.i = call i32 @pci_scan_root_bus_bridge(ptr noundef nonnull %call.i) #11
  br label %if.end51.i

if.end51.i:                                       ; preds = %list_splice_init.exit.i, %if.then42.i
  %ret.0.i = phi i32 [ %call44.i, %if.then42.i ], [ %call50.i, %list_splice_init.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp53.i = icmp slt i32 %ret.0.i, 0
  br i1 %cmp53.i, label %do.end69.i, label %if.end85.i, !prof !64

do.end69.i:                                       ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 478, i32 noundef 9, ptr noundef nonnull @.str.9) #11
  call void @pci_free_host_bridge(ptr noundef nonnull %call.i) #11
  br label %pcibios_init_hw.exit

if.end85.i:                                       ; preds = %if.end51.i
  %bus.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call.i, i32 0, i32 1
  %62 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bus.i, align 32
  %bus86.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call.i, i32 1, i32 0, i32 0, i32 6
  %64 = ptrtoint ptr %bus86.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %bus86.i, align 4
  %end.i = getelementptr inbounds %struct.pci_bus, ptr %63, i32 0, i32 8, i32 1
  %65 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %end.i, align 4
  %add.i = add i32 %66, 1
  %67 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %head, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %private.i.i, ptr noundef nonnull %head, ptr noundef %68) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end85.i.for.inc.i_crit_edge

if.end85.i.for.inc.i_crit_edge:                   ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i.i.i:                                     ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %private.i.i, ptr %prev1.i.i.i, align 4
  %70 = ptrtoint ptr %private.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %68, ptr %private.i.i, align 4
  %prev3.i.i141.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call.i, i32 1, i32 0, i32 0, i32 1
  %71 = ptrtoint ptr %prev3.i.i141.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %head, ptr %prev3.i.i141.i, align 4
  %72 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %private.i.i, ptr %head, align 4
  br label %for.inc.i

if.else88.i:                                      ; preds = %if.end32.i
  call void @pci_free_host_bridge(ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %cmp89.i = icmp slt i32 %call33.i, 0
  br i1 %cmp89.i, label %if.else88.i.pcibios_init_hw.exit_crit_edge, label %if.else88.i.for.inc.i_crit_edge

if.else88.i.for.inc.i_crit_edge:                  ; preds = %if.else88.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.else88.i.pcibios_init_hw.exit_crit_edge:       ; preds = %if.else88.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pcibios_init_hw.exit

for.inc.i:                                        ; preds = %if.else88.i.for.inc.i_crit_edge, %if.end.i.i.i, %if.end85.i.for.inc.i_crit_edge
  %busnr.1.i = phi i32 [ %busnr.0153.i, %if.else88.i.for.inc.i_crit_edge ], [ %add.i, %if.end85.i.for.inc.i_crit_edge ], [ %add.i, %if.end.i.i.i ]
  %inc.i = add nuw nsw i32 %nr.0150.i, 1
  %73 = ptrtoint ptr %nr_controllers.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %nr_controllers.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %74
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.pcibios_init_hw.exit_crit_edge

for.inc.i.pcibios_init_hw.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pcibios_init_hw.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

pcibios_init_hw.exit:                             ; preds = %for.inc.i.pcibios_init_hw.exit_crit_edge, %if.else88.i.pcibios_init_hw.exit_crit_edge, %do.end69.i, %if.then38.i, %do.end.i, %if.end.pcibios_init_hw.exit_crit_edge
  %postinit = getelementptr inbounds %struct.hw_pci, ptr %hw, i32 0, i32 6
  %75 = ptrtoint ptr %postinit to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %postinit, align 4
  %tobool2.not = icmp eq ptr %76, null
  br i1 %tobool2.not, label %pcibios_init_hw.exit.if.end5_crit_edge, label %if.then3

pcibios_init_hw.exit.if.end5_crit_edge:           ; preds = %pcibios_init_hw.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then3:                                         ; preds = %pcibios_init_hw.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void %76() #11
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %pcibios_init_hw.exit.if.end5_crit_edge
  %77 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %77)
  %sys.053 = load ptr, ptr %head, align 4
  %cmp.not54 = icmp eq ptr %sys.053, %head
  br i1 %cmp.not54, label %if.end5.for.end32_crit_edge, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body

if.end5.for.end32_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end32

for.body:                                         ; preds = %if.end25.for.body_crit_edge, %if.end5.for.body_crit_edge
  %sys.055 = phi ptr [ %sys.0, %if.end25.for.body_crit_edge ], [ %sys.053, %if.end5.for.body_crit_edge ]
  %bus7 = getelementptr inbounds %struct.pci_sys_data, ptr %sys.055, i32 0, i32 4
  %78 = ptrtoint ptr %bus7 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bus7, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pci_flags to i32))
  %80 = load i32, ptr @pci_flags, align 4
  %and.i = and i32 %80, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not = icmp eq i32 %and.i, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void @pci_bus_claim_resources(ptr noundef %79) #11
  br label %if.end25

if.else:                                          ; preds = %for.body
  call void @pci_bus_size_bridges(ptr noundef %79) #11
  call void @pci_bus_assign_resources(ptr noundef %79) #11
  %children = getelementptr inbounds %struct.pci_bus, ptr %79, i32 0, i32 2
  %81 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %81)
  %child.050 = load ptr, ptr %children, align 4
  %cmp17.not51 = icmp eq ptr %child.050, %children
  br i1 %cmp17.not51, label %if.else.if.end25_crit_edge, label %if.else.for.body19_crit_edge

if.else.for.body19_crit_edge:                     ; preds = %if.else
  br label %for.body19

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

for.body19:                                       ; preds = %for.body19.for.body19_crit_edge, %if.else.for.body19_crit_edge
  %child.052 = phi ptr [ %child.0, %for.body19.for.body19_crit_edge ], [ %child.050, %if.else.for.body19_crit_edge ]
  call void @pcie_bus_configure_settings(ptr noundef %child.052) #11
  %82 = ptrtoint ptr %child.052 to i32
  call void @__asan_load4_noabort(i32 %82)
  %child.0 = load ptr, ptr %child.052, align 4
  %cmp17.not = icmp eq ptr %child.0, %children
  br i1 %cmp17.not, label %for.body19.if.end25_crit_edge, label %for.body19.for.body19_crit_edge

for.body19.for.body19_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body19

for.body19.if.end25_crit_edge:                    ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.end25:                                         ; preds = %for.body19.if.end25_crit_edge, %if.else.if.end25_crit_edge, %if.then9
  call void @pci_bus_add_devices(ptr noundef %79) #11
  %83 = ptrtoint ptr %sys.055 to i32
  call void @__asan_load4_noabort(i32 %83)
  %sys.0 = load ptr, ptr %sys.055, align 4
  %cmp.not = icmp eq ptr %sys.0, %head
  br i1 %cmp.not, label %if.end25.for.end32_crit_edge, label %if.end25.for.body_crit_edge

if.end25.for.body_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end25.for.end32_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end32

for.end32:                                        ; preds = %if.end25.for.end32_crit_edge, %if.end5.for.end32_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_bus_claim_resources(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_bus_size_bridges(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_bus_assign_resources(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcie_bus_configure_settings(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_bus_add_devices(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @pcibios_set_master(ptr nocapture noundef %dev) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @pcibios_setup(ptr noundef readonly %str) local_unnamed_addr #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strcmp(ptr noundef %str, ptr noundef nonnull dereferenceable(6) @.str.5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @debug_pci, align 4
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %if.then ], [ %str, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcibios_align_resource(ptr noundef %data, ptr noundef %res, i32 noundef %size, i32 noundef %align) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %res, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and2 = and i32 %1, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  %add = add i32 %1, 1023
  %and4 = and i32 %add, -1024
  %start.0 = select i1 %or.cond, i32 %1, i32 %and4
  %add5 = add i32 %align, -1
  %sub = add i32 %add5, %start.0
  %neg = sub i32 0, %align
  %and7 = and i32 %sub, %neg
  %bus = getelementptr inbounds %struct.pci_dev, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 8
  %call = tail call ptr @pci_find_host_bridge(ptr noundef %5) #11
  %align_resource = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 14
  %6 = ptrtoint ptr %align_resource to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %align_resource, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %entry.cleanup_crit_edge, label %if.then9

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = tail call i32 %7(ptr noundef %data, ptr noundef %res, i32 noundef %and7, i32 noundef %size, i32 noundef %align) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.then9 ], [ %and7, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_find_host_bridge(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_map_io_early(i32 noundef %pfn) local_unnamed_addr #9 section ".init.text" align 64 {
entry:
  %pci_io_desc = alloca %struct.map_desc, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pci_io_desc) #11
  %0 = call ptr @memcpy(ptr %pci_io_desc, ptr @__const.pci_map_io_early.pci_io_desc, i32 16)
  %pfn1 = getelementptr inbounds %struct.map_desc, ptr %pci_io_desc, i32 0, i32 1
  %1 = ptrtoint ptr %pfn1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %pfn, ptr %pfn1, align 4
  call void @iotable_init(ptr noundef nonnull %pci_io_desc, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pci_io_desc) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iotable_init(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_alloc_host_bridge(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_host_bridge(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcibios_map_irq(ptr noundef %dev, i8 noundef zeroext %slot, i8 noundef zeroext %pin) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata, align 8
  %map_irq = getelementptr inbounds %struct.pci_sys_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %map_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map_irq, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 %3(ptr noundef %dev, i8 noundef zeroext %slot, i8 noundef zeroext %pin) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %irq.0 = phi i32 [ %call, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %.b = load i1, ptr @debug_pci, align 4
  br i1 %.b, label %do.end, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

do.end:                                           ; preds = %if.end
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.pci_name.exit_crit_edge

do.end.pci_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ %5, %do.end.pci_name.exit_crit_edge ]
  %conv = zext i8 %slot to i32
  %conv5 = zext i8 %pin to i32
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %retval.0.i.i, i32 noundef %conv, i32 noundef %conv5, i32 noundef %irq.0) #14
  br label %if.end7

if.end7:                                          ; preds = %pci_name.exit, %if.end.if.end7_crit_edge
  ret i32 %irq.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @pcibios_swizzle(ptr noundef %dev, ptr noundef %pin) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata, align 8
  %2 = ptrtoint ptr %pin to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pin, align 1
  %conv = zext i8 %3 to i32
  %swizzle = getelementptr inbounds %struct.pci_sys_data, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %swizzle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %swizzle, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call zeroext i8 %5(ptr noundef %dev, ptr noundef %pin) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call zeroext i8 @pci_common_swizzle(ptr noundef %dev, ptr noundef %pin) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %slot.0.in = phi i8 [ %call, %if.then ], [ %call3, %if.else ]
  %.b = load i1, ptr @debug_pci, align 4
  br i1 %.b, label %do.end, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

do.end:                                           ; preds = %if.end
  %slot.0 = zext i8 %slot.0.in to i32
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.pci_name.exit_crit_edge

do.end.pci_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i ], [ %7, %do.end.pci_name.exit_crit_edge ]
  %10 = ptrtoint ptr %pin to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pin, align 1
  %conv8 = zext i8 %11 to i32
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %retval.0.i.i, i32 noundef %conv, i32 noundef %conv8, i32 noundef %slot.0) #14
  br label %if.end10

if.end10:                                         ; preds = %pci_name.exit, %if.end.if.end10_crit_edge
  ret i8 %slot.0.in
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_scan_root_bus_bridge(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_add_resource_offset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_resource(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pci_common_swizzle(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold mustprogress nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !24, !26, !28, !29, !30, !31, !33, !35, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__pci_fixup_pci_fixup_83c553129, !1, !"__pci_fixup_pci_fixup_83c553129", i1 false, i1 false}
!1 = !{!"../arch/arm/kernel/bios32.c", i32 129, i32 1}
!2 = !{ptr @__pci_fixup_pci_fixup_unassign136, !3, !"__pci_fixup_pci_fixup_unassign136", i1 false, i1 false}
!3 = !{!"../arch/arm/kernel/bios32.c", i32 136, i32 1}
!4 = !{ptr @__pci_fixup_pci_fixup_dec21285157, !5, !"__pci_fixup_pci_fixup_dec21285157", i1 false, i1 false}
!5 = !{!"../arch/arm/kernel/bios32.c", i32 157, i32 1}
!6 = !{ptr @__pci_fixup_pci_fixup_ide_bases178, !7, !"__pci_fixup_pci_fixup_ide_bases178", i1 false, i1 false}
!7 = !{!"../arch/arm/kernel/bios32.c", i32 178, i32 1}
!8 = !{ptr @__pci_fixup_pci_fixup_dec21142187, !9, !"__pci_fixup_pci_fixup_dec21142187", i1 false, i1 false}
!9 = !{!"../arch/arm/kernel/bios32.c", i32 187, i32 1}
!10 = !{ptr @__pci_fixup_pci_fixup_cy82c693253, !11, !"__pci_fixup_pci_fixup_cy82c693253", i1 false, i1 false}
!11 = !{!"../arch/arm/kernel/bios32.c", i32 253, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/kernel/bios32.c", i32 342, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @pcibios_fixup_bus._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @pcibios_fixup_bus._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__ksymtab_pcibios_fixup_bus, !21, !"__ksymtab_pcibios_fixup_bus", i1 false, i1 false}
!21 = !{!"../arch/arm/kernel/bios32.c", i32 345, i32 1}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/kernel/bios32.c", i32 541, i32 19}
!24 = distinct !{null, !25, !"debug_pci", i1 false, i1 false}
!25 = !{!"../arch/arm/kernel/bios32.c", i32 20, i32 12}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../arch/arm/kernel/bios32.c", i32 51, i32 4}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @pcibios_bus_report_status._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @pcibios_bus_report_status._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../arch/arm/kernel/bios32.c", i32 439, i32 7}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../arch/arm/kernel/bios32.c", i32 478, i32 8}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../arch/arm/kernel/bios32.c", i32 415, i32 28}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../arch/arm/kernel/bios32.c", i32 419, i32 3}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @pcibios_init_resource._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @pcibios_init_resource._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../arch/arm/kernel/bios32.c", i32 391, i32 3}
!44 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @pcibios_map_irq._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @pcibios_map_irq._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../arch/arm/kernel/bios32.c", i32 373, i32 3}
!49 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @pcibios_swizzle._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @pcibios_swizzle._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{!"auto-init"}
!62 = !{i64 2154650019}
!63 = !{i64 4993246}
!64 = !{!"branch_weights", i32 1, i32 2000}
