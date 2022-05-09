; ModuleID = '/llk/IR_all_yes/drivers/clk/axis/clk-artpec6.c_pt.bc'
source_filename = "../drivers/clk/axis/clk-artpec6.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.artpec6_clkctrl_drvdata = type { [20 x ptr], ptr, %struct.clk_onecell_data, %struct.spinlock }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__of_table_artpec6_clkctrl = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"axis,artpec6-clkctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @artpec6_clkctrl_of_clk_init_driver }, section "__clk_of_table", align 4
@__initcall__kmod_clk_artpec6__183_239_artpec6_clkctrl_driver_init6 = internal global ptr @artpec6_clkctrl_driver_init, section ".initcall6.init", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clock-names\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_refclk\00", [21 x i8] zeroinitializer }, align 32
@clkdata = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpu\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpu_periph\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart_pclk\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart_ref\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi_pclk\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spi_sspclk\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dbg_pclk\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@artpec6_clkctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @artpec6_clkctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.9, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @artpec_clkctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"artpec6_clkctrl\00", [16 x i8] zeroinitializer }, align 32
@artpec_clkctrl_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"axis,artpec6-clkctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2s_refclk\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"frac_clk0\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"frac_clk1\00", [22 x i8] zeroinitializer }, align 32
@artpec6_clkctrl_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&clkdata->i2scfg_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nand_clka\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nand_clkb\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"eth_aclk\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dma_aclk\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ptp_ref\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sd_pclk\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sd_imclk\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2s_hst\00", [24 x i8] zeroinitializer }, align 32
@i2s_clk_names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.30, ptr @.str.31], [24 x i8] zeroinitializer }, align 32
@i2s_clk_indexes = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 10, i32 11], [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i2c\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"timer\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fracdiv_in\00", [21 x i8] zeroinitializer }, align 32
@artpec6_clkctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.27, i32 218, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to register clock at index %d err=%ld\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"artpec6_clkctrl_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/clk/axis/clk-artpec6.c\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@artpec6_clkctrl_probe._entry_ptr = internal global ptr @artpec6_clkctrl_probe._entry, section ".printk_index", align 4
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2s0\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2s1\00", [27 x i8] zeroinitializer }, align 32
@switch.table.artpec6_clkctrl_of_clk_init_driver = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 85, i32 112, i32 64, i32 106], [16 x i8] zeroinitializer }, align 32
@switch.table.artpec6_clkctrl_of_clk_init_driver.32 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 6, i32 4, i32 8], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 46, i32 35 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 46, i32 50 }
@___asan_gen_.39 = private unnamed_addr constant [8 x i8] c"clkdata\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 26, i32 40 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 86, i32 38 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 89, i32 38 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 93, i32 38 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 95, i32 36 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 99, i32 38 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 101, i32 36 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 105, i32 38 }
@___asan_gen_.63 = private unnamed_addr constant [23 x i8] c"artpec6_clkctrl_driver\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 231, i32 31 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 234, i32 14 }
@___asan_gen_.69 = private unnamed_addr constant [24 x i8] c"artpec_clkctrl_of_match\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 226, i32 34 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 138, i32 56 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 142, i32 56 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 145, i32 56 }
@___asan_gen_.81 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 149, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 152, i32 37 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 154, i32 35 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 157, i32 37 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 159, i32 37 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 161, i32 35 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 164, i32 35 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 167, i32 35 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 170, i32 37 }
@___asan_gen_.111 = private unnamed_addr constant [14 x i8] c"i2s_clk_names\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 28, i32 26 }
@___asan_gen_.114 = private unnamed_addr constant [16 x i8] c"i2s_clk_indexes\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 33, i32 18 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 205, i32 35 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 208, i32 35 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 211, i32 35 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 216, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 29, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.148 = private constant [34 x i8] c"../drivers/clk/axis/clk-artpec6.c\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 30, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant [48 x i8] c"switch.table.artpec6_clkctrl_of_clk_init_driver\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [51 x i8] c"switch.table.artpec6_clkctrl_of_clk_init_driver.32\00", align 1
@llvm.compiler.used = appending global [44 x ptr] [ptr @__initcall__kmod_clk_artpec6__183_239_artpec6_clkctrl_driver_init6, ptr @__of_table_artpec6_clkctrl, ptr @artpec6_clkctrl_probe._entry, ptr @artpec6_clkctrl_probe._entry_ptr, ptr @.str, ptr @.str.1, ptr @clkdata, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @artpec6_clkctrl_driver, ptr @.str.9, ptr @artpec_clkctrl_of_match, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @artpec6_clkctrl_probe.__key, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @i2s_clk_names, ptr @i2s_clk_indexes, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @switch.table.artpec6_clkctrl_of_clk_init_driver, ptr @switch.table.artpec6_clkctrl_of_clk_init_driver.32], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkdata to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_clkctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec_clkctrl_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_clkctrl_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_clk_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_clk_indexes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_clkctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.artpec6_clkctrl_of_clk_init_driver to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.artpec6_clkctrl_of_clk_init_driver.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @artpec6_clkctrl_of_clk_init_driver(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #7
  %call.i = tail call i32 @of_property_match_string(ptr noundef %np, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.of_artpec6_clkctrl_setup.exit_crit_edge, label %if.end.i

entry.of_artpec6_clkctrl_setup.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_artpec6_clkctrl_setup.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef %call.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 136) #10
  store ptr %call7.i.i.i, ptr @clkdata, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.i.of_artpec6_clkctrl_setup.exit_crit_edge, label %for.body.preheader.i

if.end.i.of_artpec6_clkctrl_setup.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_artpec6_clkctrl_setup.exit

for.body.preheader.i:                             ; preds = %if.end.i
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -517 to ptr), ptr %call7.i.i.i, align 8
  %arrayidx.1.i = getelementptr ptr, ptr %call7.i.i.i, i32 1
  %2 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -517 to ptr), ptr %arrayidx.1.i, align 4
  %arrayidx.2.i = getelementptr ptr, ptr %call7.i.i.i, i32 2
  %3 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -517 to ptr), ptr %arrayidx.2.i, align 8
  %arrayidx.3.i = getelementptr ptr, ptr %call7.i.i.i, i32 3
  %4 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -517 to ptr), ptr %arrayidx.3.i, align 4
  %arrayidx.4.i = getelementptr ptr, ptr %call7.i.i.i, i32 4
  %5 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -517 to ptr), ptr %arrayidx.4.i, align 8
  %arrayidx.5.i = getelementptr ptr, ptr %call7.i.i.i, i32 5
  %6 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -517 to ptr), ptr %arrayidx.5.i, align 4
  %arrayidx.6.i = getelementptr ptr, ptr %call7.i.i.i, i32 6
  %7 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -517 to ptr), ptr %arrayidx.6.i, align 8
  %arrayidx.7.i = getelementptr ptr, ptr %call7.i.i.i, i32 7
  %8 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -517 to ptr), ptr %arrayidx.7.i, align 4
  %arrayidx.8.i = getelementptr ptr, ptr %call7.i.i.i, i32 8
  %9 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -517 to ptr), ptr %arrayidx.8.i, align 8
  %arrayidx.9.i = getelementptr ptr, ptr %call7.i.i.i, i32 9
  %10 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -517 to ptr), ptr %arrayidx.9.i, align 4
  %arrayidx.10.i = getelementptr ptr, ptr %call7.i.i.i, i32 10
  %11 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -517 to ptr), ptr %arrayidx.10.i, align 8
  %arrayidx.11.i = getelementptr ptr, ptr %call7.i.i.i, i32 11
  %12 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -517 to ptr), ptr %arrayidx.11.i, align 4
  %arrayidx.12.i = getelementptr ptr, ptr %call7.i.i.i, i32 12
  %13 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -517 to ptr), ptr %arrayidx.12.i, align 8
  %arrayidx.13.i = getelementptr ptr, ptr %call7.i.i.i, i32 13
  %14 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -517 to ptr), ptr %arrayidx.13.i, align 4
  %arrayidx.14.i = getelementptr ptr, ptr %call7.i.i.i, i32 14
  %15 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -517 to ptr), ptr %arrayidx.14.i, align 8
  %arrayidx.15.i = getelementptr ptr, ptr %call7.i.i.i, i32 15
  %16 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 -517 to ptr), ptr %arrayidx.15.i, align 4
  %arrayidx.16.i = getelementptr ptr, ptr %call7.i.i.i, i32 16
  %17 = ptrtoint ptr %arrayidx.16.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 -517 to ptr), ptr %arrayidx.16.i, align 8
  %arrayidx.17.i = getelementptr ptr, ptr %call7.i.i.i, i32 17
  %18 = ptrtoint ptr %arrayidx.17.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 -517 to ptr), ptr %arrayidx.17.i, align 4
  %arrayidx.18.i = getelementptr ptr, ptr %call7.i.i.i, i32 18
  %19 = ptrtoint ptr %arrayidx.18.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 -517 to ptr), ptr %arrayidx.18.i, align 8
  %arrayidx.19.i = getelementptr ptr, ptr %call7.i.i.i, i32 19
  %20 = ptrtoint ptr %arrayidx.19.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 -517 to ptr), ptr %arrayidx.19.i, align 4
  %call7.i = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #7
  %21 = load ptr, ptr @clkdata, align 4
  %syscon_base.i = getelementptr inbounds %struct.artpec6_clkctrl_drvdata, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %syscon_base.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i, ptr %syscon_base.i, align 4
  %cmp9.i = icmp eq ptr %call7.i, null
  br i1 %cmp9.i, label %do.body13.i, label %do.end19.i, !prof !86

