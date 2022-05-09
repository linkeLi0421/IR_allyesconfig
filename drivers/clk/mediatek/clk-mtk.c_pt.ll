; ModuleID = '/llk/IR_all_yes/drivers/clk/mediatek/clk-mtk.c_pt.bc'
source_filename = "../drivers/clk/mediatek/clk-mtk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mtk_alloc_clk_data\22, \22a\22\09"
module asm "\09.weak\09__crc_mtk_alloc_clk_data\09\09\09\09"
module asm "\09.long\09__crc_mtk_alloc_clk_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_alloc_clk_data:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_alloc_clk_data\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_alloc_clk_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mtk_clk_register_fixed_clks\22, \22a\22\09"
module asm "\09.weak\09__crc_mtk_clk_register_fixed_clks\09\09\09\09"
module asm "\09.long\09__crc_mtk_clk_register_fixed_clks\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_clk_register_fixed_clks:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_clk_register_fixed_clks\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_clk_register_fixed_clks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mtk_clk_register_factors\22, \22a\22\09"
module asm "\09.weak\09__crc_mtk_clk_register_factors\09\09\09\09"
module asm "\09.long\09__crc_mtk_clk_register_factors\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_clk_register_factors:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_clk_register_factors\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_clk_register_factors:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mtk_clk_register_gates\22, \22a\22\09"
module asm "\09.weak\09__crc_mtk_clk_register_gates\09\09\09\09"
module asm "\09.long\09__crc_mtk_clk_register_gates\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_clk_register_gates:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_clk_register_gates\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_clk_register_gates:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mtk_clk_register_composites\22, \22a\22\09"
module asm "\09.weak\09__crc_mtk_clk_register_composites\09\09\09\09"
module asm "\09.long\09__crc_mtk_clk_register_composites\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_clk_register_composites:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_clk_register_composites\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_clk_register_composites:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.mtk_fixed_clk = type { i32, ptr, ptr, i32 }
%struct.mtk_fixed_factor = type { i32, ptr, ptr, i32, i32 }
%struct.mtk_gate = type { i32, ptr, ptr, ptr, i32, ptr, i32 }
%struct.mtk_gate_regs = type { i32, i32, i32 }
%struct.mtk_composite = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }
%struct.clk_divider = type { %struct.clk_hw, ptr, i8, i8, i8, ptr, ptr }
%struct.mtk_clk_divider = type { i32, ptr, ptr, i32, i32, i8, i8, i8, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mtk_clk_desc = type { ptr, i32 }

@__kstrtab_mtk_alloc_clk_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_alloc_clk_data = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_alloc_clk_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_alloc_clk_data to i32), ptr @__kstrtab_mtk_alloc_clk_data, ptr @__kstrtabns_mtk_alloc_clk_data }, section "___ksymtab_gpl+mtk_alloc_clk_data", align 4
@mtk_clk_register_fixed_clks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Failed to register clk %s: %ld\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mtk_clk_register_fixed_clks\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/clk/mediatek/clk-mtk.c\00", [33 x i8] zeroinitializer }, align 32
@mtk_clk_register_fixed_clks._entry_ptr = internal global ptr @mtk_clk_register_fixed_clks._entry, section ".printk_index", align 4
@__kstrtab_mtk_clk_register_fixed_clks = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_clk_register_fixed_clks = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_clk_register_fixed_clks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_clk_register_fixed_clks to i32), ptr @__kstrtab_mtk_clk_register_fixed_clks, ptr @__kstrtabns_mtk_clk_register_fixed_clks }, section "___ksymtab_gpl+mtk_clk_register_fixed_clks", align 4
@mtk_clk_register_factors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mtk_clk_register_factors\00", [39 x i8] zeroinitializer }, align 32
@mtk_clk_register_factors._entry_ptr = internal global ptr @mtk_clk_register_factors._entry, section ".printk_index", align 4
@__kstrtab_mtk_clk_register_factors = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_clk_register_factors = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_clk_register_factors = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_clk_register_factors to i32), ptr @__kstrtab_mtk_clk_register_factors, ptr @__kstrtabns_mtk_clk_register_factors }, section "___ksymtab_gpl+mtk_clk_register_factors", align 4
@mtk_clk_register_gates_with_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013Cannot find regmap for %pOF: %ld\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mtk_clk_register_gates_with_dev\00", [32 x i8] zeroinitializer }, align 32
@mtk_clk_register_gates_with_dev._entry_ptr = internal global ptr @mtk_clk_register_gates_with_dev._entry, section ".printk_index", align 4
@mtk_clk_register_gates_with_dev._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.5, ptr @.str.2, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtk_clk_register_gates_with_dev._entry_ptr.7 = internal global ptr @mtk_clk_register_gates_with_dev._entry.6, section ".printk_index", align 4
@__kstrtab_mtk_clk_register_gates = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_clk_register_gates = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_clk_register_gates = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_clk_register_gates to i32), ptr @__kstrtab_mtk_clk_register_gates, ptr @__kstrtabns_mtk_clk_register_gates }, section "___ksymtab_gpl+mtk_clk_register_gates", align 4
@clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@clk_gate_ops = external dso_local constant %struct.clk_ops, align 4
@clk_divider_ops = external dso_local constant %struct.clk_ops, align 4
@mtk_clk_register_composites._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.8, ptr @.str.2, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mtk_clk_register_composites\00", [36 x i8] zeroinitializer }, align 32
@mtk_clk_register_composites._entry_ptr = internal global ptr @mtk_clk_register_composites._entry, section ".printk_index", align 4
@__kstrtab_mtk_clk_register_composites = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_clk_register_composites = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_clk_register_composites = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_clk_register_composites to i32), ptr @__kstrtab_mtk_clk_register_composites, ptr @__kstrtabns_mtk_clk_register_composites }, section "___ksymtab_gpl+mtk_clk_register_composites", align 4
@mtk_clk_register_dividers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.9, ptr @.str.2, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mtk_clk_register_dividers\00", [38 x i8] zeroinitializer }, align 32
@mtk_clk_register_dividers._entry_ptr = internal global ptr @mtk_clk_register_dividers._entry, section ".printk_index", align 4
@__UNIQUE_ID_file183 = internal constant [42 x i8] c"clk_mtk.file=drivers/clk/mediatek/clk-mtk\00", section ".modinfo", align 1
@__UNIQUE_ID_license184 = internal constant [20 x i8] c"clk_mtk.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 73, i32 4 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 100, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 125, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 144, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 267, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private constant [34 x i8] c"../drivers/clk/mediatek/clk-mtk.c\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 296, i32 4 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_file183, ptr @__UNIQUE_ID_license184, ptr @__ksymtab_mtk_alloc_clk_data, ptr @__ksymtab_mtk_clk_register_composites, ptr @__ksymtab_mtk_clk_register_factors, ptr @__ksymtab_mtk_clk_register_fixed_clks, ptr @__ksymtab_mtk_clk_register_gates, ptr @mtk_clk_register_composites._entry, ptr @mtk_clk_register_composites._entry_ptr, ptr @mtk_clk_register_dividers._entry, ptr @mtk_clk_register_dividers._entry_ptr, ptr @mtk_clk_register_factors._entry, ptr @mtk_clk_register_factors._entry_ptr, ptr @mtk_clk_register_fixed_clks._entry, ptr @mtk_clk_register_fixed_clks._entry_ptr, ptr @mtk_clk_register_gates_with_dev._entry, ptr @mtk_clk_register_gates_with_dev._entry.6, ptr @mtk_clk_register_gates_with_dev._entry_ptr, ptr @mtk_clk_register_gates_with_dev._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_clk_register_fixed_clks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_clk_register_factors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_clk_register_gates_with_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_clk_register_gates_with_dev._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_clk_register_composites._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_clk_register_dividers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mtk_alloc_clk_data(i32 noundef %clk_num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %clk_num, i32 4) #7
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !48

