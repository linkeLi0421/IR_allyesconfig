; ModuleID = '/llk/IR_all_yes/drivers/cxl/core/regs.c_pt.bc'
source_filename = "../drivers/cxl/core/regs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+cxl_probe_component_regs\22, \22a\22\09"
module asm "\09.weak\09__crc_cxl_probe_component_regs\09\09\09\09"
module asm "\09.long\09__crc_cxl_probe_component_regs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxl_probe_component_regs:\09\09\09\09\09"
module asm "\09.asciz \09\22cxl_probe_component_regs\22\09\09\09\09\09"
module asm "__kstrtabns_cxl_probe_component_regs:\09\09\09\09\09"
module asm "\09.asciz \09\22CXL\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cxl_probe_device_regs\22, \22a\22\09"
module asm "\09.weak\09__crc_cxl_probe_device_regs\09\09\09\09"
module asm "\09.long\09__crc_cxl_probe_device_regs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxl_probe_device_regs:\09\09\09\09\09"
module asm "\09.asciz \09\22cxl_probe_device_regs\22\09\09\09\09\09"
module asm "__kstrtabns_cxl_probe_device_regs:\09\09\09\09\09"
module asm "\09.asciz \09\22CXL\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cxl_map_component_regs\22, \22a\22\09"
module asm "\09.weak\09__crc_cxl_map_component_regs\09\09\09\09"
module asm "\09.long\09__crc_cxl_map_component_regs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxl_map_component_regs:\09\09\09\09\09"
module asm "\09.asciz \09\22cxl_map_component_regs\22\09\09\09\09\09"
module asm "__kstrtabns_cxl_map_component_regs:\09\09\09\09\09"
module asm "\09.asciz \09\22CXL\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cxl_map_device_regs\22, \22a\22\09"
module asm "\09.weak\09__crc_cxl_map_device_regs\09\09\09\09"
module asm "\09.long\09__crc_cxl_map_device_regs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxl_map_device_regs:\09\09\09\09\09"
module asm "\09.asciz \09\22cxl_map_device_regs\22\09\09\09\09\09"
module asm "__kstrtabns_cxl_map_device_regs:\09\09\09\09\09"
module asm "\09.asciz \09\22CXL\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.cxl_device_reg_map = type { %struct.cxl_reg_map, %struct.cxl_reg_map, %struct.cxl_reg_map }
%struct.cxl_reg_map = type { i8, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.76, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.76 = type { ptr }
%struct.cxl_register_map = type { ptr, i64, i8, i8, %union.anon.77 }
%union.anon.77 = type { %struct.cxl_device_reg_map }
%struct.cxl_device_regs = type { ptr, ptr, ptr }

@cxl_probe_component_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 52, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Couldn't locate the CXL.cache and CXL.mem capability array header./n\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cxl_probe_component_regs\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/cxl/core/regs.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cxl_probe_component_regs._entry_ptr = internal global ptr @cxl_probe_component_regs._entry, section ".printk_index", align 4
@cxl_probe_component_regs.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cxl_core\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"found HDM decoder capability (0x%x)\0A\00", [59 x i8] zeroinitializer }, align 32
@cxl_probe_component_regs.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unknown CM cap ID: %d (0x%x)\0A\00", [34 x i8] zeroinitializer }, align 32
@__kstrtab_cxl_probe_component_regs = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxl_probe_component_regs = external dso_local constant [0 x i8], align 1
@__ksymtab_cxl_probe_component_regs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxl_probe_component_regs to i32), ptr @__kstrtab_cxl_probe_component_regs, ptr @__kstrtabns_cxl_probe_component_regs }, section "___ksymtab_gpl+cxl_probe_component_regs", align 4
@cxl_probe_device_regs.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cxl_probe_device_regs\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"found Status capability (0x%x)\0A\00", [32 x i8] zeroinitializer }, align 32
@cxl_probe_device_regs.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.8, ptr @.str.2, ptr @.str.10, i8 0, i8 34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"found Mailbox capability (0x%x)\0A\00", [63 x i8] zeroinitializer }, align 32
@cxl_probe_device_regs.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.8, ptr @.str.2, ptr @.str.11, i8 0, i8 35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"found Secondary Mailbox capability (0x%x)\0A\00", [53 x i8] zeroinitializer }, align 32
@cxl_probe_device_regs.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.8, ptr @.str.2, ptr @.str.12, i8 0, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"found Memory Device capability (0x%x)\0A\00", [57 x i8] zeroinitializer }, align 32
@cxl_probe_device_regs.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.8, ptr @.str.2, ptr @.str.13, i8 0, i8 38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Vendor cap ID: %#x offset: %#x\0A\00", [32 x i8] zeroinitializer }, align 32
@cxl_probe_device_regs.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.8, ptr @.str.2, ptr @.str.14, i8 0, i8 38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unknown cap ID: %#x offset: %#x\0A\00", [63 x i8] zeroinitializer }, align 32
@__kstrtab_cxl_probe_device_regs = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxl_probe_device_regs = external dso_local constant [0 x i8], align 1
@__ksymtab_cxl_probe_device_regs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxl_probe_device_regs to i32), ptr @__kstrtab_cxl_probe_device_regs, ptr @__kstrtabns_cxl_probe_device_regs }, section "___ksymtab_gpl+cxl_probe_device_regs", align 4
@__kstrtab_cxl_map_component_regs = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxl_map_component_regs = external dso_local constant [0 x i8], align 1
@__ksymtab_cxl_map_component_regs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxl_map_component_regs to i32), ptr @__kstrtab_cxl_map_component_regs, ptr @__kstrtabns_cxl_map_component_regs }, section "___ksymtab_gpl+cxl_map_component_regs", align 4
@__kstrtab_cxl_map_device_regs = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxl_map_device_regs = external dso_local constant [0 x i8], align 1
@__ksymtab_cxl_map_device_regs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxl_map_device_regs to i32), ptr @__kstrtab_cxl_map_device_regs, ptr @__kstrtabns_cxl_map_device_regs }, section "___ksymtab_gpl+cxl_map_device_regs", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@devm_cxl_iomap_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 172, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to request region %pa-%pa\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"devm_cxl_iomap_block\00", [43 x i8] zeroinitializer }, align 32
@devm_cxl_iomap_block._entry_ptr = internal global ptr @devm_cxl_iomap_block._entry, section ".printk_index", align 4
@devm_cxl_iomap_block._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 178, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to map region %pr\0A\00", [38 x i8] zeroinitializer }, align 32
@devm_cxl_iomap_block._entry_ptr.19 = internal global ptr @devm_cxl_iomap_block._entry.17, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 1, i64 2, i64 3, i64 16384]
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 51, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 74, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 87, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 129, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 136, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 142, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 145, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 152, i32 5 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 154, i32 5 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 172, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private constant [27 x i8] c"../drivers/cxl/core/regs.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 178, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__ksymtab_cxl_map_component_regs, ptr @__ksymtab_cxl_map_device_regs, ptr @__ksymtab_cxl_probe_component_regs, ptr @__ksymtab_cxl_probe_device_regs, ptr @cxl_probe_component_regs._entry, ptr @cxl_probe_component_regs._entry_ptr, ptr @devm_cxl_iomap_block._entry, ptr @devm_cxl_iomap_block._entry.17, ptr @devm_cxl_iomap_block._entry_ptr, ptr @devm_cxl_iomap_block._entry_ptr.19, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxl_probe_component_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devm_cxl_iomap_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devm_cxl_iomap_block._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxl_probe_component_regs(ptr noundef %dev, ptr noundef %base, ptr nocapture noundef writeonly %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %map to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %map, align 4
  %.compoundliteral.sroa.2136.0..sroa_idx = getelementptr inbounds i8, ptr %map, i32 4
  %1 = ptrtoint ptr %.compoundliteral.sroa.2136.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %.compoundliteral.sroa.2136.0..sroa_idx, align 4
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %map, i32 8
  %2 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 4
  %add.ptr = getelementptr i8, ptr %base, i32 4096
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  %add.ptr.i = getelementptr i8, ptr %base, i32 4100
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  %5 = call i32 @llvm.bswap.i32(i32 %3)
  %6 = and i32 %5, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.not = icmp eq i32 %6, 1
  br i1 %cmp.not, label %do.end32, label %do.end17

