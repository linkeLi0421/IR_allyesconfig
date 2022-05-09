; ModuleID = '/llk/IR_all_yes/drivers/clk/hisilicon/clk-hi3519.c_pt.bc'
source_filename = "../drivers/clk/hisilicon/clk-hi3519.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.hisi_fixed_rate_clock = type { i32, ptr, ptr, i32, i32 }
%struct.hisi_mux_clock = type { i32, ptr, ptr, i8, i32, i32, i8, i8, i8, ptr, ptr }
%struct.hisi_gate_clock = type { i32, ptr, ptr, i32, i32, i8, i8, ptr }
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
%struct.hi3519_crg_data = type { ptr, ptr }

@__initcall__kmod_clk_hi3519__170_194_hi3519_clk_init1 = internal global ptr @hi3519_clk_init, section ".initcall1.init", align 4
@hi3519_clk_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hi3519_clk_probe, ptr @hi3519_clk_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hi3519_clk_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hi3519_clk_exit = internal global ptr @hi3519_clk_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file171 = internal constant [49 x i8] c"clk_hi3519.file=drivers/clk/hisilicon/clk-hi3519\00", section ".modinfo", align 1
@__UNIQUE_ID_license172 = internal constant [26 x i8] c"clk_hi3519.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description173 = internal constant [53 x i8] c"clk_hi3519.description=HiSilicon Hi3519 Clock Driver\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hi3519-clk\00", [21 x i8] zeroinitializer }, align 32
@hi3519_clk_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3519-crg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@hi3519_fixed_rate_clks = internal constant { [9 x %struct.hisi_fixed_rate_clock], [44 x i8] } { [9 x %struct.hisi_fixed_rate_clock] [%struct.hisi_fixed_rate_clock { i32 65, ptr @.str.1, ptr null, i32 0, i32 24000000 }, %struct.hisi_fixed_rate_clock { i32 66, ptr @.str.2, ptr null, i32 0, i32 50000000 }, %struct.hisi_fixed_rate_clock { i32 67, ptr @.str.3, ptr null, i32 0, i32 75000000 }, %struct.hisi_fixed_rate_clock { i32 68, ptr @.str.4, ptr null, i32 0, i32 125000000 }, %struct.hisi_fixed_rate_clock { i32 69, ptr @.str.5, ptr null, i32 0, i32 150000000 }, %struct.hisi_fixed_rate_clock { i32 70, ptr @.str.6, ptr null, i32 0, i32 200000000 }, %struct.hisi_fixed_rate_clock { i32 71, ptr @.str.7, ptr null, i32 0, i32 250000000 }, %struct.hisi_fixed_rate_clock { i32 72, ptr @.str.8, ptr null, i32 0, i32 300000000 }, %struct.hisi_fixed_rate_clock { i32 73, ptr @.str.9, ptr null, i32 0, i32 400000000 }], [44 x i8] zeroinitializer }, align 32
@hi3519_mux_clks = internal constant { [1 x %struct.hisi_mux_clock], [60 x i8] } { [1 x %struct.hisi_mux_clock] [%struct.hisi_mux_clock { i32 74, ptr @.str.10, ptr @fmc_mux_p, i8 8, i32 4, i32 192, i8 2, i8 3, i8 0, ptr @fmc_mux_table, ptr null }], [60 x i8] zeroinitializer }, align 32
@hi3519_gate_clks = internal constant { [9 x %struct.hisi_gate_clock], [36 x i8] } { [9 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 1, ptr @.str.11, ptr @.str.10, i32 4, i32 192, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 5, ptr @.str.12, ptr @.str.1, i32 4, i32 228, i8 20, i8 0, ptr null }, %struct.hisi_gate_clock { i32 6, ptr @.str.13, ptr @.str.1, i32 4, i32 228, i8 21, i8 0, ptr null }, %struct.hisi_gate_clock { i32 7, ptr @.str.14, ptr @.str.1, i32 4, i32 228, i8 22, i8 0, ptr null }, %struct.hisi_gate_clock { i32 8, ptr @.str.15, ptr @.str.1, i32 4, i32 228, i8 23, i8 0, ptr null }, %struct.hisi_gate_clock { i32 9, ptr @.str.16, ptr @.str.1, i32 4, i32 228, i8 24, i8 0, ptr null }, %struct.hisi_gate_clock { i32 2, ptr @.str.17, ptr @.str.2, i32 4, i32 228, i8 16, i8 0, ptr null }, %struct.hisi_gate_clock { i32 3, ptr @.str.18, ptr @.str.2, i32 4, i32 228, i8 17, i8 0, ptr null }, %struct.hisi_gate_clock { i32 4, ptr @.str.19, ptr @.str.2, i32 4, i32 228, i8 18, i8 0, ptr null }], [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"24m\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"50m\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"75m\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"125m\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"150m\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"200m\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"250m\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"300m\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"400m\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fmc_mux\00", [24 x i8] zeroinitializer }, align 32
@fmc_mux_p = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], [32 x i8] zeroinitializer }, align 32
@fmc_mux_table = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk_fmc\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_uart0\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_uart1\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_uart2\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_uart3\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_uart4\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_spi0\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_spi1\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_spi2\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"hi3519_clk_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 181, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 185, i32 13 }
@___asan_gen_.26 = private unnamed_addr constant [23 x i8] c"hi3519_clk_match_table\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 175, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant [23 x i8] c"hi3519_fixed_rate_clks\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 34, i32 43 }
@___asan_gen_.32 = private unnamed_addr constant [16 x i8] c"hi3519_mux_clks\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 50, i32 36 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"hi3519_gate_clks\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 55, i32 37 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 35, i32 22 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 36, i32 22 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 37, i32 22 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 38, i32 23 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 39, i32 23 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 40, i32 23 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 41, i32 23 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 42, i32 23 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 43, i32 23 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 51, i32 20 }
@___asan_gen_.68 = private unnamed_addr constant [10 x i8] c"fmc_mux_p\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 46, i32 26 }
@___asan_gen_.71 = private unnamed_addr constant [14 x i8] c"fmc_mux_table\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 48, i32 12 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 56, i32 20 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 58, i32 22 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 60, i32 22 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 62, i32 22 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 64, i32 22 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 66, i32 22 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 68, i32 21 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 70, i32 21 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private constant [38 x i8] c"../drivers/clk/hisilicon/clk-hi3519.c\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 72, i32 21 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_description173, ptr @__UNIQUE_ID_file171, ptr @__UNIQUE_ID_license172, ptr @__exitcall_hi3519_clk_exit, ptr @__initcall__kmod_clk_hi3519__170_194_hi3519_clk_init1, ptr @hi3519_clk_exit, ptr @hi3519_clk_driver, ptr @.str, ptr @hi3519_clk_match_table, ptr @hi3519_fixed_rate_clks, ptr @hi3519_mux_clks, ptr @hi3519_gate_clks, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @fmc_mux_p, ptr @fmc_mux_table, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3519_clk_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3519_clk_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3519_fixed_rate_clks to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3519_mux_clks to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3519_gate_clks to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmc_mux_p to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmc_mux_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3519_clk_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hi3519_clk_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hi3519_clk_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @hi3519_clk_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3519_clk_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3264) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @hisi_reset_init(ptr noundef %pdev) #4
  %rstc = getelementptr inbounds %struct.hi3519_crg_data, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %rstc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %rstc, align 4
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call.i = tail call ptr @hisi_clk_alloc(ptr noundef %pdev, i32 noundef 128) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %hi3519_clk_register.exit.thread, label %if.end.i