kcalloc.exit.thread:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %call7.i.i, align 8
  br label %err_out

if.end7.i.i:                                      ; preds = %if.end
  %4 = extractvalue { i32, i1 } %1, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #11
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8.i.i, ptr %call7.i.i, align 8
  %tobool3.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool3.not, label %if.end7.i.i.err_out_crit_edge, label %if.end5

if.end7.i.i.err_out_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

if.end5:                                          ; preds = %if.end7.i.i
  %clk_num6 = getelementptr inbounds %struct.clk_onecell_data, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %clk_num6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %clk_num, ptr %clk_num6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clk_num)
  %cmp25.not = icmp eq i32 %clk_num, 0
  br i1 %cmp25.not, label %if.end5.cleanup_crit_edge, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end5.for.body_crit_edge
  %i.026 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end5.for.body_crit_edge ]
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call7.i.i, align 8
  %arrayidx = getelementptr ptr, ptr %8, i32 %i.026
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx, align 4
  %inc = add nuw i32 %i.026, 1
  %exitcond.not = icmp eq i32 %inc, %clk_num
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_out:                                          ; preds = %if.end7.i.i.err_out_crit_edge, %kcalloc.exit.thread
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err_out, %for.body.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %err_out ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %if.end5.cleanup_crit_edge ], [ %call7.i.i, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_free_clk_data(ptr noundef %clk_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %clk_data, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %clk_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_data, align 4
  tail call void @kfree(ptr noundef %1) #7
  tail call void @kfree(ptr noundef nonnull %clk_data) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_clk_register_fixed_clks(ptr nocapture noundef readonly %clks, i32 noundef %num, ptr noundef readonly %clk_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp29 = icmp sgt i32 %num, 0
  br i1 %cmp29, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %clk_data, null
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.030 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mtk_fixed_clk, ptr %clks, i32 %i.030
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %0 = ptrtoint ptr %clk_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_data, align 4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr ptr, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %name = getelementptr %struct.mtk_fixed_clk, ptr %clks, i32 %i.030, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %parent = getelementptr %struct.mtk_fixed_clk, ptr %clks, i32 %i.030, i32 2
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 4
  %rate = getelementptr %struct.mtk_fixed_clk, ptr %clks, i32 %i.030, i32 3
  %10 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rate, align 4
  %call3 = tail call ptr @clk_register_fixed_rate(ptr noundef null, ptr noundef %7, ptr noundef %9, i32 noundef 0, i32 noundef %11) #7
  %cmp.i28 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i28, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 4
  %14 = ptrtoint ptr %call3 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %13, i32 noundef %14) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  br i1 %tobool.not, label %if.end9.cleanup_crit_edge, label %if.then11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %clk_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk_data, align 4
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %arrayidx14 = getelementptr ptr, ptr %16, i32 %18
  %19 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call3, ptr %arrayidx14, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end9.cleanup_crit_edge, %do.end, %land.lhs.true.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_clk_register_factors(ptr nocapture noundef readonly %clks, i32 noundef %num, ptr noundef readonly %clk_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp30 = icmp sgt i32 %num, 0
  br i1 %cmp30, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %clk_data, null
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.031 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mtk_fixed_factor, ptr %clks, i32 %i.031
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %0 = ptrtoint ptr %clk_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_data, align 4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr ptr, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %name = getelementptr %struct.mtk_fixed_factor, ptr %clks, i32 %i.031, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %parent_name = getelementptr %struct.mtk_fixed_factor, ptr %clks, i32 %i.031, i32 2
  %8 = ptrtoint ptr %parent_name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent_name, align 4
  %mult = getelementptr %struct.mtk_fixed_factor, ptr %clks, i32 %i.031, i32 3
  %10 = ptrtoint ptr %mult to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mult, align 4
  %div = getelementptr %struct.mtk_fixed_factor, ptr %clks, i32 %i.031, i32 4
  %12 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %div, align 4
  %call3 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %7, ptr noundef %9, i32 noundef 4, i32 noundef %11, i32 noundef %13) #7
  %cmp.i29 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i29, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 4
  %16 = ptrtoint ptr %call3 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %15, i32 noundef %16) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  br i1 %tobool.not, label %if.end9.cleanup_crit_edge, label %if.then11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %clk_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk_data, align 4
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %arrayidx14 = getelementptr ptr, ptr %18, i32 %20
  %21 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call3, ptr %arrayidx14, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end9.cleanup_crit_edge, %do.end, %land.lhs.true.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_clk_register_gates_with_dev(ptr noundef %node, ptr nocapture noundef readonly %clks, i32 noundef %num, ptr noundef readonly %clk_data, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %clk_data, null
  br i1 %tobool.not, label %entry.cleanup28_crit_edge, label %if.end

entry.cleanup28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup28

if.end:                                           ; preds = %entry
  %call = tail call ptr @device_node_to_regmap(ptr noundef %node) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp53 = icmp sgt i32 %num, 0
  br i1 %cmp53, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup28_crit_edge

for.cond.preheader.cleanup28_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup28

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %node, i32 noundef %0) #12
  br label %cleanup28

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.054 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mtk_gate, ptr %clks, i32 %i.054
  %1 = ptrtoint ptr %clk_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clk_data, align 4
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %arrayidx8 = getelementptr ptr, ptr %2, i32 %4
  %5 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx8, align 4
  %tobool.not.i = icmp eq ptr %6, null
  %cmp.i51 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i51
  br i1 %spec.select.i, label %if.end11, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %for.body
  %name = getelementptr %struct.mtk_gate, ptr %clks, i32 %i.054, i32 1
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  %parent_name = getelementptr %struct.mtk_gate, ptr %clks, i32 %i.054, i32 2
  %9 = ptrtoint ptr %parent_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent_name, align 4
  %regs = getelementptr %struct.mtk_gate, ptr %clks, i32 %i.054, i32 3
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %set_ofs = getelementptr inbounds %struct.mtk_gate_regs, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %set_ofs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %set_ofs, align 4
  %clr_ofs = getelementptr inbounds %struct.mtk_gate_regs, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %clr_ofs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %clr_ofs, align 4
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %12, align 4
  %shift = getelementptr %struct.mtk_gate, ptr %clks, i32 %i.054, i32 4
  %19 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %shift, align 4
  %conv = trunc i32 %20 to i8
  %ops = getelementptr %struct.mtk_gate, ptr %clks, i32 %i.054, i32 5
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops, align 4
  %flags = getelementptr %struct.mtk_gate, ptr %clks, i32 %i.054, i32 6
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  %call14 = tail call ptr @mtk_clk_register_gate(ptr noundef %8, ptr noundef %10, ptr noundef %call, i32 noundef %14, i32 noundef %16, i32 noundef %18, i8 noundef zeroext %conv, ptr noundef %22, i32 noundef %24, ptr noundef %dev) #7
  %cmp.i52 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i52, label %do.end19, label %if.end24

do.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name, align 4
  %27 = ptrtoint ptr %call14 to i32
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %26, i32 noundef %27) #12
  br label %cleanup

