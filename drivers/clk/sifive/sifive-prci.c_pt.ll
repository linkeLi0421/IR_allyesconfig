; ModuleID = '/llk/IR_all_yes/drivers/clk/sifive/sifive-prci.c_pt.bc'
source_filename = "../drivers/clk/sifive/sifive-prci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.prci_clk_desc = type { ptr, i32 }
%struct.__prci_clock = type { ptr, ptr, ptr, %struct.clk_hw, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.wrpll_cfg = type { i8, i8, i8, i8, i16, [6 x i32], i32, i8, i8 }
%struct.__prci_wrpll_data = type { %struct.wrpll_cfg, ptr, ptr, i8, i8 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.__prci_data = type { ptr, %struct.reset_simple_data, %struct.clk_hw_onecell_data }
%struct.reset_simple_data = type { %struct.spinlock, ptr, %struct.reset_controller_dev, i8, i8, i32 }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__initcall__kmod_sifive_prci__184_633_sifive_prci_init1 = internal global ptr @sifive_prci_init, section ".initcall1.init", align 4
@sifive_prci_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sifive_prci_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sifive_prci_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sifive-clk-prci\00", [16 x i8] zeroinitializer }, align 32
@sifive_prci_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sifive,fu540-c000-prci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @prci_clk_fu540 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sifive,fu740-c000-prci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @prci_clk_fu740 }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@reset_simple_ops = external dso_local constant %struct.reset_control_ops, align 4
@sifive_prci_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&pd->reset.lock\00", [16 x i8] zeroinitializer }, align 32
@sifive_prci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 601, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"could not register reset controller: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sifive_prci_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/clk/sifive/sifive-prci.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sifive_prci_probe._entry_ptr = internal global ptr @sifive_prci_probe._entry, section ".printk_index", align 4
@sifive_prci_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 606, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"could not register clocks: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@sifive_prci_probe._entry_ptr.9 = internal global ptr @sifive_prci_probe._entry.7, section ".printk_index", align 4
@sifive_prci_probe.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.3, ptr @.str.4, ptr @.str.11, i8 0, i8 -104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sifive_prci\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SiFive PRCI probed\0A\00", [44 x i8] zeroinitializer }, align 32
@__prci_register_clocks._entry = internal constant %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 518, ptr @.str.5, ptr @.str.6 }, align 1
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"expected only two parent clocks, found %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__prci_register_clocks\00", [41 x i8] zeroinitializer }, align 32
@__prci_register_clocks._entry_ptr = internal global ptr @__prci_register_clocks._entry, section ".printk_index", align 4
@__prci_register_clocks._entry.14 = internal constant %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.4, i32 540, ptr @.str.16, ptr @.str.6 }, align 1
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register clock %s: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@__prci_register_clocks._entry_ptr.17 = internal global ptr @__prci_register_clocks._entry.14, section ".printk_index", align 4
@__prci_register_clocks._entry.18 = internal constant %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.4, i32 547, ptr @.str.16, ptr @.str.6 }, align 1
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to register clkdev for %s: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@__prci_register_clocks._entry_ptr.20 = internal global ptr @__prci_register_clocks._entry.18, section ".printk_index", align 4
@__prci_register_clocks._entry.21 = internal constant %struct.pi_entry { ptr @.str.22, ptr @.str.13, ptr @.str.4, i32 559, ptr @.str.5, ptr @.str.6 }, align 1
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"could not add hw_provider: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@__prci_register_clocks._entry_ptr.23 = internal global ptr @__prci_register_clocks._entry.21, section ".printk_index", align 4
@prci_clk_fu540 = internal constant { %struct.prci_clk_desc, [24 x i8] } { %struct.prci_clk_desc { ptr @__prci_init_clocks_fu540, i32 4 }, [24 x i8] zeroinitializer }, align 32
@prci_clk_fu740 = internal constant { %struct.prci_clk_desc, [24 x i8] } { %struct.prci_clk_desc { ptr @__prci_init_clocks_fu740, i32 9 }, [24 x i8] zeroinitializer }, align 32
@__prci_init_clocks_fu540 = external dso_local global [4 x %struct.__prci_clock], align 4
@__prci_init_clocks_fu740 = external dso_local global [9 x %struct.__prci_clock], align 4
@___asan_gen_.24 = private unnamed_addr constant [19 x i8] c"sifive_prci_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 621, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 623, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [21 x i8] c"sifive_prci_of_match\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 615, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 597, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 601, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 606, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 610, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 517, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 539, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 546, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 559, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [15 x i8] c"prci_clk_fu540\00", align 1
@___asan_gen_.88 = private constant [36 x i8] c"../drivers/clk/sifive/sifive-prci.c\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 15, i32 35 }
@___asan_gen_.90 = private unnamed_addr constant [15 x i8] c"prci_clk_fu740\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [35 x i8] c"../drivers/clk/sifive/fu740-prci.h\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 16, i32 35 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__initcall__kmod_sifive_prci__184_633_sifive_prci_init1, ptr @__prci_register_clocks._entry, ptr @__prci_register_clocks._entry.14, ptr @__prci_register_clocks._entry.18, ptr @__prci_register_clocks._entry.21, ptr @__prci_register_clocks._entry_ptr, ptr @__prci_register_clocks._entry_ptr.17, ptr @__prci_register_clocks._entry_ptr.20, ptr @__prci_register_clocks._entry_ptr.23, ptr @sifive_prci_probe._entry, ptr @sifive_prci_probe._entry.7, ptr @sifive_prci_probe._entry_ptr, ptr @sifive_prci_probe._entry_ptr.9, ptr @sifive_prci_driver, ptr @.str, ptr @sifive_prci_of_match, ptr @sifive_prci_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @prci_clk_fu540, ptr @prci_clk_fu740], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sifive_prci_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sifive_prci_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sifive_prci_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sifive_prci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sifive_prci_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prci_clk_fu540 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prci_clk_fu740 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sifive_prci_wrpll_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pwd1 = getelementptr i8, ptr %hw, i32 12
  %0 = ptrtoint ptr %pwd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwd1, align 4
  %call = tail call i32 @wrpll_calc_output_rate(ptr noundef %1, i32 noundef %parent_rate) #6
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wrpll_calc_output_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sifive_prci_wrpll_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) local_unnamed_addr #0 align 64 {
entry:
  %c = alloca %struct.wrpll_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pwd1 = getelementptr i8, ptr %hw, i32 12
  %0 = ptrtoint ptr %pwd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwd1, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %c) #6
  %2 = call ptr @memcpy(ptr %c, ptr %1, i32 40)
  %3 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %parent_rate, align 4
  %call = call i32 @wrpll_configure_for_rate(ptr noundef nonnull %c, i32 noundef %rate, i32 noundef %4) #6
  %5 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %parent_rate, align 4
  %call3 = call i32 @wrpll_calc_output_rate(ptr noundef nonnull %c, i32 noundef %6) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %c) #6
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wrpll_configure_for_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sifive_prci_wrpll_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pwd1 = getelementptr i8, ptr %hw, i32 12
  %0 = ptrtoint ptr %pwd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwd1, align 4
  %pd2 = getelementptr i8, ptr %hw, i32 16
  %2 = ptrtoint ptr %pd2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pd2, align 4
  %call = tail call i32 @wrpll_configure_for_rate(ptr noundef %1, i32 noundef %rate, i32 noundef %parent_rate) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %enable_bypass = getelementptr inbounds %struct.__prci_wrpll_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %enable_bypass to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enable_bypass, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %5(ptr noundef %3) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %1, align 4
  %conv.i.i = zext i8 %7 to i32
  %divf.i.i = getelementptr inbounds %struct.wrpll_cfg, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %divf.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %divf.i.i, align 4
  %conv1.i.i = zext i16 %9 to i32
  %shl2.i.i = shl nuw nsw i32 %conv1.i.i, 6
  %divq.i.i = getelementptr inbounds %struct.wrpll_cfg, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %divq.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %divq.i.i, align 1
  %conv4.i.i = zext i8 %11 to i32
  %shl5.i.i = shl nuw nsw i32 %conv4.i.i, 15
  %range.i.i = getelementptr inbounds %struct.wrpll_cfg, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %range.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %range.i.i, align 2
  %conv7.i.i = zext i8 %13 to i32
  %shl8.i.i = shl nuw nsw i32 %conv7.i.i, 18
  %or3.i.i = or i32 %shl2.i.i, %conv.i.i
  %or6.i.i = or i32 %or3.i.i, %shl5.i.i
  %or9.i.i = or i32 %or6.i.i, %shl8.i.i
  %or10.i.i = or i32 %or9.i.i, 33554432
  %cfg0_offs.i = getelementptr inbounds %struct.__prci_wrpll_data, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %cfg0_offs.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cfg0_offs.i, align 4
  %conv.i = zext i8 %15 to i32
  %16 = tail call i32 @llvm.bswap.i32(i32 %or10.i.i) #6
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %16) #6, !srcloc !58
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %call9 = tail call i32 @wrpll_calc_max_lock_us(ptr noundef %1) #6
  tail call void %19(i32 noundef %call9) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wrpll_calc_max_lock_us(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sifive_clk_is_enabled(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pwd1 = getelementptr i8, ptr %hw, i32 12
  %0 = ptrtoint ptr %pwd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwd1, align 4
  %pd2 = getelementptr i8, ptr %hw, i32 16
  %2 = ptrtoint ptr %pd2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pd2, align 4
  %cfg1_offs = getelementptr inbounds %struct.__prci_wrpll_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %cfg1_offs to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cfg1_offs, align 1
  %conv = zext i8 %5 to i32
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %conv
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !59
  %.mask = lshr i32 %8, 7
  %.mask.lobit = and i32 %.mask, 1
  ret i32 %.mask.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sifive_prci_clock_enable(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pwd1 = getelementptr i8, ptr %hw, i32 12
  %0 = ptrtoint ptr %pwd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwd1, align 4
  %pd2 = getelementptr i8, ptr %hw, i32 16
  %2 = ptrtoint ptr %pd2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pd2, align 4
  %cfg1_offs.i = getelementptr inbounds %struct.__prci_wrpll_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %cfg1_offs.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cfg1_offs.i, align 1
  %conv.i = zext i8 %5 to i32
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %conv.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !59
  %9 = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %cfg1_offs.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %cfg1_offs.i, align 1
  %conv.i15 = zext i8 %11 to i32
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %add.ptr.i.i16 = getelementptr i8, ptr %13, i32 %conv.i15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i16, i32 128) #6, !srcloc !58
  %disable_bypass = getelementptr inbounds %struct.__prci_wrpll_data, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %disable_bypass to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %disable_bypass, align 4
  %tobool3.not = icmp eq ptr %15, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %15(ptr noundef %3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sifive_prci_clock_disable(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pwd1 = getelementptr i8, ptr %hw, i32 12
  %0 = ptrtoint ptr %pwd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwd1, align 4
  %pd2 = getelementptr i8, ptr %hw, i32 16
  %2 = ptrtoint ptr %pd2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pd2, align 4
  %enable_bypass = getelementptr inbounds %struct.__prci_wrpll_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %enable_bypass to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enable_bypass, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %5(ptr noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cfg1_offs = getelementptr inbounds %struct.__prci_wrpll_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %cfg1_offs to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cfg1_offs, align 1
  %conv = zext i8 %7 to i32
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %conv
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !59
  %11 = and i32 %10, -129
  %12 = ptrtoint ptr %cfg1_offs to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cfg1_offs, align 1
  %conv.i = zext i8 %13 to i32
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %11) #6, !srcloc !58
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sifive_prci_tlclksel_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pd1 = getelementptr i8, ptr %hw, i32 16
  %0 = ptrtoint ptr %pd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 44
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !59
  %5 = lshr i32 %4, 25
  %.lobit = and i32 %5, 1
  %6 = xor i32 %.lobit, 1
  %div172.i.i8 = lshr i32 %parent_rate, %6
  ret i32 %div172.i.i8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sifive_prci_hfpclkplldiv_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pd1 = getelementptr i8, ptr %hw, i32 16
  %0 = ptrtoint ptr %pd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 92
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !59
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  %add = add i32 %5, 2
  %div172.i.i = udiv i32 %parent_rate, %add
  ret i32 %div172.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sifive_prci_coreclksel_use_hfclk(ptr nocapture noundef readonly %pd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 36
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !59
  %3 = or i32 %2, 16777216
  %4 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pd, align 4
  %add.ptr.i5 = getelementptr i8, ptr %5, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %3) #6, !srcloc !58
  %6 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pd, align 4
  %add.ptr.i6 = getelementptr i8, ptr %7, i32 36
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #6, !srcloc !59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sifive_prci_coreclksel_use_corepll(ptr nocapture noundef readonly %pd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 36
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !59
  %3 = and i32 %2, -16777217
  %4 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pd, align 4
  %add.ptr.i5 = getelementptr i8, ptr %5, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %3) #6, !srcloc !58
  %6 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pd, align 4
  %add.ptr.i6 = getelementptr i8, ptr %7, i32 36
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #6, !srcloc !59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sifive_prci_coreclksel_use_final_corepll(ptr nocapture noundef readonly %pd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 36
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !59
  %3 = and i32 %2, -16777217
  %4 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pd, align 4
  %add.ptr.i5 = getelementptr i8, ptr %5, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %3) #6, !srcloc !58
  %6 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pd, align 4
  %add.ptr.i6 = getelementptr i8, ptr %7, i32 36
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #6, !srcloc !59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sifive_prci_corepllsel_use_dvfscorepll(ptr nocapture noundef readonly %pd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 64
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !59
  %3 = or i32 %2, 16777216
  %4 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pd, align 4
  %add.ptr.i5 = getelementptr i8, ptr %5, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %3) #6, !srcloc !58
  %6 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pd, align 4
  %add.ptr.i6 = getelementptr i8, ptr %7, i32 64
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #6, !srcloc !59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sifive_prci_corepllsel_use_corepll(ptr nocapture noundef readonly %pd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 64
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !59
  %3 = and i32 %2, -16777217
  %4 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pd, align 4
  %add.ptr.i5 = getelementptr i8, ptr %5, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %3) #6, !srcloc !58
  %6 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pd, align 4
  %add.ptr.i6 = getelementptr i8, ptr %7, i32 64
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #6, !srcloc !59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sifive_prci_hfpclkpllsel_use_hfclk(ptr nocapture noundef readonly %pd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 88
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !59
  %3 = or i32 %2, 16777216
  %4 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pd, align 4
  %add.ptr.i5 = getelementptr i8, ptr %5, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %3) #6, !srcloc !58
  %6 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pd, align 4
  %add.ptr.i6 = getelementptr i8, ptr %7, i32 88
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #6, !srcloc !59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sifive_prci_hfpclkpllsel_use_hfpclkpll(ptr nocapture noundef readonly %pd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 88
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !59
  %3 = and i32 %2, -16777217
  %4 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pd, align 4
  %add.ptr.i5 = getelementptr i8, ptr %5, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %3) #6, !srcloc !58
  %6 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pd, align 4
  %add.ptr.i6 = getelementptr i8, ptr %7, i32 88
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #6, !srcloc !59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sifive_prci_pcie_aux_clock_is_enabled(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pd1 = getelementptr i8, ptr %hw, i32 16
  %0 = ptrtoint ptr %pd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !59
  %5 = lshr i32 %4, 24
  %.lobit = and i32 %5, 1
  ret i32 %.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sifive_prci_pcie_aux_clock_enable(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pd1 = getelementptr i8, ptr %hw, i32 16
  %0 = ptrtoint ptr %pd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !59
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #6, !srcloc !58
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %add.ptr.i7 = getelementptr i8, ptr %9, i32 20
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7) #6, !srcloc !59
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sifive_prci_pcie_aux_clock_disable(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pd1 = getelementptr i8, ptr %hw, i32 16
  %0 = ptrtoint ptr %pd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !58
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr.i3 = getelementptr i8, ptr %5, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3) #6, !srcloc !59
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sifive_prci_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sifive_prci_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sifive_prci_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %init.i = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %num_clks = getelementptr inbounds %struct.prci_clk_desc, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_clks, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4) #6
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %4, i32 108) #6
  %retval.0.i84 = select i1 %3, i32 -1, i32 %spec.select.i
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %retval.0.i84, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %call6 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call5) #6
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call6, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %reset = getelementptr inbounds %struct.__prci_data, ptr %call.i, i32 0, i32 1
  %rcdev = getelementptr inbounds %struct.__prci_data, ptr %call.i, i32 0, i32 1, i32 2
  %owner = getelementptr inbounds %struct.__prci_data, ptr %call.i, i32 0, i32 1, i32 2, i32 1
  %7 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %owner, align 4
  %nr_resets = getelementptr inbounds %struct.__prci_data, ptr %call.i, i32 0, i32 1, i32 2, i32 8
  %8 = ptrtoint ptr %nr_resets to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 7, ptr %nr_resets, align 4
  %9 = ptrtoint ptr %rcdev to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @reset_simple_ops, ptr %rcdev, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %of_node20 = getelementptr inbounds %struct.__prci_data, ptr %call.i, i32 0, i32 1, i32 2, i32 5
  %12 = ptrtoint ptr %of_node20 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %of_node20, align 4
  %active_low = getelementptr inbounds %struct.__prci_data, ptr %call.i, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %active_low to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %active_low, align 4
  %add.ptr = getelementptr i8, ptr %call6, i32 40
  %membase = getelementptr inbounds %struct.__prci_data, ptr %call.i, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr, ptr %membase, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %reset, ptr noundef nonnull @.str.1, ptr noundef nonnull @sifive_prci_probe.__key, i16 noundef signext 3) #6
  %call29 = tail call i32 @devm_reset_controller_register(ptr noundef %dev1, ptr noundef %rcdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end35, label %do.end34

do.end34:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %call29) #9
  br label %cleanup