do.body13.i:                                      ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/axis/clk-artpec6.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 62, 0\0A.popsection", ""() #7, !srcloc !87
  unreachable

do.end19.i:                                       ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call7.i) #7, !srcloc !88
  %24 = lshr i32 %23, 30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.artpec6_clkctrl_of_clk_init_driver, i32 0, i32 %24
  %25 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %25)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep2 = getelementptr inbounds [4 x i32], ptr @switch.table.artpec6_clkctrl_of_clk_init_driver.32, i32 0, i32 %24
  %26 = ptrtoint ptr %switch.gep2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %switch.load3 = load i32, ptr %switch.gep2, align 4
  %call26.i = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef %call1.i, i32 noundef 0, i32 noundef %switch.load, i32 noundef %switch.load3) #7
  %27 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call26.i, ptr %call7.i.i.i, align 8
  %call28.i = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 1, i32 noundef 2) #7
  %28 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call28.i, ptr %arrayidx.1.i, align 4
  %call30.i = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 1, i32 noundef 8) #7
  %29 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call30.i, ptr %arrayidx.12.i, align 8
  %call32.i = tail call ptr @clk_register_fixed_rate(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef %call1.i, i32 noundef 0, i32 noundef 50000000) #7
  %30 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call32.i, ptr %arrayidx.13.i, align 4
  %call34.i = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 1, i32 noundef 8) #7
  %31 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call34.i, ptr %arrayidx.15.i, align 4
  %call36.i = tail call ptr @clk_register_fixed_rate(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef %call1.i, i32 noundef 0, i32 noundef 50000000) #7
  %32 = ptrtoint ptr %arrayidx.16.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call36.i, ptr %arrayidx.16.i, align 8
  %call38.i = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 1, i32 noundef 8) #7
  %33 = ptrtoint ptr %arrayidx.19.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call38.i, ptr %arrayidx.19.i, align 4
  %34 = load ptr, ptr @clkdata, align 4
  %clk_data.i = getelementptr inbounds %struct.artpec6_clkctrl_drvdata, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %clk_data.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %clk_data.i, align 4
  %clk_num.i = getelementptr inbounds %struct.artpec6_clkctrl_drvdata, ptr %34, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %clk_num.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 20, ptr %clk_num.i, align 4
  %call45.i = tail call i32 @of_clk_add_provider(ptr noundef %np, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %clk_data.i) #7
  br label %of_artpec6_clkctrl_setup.exit