if.end24:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %clk_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk_data, align 4
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  %arrayidx27 = getelementptr ptr, ptr %29, i32 %31
  %32 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call14, ptr %arrayidx27, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end19, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.054, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %cleanup.cleanup28_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup.cleanup28_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup28

cleanup28:                                        ; preds = %cleanup.cleanup28_crit_edge, %do.end, %for.cond.preheader.cleanup28_crit_edge, %entry.cleanup28_crit_edge
  %retval.0 = phi i32 [ %0, %do.end ], [ -12, %entry.cleanup28_crit_edge ], [ 0, %for.cond.preheader.cleanup28_crit_edge ], [ 0, %cleanup.cleanup28_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_node_to_regmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mtk_clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_clk_register_gates(ptr noundef %node, ptr nocapture noundef readonly %clks, i32 noundef %num, ptr noundef %clk_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mtk_clk_register_gates_with_dev(ptr noundef %node, ptr noundef %clks, i32 noundef %num, ptr noundef %clk_data, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mtk_clk_register_composite(ptr nocapture noundef readonly %mc, ptr noundef %base, ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  %parent = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent) #7
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %parent, align 4, !annotation !49
  %mux_shift = getelementptr inbounds %struct.mtk_composite, ptr %mc, i32 0, i32 8
  %1 = ptrtoint ptr %mux_shift to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %mux_shift, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %2)
  %cmp = icmp sgt i8 %2, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 32) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %mux_reg = getelementptr inbounds %struct.mtk_composite, ptr %mc, i32 0, i32 5
  %4 = ptrtoint ptr %mux_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mux_reg, align 4
  %add.ptr = getelementptr i8, ptr %base, i32 %5
  %reg = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %reg, align 4
  %mux_width = getelementptr inbounds %struct.mtk_composite, ptr %mc, i32 0, i32 9
  %7 = ptrtoint ptr %mux_width to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mux_width, align 1
  %conv4103 = zext i8 %8 to i32
  %notmask = shl nsw i32 -1, %conv4103
  %sub = xor i32 %notmask, -1
  %mask = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub, ptr %mask, align 4
  %10 = ptrtoint ptr %mux_shift to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mux_shift, align 4
  %shift = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %shift to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %shift, align 8
  %lock6 = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %lock6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %lock, ptr %lock6, align 4
  %mux_flags = getelementptr inbounds %struct.mtk_composite, ptr %mc, i32 0, i32 13
  %14 = ptrtoint ptr %mux_flags to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mux_flags, align 1
  %flags = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %flags, align 1
  %parent_names7 = getelementptr inbounds %struct.mtk_composite, ptr %mc, i32 0, i32 2
  %17 = ptrtoint ptr %parent_names7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent_names7, align 4
  %num_parents8 = getelementptr inbounds %struct.mtk_composite, ptr %mc, i32 0, i32 14
  %19 = ptrtoint ptr %num_parents8 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %num_parents8, align 2
  %conv9 = sext i8 %20 to i32
  br label %if.end11

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %parent10 = getelementptr inbounds %struct.mtk_composite, ptr %mc, i32 0, i32 3
  %21 = ptrtoint ptr %parent10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent10, align 4
  %23 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %parent, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.end
  %mux_hw.0 = phi ptr [ %call7.i.i, %if.end ], [ null, %if.else ]
  %mux_ops.0 = phi ptr [ @clk_mux_ops, %if.end ], [ null, %if.else ]
  %parent_names.0 = phi ptr [ %18, %if.end ], [ %parent, %if.else ]
  %num_parents.0 = phi i32 [ %conv9, %if.end ], [ 1, %if.else ]
  %gate_shift = getelementptr inbounds %struct.mtk_composite, ptr %mc, i32 0, i32 10
  %24 = ptrtoint ptr %gate_shift to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %gate_shift, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %25)
  %cmp13 = icmp sgt i8 %25, -1
  br i1 %cmp13, label %if.then15, label %if.end11.if.end26_crit_edge