do.end17:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #8
  br label %cleanup

do.end32:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %5)
  %cmp37.not154 = icmp ult i32 %5, 16777216
  br i1 %cmp37.not154, label %do.end32.cleanup_crit_edge, label %for.body.lr.ph

do.end32.cleanup_crit_edge:                       ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end32
  %7 = lshr i32 %5, 24
  br label %for.body

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %for.body.lr.ph
  %cap.0155 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %sw.epilog.for.body_crit_edge ]
  %mul = shl i32 %cap.0155, 2
  %add.ptr40 = getelementptr i8, ptr %add.ptr, i32 %mul
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #5, !srcloc !60
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  %shr80 = lshr i32 %9, 20
  %add.ptr83 = getelementptr i8, ptr %add.ptr, i32 %shr80
  %conv84 = and i32 %9, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %conv84)
  %cond = icmp eq i32 %conv84, 5
  br i1 %cond, label %do.body85, label %do.body110

do.body85:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxl_probe_component_regs.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxl_probe_component_regs, %if.then90)) #5
          to label %do.end94 [label %if.then90], !srcloc !64

if.then90:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxl_probe_component_regs.__UNIQUE_ID_ddebug287, ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %shr80) #5
  br label %do.end94

do.end94:                                         ; preds = %if.then90, %do.body85
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83) #5, !srcloc !60
  %11 = lshr i32 %10, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  %and.i = and i32 %11, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %mul.i = shl nuw nsw i32 %and.i, 6
  %mul.i.op = or i32 %mul.i, 16
  %add = select i1 %tobool.not.i, i32 48, i32 %mul.i.op
  %12 = ptrtoint ptr %map to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %map, align 4
  %add105 = or i32 %shr80, 4096
  %13 = ptrtoint ptr %.compoundliteral.sroa.2136.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add105, ptr %.compoundliteral.sroa.2136.0..sroa_idx, align 4
  %14 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 4
  br label %sw.epilog