of_artpec6_clkctrl_setup.exit:                    ; preds = %do.end19.i, %if.end.i.of_artpec6_clkctrl_setup.exit_crit_edge, %entry.of_artpec6_clkctrl_setup.exit_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @artpec6_clkctrl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @artpec6_clkctrl_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @artpec6_clkctrl_probe(ptr noundef %pdev) #5 align 64 {
entry:
  %frac_clk_name = alloca [2 x ptr], align 8
  %i2s_mux_parents = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %2 = load ptr, ptr @clkdata, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %frac_clk_name) #7
  %3 = ptrtoint ptr %frac_clk_name to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %frac_clk_name, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i2s_mux_parents) #7
  %4 = ptrtoint ptr %i2s_mux_parents to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %i2s_mux_parents, align 4, !annotation !90
  %5 = getelementptr inbounds [2 x ptr], ptr %i2s_mux_parents, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !90
  %call = tail call i32 @of_property_match_string(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @of_clk_get_parent_name(ptr noundef %1, i32 noundef %call) #7
  %call4 = tail call i32 @of_property_match_string(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %cmp5 = icmp sgt i32 %call4, -1
  br i1 %cmp5, label %if.then6, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call ptr @of_clk_get_parent_name(ptr noundef %1, i32 noundef %call4) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %i2s_refclk_name.0 = phi ptr [ %call7, %if.then6 ], [ null, %if.end.if.end8_crit_edge ]
  %call9 = tail call i32 @of_property_match_string(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9)
  %cmp10 = icmp sgt i32 %call9, -1
  br i1 %cmp10, label %if.then11, label %if.end8.if.end13_crit_edge

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call ptr @of_clk_get_parent_name(ptr noundef %1, i32 noundef %call9) #7
  %7 = ptrtoint ptr %frac_clk_name to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call12, ptr %frac_clk_name, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end8.if.end13_crit_edge
  %call14 = tail call i32 @of_property_match_string(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call14)
  %cmp15 = icmp sgt i32 %call14, -1
  br i1 %cmp15, label %if.then16, label %if.end13.do.body_crit_edge

if.end13.do.body_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = tail call ptr @of_clk_get_parent_name(ptr noundef %1, i32 noundef %call14) #7
  %arrayidx18 = getelementptr inbounds [2 x ptr], ptr %frac_clk_name, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call17, ptr %arrayidx18, align 4
  br label %do.body

do.body:                                          ; preds = %if.then16, %if.end13.do.body_crit_edge
  %9 = load ptr, ptr @clkdata, align 4
  %i2scfg_lock = getelementptr inbounds %struct.artpec6_clkctrl_drvdata, ptr %9, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %i2scfg_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @artpec6_clkctrl_probe.__key, i16 noundef signext 3) #7
  %call21 = tail call ptr @clk_register_fixed_factor(ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 1, i32 noundef 8) #7
  %arrayidx22 = getelementptr ptr, ptr %2, i32 2
  %10 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call21, ptr %arrayidx22, align 4
  %call23 = tail call ptr @clk_register_fixed_rate(ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef %call3, i32 noundef 0, i32 noundef 100000000) #7
  %arrayidx24 = getelementptr ptr, ptr %2, i32 3
  %11 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call23, ptr %arrayidx24, align 4
  %call25 = tail call ptr @clk_register_fixed_factor(ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 1, i32 noundef 4) #7
  %arrayidx26 = getelementptr ptr, ptr %2, i32 4
  %12 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call25, ptr %arrayidx26, align 4
  %call27 = tail call ptr @clk_register_fixed_factor(ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 1, i32 noundef 4) #7
  %arrayidx28 = getelementptr ptr, ptr %2, i32 5
  %13 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call27, ptr %arrayidx28, align 4
  %call29 = tail call ptr @clk_register_fixed_rate(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef %call3, i32 noundef 0, i32 noundef 100000000) #7
  %arrayidx30 = getelementptr ptr, ptr %2, i32 6
  %14 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call29, ptr %arrayidx30, align 4
  %call31 = tail call ptr @clk_register_fixed_rate(ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef %call3, i32 noundef 0, i32 noundef 100000000) #7
  %arrayidx32 = getelementptr ptr, ptr %2, i32 7
  %15 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call31, ptr %arrayidx32, align 4
  %call33 = tail call ptr @clk_register_fixed_rate(ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef %call3, i32 noundef 0, i32 noundef 100000000) #7
  %arrayidx34 = getelementptr ptr, ptr %2, i32 8
  %16 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call33, ptr %arrayidx34, align 4
  %call35 = tail call ptr @clk_register_fixed_factor(ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 1, i32 noundef 8) #7
  %arrayidx36 = getelementptr ptr, ptr %2, i32 9
  %17 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call35, ptr %arrayidx36, align 4
  %tobool.not = icmp eq ptr %i2s_refclk_name.0, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body
  %cmp37 = phi i1 [ true, %do.body ], [ false, %for.inc.for.body_crit_edge ]
  %i.0211 = phi i32 [ 0, %do.body ], [ 1, %for.inc.for.body_crit_edge ]
  %arrayidx50 = getelementptr [2 x ptr], ptr %frac_clk_name, i32 0, i32 %i.0211
  %18 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx50, align 4
  %tobool51.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  br i1 %tobool51.not, label %if.else.thread, label %if.then40

if.then40:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %i2s_mux_parents to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %i2s_mux_parents, align 4
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %i2s_refclk_name.0, ptr %5, align 4
  %arrayidx44 = getelementptr [2 x ptr], ptr @i2s_clk_names, i32 0, i32 %i.0211
  %22 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx44, align 4
  %24 = load ptr, ptr @clkdata, align 4
  %syscon_base = getelementptr inbounds %struct.artpec6_clkctrl_drvdata, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %syscon_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %syscon_base, align 4
  %add.ptr = getelementptr i8, ptr %26, i32 20
  %conv = trunc i32 %i.0211 to i8
  %i2scfg_lock46 = getelementptr inbounds %struct.artpec6_clkctrl_drvdata, ptr %24, i32 0, i32 3
  %call47 = call ptr @clk_register_mux_table(ptr noundef %dev, ptr noundef %23, ptr noundef nonnull %i2s_mux_parents, i8 noundef zeroext 2, i32 noundef 132, ptr noundef %add.ptr, i8 noundef zeroext %conv, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef %i2scfg_lock46) #7
  br label %for.inc.sink.split

if.else:                                          ; preds = %for.body
  br i1 %tobool51.not, label %if.else.for.inc_crit_edge, label %if.else.if.then52_crit_edge

if.else.if.then52_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then52

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.else.thread:                                   ; preds = %land.lhs.true
  %27 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx50, align 4
  %tobool51.not210 = icmp eq ptr %28, null
  br i1 %tobool51.not210, label %if.then69, label %if.else.thread.if.then52_crit_edge

if.else.thread.if.then52_crit_edge:               ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then52

if.then52:                                        ; preds = %if.else.thread.if.then52_crit_edge, %if.else.if.then52_crit_edge
  %29 = phi ptr [ %28, %if.else.thread.if.then52_crit_edge ], [ %19, %if.else.if.then52_crit_edge ]
  %30 = load ptr, ptr @clkdata, align 4
  %syscon_base53 = getelementptr inbounds %struct.artpec6_clkctrl_drvdata, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %syscon_base53 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %syscon_base53, align 4
  %add.ptr54 = getelementptr i8, ptr %32, i32 20
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #7, !srcloc !88
  %34 = call i32 @llvm.bswap.i32(i32 %33)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  %shl = shl nuw nsw i32 1, %i.0211
  %neg = xor i32 %shl, -1
  %and = and i32 %34, %neg
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  call void @arm_heavy_mb() #7
  %35 = call i32 @llvm.bswap.i32(i32 %and)
  %36 = load ptr, ptr @clkdata, align 4
  %syscon_base60 = getelementptr inbounds %struct.artpec6_clkctrl_drvdata, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %syscon_base60 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %syscon_base60, align 4
  %add.ptr61 = getelementptr i8, ptr %38, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 %35) #7, !srcloc !93
  %arrayidx62 = getelementptr [2 x ptr], ptr @i2s_clk_names, i32 0, i32 %i.0211
  %39 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx62, align 4
  %call64 = call ptr @clk_register_fixed_factor(ptr noundef %dev, ptr noundef %40, ptr noundef nonnull %29, i32 noundef 0, i32 noundef 1, i32 noundef 1) #7
  br label %for.inc.sink.split