if.end11.if.end26_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then15:                                        ; preds = %if.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i104 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 24) #10
  %tobool17.not = icmp eq ptr %call7.i.i104, null
  br i1 %tobool17.not, label %if.then15.err_out_crit_edge, label %if.end19

if.then15.err_out_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

if.end19:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %gate_reg = getelementptr inbounds %struct.mtk_composite, ptr %mc, i32 0, i32 7
  %27 = ptrtoint ptr %gate_reg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %gate_reg, align 4
  %add.ptr20 = getelementptr i8, ptr %base, i32 %28
  %reg21 = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i104, i32 0, i32 1
  %29 = ptrtoint ptr %reg21 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr20, ptr %reg21, align 4
  %30 = ptrtoint ptr %gate_shift to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %gate_shift, align 2
  %bit_idx = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i104, i32 0, i32 2
  %32 = ptrtoint ptr %bit_idx to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %bit_idx, align 8
  %flags23 = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i104, i32 0, i32 3
  %33 = ptrtoint ptr %flags23 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %flags23, align 1
  %lock24 = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i104, i32 0, i32 4
  %34 = ptrtoint ptr %lock24 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %lock, ptr %lock24, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end19, %if.end11.if.end26_crit_edge
  %gate_hw.0 = phi ptr [ %call7.i.i104, %if.end19 ], [ null, %if.end11.if.end26_crit_edge ]
  %gate_ops.0 = phi ptr [ @clk_gate_ops, %if.end19 ], [ null, %if.end11.if.end26_crit_edge ]
  %divider_shift = getelementptr inbounds %struct.mtk_composite, ptr %mc, i32 0, i32 11
  %35 = ptrtoint ptr %divider_shift to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %divider_shift, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %36)
  %cmp28 = icmp sgt i8 %36, -1
  br i1 %cmp28, label %if.then30, label %if.end26.if.end41_crit_edge