do.body110:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxl_probe_component_regs.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxl_probe_component_regs, %if.then122)) #5
          to label %sw.epilog [label %if.then122], !srcloc !64

if.then122:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxl_probe_component_regs.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %conv84, i32 noundef %shr80) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then122, %do.body110, %do.end94
  %inc = add nuw nsw i32 %cap.0155, 1
  %exitcond = icmp eq i32 %cap.0155, %7
  br i1 %exitcond, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.cleanup_crit_edge, %do.end32.cleanup_crit_edge, %do.end17
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxl_probe_device_regs(ptr noundef %dev, ptr noundef %base, ptr nocapture noundef writeonly %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %map, i32 0, i32 36)
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %base) #5, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  %add.ptr.i = getelementptr i32, ptr %base, i32 1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  %3 = zext i32 %2 to i64
  %4 = zext i32 %1 to i64
  %5 = shl nuw i64 %4, 32
  %6 = or i64 %5, %3
  %7 = tail call i64 @llvm.bswap.i64(i64 %6) #5
  %and = and i64 %7, 65535
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp.not = icmp eq i64 %and, 0
  br i1 %cmp.not, label %do.end27, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end27:                                         ; preds = %entry
  %and29 = lshr i64 %7, 32
  %8 = trunc i64 %and29 to i32
  %conv = and i32 %8, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp31.not243 = icmp eq i32 %conv, 0
  br i1 %cmp31.not243, label %do.end27.cleanup_crit_edge, label %for.body.lr.ph