if.then69:                                        ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #9
  %41 = load ptr, ptr @clkdata, align 4
  %syscon_base72 = getelementptr inbounds %struct.artpec6_clkctrl_drvdata, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %syscon_base72 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %syscon_base72, align 4
  %add.ptr73 = getelementptr i8, ptr %43, i32 20
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73) #7, !srcloc !88
  %45 = call i32 @llvm.bswap.i32(i32 %44)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  %shl77 = shl nuw nsw i32 1, %i.0211
  %or = or i32 %45, %shl77
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  call void @arm_heavy_mb() #7
  %46 = call i32 @llvm.bswap.i32(i32 %or)
  %47 = load ptr, ptr @clkdata, align 4
  %syscon_base81 = getelementptr inbounds %struct.artpec6_clkctrl_drvdata, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %syscon_base81 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %syscon_base81, align 4
  %add.ptr82 = getelementptr i8, ptr %49, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82, i32 %46) #7, !srcloc !93
  %arrayidx83 = getelementptr [2 x ptr], ptr @i2s_clk_names, i32 0, i32 %i.0211
  %50 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx83, align 4
  %call84 = call ptr @clk_register_fixed_factor(ptr noundef %dev, ptr noundef %51, ptr noundef nonnull %i2s_refclk_name.0, i32 noundef 0, i32 noundef 1, i32 noundef 1) #7
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.then69, %if.then52, %if.then40
  %call47.sink = phi ptr [ %call47, %if.then40 ], [ %call84, %if.then69 ], [ %call64, %if.then52 ]
  %arrayidx48 = getelementptr [2 x i32], ptr @i2s_clk_indexes, i32 0, i32 %i.0211
  %52 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx48, align 4
  %arrayidx49 = getelementptr ptr, ptr %2, i32 %53
  %54 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call47.sink, ptr %arrayidx49, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.else.for.inc_crit_edge
  br i1 %cmp37, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  %call90 = call ptr @clk_register_fixed_rate(ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef %call3, i32 noundef 0, i32 noundef 100000000) #7
  %arrayidx91 = getelementptr ptr, ptr %2, i32 14
  %55 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call90, ptr %arrayidx91, align 4
  %call92 = call ptr @clk_register_fixed_rate(ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef %call3, i32 noundef 0, i32 noundef 100000000) #7
  %arrayidx93 = getelementptr ptr, ptr %2, i32 17
  %56 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call92, ptr %arrayidx93, align 4
  %call94 = call ptr @clk_register_fixed_rate(ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef %call3, i32 noundef 0, i32 noundef 600000000) #7
  %arrayidx95 = getelementptr ptr, ptr %2, i32 18
  %57 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call94, ptr %arrayidx95, align 4
  br label %for.body99