hi3519_clk_register.exit.thread:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -12 to ptr), ptr %call, align 4
  br label %if.then9

if.end.i:                                         ; preds = %if.end5
  %call2.i = tail call i32 @hisi_clk_register_fixed_rate(ptr noundef nonnull @hi3519_fixed_rate_clks, i32 noundef 9, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end6.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %2 = inttoptr i32 %call2.i to ptr
  br label %hi3519_clk_register.exit

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = tail call i32 @hisi_clk_register_mux(ptr noundef nonnull @hi3519_mux_clks, i32 noundef 1, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %unregister_fixed_rate.i

if.end10.i:                                       ; preds = %if.end6.i
  %call11.i = tail call i32 @hisi_clk_register_gate(ptr noundef nonnull @hi3519_gate_clks, i32 noundef 9, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end10.i.unregister_mux.i_crit_edge

if.end10.i.unregister_mux.i_crit_edge:            ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unregister_mux.i

if.end14.i:                                       ; preds = %if.end10.i
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node.i, align 8
  %call16.i = tail call i32 @of_clk_add_provider(ptr noundef %4, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end14.i.hi3519_clk_register.exit_crit_edge, label %if.end14.i.unregister_gate.i_crit_edge

if.end14.i.unregister_gate.i_crit_edge:           ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unregister_gate.i

if.end14.i.hi3519_clk_register.exit_crit_edge:    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hi3519_clk_register.exit

unregister_fixed_rate.i:                          ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @hisi_clk_unregister_fixed_rate(ptr noundef nonnull %call.i) #4
  br label %unregister_mux.i

unregister_mux.i:                                 ; preds = %unregister_fixed_rate.i, %if.end10.i.unregister_mux.i_crit_edge
  %ret.0.i = phi i32 [ %call7.i, %unregister_fixed_rate.i ], [ %call11.i, %if.end10.i.unregister_mux.i_crit_edge ]
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 4
  %arrayidx3.i.i = getelementptr ptr, ptr %6, i32 74
  %7 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx3.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %unregister_mux.i.unregister_gate.i_crit_edge, label %if.then.i.i

unregister_mux.i.unregister_gate.i_crit_edge:     ; preds = %unregister_mux.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unregister_gate.i

if.then.i.i:                                      ; preds = %unregister_mux.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_mux(ptr noundef nonnull %8) #4
  br label %unregister_gate.i

unregister_gate.i:                                ; preds = %if.then.i.i, %unregister_mux.i.unregister_gate.i_crit_edge, %if.end14.i.unregister_gate.i_crit_edge
  %ret.1.i = phi i32 [ %call16.i, %if.end14.i.unregister_gate.i_crit_edge ], [ %ret.0.i, %unregister_mux.i.unregister_gate.i_crit_edge ], [ %ret.0.i, %if.then.i.i ]
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 4
  %arrayidx3.i36.i = getelementptr ptr, ptr %10, i32 1
  %11 = ptrtoint ptr %arrayidx3.i36.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx3.i36.i, align 4
  %tobool.not.i37.i = icmp eq ptr %12, null
  br i1 %tobool.not.i37.i, label %unregister_gate.i.if.end.i.i_crit_edge, label %if.then.i38.i

unregister_gate.i.if.end.i.i_crit_edge:           ; preds = %unregister_gate.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

if.then.i38.i:                                    ; preds = %unregister_gate.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_gate(ptr noundef nonnull %12) #4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i38.i, %unregister_gate.i.if.end.i.i_crit_edge
  %arrayidx3.i36.1.i = getelementptr ptr, ptr %10, i32 5
  %13 = ptrtoint ptr %arrayidx3.i36.1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx3.i36.1.i, align 4
  %tobool.not.i37.1.i = icmp eq ptr %14, null
  br i1 %tobool.not.i37.1.i, label %if.end.i.i.if.end.i.1.i_crit_edge, label %if.then.i38.1.i

if.end.i.i.if.end.i.1.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.1.i

if.then.i38.1.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_gate(ptr noundef nonnull %14) #4
  br label %if.end.i.1.i

if.end.i.1.i:                                     ; preds = %if.then.i38.1.i, %if.end.i.i.if.end.i.1.i_crit_edge
  %arrayidx3.i36.2.i = getelementptr ptr, ptr %10, i32 6
  %15 = ptrtoint ptr %arrayidx3.i36.2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx3.i36.2.i, align 4
  %tobool.not.i37.2.i = icmp eq ptr %16, null
  br i1 %tobool.not.i37.2.i, label %if.end.i.1.i.if.end.i.2.i_crit_edge, label %if.then.i38.2.i

if.end.i.1.i.if.end.i.2.i_crit_edge:              ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.2.i

if.then.i38.2.i:                                  ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_gate(ptr noundef nonnull %16) #4
  br label %if.end.i.2.i

if.end.i.2.i:                                     ; preds = %if.then.i38.2.i, %if.end.i.1.i.if.end.i.2.i_crit_edge
  %arrayidx3.i36.3.i = getelementptr ptr, ptr %10, i32 7
  %17 = ptrtoint ptr %arrayidx3.i36.3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx3.i36.3.i, align 4
  %tobool.not.i37.3.i = icmp eq ptr %18, null
  br i1 %tobool.not.i37.3.i, label %if.end.i.2.i.if.end.i.3.i_crit_edge, label %if.then.i38.3.i

if.end.i.2.i.if.end.i.3.i_crit_edge:              ; preds = %if.end.i.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.3.i

if.then.i38.3.i:                                  ; preds = %if.end.i.2.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_gate(ptr noundef nonnull %18) #4
  br label %if.end.i.3.i

if.end.i.3.i:                                     ; preds = %if.then.i38.3.i, %if.end.i.2.i.if.end.i.3.i_crit_edge
  %arrayidx3.i36.4.i = getelementptr ptr, ptr %10, i32 8
  %19 = ptrtoint ptr %arrayidx3.i36.4.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx3.i36.4.i, align 4
  %tobool.not.i37.4.i = icmp eq ptr %20, null
  br i1 %tobool.not.i37.4.i, label %if.end.i.3.i.if.end.i.4.i_crit_edge, label %if.then.i38.4.i

if.end.i.3.i.if.end.i.4.i_crit_edge:              ; preds = %if.end.i.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.4.i

if.then.i38.4.i:                                  ; preds = %if.end.i.3.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_gate(ptr noundef nonnull %20) #4
  br label %if.end.i.4.i

if.end.i.4.i:                                     ; preds = %if.then.i38.4.i, %if.end.i.3.i.if.end.i.4.i_crit_edge
  %arrayidx3.i36.5.i = getelementptr ptr, ptr %10, i32 9
  %21 = ptrtoint ptr %arrayidx3.i36.5.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx3.i36.5.i, align 4
  %tobool.not.i37.5.i = icmp eq ptr %22, null
  br i1 %tobool.not.i37.5.i, label %if.end.i.4.i.if.end.i.5.i_crit_edge, label %if.then.i38.5.i

if.end.i.4.i.if.end.i.5.i_crit_edge:              ; preds = %if.end.i.4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.5.i

if.then.i38.5.i:                                  ; preds = %if.end.i.4.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_gate(ptr noundef nonnull %22) #4
  br label %if.end.i.5.i

if.end.i.5.i:                                     ; preds = %if.then.i38.5.i, %if.end.i.4.i.if.end.i.5.i_crit_edge
  %arrayidx3.i36.6.i = getelementptr ptr, ptr %10, i32 2
  %23 = ptrtoint ptr %arrayidx3.i36.6.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx3.i36.6.i, align 4
  %tobool.not.i37.6.i = icmp eq ptr %24, null
  br i1 %tobool.not.i37.6.i, label %if.end.i.5.i.if.end.i.6.i_crit_edge, label %if.then.i38.6.i

if.end.i.5.i.if.end.i.6.i_crit_edge:              ; preds = %if.end.i.5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.6.i

if.then.i38.6.i:                                  ; preds = %if.end.i.5.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_gate(ptr noundef nonnull %24) #4
  br label %if.end.i.6.i

if.end.i.6.i:                                     ; preds = %if.then.i38.6.i, %if.end.i.5.i.if.end.i.6.i_crit_edge
  %arrayidx3.i36.7.i = getelementptr ptr, ptr %10, i32 3
  %25 = ptrtoint ptr %arrayidx3.i36.7.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx3.i36.7.i, align 4
  %tobool.not.i37.7.i = icmp eq ptr %26, null
  br i1 %tobool.not.i37.7.i, label %if.end.i.6.i.if.end.i.7.i_crit_edge, label %if.then.i38.7.i

if.end.i.6.i.if.end.i.7.i_crit_edge:              ; preds = %if.end.i.6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.7.i

if.then.i38.7.i:                                  ; preds = %if.end.i.6.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_gate(ptr noundef nonnull %26) #4
  br label %if.end.i.7.i

if.end.i.7.i:                                     ; preds = %if.then.i38.7.i, %if.end.i.6.i.if.end.i.7.i_crit_edge
  %arrayidx3.i36.8.i = getelementptr ptr, ptr %10, i32 4
  %27 = ptrtoint ptr %arrayidx3.i36.8.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx3.i36.8.i, align 4
  %tobool.not.i37.8.i = icmp eq ptr %28, null
  br i1 %tobool.not.i37.8.i, label %if.end.i.7.i.if.end.i.8.i_crit_edge, label %if.then.i38.8.i

if.end.i.7.i.if.end.i.8.i_crit_edge:              ; preds = %if.end.i.7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.8.i

if.then.i38.8.i:                                  ; preds = %if.end.i.7.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_gate(ptr noundef nonnull %28) #4
  br label %if.end.i.8.i

if.end.i.8.i:                                     ; preds = %if.then.i38.8.i, %if.end.i.7.i.if.end.i.8.i_crit_edge
  %29 = inttoptr i32 %ret.1.i to ptr
  br label %hi3519_clk_register.exit

hi3519_clk_register.exit:                         ; preds = %if.end.i.8.i, %if.end14.i.hi3519_clk_register.exit_crit_edge, %if.then4.i
  %retval.0.i = phi ptr [ %2, %if.then4.i ], [ %29, %if.end.i.8.i ], [ %call.i, %if.end14.i.hi3519_clk_register.exit_crit_edge ]
  %30 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %retval.0.i, ptr %call, align 4
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %hi3519_clk_register.exit.if.then9_crit_edge, label %if.end13

hi3519_clk_register.exit.if.then9_crit_edge:      ; preds = %hi3519_clk_register.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then9

if.then9:                                         ; preds = %hi3519_clk_register.exit.if.then9_crit_edge, %hi3519_clk_register.exit.thread
  %31 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rstc, align 4
  tail call void @hisi_reset_exit(ptr noundef %32) #4
  %33 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call, align 4
  %35 = ptrtoint ptr %34 to i32
  br label %cleanup

if.end13:                                         ; preds = %hi3519_clk_register.exit
  call void @__sanitizer_cov_trace_pc() #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %36 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %35, %if.then9 ], [ 0, %if.end13 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3519_clk_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rstc = getelementptr inbounds %struct.hi3519_crg_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rstc, align 4
  tail call void @hisi_reset_exit(ptr noundef %3) #4
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node.i, align 8
  tail call void @of_clk_del_provider(ptr noundef %7) #4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %arrayidx3.i.i = getelementptr ptr, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx3.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %entry.if.end.i.i_crit_edge, label %if.then.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_gate(ptr noundef nonnull %13) #4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %entry.if.end.i.i_crit_edge
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %arrayidx3.i6.i = getelementptr ptr, ptr %17, i32 74
  %18 = ptrtoint ptr %arrayidx3.i6.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx3.i6.i, align 4
  %tobool.not.i7.i = icmp eq ptr %19, null
  br i1 %tobool.not.i7.i, label %if.end.i.i.hi3519_clk_unregister.exit_crit_edge, label %if.then.i8.i

if.end.i.i.hi3519_clk_unregister.exit_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hi3519_clk_unregister.exit

if.then.i8.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_mux(ptr noundef nonnull %19) #4
  br label %hi3519_clk_unregister.exit

hi3519_clk_unregister.exit:                       ; preds = %if.then.i8.i, %if.end.i.i.hi3519_clk_unregister.exit_crit_edge
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  tail call fastcc void @hisi_clk_unregister_fixed_rate(ptr noundef %21) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hisi_reset_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hisi_reset_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hisi_clk_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_fixed_rate(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_mux(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_gate(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hisi_clk_unregister_fixed_rate(ptr nocapture noundef readonly %data) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %arrayidx3 = getelementptr ptr, ptr %1, i32 65
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx3, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %3) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx3.1 = getelementptr ptr, ptr %1, i32 66
  %4 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx3.1, align 4
  %tobool.not.1 = icmp eq ptr %5, null
  br i1 %tobool.not.1, label %if.end.if.end.1_crit_edge, label %if.then.1

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.1

if.then.1:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %5) #4
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %if.end.if.end.1_crit_edge
  %arrayidx3.2 = getelementptr ptr, ptr %1, i32 67
  %6 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3.2, align 4
  %tobool.not.2 = icmp eq ptr %7, null
  br i1 %tobool.not.2, label %if.end.1.if.end.2_crit_edge, label %if.then.2

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.2

if.then.2:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %7) #4
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %if.end.1.if.end.2_crit_edge
  %arrayidx3.3 = getelementptr ptr, ptr %1, i32 68
  %8 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx3.3, align 4
  %tobool.not.3 = icmp eq ptr %9, null
  br i1 %tobool.not.3, label %if.end.2.if.end.3_crit_edge, label %if.then.3

if.end.2.if.end.3_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.3

if.then.3:                                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %9) #4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.3, %if.end.2.if.end.3_crit_edge
  %arrayidx3.4 = getelementptr ptr, ptr %1, i32 69
  %10 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx3.4, align 4
  %tobool.not.4 = icmp eq ptr %11, null
  br i1 %tobool.not.4, label %if.end.3.if.end.4_crit_edge, label %if.then.4

if.end.3.if.end.4_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.4

if.then.4:                                        ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %11) #4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.4, %if.end.3.if.end.4_crit_edge
  %arrayidx3.5 = getelementptr ptr, ptr %1, i32 70
  %12 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx3.5, align 4
  %tobool.not.5 = icmp eq ptr %13, null
  br i1 %tobool.not.5, label %if.end.4.if.end.5_crit_edge, label %if.then.5

if.end.4.if.end.5_crit_edge:                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.5

if.then.5:                                        ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %13) #4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.5, %if.end.4.if.end.5_crit_edge
  %arrayidx3.6 = getelementptr ptr, ptr %1, i32 71
  %14 = ptrtoint ptr %arrayidx3.6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx3.6, align 4
  %tobool.not.6 = icmp eq ptr %15, null
  br i1 %tobool.not.6, label %if.end.5.if.end.6_crit_edge, label %if.then.6

if.end.5.if.end.6_crit_edge:                      ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.6

if.then.6:                                        ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %15) #4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.6, %if.end.5.if.end.6_crit_edge
  %arrayidx3.7 = getelementptr ptr, ptr %1, i32 72
  %16 = ptrtoint ptr %arrayidx3.7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx3.7, align 4
  %tobool.not.7 = icmp eq ptr %17, null
  br i1 %tobool.not.7, label %if.end.6.if.end.7_crit_edge, label %if.then.7