if.end26.if.end41_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then30:                                        ; preds = %if.end26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %37 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i105 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3520, i32 noundef 28) #10
  %tobool32.not = icmp eq ptr %call7.i.i105, null
  br i1 %tobool32.not, label %if.then30.err_out_crit_edge, label %if.end34

if.then30.err_out_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

if.end34:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  %divider_reg = getelementptr inbounds %struct.mtk_composite, ptr %mc, i32 0, i32 6
  %38 = ptrtoint ptr %divider_reg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %divider_reg, align 4
  %add.ptr35 = getelementptr i8, ptr %base, i32 %39
  %reg36 = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i105, i32 0, i32 1
  %40 = ptrtoint ptr %reg36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr35, ptr %reg36, align 4
  %41 = ptrtoint ptr %divider_shift to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %divider_shift, align 1
  %shift38 = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i105, i32 0, i32 2
  %43 = ptrtoint ptr %shift38 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %shift38, align 8
  %divider_width = getelementptr inbounds %struct.mtk_composite, ptr %mc, i32 0, i32 12
  %44 = ptrtoint ptr %divider_width to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %divider_width, align 4
  %width = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i105, i32 0, i32 3
  %46 = ptrtoint ptr %width to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %width, align 1
  %lock39 = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i105, i32 0, i32 6
  %47 = ptrtoint ptr %lock39 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %lock, ptr %lock39, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.end34, %if.end26.if.end41_crit_edge
  %div_hw.0 = phi ptr [ %call7.i.i105, %if.end34 ], [ null, %if.end26.if.end41_crit_edge ]
  %div_ops.0 = phi ptr [ @clk_divider_ops, %if.end34 ], [ null, %if.end26.if.end41_crit_edge ]
  %name = getelementptr inbounds %struct.mtk_composite, ptr %mc, i32 0, i32 1
  %48 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %name, align 4
  %flags42 = getelementptr inbounds %struct.mtk_composite, ptr %mc, i32 0, i32 4
  %50 = ptrtoint ptr %flags42 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags42, align 4
  %call43 = call ptr @clk_register_composite(ptr noundef null, ptr noundef %49, ptr noundef %parent_names.0, i32 noundef %num_parents.0, ptr noundef %mux_hw.0, ptr noundef %mux_ops.0, ptr noundef %div_hw.0, ptr noundef %div_ops.0, ptr noundef %gate_hw.0, ptr noundef %gate_ops.0, i32 noundef %51) #7
  %cmp.i = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end41.err_out_crit_edge, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end41.err_out_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