for.body99:                                       ; preds = %for.inc117.for.body99_crit_edge, %for.end
  %err.0216 = phi i32 [ 0, %for.end ], [ %err.1, %for.inc117.for.body99_crit_edge ]
  %i.1214 = phi i32 [ 0, %for.end ], [ %inc118, %for.inc117.for.body99_crit_edge ]
  %arrayidx100 = getelementptr ptr, ptr %2, i32 %i.1214
  %58 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx100, align 4
  %cmp.i = icmp ule ptr %59, inttoptr (i32 -4096 to ptr)
  %cmp106.not = icmp eq ptr %59, inttoptr (i32 -517 to ptr)
  %or.cond = or i1 %cmp.i, %cmp106.not
  br i1 %or.cond, label %for.body99.for.inc117_crit_edge, label %do.end111

for.body99.for.inc117_crit_edge:                  ; preds = %for.body99
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc117

do.end111:                                        ; preds = %for.body99
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %59 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %i.1214, i32 noundef %60) #11
  %61 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx100, align 4
  %63 = ptrtoint ptr %62 to i32
  br label %for.inc117

for.inc117:                                       ; preds = %do.end111, %for.body99.for.inc117_crit_edge
  %err.1 = phi i32 [ %63, %do.end111 ], [ %err.0216, %for.body99.for.inc117_crit_edge ]
  %inc118 = add nuw nsw i32 %i.1214, 1
  %exitcond.not = icmp eq i32 %inc118, 20
  br i1 %exitcond.not, label %for.inc117.cleanup_crit_edge, label %for.inc117.for.body99_crit_edge