do.end27.cleanup_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end27
  %memdev = getelementptr inbounds %struct.cxl_device_reg_map, ptr %map, i32 0, i32 2
  %offset143 = getelementptr inbounds %struct.cxl_device_reg_map, ptr %map, i32 0, i32 2, i32 1
  %size145 = getelementptr inbounds %struct.cxl_device_reg_map, ptr %map, i32 0, i32 2, i32 2
  %mbox = getelementptr inbounds %struct.cxl_device_reg_map, ptr %map, i32 0, i32 1
  %offset104 = getelementptr inbounds %struct.cxl_device_reg_map, ptr %map, i32 0, i32 1, i32 1
  %size106 = getelementptr inbounds %struct.cxl_device_reg_map, ptr %map, i32 0, i32 1, i32 2
  %offset83 = getelementptr inbounds %struct.cxl_reg_map, ptr %map, i32 0, i32 1
  %size = getelementptr inbounds %struct.cxl_reg_map, ptr %map, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %for.body.lr.ph
  %cap.0244 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %sw.epilog.for.body_crit_edge ]
  %mul = shl i32 %cap.0244, 4
  %add.ptr49 = getelementptr i8, ptr %base, i32 %mul
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #5, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  %10 = and i32 %9, -65536
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %add.ptr60 = getelementptr i8, ptr %add.ptr49, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60) #5, !srcloc !60
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %add.ptr68 = getelementptr i8, ptr %add.ptr49, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68) #5, !srcloc !60
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  %trunc = trunc i32 %11 to i16
  %16 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %sw.default [
    i16 1, label %do.body73
    i16 2, label %do.body86
    i16 3, label %do.body108
    i16 16384, label %do.body125
  ]

do.body73:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxl_probe_device_regs.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxl_probe_device_regs, %if.then78)) #5
          to label %do.end81 [label %if.then78], !srcloc !64

if.then78:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxl_probe_device_regs.__UNIQUE_ID_ddebug304, ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %13) #5
  br label %do.end81

do.end81:                                         ; preds = %if.then78, %do.body73
  %17 = ptrtoint ptr %map to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %map, align 4
  %18 = ptrtoint ptr %offset83 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %13, ptr %offset83, align 4
  %19 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %15, ptr %size, align 4
  br label %sw.epilog

do.body86:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxl_probe_device_regs.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxl_probe_device_regs, %if.then98)) #5
          to label %do.end101 [label %if.then98], !srcloc !64

if.then98:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxl_probe_device_regs.__UNIQUE_ID_ddebug305, ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %13) #5
  br label %do.end101

do.end101:                                        ; preds = %if.then98, %do.body86
  %20 = ptrtoint ptr %mbox to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %mbox, align 4
  %21 = ptrtoint ptr %offset104 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %13, ptr %offset104, align 4
  %22 = ptrtoint ptr %size106 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %15, ptr %size106, align 4
  br label %sw.epilog

do.body108:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxl_probe_device_regs.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxl_probe_device_regs, %if.then120)) #5
          to label %sw.epilog [label %if.then120], !srcloc !64

if.then120:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxl_probe_device_regs.__UNIQUE_ID_ddebug306, ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %13) #5
  br label %sw.epilog

do.body125:                                       ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxl_probe_device_regs.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxl_probe_device_regs, %if.then137)) #5
          to label %do.end140 [label %if.then137], !srcloc !64

if.then137:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxl_probe_device_regs.__UNIQUE_ID_ddebug307, ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %13) #5
  br label %do.end140