if.end35:                                         ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #6
  %15 = call ptr @memset(ptr %init.i, i32 0, i32 28)
  %16 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node, align 8
  %call.i85 = tail call i32 @of_clk_get_parent_count(ptr noundef %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i85)
  %cmp.not.i = icmp eq i32 %call.i85, 2
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %do.end.i

for.cond.preheader.i:                             ; preds = %if.end35
  %18 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_clks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp182.not.i = icmp eq i32 %19, 0
  br i1 %cmp182.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %ops3.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %hws.i = getelementptr inbounds %struct.__prci_data, ptr %call.i, i32 1
  br label %for.body.i

do.end.i:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %call.i85) #9
  br label %do.end41

for.body.i:                                       ; preds = %if.end28.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.083.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end28.i.for.body.i_crit_edge ]
  %20 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call, align 4
  %arrayidx.i = getelementptr %struct.__prci_clock, ptr %21, i32 %i.083.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %24 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %init.i, align 4
  %parent_name.i = getelementptr %struct.__prci_clock, ptr %21, i32 %i.083.i, i32 1
  %25 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %parent_name.i, ptr %parent_names.i, align 4
  %26 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %num_parents.i, align 4
  %ops.i = getelementptr %struct.__prci_clock, ptr %21, i32 %i.083.i, i32 2
  %27 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops.i, align 4
  %29 = ptrtoint ptr %ops3.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %ops3.i, align 4
  %hw.i = getelementptr %struct.__prci_clock, ptr %21, i32 %i.083.i, i32 3
  %init4.i = getelementptr %struct.__prci_clock, ptr %21, i32 %i.083.i, i32 3, i32 2
  %30 = ptrtoint ptr %init4.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %init.i, ptr %init4.i, align 4
  %pd5.i = getelementptr %struct.__prci_clock, ptr %21, i32 %i.083.i, i32 5
  %31 = ptrtoint ptr %pd5.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %pd5.i, align 4
  %pwd.i = getelementptr %struct.__prci_clock, ptr %21, i32 %i.083.i, i32 4
  %32 = ptrtoint ptr %pwd.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pwd.i, align 4
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %for.body.i.if.end8.i_crit_edge, label %if.then6.i