err_out:                                          ; preds = %if.end41.err_out_crit_edge, %if.then30.err_out_crit_edge, %if.then15.err_out_crit_edge
  %gate.1 = phi ptr [ null, %if.then15.err_out_crit_edge ], [ %gate_hw.0, %if.then30.err_out_crit_edge ], [ %gate_hw.0, %if.end41.err_out_crit_edge ]
  %div.1 = phi ptr [ null, %if.then15.err_out_crit_edge ], [ null, %if.then30.err_out_crit_edge ], [ %div_hw.0, %if.end41.err_out_crit_edge ]
  %ret.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.then15.err_out_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then30.err_out_crit_edge ], [ %call43, %if.end41.err_out_crit_edge ]
  call void @kfree(ptr noundef %div.1) #7
  call void @kfree(ptr noundef %gate.1) #7
  call void @kfree(ptr noundef %mux_hw.0) #7
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end41.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %ret.0, %err_out ], [ %call43, %if.end41.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent) #7
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_composite(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_clk_register_composites(ptr nocapture noundef readonly %mcs, i32 noundef %num, ptr noundef %base, ptr noundef %lock, ptr noundef readonly %clk_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp31 = icmp sgt i32 %num, 0
  br i1 %cmp31, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %clk_data, null
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.032 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mtk_composite, ptr %mcs, i32 %i.032
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %0 = ptrtoint ptr %clk_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_data, align 4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr ptr, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx1, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.end.thread, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.body
  %call2 = tail call ptr @mtk_clk_register_composite(ptr noundef %arrayidx, ptr noundef %base, ptr noundef %lock)
  %cmp.i24 = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i24, label %if.end.do.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.thread:                                    ; preds = %land.lhs.true
  %call225 = tail call ptr @mtk_clk_register_composite(ptr noundef %arrayidx, ptr noundef %base, ptr noundef %lock)
  %cmp.i2426 = icmp ugt ptr %call225, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i2426, label %if.end.thread.do.end_crit_edge, label %if.then9

if.end.thread.do.end_crit_edge:                   ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %if.end.thread.do.end_crit_edge, %if.end.do.end_crit_edge
  %call228 = phi ptr [ %call225, %if.end.thread.do.end_crit_edge ], [ %call2, %if.end.do.end_crit_edge ]
  %name = getelementptr %struct.mtk_composite, ptr %mcs, i32 %i.032, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %8 = ptrtoint ptr %call228 to i32
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %7, i32 noundef %8) #12
  br label %cleanup

if.then9:                                         ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %clk_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk_data, align 4
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %arrayidx12 = getelementptr ptr, ptr %10, i32 %12
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call225, ptr %arrayidx12, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %do.end, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_clk_register_dividers(ptr nocapture noundef readonly %mcds, i32 noundef %num, ptr noundef %base, ptr noundef %lock, ptr noundef readonly %clk_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp32 = icmp sgt i32 %num, 0
  br i1 %cmp32, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %clk_data, null
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.033 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mtk_clk_divider, ptr %mcds, i32 %i.033
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %0 = ptrtoint ptr %clk_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_data, align 4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr ptr, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx1, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %name = getelementptr %struct.mtk_clk_divider, ptr %mcds, i32 %i.033, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %parent_name = getelementptr %struct.mtk_clk_divider, ptr %mcds, i32 %i.033, i32 2
  %8 = ptrtoint ptr %parent_name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent_name, align 4
  %flags = getelementptr %struct.mtk_clk_divider, ptr %mcds, i32 %i.033, i32 3
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %div_reg = getelementptr %struct.mtk_clk_divider, ptr %mcds, i32 %i.033, i32 4
  %12 = ptrtoint ptr %div_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %div_reg, align 4
  %add.ptr = getelementptr i8, ptr %base, i32 %13
  %div_shift = getelementptr %struct.mtk_clk_divider, ptr %mcds, i32 %i.033, i32 5
  %14 = ptrtoint ptr %div_shift to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %div_shift, align 4
  %div_width = getelementptr %struct.mtk_clk_divider, ptr %mcds, i32 %i.033, i32 6
  %16 = ptrtoint ptr %div_width to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %div_width, align 1
  %clk_divider_flags = getelementptr %struct.mtk_clk_divider, ptr %mcds, i32 %i.033, i32 7
  %18 = ptrtoint ptr %clk_divider_flags to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %clk_divider_flags, align 2
  %call2 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef %7, ptr noundef %9, i32 noundef %11, ptr noundef %add.ptr, i8 noundef zeroext %15, i8 noundef zeroext %17, i8 noundef zeroext %19, ptr noundef null, ptr noundef %lock) #7
  %cmp.i31 = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i31, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name, align 4
  %22 = ptrtoint ptr %call2 to i32
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %21, i32 noundef %22) #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  br i1 %tobool.not, label %if.end8.cleanup_crit_edge, label %if.then10

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %clk_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk_data, align 4
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %arrayidx13 = getelementptr ptr, ptr %24, i32 %26
  %27 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call2, ptr %arrayidx13, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end8.cleanup_crit_edge, %do.end, %land.lhs.true.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.033, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_clk_simple_probe(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_clks = getelementptr inbounds %struct.mtk_clk_desc, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_clks, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 8) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 4) #7
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !48