if.end.6.if.end.7_crit_edge:                      ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.7

if.then.7:                                        ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %17) #4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.7, %if.end.6.if.end.7_crit_edge
  %arrayidx3.8 = getelementptr ptr, ptr %1, i32 73
  %18 = ptrtoint ptr %arrayidx3.8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx3.8, align 4
  %tobool.not.8 = icmp eq ptr %19, null
  br i1 %tobool.not.8, label %if.end.7.if.end.8_crit_edge, label %if.then.8

if.end.7.if.end.8_crit_edge:                      ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.8

if.then.8:                                        ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %19) #4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.8, %if.end.7.if.end.8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_fixed_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_mux(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_gate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__initcall__kmod_clk_hi3519__170_194_hi3519_clk_init1, !1, !"__initcall__kmod_clk_hi3519__170_194_hi3519_clk_init1", i1 false, i1 false}
!1 = !{!"../drivers/clk/hisilicon/clk-hi3519.c", i32 194, i32 1}
!2 = !{ptr @__exitcall_hi3519_clk_exit, !3, !"__exitcall_hi3519_clk_exit", i1 false, i1 false}
!3 = !{!"../drivers/clk/hisilicon/clk-hi3519.c", i32 200, i32 1}
!4 = !{ptr @__UNIQUE_ID_file171, !5, !"__UNIQUE_ID_file171", i1 false, i1 false}
!5 = !{!"../drivers/clk/hisilicon/clk-hi3519.c", i32 202, i32 1}
!6 = !{ptr @__UNIQUE_ID_license172, !5, !"__UNIQUE_ID_license172", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description173, !8, !"__UNIQUE_ID_description173", i1 false, i1 false}
!8 = !{!"../drivers/clk/hisilicon/clk-hi3519.c", i32 203, i32 1}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/clk/hisilicon/clk-hi3519.c", i32 185, i32 13}
!11 = !{ptr @hi3519_clk_driver, !12, !"hi3519_clk_driver", i1 false, i1 false}
!12 = !{!"../drivers/clk/hisilicon/clk-hi3519.c", i32 181, i32 31}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/clk/hisilicon/clk-hi3519.c", i32 35, i32 22}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clk/hisilicon/clk-hi3519.c", i32 36, i32 22}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/hisilicon/clk-hi3519.c", i32 37, i32 22}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/hisilicon/clk-hi3519.c", i32 38, i32 23}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/hisilicon/clk-hi3519.c", i32 39, i32 23}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/hisilicon/clk-hi3519.c", i32 40, i32 23}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/hisilicon/clk-hi3519.c", i32 41, i32 23}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/hisilicon/clk-hi3519.c", i32 42, i32 23}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/hisilicon/clk-hi3519.c", i32 43, i32 23}
!31 = !{ptr @hi3519_fixed_rate_clks, !32, !"hi3519_fixed_rate_clks", i1 false, i1 false}
!32 = !{!"../drivers/clk/hisilicon/clk-hi3519.c", i32 34, i32 43}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/hisilicon/clk-hi3519.c", i32 51, i32 20}
!35 = !{ptr @hi3519_mux_clks, !36, !"hi3519_mux_clks", i1 false, i1 false}
!36 = !{!"../drivers/clk/hisilicon/clk-hi3519.c", i32 50, i32 36}
!37 = !{ptr @fmc_mux_p, !38, !"fmc_mux_p", i1 false, i1 false}
!38 = !{!"../drivers/clk/hisilicon/clk-hi3519.c", i32 46, i32 26}
!39 = !{ptr @fmc_mux_table, !40, !"fmc_mux_table", i1 false, i1 false}
!40 = !{!"../drivers/clk/hisilicon/clk-hi3519.c", i32 48, i32 12}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/hisilicon/clk-hi3519.c", i32 56, i32 20}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clk/hisilicon/clk-hi3519.c", i32 58, i32 22}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/hisilicon/clk-hi3519.c", i32 60, i32 22}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/hisilicon/clk-hi3519.c", i32 62, i32 22}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/hisilicon/clk-hi3519.c", i32 64, i32 22}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/hisilicon/clk-hi3519.c", i32 66, i32 22}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/hisilicon/clk-hi3519.c", i32 68, i32 21}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/hisilicon/clk-hi3519.c", i32 70, i32 21}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/hisilicon/clk-hi3519.c", i32 72, i32 21}
!59 = !{ptr @hi3519_gate_clks, !60, !"hi3519_gate_clks", i1 false, i1 false}
!60 = !{!"../drivers/clk/hisilicon/clk-hi3519.c", i32 55, i32 37}
!61 = !{ptr @hi3519_clk_match_table, !62, !"hi3519_clk_match_table", i1 false, i1 false}
!62 = !{!"../drivers/clk/hisilicon/clk-hi3519.c", i32 175, i32 34}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