for.body.i.if.end8.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.then6.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %cfg0_offs.i.i = getelementptr inbounds %struct.__prci_wrpll_data, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %cfg0_offs.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %cfg0_offs.i.i, align 4
  %conv.i.i = zext i8 %35 to i32
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %37, i32 %conv.i.i
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !59
  %39 = call i32 @llvm.bswap.i32(i32 %38) #6
  %40 = trunc i32 %39 to i8
  %conv.i.i.i = and i8 %40, 63
  %41 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv.i.i.i, ptr %33, align 4
  %42 = trunc i32 %39 to i16
  %43 = lshr i16 %42, 6
  %conv3.i.i.i = and i16 %43, 511
  %divf.i.i.i = getelementptr inbounds %struct.wrpll_cfg, ptr %33, i32 0, i32 4
  %44 = ptrtoint ptr %divf.i.i.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv3.i.i.i, ptr %divf.i.i.i, align 4
  %and4.i.i.i = lshr i32 %39, 15
  %45 = trunc i32 %and4.i.i.i to i8
  %conv6.i.i.i = and i8 %45, 7
  %divq.i.i.i = getelementptr inbounds %struct.wrpll_cfg, ptr %33, i32 0, i32 1
  %46 = ptrtoint ptr %divq.i.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv6.i.i.i, ptr %divq.i.i.i, align 1
  %and7.i.i.i = lshr i32 %39, 18
  %47 = trunc i32 %and7.i.i.i to i8
  %conv9.i.i.i = and i8 %47, 7
  %range.i.i.i = getelementptr inbounds %struct.wrpll_cfg, ptr %33, i32 0, i32 2
  %48 = ptrtoint ptr %range.i.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv9.i.i.i, ptr %range.i.i.i, align 2
  %flags.i.i.i = getelementptr inbounds %struct.wrpll_cfg, ptr %33, i32 0, i32 3
  %49 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %flags.i.i.i, align 1
  %51 = and i8 %50, 8
  %52 = or i8 %51, 4
  store i8 %52, ptr %flags.i.i.i, align 1
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %for.body.i.if.end8.i_crit_edge
  %call10.i = call i32 @devm_clk_hw_register(ptr noundef %dev1, ptr noundef %hw.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end17.i, label %do.end15.i

do.end15.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %init.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.15, ptr noundef %54, i32 noundef %call10.i) #9
  br label %do.end41