do.end140:                                        ; preds = %if.then137, %do.body125
  %23 = ptrtoint ptr %memdev to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %memdev, align 4
  %24 = ptrtoint ptr %offset143 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %13, ptr %offset143, align 4
  %25 = ptrtoint ptr %size145 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %15, ptr %size145, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %11)
  %cmp147 = icmp ugt i32 %11, 32767
  br i1 %cmp147, label %do.body150, label %do.body167

do.body150:                                       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxl_probe_device_regs.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxl_probe_device_regs, %if.then162)) #5
          to label %sw.epilog [label %if.then162], !srcloc !64

if.then162:                                       ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxl_probe_device_regs.__UNIQUE_ID_ddebug308, ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %11, i32 noundef %13) #5
  br label %sw.epilog

do.body167:                                       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxl_probe_device_regs.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxl_probe_device_regs, %if.then179)) #5
          to label %sw.epilog [label %if.then179], !srcloc !64

if.then179:                                       ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxl_probe_device_regs.__UNIQUE_ID_ddebug309, ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %11, i32 noundef %13) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then179, %do.body167, %if.then162, %do.body150, %do.end140, %if.then120, %do.body108, %do.end101, %do.end81
  %inc = add nuw nsw i32 %cap.0244, 1
  %exitcond = icmp eq i32 %cap.0244, %conv
  br i1 %exitcond, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.cleanup_crit_edge, %do.end27.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxl_map_component_regs(ptr noundef %pdev, ptr nocapture noundef writeonly %regs, ptr nocapture noundef readonly %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %barno = getelementptr inbounds %struct.cxl_register_map, ptr %map, i32 0, i32 3
  %0 = ptrtoint ptr %barno to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %barno, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 8
  %block_offset = getelementptr inbounds %struct.cxl_register_map, ptr %map, i32 0, i32 1
  %4 = ptrtoint ptr %block_offset to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %block_offset, align 8
  %6 = trunc i64 %5 to i32
  %conv2 = add i32 %3, %6
  %offset = getelementptr inbounds %struct.cxl_register_map, ptr %map, i32 0, i32 4, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offset, align 4
  %add3 = add i32 %conv2, %8
  %size = getelementptr inbounds %struct.cxl_register_map, ptr %map, i32 0, i32 4, i32 0, i32 0, i32 2
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 4
  %call = tail call fastcc ptr @devm_cxl_iomap_block(ptr noundef %dev1, i32 noundef %add3, i32 noundef %10)
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call, ptr %regs, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @devm_cxl_iomap_block(ptr noundef %dev, i32 noundef %addr, i32 noundef %length) unnamed_addr #0 align 64 {
entry:
  %addr.addr = alloca i32, align 4
  %end = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %addr, ptr %addr.addr, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %1 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %4, %if.end.i ], [ %2, %entry.dev_name.exit_crit_edge ]
  %call1 = tail call ptr @__devm_request_region(ptr noundef %dev, ptr noundef nonnull @iomem_resource, i32 noundef %addr, i32 noundef %length, ptr noundef %retval.0.i) #5
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end) #5
  %5 = ptrtoint ptr %addr.addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr.addr, align 4
  %add = add i32 %length, -1
  %sub = add i32 %add, %6
  %7 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub, ptr %end, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef nonnull %addr.addr, ptr noundef nonnull %end) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end) #5
  br label %cleanup