kcalloc.exit.thread.i:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %call7.i.i.i, align 8
  br label %cleanup.sink.split

if.end7.i.i.i:                                    ; preds = %if.end.i
  %8 = extractvalue { i32, i1 } %5, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #11
  %9 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8.i.i.i, ptr %call7.i.i.i, align 8
  %tobool3.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool3.not.i, label %if.end7.i.i.i.cleanup.sink.split_crit_edge, label %if.end5.i

if.end7.i.i.i.cleanup.sink.split_crit_edge:       ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end5.i:                                        ; preds = %if.end7.i.i.i
  %clk_num6.i = getelementptr inbounds %struct.clk_onecell_data, ptr %call7.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %clk_num6.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %3, ptr %clk_num6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp25.not.i = icmp eq i32 %3, 0
  br i1 %cmp25.not.i, label %if.end5.i.if.end5_crit_edge, label %if.end5.i.for.body.i_crit_edge

if.end5.i.for.body.i_crit_edge:                   ; preds = %if.end5.i
  br label %for.body.i

if.end5.i.if.end5_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end5.i.for.body.i_crit_edge
  %i.026.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end5.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call7.i.i.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %12, i32 %i.026.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.i, align 4
  %inc.i = add nuw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.body.i.if.end5_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.if.end5_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.end5:                                          ; preds = %for.body.i.if.end5_crit_edge, %if.end5.i.if.end5_crit_edge
  %14 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call, align 4
  %16 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_clks, align 4
  %call.i = tail call i32 @mtk_clk_register_gates_with_dev(ptr noundef %1, ptr noundef %15, i32 noundef %17, ptr noundef nonnull %call7.i.i.i, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.mtk_free_clk_data.exit_crit_edge

if.end5.mtk_free_clk_data.exit_crit_edge:         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtk_free_clk_data.exit

if.end10:                                         ; preds = %if.end5
  %call11 = tail call i32 @of_clk_add_provider(ptr noundef %1, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %call7.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end10.mtk_free_clk_data.exit_crit_edge

if.end10.mtk_free_clk_data.exit_crit_edge:        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtk_free_clk_data.exit

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

mtk_free_clk_data.exit:                           ; preds = %if.end10.mtk_free_clk_data.exit_crit_edge, %if.end5.mtk_free_clk_data.exit_crit_edge
  %r.0 = phi i32 [ %call.i, %if.end5.mtk_free_clk_data.exit_crit_edge ], [ %call11, %if.end10.mtk_free_clk_data.exit_crit_edge ]
  %18 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call7.i.i.i, align 8
  tail call void @kfree(ptr noundef %19) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %mtk_free_clk_data.exit, %if.end7.i.i.i.cleanup.sink.split_crit_edge, %kcalloc.exit.thread.i
  %retval.0.ph = phi i32 [ %r.0, %mtk_free_clk_data.exit ], [ -12, %if.end7.i.i.i.cleanup.sink.split_crit_edge ], [ -12, %kcalloc.exit.thread.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !14, !16, !18, !19, !20, !21, !23, !24, !26, !28, !29, !30, !32, !34, !35, !36, !38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__ksymtab_mtk_alloc_clk_data, !1, !"__ksymtab_mtk_alloc_clk_data", i1 false, i1 false}
!1 = !{!"../drivers/clk/mediatek/clk-mtk.c", i32 46, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/mediatek/clk-mtk.c", i32 73, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mtk_clk_register_fixed_clks._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @mtk_clk_register_fixed_clks._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_mtk_clk_register_fixed_clks, !9, !"__ksymtab_mtk_clk_register_fixed_clks", i1 false, i1 false}
!9 = !{!"../drivers/clk/mediatek/clk-mtk.c", i32 82, i32 1}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/mediatek/clk-mtk.c", i32 100, i32 4}
!12 = !{ptr @mtk_clk_register_factors._entry, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @mtk_clk_register_factors._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__ksymtab_mtk_clk_register_factors, !15, !"__ksymtab_mtk_clk_register_factors", i1 false, i1 false}
!15 = !{!"../drivers/clk/mediatek/clk-mtk.c", i32 109, i32 1}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/mediatek/clk-mtk.c", i32 125, i32 3}
!18 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mtk_clk_register_gates_with_dev._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @mtk_clk_register_gates_with_dev._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @mtk_clk_register_gates_with_dev._entry.6, !22, !"_entry", i1 false, i1 false}
!22 = !{!"../drivers/clk/mediatek/clk-mtk.c", i32 144, i32 4}
!23 = !{ptr @mtk_clk_register_gates_with_dev._entry_ptr.7, !22, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @__ksymtab_mtk_clk_register_gates, !25, !"__ksymtab_mtk_clk_register_gates", i1 false, i1 false}
!25 = !{!"../drivers/clk/mediatek/clk-mtk.c", i32 162, i32 1}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/mediatek/clk-mtk.c", i32 267, i32 4}
!28 = !{ptr @mtk_clk_register_composites._entry, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @mtk_clk_register_composites._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @__ksymtab_mtk_clk_register_composites, !31, !"__ksymtab_mtk_clk_register_composites", i1 false, i1 false}
!31 = !{!"../drivers/clk/mediatek/clk-mtk.c", i32 276, i32 1}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/mediatek/clk-mtk.c", i32 296, i32 4}
!34 = !{ptr @mtk_clk_register_dividers._entry, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @mtk_clk_register_dividers._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @__UNIQUE_ID_file183, !37, !"__UNIQUE_ID_file183", i1 false, i1 false}
!37 = !{!"../drivers/clk/mediatek/clk-mtk.c", i32 336, i32 1}
!38 = !{ptr @__UNIQUE_ID_license184, !37, !"__UNIQUE_ID_license184", i1 false, i1 false}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"branch_weights", i32 1, i32 2000}
!49 = !{!"auto-init"}