if.end17.i:                                       ; preds = %if.end8.i
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i, align 4
  %57 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %58, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end17.i.dev_name.exit.i_crit_edge

if.end17.i.dev_name.exit.i_crit_edge:             ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end17.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %60, %if.end.i.i ], [ %58, %if.end17.i.dev_name.exit.i_crit_edge ]
  %call21.i = call i32 @clk_hw_register_clkdev(ptr noundef %hw.i, ptr noundef %56, ptr noundef %retval.0.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end28.i, label %do.end26.i

do.end26.i:                                       ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %init.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.19, ptr noundef %62, i32 noundef %call21.i) #9
  br label %do.end41

if.end28.i:                                       ; preds = %dev_name.exit.i
  %arrayidx30.i = getelementptr [0 x ptr], ptr %hws.i, i32 0, i32 %i.083.i
  %63 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %hw.i, ptr %arrayidx30.i, align 4
  %inc.i = add nuw i32 %i.083.i, 1
  %64 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_clks, align 4
  %cmp1.i = icmp ult i32 %inc.i, %65
  br i1 %cmp1.i, label %if.end28.i.for.body.i_crit_edge, label %if.end28.i.for.end.i_crit_edge

if.end28.i.for.end.i_crit_edge:                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end28.i.for.body.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %if.end28.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %inc.i, %if.end28.i.for.end.i_crit_edge ]
  %hw_clks31.i = getelementptr inbounds %struct.__prci_data, ptr %call.i, i32 0, i32 2
  %66 = ptrtoint ptr %hw_clks31.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %i.0.lcssa.i, ptr %hw_clks31.i, align 4
  %call33.i = call i32 @devm_of_clk_add_hw_provider(ptr noundef %dev1, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %hw_clks31.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %do.body43, label %do.end38.i

do.end38.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef %call33.i) #9
  br label %do.end41