if.end:                                           ; preds = %dev_name.exit
  %8 = ptrtoint ptr %addr.addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.addr, align 4
  %call2 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %9, i32 noundef %length) #5
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull %call1) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ null, %do.end7 ], [ %call2, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxl_map_device_regs(ptr noundef %pdev, ptr nocapture noundef writeonly %regs, ptr nocapture noundef readonly %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %barno = getelementptr inbounds %struct.cxl_register_map, ptr %map, i32 0, i32 3
  %0 = ptrtoint ptr %barno to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %barno, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 8
  %block_offset = getelementptr inbounds %struct.cxl_register_map, ptr %map, i32 0, i32 1
  %4 = ptrtoint ptr %block_offset to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %block_offset, align 8
  %6 = trunc i64 %5 to i32
  %conv2 = add i32 %3, %6
  %7 = getelementptr inbounds %struct.cxl_register_map, ptr %map, i32 0, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then:                                          ; preds = %entry
  %offset = getelementptr inbounds %struct.cxl_register_map, ptr %map, i32 0, i32 4, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %add4 = add i32 %11, %conv2
  %size = getelementptr inbounds %struct.cxl_register_map, ptr %map, i32 0, i32 4, i32 0, i32 0, i32 2
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size, align 4
  %call = tail call fastcc ptr @devm_cxl_iomap_block(ptr noundef %dev1, i32 noundef %add4, i32 noundef %13)
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %regs, align 4
  %tobool8.not = icmp eq ptr %call, null
  br i1 %tobool8.not, label %if.then.cleanup54_crit_edge, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then.cleanup54_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup54

if.end11:                                         ; preds = %if.then.if.end11_crit_edge, %entry.if.end11_crit_edge
  %mbox = getelementptr inbounds %struct.cxl_register_map, ptr %map, i32 0, i32 4, i32 0, i32 1
  %15 = ptrtoint ptr %mbox to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %mbox, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool13.not = icmp eq i8 %16, 0
  br i1 %tobool13.not, label %if.end11.if.end32_crit_edge, label %if.then14

if.end11.if.end32_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then14:                                        ; preds = %if.end11
  %offset18 = getelementptr inbounds %struct.cxl_register_map, ptr %map, i32 0, i32 4, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %offset18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset18, align 4
  %add19 = add i32 %18, %conv2
  %size21 = getelementptr inbounds %struct.cxl_register_map, ptr %map, i32 0, i32 4, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %size21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size21, align 4
  %call22 = tail call fastcc ptr @devm_cxl_iomap_block(ptr noundef %dev1, i32 noundef %add19, i32 noundef %20)
  %mbox23 = getelementptr inbounds %struct.cxl_device_regs, ptr %regs, i32 0, i32 1
  %21 = ptrtoint ptr %mbox23 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call22, ptr %mbox23, align 4
  %tobool25.not = icmp eq ptr %call22, null
  br i1 %tobool25.not, label %if.then14.cleanup54_crit_edge, label %if.then14.if.end32_crit_edge

if.then14.if.end32_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then14.cleanup54_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup54

if.end32:                                         ; preds = %if.then14.if.end32_crit_edge, %if.end11.if.end32_crit_edge
  %memdev = getelementptr inbounds %struct.cxl_register_map, ptr %map, i32 0, i32 4, i32 0, i32 2
  %22 = ptrtoint ptr %memdev to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %memdev, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool34.not = icmp eq i8 %23, 0
  br i1 %tobool34.not, label %if.end32.if.end53_crit_edge, label %if.then35

if.end32.if.end53_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.then35:                                        ; preds = %if.end32
  %offset39 = getelementptr inbounds %struct.cxl_register_map, ptr %map, i32 0, i32 4, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %offset39 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset39, align 4
  %add40 = add i32 %25, %conv2
  %size42 = getelementptr inbounds %struct.cxl_register_map, ptr %map, i32 0, i32 4, i32 0, i32 2, i32 2
  %26 = ptrtoint ptr %size42 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size42, align 4
  %call43 = tail call fastcc ptr @devm_cxl_iomap_block(ptr noundef %dev1, i32 noundef %add40, i32 noundef %27)
  %memdev44 = getelementptr inbounds %struct.cxl_device_regs, ptr %regs, i32 0, i32 2
  %28 = ptrtoint ptr %memdev44 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call43, ptr %memdev44, align 4
  %tobool46.not = icmp eq ptr %call43, null
  br i1 %tobool46.not, label %if.then35.cleanup54_crit_edge, label %if.then35.if.end53_crit_edge

if.then35.if.end53_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.then35.cleanup54_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup54

if.end53:                                         ; preds = %if.then35.if.end53_crit_edge, %if.end32.if.end53_crit_edge
  br label %cleanup54

cleanup54:                                        ; preds = %if.end53, %if.then35.cleanup54_crit_edge, %if.then14.cleanup54_crit_edge, %if.then.cleanup54_crit_edge
  %retval.5 = phi i32 [ 0, %if.end53 ], [ -12, %if.then35.cleanup54_crit_edge ], [ -12, %if.then14.cleanup54_crit_edge ], [ -12, %if.then.cleanup54_crit_edge ]
  ret i32 %retval.5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !17, !19, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !40, !42, !44, !45, !46, !47, !49, !50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/cxl/core/regs.c", i32 51, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @cxl_probe_component_regs._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @cxl_probe_component_regs._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/cxl/core/regs.c", i32 74, i32 4}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @cxl_probe_component_regs.__UNIQUE_ID_ddebug287, !9, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/cxl/core/regs.c", i32 87, i32 4}
!14 = !{ptr @cxl_probe_component_regs.__UNIQUE_ID_ddebug288, !13, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!15 = !{ptr @__ksymtab_cxl_probe_component_regs, !16, !"__ksymtab_cxl_probe_component_regs", i1 false, i1 false}
!16 = !{!"../drivers/cxl/core/regs.c", i32 93, i32 1}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/cxl/core/regs.c", i32 129, i32 4}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @cxl_probe_device_regs.__UNIQUE_ID_ddebug304, !18, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/cxl/core/regs.c", i32 136, i32 4}
!23 = !{ptr @cxl_probe_device_regs.__UNIQUE_ID_ddebug305, !22, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/cxl/core/regs.c", i32 142, i32 4}
!26 = !{ptr @cxl_probe_device_regs.__UNIQUE_ID_ddebug306, !25, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/cxl/core/regs.c", i32 145, i32 4}
!29 = !{ptr @cxl_probe_device_regs.__UNIQUE_ID_ddebug307, !28, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/cxl/core/regs.c", i32 152, i32 5}
!32 = !{ptr @cxl_probe_device_regs.__UNIQUE_ID_ddebug308, !31, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/cxl/core/regs.c", i32 154, i32 5}
!35 = !{ptr @cxl_probe_device_regs.__UNIQUE_ID_ddebug309, !34, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!36 = !{ptr @__ksymtab_cxl_probe_device_regs, !37, !"__ksymtab_cxl_probe_device_regs", i1 false, i1 false}
!37 = !{!"../drivers/cxl/core/regs.c", i32 159, i32 1}
!38 = !{ptr @__ksymtab_cxl_map_component_regs, !39, !"__ksymtab_cxl_map_component_regs", i1 false, i1 false}
!39 = !{!"../drivers/cxl/core/regs.c", i32 202, i32 1}
!40 = !{ptr @__ksymtab_cxl_map_device_regs, !41, !"__ksymtab_cxl_map_device_regs", i1 false, i1 false}
!41 = !{!"../drivers/cxl/core/regs.c", i32 249, i32 1}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/cxl/core/regs.c", i32 172, i32 3}
!44 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @devm_cxl_iomap_block._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @devm_cxl_iomap_block._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/cxl/core/regs.c", i32 178, i32 3}
!49 = !{ptr @devm_cxl_iomap_block._entry.17, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @devm_cxl_iomap_block._entry_ptr.19, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{i64 692981}
!61 = !{i64 2149357602}
!62 = !{i64 2149358040}
!63 = !{i64 2154860426}
!64 = !{i64 2148159720, i64 2148159725, i64 2148159738, i64 2148159782, i64 2148159816, i64 2148159837}
!65 = !{i64 2154947266}
!66 = !{i64 2155034364}
!67 = !{i64 2155080294}
!68 = !{i64 2155080804}
!69 = !{i8 0, i8 2}