for.inc117.for.body99_crit_edge:                  ; preds = %for.inc117
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body99

for.inc117.cleanup_crit_edge:                     ; preds = %for.inc117
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc117.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %err.1, %for.inc117.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i2s_mux_parents) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %frac_clk_name) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_mux_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !62, !63, !64, !65, !66, !67, !69, !71, !73, !75}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__of_table_artpec6_clkctrl, !1, !"__of_table_artpec6_clkctrl", i1 false, i1 false}
!1 = !{!"../drivers/clk/axis/clk-artpec6.c", i32 113, i32 1}
!2 = !{ptr @__initcall__kmod_clk_artpec6__183_239_artpec6_clkctrl_driver_init6, !3, !"__initcall__kmod_clk_artpec6__183_239_artpec6_clkctrl_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/clk/axis/clk-artpec6.c", i32 239, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/axis/clk-artpec6.c", i32 46, i32 35}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/axis/clk-artpec6.c", i32 46, i32 50}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/axis/clk-artpec6.c", i32 86, i32 38}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/axis/clk-artpec6.c", i32 89, i32 38}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/axis/clk-artpec6.c", i32 93, i32 38}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/axis/clk-artpec6.c", i32 95, i32 36}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/axis/clk-artpec6.c", i32 99, i32 38}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/axis/clk-artpec6.c", i32 101, i32 36}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/axis/clk-artpec6.c", i32 105, i32 38}
!22 = !{ptr @clkdata, !23, !"clkdata", i1 false, i1 false}
!23 = !{!"../drivers/clk/axis/clk-artpec6.c", i32 26, i32 40}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/axis/clk-artpec6.c", i32 234, i32 14}
!26 = !{ptr @artpec6_clkctrl_driver, !27, !"artpec6_clkctrl_driver", i1 false, i1 false}
!27 = !{!"../drivers/clk/axis/clk-artpec6.c", i32 231, i32 31}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/axis/clk-artpec6.c", i32 138, i32 56}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/axis/clk-artpec6.c", i32 142, i32 56}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/axis/clk-artpec6.c", i32 145, i32 56}
!34 = !{ptr @artpec6_clkctrl_probe.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/clk/axis/clk-artpec6.c", i32 149, i32 2}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/axis/clk-artpec6.c", i32 152, i32 37}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/axis/clk-artpec6.c", i32 154, i32 35}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/axis/clk-artpec6.c", i32 157, i32 37}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clk/axis/clk-artpec6.c", i32 159, i32 37}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/axis/clk-artpec6.c", i32 161, i32 35}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/axis/clk-artpec6.c", i32 164, i32 35}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/axis/clk-artpec6.c", i32 167, i32 35}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/axis/clk-artpec6.c", i32 170, i32 37}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/axis/clk-artpec6.c", i32 205, i32 35}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/axis/clk-artpec6.c", i32 208, i32 35}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/axis/clk-artpec6.c", i32 211, i32 35}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/clk/axis/clk-artpec6.c", i32 216, i32 4}
!61 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @artpec6_clkctrl_probe._entry, !60, !"_entry", i1 false, i1 false}
!66 = !{ptr @artpec6_clkctrl_probe._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/clk/axis/clk-artpec6.c", i32 29, i32 2}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/clk/axis/clk-artpec6.c", i32 30, i32 2}
!71 = !{ptr @i2s_clk_names, !72, !"i2s_clk_names", i1 false, i1 false}
!72 = !{!"../drivers/clk/axis/clk-artpec6.c", i32 28, i32 26}
!73 = !{ptr @i2s_clk_indexes, !74, !"i2s_clk_indexes", i1 false, i1 false}
!74 = !{!"../drivers/clk/axis/clk-artpec6.c", i32 33, i32 18}
!75 = !{ptr @artpec_clkctrl_of_match, !76, !"artpec_clkctrl_of_match", i1 false, i1 false}
!76 = !{!"../drivers/clk/axis/clk-artpec6.c", i32 226, i32 34}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{!"branch_weights", i32 1, i32 2000}
!87 = !{i64 2152912607, i64 2152913101, i64 2152912644, i64 2152912700, i64 2152912734, i64 2152912758, i64 2152912799, i64 2152912820, i64 2152912848, i64 2152912882}
!88 = !{i64 4950584}
!89 = !{i64 2152914359}
!90 = !{!"auto-init"}
!91 = !{i64 2152917136}
!92 = !{i64 2152917438}
!93 = !{i64 4950166}
!94 = !{i64 2152918158}
!95 = !{i64 2152918460}