do.end41:                                         ; preds = %do.end38.i, %do.end26.i, %do.end15.i, %do.end.i
  %retval.0.i86.ph = phi i32 [ %call33.i, %do.end38.i ], [ %call21.i, %do.end26.i ], [ %call10.i, %do.end15.i ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i86.ph) #9
  br label %cleanup

do.body43:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sifive_prci_probe.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sifive_prci_probe, %if.then48)) #6
          to label %cleanup [label %if.then48], !srcloc !60

if.then48:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sifive_prci_probe.__UNIQUE_ID_ddebug183, ptr noundef %dev1, ptr noundef nonnull @.str.11) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %do.body43, %do.end41, %do.end34, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then9 ], [ %call29, %do.end34 ], [ %retval.0.i86.ph, %do.end41 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then48 ], [ 0, %do.body43 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_reset_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register_clkdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !47}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__initcall__kmod_sifive_prci__184_633_sifive_prci_init1, !1, !"__initcall__kmod_sifive_prci__184_633_sifive_prci_init1", i1 false, i1 false}
!1 = !{!"../drivers/clk/sifive/sifive-prci.c", i32 633, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/sifive/sifive-prci.c", i32 623, i32 11}
!4 = !{ptr @sifive_prci_driver, !5, !"sifive_prci_driver", i1 false, i1 false}
!5 = !{!"../drivers/clk/sifive/sifive-prci.c", i32 621, i32 31}
!6 = !{ptr @sifive_prci_probe.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/clk/sifive/sifive-prci.c", i32 597, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/clk/sifive/sifive-prci.c", i32 601, i32 3}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @sifive_prci_probe._entry, !10, !"_entry", i1 false, i1 false}
!16 = !{ptr @sifive_prci_probe._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/sifive/sifive-prci.c", i32 606, i32 3}
!19 = !{ptr @sifive_prci_probe._entry.7, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @sifive_prci_probe._entry_ptr.9, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/sifive/sifive-prci.c", i32 610, i32 2}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @sifive_prci_probe.__UNIQUE_ID_ddebug183, !22, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/sifive/sifive-prci.c", i32 517, i32 3}
!27 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @__prci_register_clocks._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @__prci_register_clocks._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/sifive/sifive-prci.c", i32 539, i32 4}
!32 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @__prci_register_clocks._entry.14, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @__prci_register_clocks._entry_ptr.17, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/sifive/sifive-prci.c", i32 546, i32 4}
!37 = !{ptr @__prci_register_clocks._entry.18, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @__prci_register_clocks._entry_ptr.20, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/sifive/sifive-prci.c", i32 559, i32 3}
!41 = !{ptr @__prci_register_clocks._entry.21, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @__prci_register_clocks._entry_ptr.23, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @sifive_prci_of_match, !44, !"sifive_prci_of_match", i1 false, i1 false}
!44 = !{!"../drivers/clk/sifive/sifive-prci.c", i32 615, i32 34}
!45 = !{ptr @prci_clk_fu540, !46, !"prci_clk_fu540", i1 false, i1 false}
!46 = !{!"../drivers/clk/sifive/sifive-prci.c", i32 15, i32 35}
!47 = !{ptr @prci_clk_fu740, !48, !"prci_clk_fu740", i1 false, i1 false}
!48 = !{!"../drivers/clk/sifive/fu740-prci.h", i32 16, i32 35}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{i64 4582966}
!59 = !{i64 4583384}
!60 = !{i64 2148217537, i64 2148217542, i64 2148217555, i64 2148217599, i64 2148217633, i64 2148217654}
