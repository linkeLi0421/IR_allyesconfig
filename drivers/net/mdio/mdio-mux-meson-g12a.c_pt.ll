; ModuleID = '/llk/IR_all_yes/drivers/net/mdio/mdio-mux-meson-g12a.c_pt.bc'
source_filename = "../drivers/net/mdio/mdio-mux-meson-g12a.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
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
%struct.g12a_mdio_mux = type { i8, ptr, ptr, ptr, ptr }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.g12a_ephy_pll = type { ptr, %struct.clk_hw }

@__initcall__kmod_mdio_mux_meson_g12a__306_376_g12a_mdio_mux_driver_init6 = internal global ptr @g12a_mdio_mux_driver_init, section ".initcall6.init", align 4
@g12a_mdio_mux_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @g12a_mdio_mux_probe, ptr @g12a_mdio_mux_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @g12a_mdio_mux_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_g12a_mdio_mux_driver_exit = internal global ptr @g12a_mdio_mux_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description307 = internal constant [69 x i8] c"mdio_mux_meson_g12a.description=Amlogic G12a MDIO multiplexer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author308 = internal constant [64 x i8] c"mdio_mux_meson_g12a.author=Jerome Brunet <jbrunet@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file309 = internal constant [62 x i8] c"mdio_mux_meson_g12a.file=drivers/net/mdio/mdio-mux-meson-g12a\00", section ".modinfo", align 1
@__UNIQUE_ID_license310 = internal constant [35 x i8] c"mdio_mux_meson_g12a.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"g12a-mdio_mux\00", [18 x i8] zeroinitializer }, align 32
@g12a_mdio_mux_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,g12a-mdio-mux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@g12a_mdio_mux_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 323, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to get peripheral clock\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"g12a_mdio_mux_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/mdio/mdio-mux-meson-g12a.c\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@g12a_mdio_mux_probe._entry_ptr = internal global ptr @g12a_mdio_mux_probe._entry, section ".printk_index", align 4
@g12a_mdio_mux_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 330, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to enable peripheral clock\00", [62 x i8] zeroinitializer }, align 32
@g12a_mdio_mux_probe._entry_ptr.9 = internal global ptr @g12a_mdio_mux_probe._entry.7, section ".printk_index", align 4
@g12a_mdio_mux_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 343, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mdio multiplexer init failed: %d\00", [63 x i8] zeroinitializer }, align 32
@g12a_mdio_mux_probe._entry_ptr.12 = internal global ptr @g12a_mdio_mux_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clkin%d\00", [24 x i8] zeroinitializer }, align 32
@g12a_ephy_glue_clk_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 238, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Missing clock %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"g12a_ephy_glue_clk_register\00", [36 x i8] zeroinitializer }, align 32
@g12a_ephy_glue_clk_register._entry_ptr = internal global ptr @g12a_ephy_glue_clk_register._entry, section ".printk_index", align 4
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s#mux\00", [25 x i8] zeroinitializer }, align 32
@clk_mux_ro_ops = external dso_local constant %struct.clk_ops, align 4
@g12a_ephy_glue_clk_register._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.4, i32 268, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to register input mux\0A\00", [34 x i8] zeroinitializer }, align 32
@g12a_ephy_glue_clk_register._entry_ptr.19 = internal global ptr @g12a_ephy_glue_clk_register._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s#pll\00", [25 x i8] zeroinitializer }, align 32
@g12a_ephy_pll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @g12a_ephy_pll_enable, ptr @g12a_ephy_pll_disable, ptr @g12a_ephy_pll_is_enabled, ptr null, ptr null, ptr null, ptr @g12a_ephy_pll_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @g12a_ephy_pll_init, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@g12a_ephy_glue_clk_register._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.4, i32 294, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@g12a_ephy_glue_clk_register._entry_ptr.22 = internal global ptr @g12a_ephy_glue_clk_register._entry.21, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.24 = private unnamed_addr constant [21 x i8] c"g12a_mdio_mux_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 368, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 372, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [20 x i8] c"g12a_mdio_mux_match\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 213, i32 34 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 319, i32 33 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 323, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 330, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 343, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 234, i32 38 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 238, i32 5 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 250, i32 31 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 268, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 277, i32 31 }
@___asan_gen_.90 = private unnamed_addr constant [18 x i8] c"g12a_ephy_pll_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 143, i32 29 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.94 = private constant [42 x i8] c"../drivers/net/mdio/mdio-mux-meson-g12a.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 294, i32 3 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author308, ptr @__UNIQUE_ID_description307, ptr @__UNIQUE_ID_file309, ptr @__UNIQUE_ID_license310, ptr @__exitcall_g12a_mdio_mux_driver_exit, ptr @__initcall__kmod_mdio_mux_meson_g12a__306_376_g12a_mdio_mux_driver_init6, ptr @g12a_ephy_glue_clk_register._entry, ptr @g12a_ephy_glue_clk_register._entry.17, ptr @g12a_ephy_glue_clk_register._entry.21, ptr @g12a_ephy_glue_clk_register._entry_ptr, ptr @g12a_ephy_glue_clk_register._entry_ptr.19, ptr @g12a_ephy_glue_clk_register._entry_ptr.22, ptr @g12a_mdio_mux_driver_exit, ptr @g12a_mdio_mux_probe._entry, ptr @g12a_mdio_mux_probe._entry.10, ptr @g12a_mdio_mux_probe._entry.7, ptr @g12a_mdio_mux_probe._entry_ptr, ptr @g12a_mdio_mux_probe._entry_ptr.12, ptr @g12a_mdio_mux_probe._entry_ptr.9, ptr @g12a_mdio_mux_driver, ptr @.str, ptr @g12a_mdio_mux_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @g12a_ephy_pll_ops], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g12a_mdio_mux_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g12a_mdio_mux_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g12a_mdio_mux_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g12a_mdio_mux_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g12a_mdio_mux_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g12a_ephy_glue_clk_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g12a_ephy_glue_clk_register._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g12a_ephy_pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g12a_ephy_glue_clk_register._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @g12a_mdio_mux_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @g12a_mdio_mux_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @g12a_mdio_mux_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @g12a_mdio_mux_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @g12a_mdio_mux_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %parent_names.i = alloca [2 x ptr], align 4
  %init.i = alloca %struct.clk_init_data, align 4
  %in_name.i = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 20, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %regs = getelementptr inbounds %struct.g12a_mdio_mux, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #7
  %pclk = getelementptr inbounds %struct.g12a_mdio_mux, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9, ptr %pclk, align 4
  %cmp.i71 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71, label %if.then12, label %if.end17

if.then12:                                        ; preds = %if.end8
  %cmp.not = icmp eq ptr %call9, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then12.cleanup_crit_edge, label %do.end

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  %call.i72 = tail call i32 @clk_prepare(ptr noundef %call9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %tobool.not.i = icmp eq i32 %call.i72, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end17.do.end24_crit_edge

if.end17.do.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end24

if.end.i:                                         ; preds = %if.end17
  %call1.i = tail call i32 @clk_enable(ptr noundef %call9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end25, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call9) #7
  br label %do.end24

do.end24:                                         ; preds = %if.then3.i, %if.end17.do.end24_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i72, %if.end17.do.end24_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end25:                                         ; preds = %if.end.i
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %parent_names.i) #7
  %7 = getelementptr inbounds [2 x ptr], ptr %parent_names.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #7
  %8 = getelementptr inbounds i8, ptr %init.i, i32 12
  %9 = call ptr @memset(ptr %8, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in_name.i) #7
  %10 = ptrtoint ptr %in_name.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %in_name.i, align 8
  %call1.i74 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %in_name.i, i32 noundef 8, ptr noundef nonnull @.str.13, i32 noundef 0) #7
  %call3.i = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull %in_name.i) #7
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end25.if.then.i_crit_edge, label %for.inc.i

if.end25.if.then.i_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %for.inc.i.if.then.i_crit_edge, %if.end25.if.then.i_crit_edge
  %call3.lcssa.i = phi ptr [ %call3.i, %if.end25.if.then.i_crit_edge ], [ %call3.1.i, %for.inc.i.if.then.i_crit_edge ]
  %cmp6.not.i = icmp eq ptr %call3.lcssa.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp6.not.i, label %if.then.i.cleanup.thread.i_crit_edge, label %do.end.i

if.then.i.cleanup.thread.i_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, ptr noundef nonnull %in_name.i) #10
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %do.end.i, %if.then.i.cleanup.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in_name.i) #7
  br label %g12a_ephy_glue_clk_register.exit

for.inc.i:                                        ; preds = %if.end25
  %call11.i = call ptr @__clk_get_name(ptr noundef %call3.i) #7
  %11 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call11.i, ptr %parent_names.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in_name.i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in_name.i) #7
  %12 = ptrtoint ptr %in_name.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -1, ptr %in_name.i, align 8
  %call1.1.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %in_name.i, i32 noundef 8, ptr noundef nonnull @.str.13, i32 noundef 1) #7
  %call3.1.i = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull %in_name.i) #7
  %cmp.i.1.i = icmp ugt ptr %call3.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %for.inc.i.if.then.i_crit_edge, label %for.inc.1.i

for.inc.i.if.then.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %call11.1.i = call ptr @__clk_get_name(ptr noundef %call3.1.i) #7
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call11.1.i, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in_name.i) #7
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 32, i32 noundef 3520) #7
  %tobool.not.i75 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i75, label %for.inc.1.i.g12a_ephy_glue_clk_register.exit.thread_crit_edge, label %if.end14.i

for.inc.1.i.g12a_ephy_glue_clk_register.exit.thread_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %g12a_ephy_glue_clk_register.exit.thread

if.end14.i:                                       ; preds = %for.inc.1.i
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end14.i.dev_name.exit.i_crit_edge

if.end14.i.dev_name.exit.i_crit_edge:             ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end14.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %17, %if.end.i.i ], [ %15, %if.end14.i.dev_name.exit.i_crit_edge ]
  %call16.i = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.16, ptr noundef %retval.0.i.i) #7
  %tobool17.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool17.not.i, label %dev_name.exit.i.g12a_ephy_glue_clk_register.exit.thread_crit_edge, label %if.end19.i

dev_name.exit.i.g12a_ephy_glue_clk_register.exit.thread_crit_edge: ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %g12a_ephy_glue_clk_register.exit.thread

if.end19.i:                                       ; preds = %dev_name.exit.i
  %18 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call16.i, ptr %init.i, align 4
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @clk_mux_ro_ops, ptr %ops.i, align 4
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %flags.i, align 4
  %parent_names22.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %21 = ptrtoint ptr %parent_names22.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %parent_names.i, ptr %parent_names22.i, align 4
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %22 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 2, ptr %num_parents.i, align 4
  %regs.i = getelementptr inbounds %struct.g12a_mdio_mux, ptr %6, i32 0, i32 1
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 68
  %reg.i = getelementptr inbounds %struct.clk_mux, ptr %call.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr.i, ptr %reg.i, align 4
  %shift.i = getelementptr inbounds %struct.clk_mux, ptr %call.i.i, i32 0, i32 4
  %26 = ptrtoint ptr %shift.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 23, ptr %shift.i, align 4
  %mask.i = getelementptr inbounds %struct.clk_mux, ptr %call.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %mask.i, align 4
  %init26.i = getelementptr inbounds %struct.clk_hw, ptr %call.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %init26.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %init.i, ptr %init26.i, align 4
  %call28.i = call ptr @devm_clk_register(ptr noundef %dev1, ptr noundef nonnull %call.i.i) #7
  call void @kfree(ptr noundef nonnull %call16.i) #7
  %cmp.i112.i = icmp ugt ptr %call28.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i112.i, label %do.end33.i, label %if.end35.i

do.end33.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #10
  br label %g12a_ephy_glue_clk_register.exit

if.end35.i:                                       ; preds = %if.end19.i
  %call.i113.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 16, i32 noundef 3520) #7
  %tobool37.not.i = icmp eq ptr %call.i113.i, null
  br i1 %tobool37.not.i, label %if.end35.i.g12a_ephy_glue_clk_register.exit.thread_crit_edge, label %if.end39.i

if.end35.i.g12a_ephy_glue_clk_register.exit.thread_crit_edge: ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %g12a_ephy_glue_clk_register.exit.thread

if.end39.i:                                       ; preds = %if.end35.i
  %29 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i115.i = icmp eq ptr %30, null
  br i1 %tobool.not.i115.i, label %if.end.i116.i, label %if.end39.i.dev_name.exit118.i_crit_edge

if.end39.i.dev_name.exit118.i_crit_edge:          ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit118.i

if.end.i116.i:                                    ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit118.i

dev_name.exit118.i:                               ; preds = %if.end.i116.i, %if.end39.i.dev_name.exit118.i_crit_edge
  %retval.0.i117.i = phi ptr [ %32, %if.end.i116.i ], [ %30, %if.end39.i.dev_name.exit118.i_crit_edge ]
  %call41.i = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.20, ptr noundef %retval.0.i117.i) #7
  %tobool42.not.i = icmp eq ptr %call41.i, null
  br i1 %tobool42.not.i, label %dev_name.exit118.i.g12a_ephy_glue_clk_register.exit.thread_crit_edge, label %if.end44.i

dev_name.exit118.i.g12a_ephy_glue_clk_register.exit.thread_crit_edge: ; preds = %dev_name.exit118.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %g12a_ephy_glue_clk_register.exit.thread

if.end44.i:                                       ; preds = %dev_name.exit118.i
  %33 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call41.i, ptr %init.i, align 4
  %34 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @g12a_ephy_pll_ops, ptr %ops.i, align 4
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %flags.i, align 4
  %call48.i = call ptr @__clk_get_name(ptr noundef %call28.i) #7
  %36 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call48.i, ptr %parent_names.i, align 4
  %37 = ptrtoint ptr %parent_names22.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %parent_names.i, ptr %parent_names22.i, align 4
  %38 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %num_parents.i, align 4
  %39 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i, align 4
  %41 = ptrtoint ptr %call.i113.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %call.i113.i, align 4
  %hw54.i = getelementptr inbounds %struct.g12a_ephy_pll, ptr %call.i113.i, i32 0, i32 1
  %init55.i = getelementptr inbounds %struct.g12a_ephy_pll, ptr %call.i113.i, i32 0, i32 1, i32 2
  %42 = ptrtoint ptr %init55.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %init.i, ptr %init55.i, align 4
  %call57.i = call ptr @devm_clk_register(ptr noundef %dev1, ptr noundef %hw54.i) #7
  call void @kfree(ptr noundef nonnull %call41.i) #7
  %cmp.i119.i = icmp ugt ptr %call57.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i119.i, label %do.end62.i, label %g12a_ephy_glue_clk_register.exit.thread81

do.end62.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #10
  br label %g12a_ephy_glue_clk_register.exit

g12a_ephy_glue_clk_register.exit.thread81:        ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  %pll65.i = getelementptr inbounds %struct.g12a_mdio_mux, ptr %6, i32 0, i32 4
  %43 = ptrtoint ptr %pll65.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call57.i, ptr %pll65.i, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %parent_names.i) #7
  br label %if.end29

g12a_ephy_glue_clk_register.exit.thread:          ; preds = %dev_name.exit118.i.g12a_ephy_glue_clk_register.exit.thread_crit_edge, %if.end35.i.g12a_ephy_glue_clk_register.exit.thread_crit_edge, %dev_name.exit.i.g12a_ephy_glue_clk_register.exit.thread_crit_edge, %for.inc.1.i.g12a_ephy_glue_clk_register.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %parent_names.i) #7
  br label %err

g12a_ephy_glue_clk_register.exit:                 ; preds = %do.end62.i, %do.end33.i, %cleanup.thread.i
  %retval.2.i.in = phi ptr [ %call28.i, %do.end33.i ], [ %call57.i, %do.end62.i ], [ %call3.lcssa.i, %cleanup.thread.i ]
  %retval.2.i = ptrtoint ptr %retval.2.i.in to i32
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %parent_names.i) #7
  %tobool27.not = icmp eq ptr %retval.2.i.in, null
  br i1 %tobool27.not, label %g12a_ephy_glue_clk_register.exit.if.end29_crit_edge, label %g12a_ephy_glue_clk_register.exit.err_crit_edge

g12a_ephy_glue_clk_register.exit.err_crit_edge:   ; preds = %g12a_ephy_glue_clk_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

g12a_ephy_glue_clk_register.exit.if.end29_crit_edge: ; preds = %g12a_ephy_glue_clk_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.end29:                                         ; preds = %g12a_ephy_glue_clk_register.exit.if.end29_crit_edge, %g12a_ephy_glue_clk_register.exit.thread81
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %44 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %of_node, align 8
  %mux_handle = getelementptr inbounds %struct.g12a_mdio_mux, ptr %call.i, i32 0, i32 2
  %call30 = call i32 @mdio_mux_init(ptr noundef %dev1, ptr noundef %45, ptr noundef nonnull @g12a_mdio_switch_fn, ptr noundef %mux_handle, ptr noundef %dev1, ptr noundef null) #7
  %46 = zext i32 %call30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call30, label %do.end37 [
    i32 0, label %if.end29.cleanup_crit_edge
    i32 -517, label %if.end29.err_crit_edge
  ]

if.end29.err_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end37:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %call30) #10
  br label %err

err:                                              ; preds = %do.end37, %if.end29.err_crit_edge, %g12a_ephy_glue_clk_register.exit.err_crit_edge, %g12a_ephy_glue_clk_register.exit.thread
  %ret.0 = phi i32 [ %retval.2.i, %g12a_ephy_glue_clk_register.exit.err_crit_edge ], [ %call30, %do.end37 ], [ %call30, %if.end29.err_crit_edge ], [ -12, %g12a_ephy_glue_clk_register.exit.thread ]
  %47 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pclk, align 4
  call void @clk_disable(ptr noundef %48) #7
  call void @clk_unprepare(ptr noundef %48) #7
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end29.cleanup_crit_edge, %do.end24, %do.end, %if.then12.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then5 ], [ %retval.0.i.ph, %do.end24 ], [ %ret.0, %err ], [ -12, %entry.cleanup_crit_edge ], [ %4, %do.end ], [ -517, %if.then12.cleanup_crit_edge ], [ %call30, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @g12a_mdio_mux_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mux_handle = getelementptr inbounds %struct.g12a_mdio_mux, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mux_handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mux_handle, align 4
  tail call void @mdio_mux_uninit(ptr noundef %3) #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 4, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pll = getelementptr inbounds %struct.g12a_mdio_mux, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pll, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pclk = getelementptr inbounds %struct.g12a_mdio_mux, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %9) #7
  tail call void @clk_unprepare(ptr noundef %9) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdio_mux_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @g12a_mdio_switch_fn(i32 noundef %current_child, i32 noundef %desired_child, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %current_child, i32 %desired_child)
  %cmp = icmp eq i32 %current_child, %desired_child
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %desired_child to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %desired_child, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %regs.i = getelementptr inbounds %struct.g12a_mdio_mux, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !64
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %1, align 4, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %sw.bb.cleanup_crit_edge, label %if.then.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %pll.i = getelementptr inbounds %struct.g12a_mdio_mux, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %pll.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pll.i, align 4
  tail call void @clk_disable(ptr noundef %8) #7
  tail call void @clk_unprepare(ptr noundef %8) #7
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %1, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %1, align 4, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i6 = icmp eq i8 %11, 0
  br i1 %tobool.not.i6, label %if.then.i8, label %sw.bb2.if.end3.i_crit_edge

sw.bb2.if.end3.i_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

if.then.i8:                                       ; preds = %sw.bb2
  %pll.i7 = getelementptr inbounds %struct.g12a_mdio_mux, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %pll.i7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pll.i7, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i8.cleanup_crit_edge

if.then.i8.cleanup_crit_edge:                     ; preds = %if.then.i8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then.i8
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end3.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end3.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %13) #7
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i.i.if.end3.i_crit_edge, %sw.bb2.if.end3.i_crit_edge
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @arm_heavy_mb() #7
  %regs.i9 = getelementptr inbounds %struct.g12a_mdio_mux, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %regs.i9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i9, align 4
  %add.ptr.i10 = getelementptr i8, ptr %16, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 -2147417805) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %regs.i9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i9, align 4
  %add.ptr60.i = getelementptr i8, ptr %18, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60.i, i32 1128269568) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  tail call void @arm_heavy_mb() #7
  %19 = ptrtoint ptr %regs.i9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i9, align 4
  %add.ptr65.i = getelementptr i8, ptr %20, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65.i, i32 1610743808) #7, !srcloc !64
  br label %cleanup

cleanup:                                          ; preds = %if.end3.i, %if.then3.i.i, %if.then.i8.cleanup_crit_edge, %if.then.i, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %if.then.i ], [ 0, %if.end3.i ], [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.then.i8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @g12a_ephy_pll_enable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 68
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  %3 = or i32 %2, 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %3) #7, !srcloc !64
  %6 = and i32 %3, -33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  %add.ptr10 = getelementptr i8, ptr %8, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %6) #7, !srcloc !64
  %call11 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call11, 1000000000
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %entry
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  %add.ptr25 = getelementptr i8, ptr %10, i32 68
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #7, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  %12 = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true:                                    ; preds = %for.cond
  %call33 = tail call i64 @ktime_get() #7
  %cmp3.i = icmp sgt i64 %call33, %add.i
  br i1 %cmp3.i, label %if.then36, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

if.then36:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 4
  %add.ptr40 = getelementptr i8, ptr %14, i32 68
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #7, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  %16 = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %phi.cmp = icmp eq i32 %16, 0
  %phi.sel = select i1 %phi.cmp, i32 -110, i32 0
  br label %for.end

for.end:                                          ; preds = %if.then36, %for.cond.for.end_crit_edge
  %and49.pre-phi = phi i32 [ %phi.sel, %if.then36 ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %and49.pre-phi
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @g12a_ephy_pll_disable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 68
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  %3 = and i32 %2, -49
  %4 = or i32 %3, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  tail call void @arm_heavy_mb() #7
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  %add.ptr5 = getelementptr i8, ptr %6, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %4) #7, !srcloc !64
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @g12a_ephy_pll_is_enabled(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 68
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  %3 = lshr i32 %2, 6
  %.lobit = and i32 %3, 1
  ret i32 %.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @g12a_ephy_pll_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 68
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !68
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  %and = and i32 %3, 511
  %and33 = lshr i32 %3, 10
  %shr34 = and i32 %and33, 31
  %mul = mul i32 %and, %parent_rate
  %div = udiv i32 %mul, %shr34
  ret i32 %div
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @g12a_ephy_pll_init(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 168083497) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %add.ptr6 = getelementptr i8, ptr %3, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 32402) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %add.ptr11 = getelementptr i8, ptr %5, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 -448176212) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %add.ptr16 = getelementptr i8, ptr %7, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 0) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %add.ptr21 = getelementptr i8, ptr %9, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 0) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %add.ptr26 = getelementptr i8, ptr %11, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 8224) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  %add.ptr31 = getelementptr i8, ptr %13, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 46137344) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 4
  %add.ptr36 = getelementptr i8, ptr %15, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 587202560) #7, !srcloc !64
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdio_mux_uninit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !37, !38, !39, !41, !43, !44, !45, !47, !49, !50, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__initcall__kmod_mdio_mux_meson_g12a__306_376_g12a_mdio_mux_driver_init6, !1, !"__initcall__kmod_mdio_mux_meson_g12a__306_376_g12a_mdio_mux_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/mdio/mdio-mux-meson-g12a.c", i32 376, i32 1}
!2 = !{ptr @__exitcall_g12a_mdio_mux_driver_exit, !1, !"__exitcall_g12a_mdio_mux_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description307, !4, !"__UNIQUE_ID_description307", i1 false, i1 false}
!4 = !{!"../drivers/net/mdio/mdio-mux-meson-g12a.c", i32 378, i32 1}
!5 = !{ptr @__UNIQUE_ID_author308, !6, !"__UNIQUE_ID_author308", i1 false, i1 false}
!6 = !{!"../drivers/net/mdio/mdio-mux-meson-g12a.c", i32 379, i32 1}
!7 = !{ptr @__UNIQUE_ID_file309, !8, !"__UNIQUE_ID_file309", i1 false, i1 false}
!8 = !{!"../drivers/net/mdio/mdio-mux-meson-g12a.c", i32 380, i32 1}
!9 = !{ptr @__UNIQUE_ID_license310, !8, !"__UNIQUE_ID_license310", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/mdio/mdio-mux-meson-g12a.c", i32 372, i32 11}
!12 = !{ptr @g12a_mdio_mux_driver, !13, !"g12a_mdio_mux_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/mdio/mdio-mux-meson-g12a.c", i32 368, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/mdio/mdio-mux-meson-g12a.c", i32 319, i32 33}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/mdio/mdio-mux-meson-g12a.c", i32 323, i32 4}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @g12a_mdio_mux_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @g12a_mdio_mux_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/mdio/mdio-mux-meson-g12a.c", i32 330, i32 3}
!26 = !{ptr @g12a_mdio_mux_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @g12a_mdio_mux_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/mdio/mdio-mux-meson-g12a.c", i32 343, i32 4}
!30 = !{ptr @g12a_mdio_mux_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @g12a_mdio_mux_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/mdio/mdio-mux-meson-g12a.c", i32 234, i32 38}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/mdio/mdio-mux-meson-g12a.c", i32 238, i32 5}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @g12a_ephy_glue_clk_register._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @g12a_ephy_glue_clk_register._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/mdio/mdio-mux-meson-g12a.c", i32 250, i32 31}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/mdio/mdio-mux-meson-g12a.c", i32 268, i32 3}
!43 = !{ptr @g12a_ephy_glue_clk_register._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @g12a_ephy_glue_clk_register._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/mdio/mdio-mux-meson-g12a.c", i32 277, i32 31}
!47 = !{ptr @g12a_ephy_glue_clk_register._entry.21, !48, !"_entry", i1 false, i1 false}
!48 = !{!"../drivers/net/mdio/mdio-mux-meson-g12a.c", i32 294, i32 3}
!49 = !{ptr @g12a_ephy_glue_clk_register._entry_ptr.22, !48, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @g12a_ephy_pll_ops, !51, !"g12a_ephy_pll_ops", i1 false, i1 false}
!51 = !{!"../drivers/net/mdio/mdio-mux-meson-g12a.c", i32 143, i32 29}
!52 = !{ptr @g12a_mdio_mux_match, !53, !"g12a_mdio_mux_match", i1 false, i1 false}
!53 = !{!"../drivers/net/mdio/mdio-mux-meson-g12a.c", i32 213, i32 34}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{i8 0, i8 2}
!64 = !{i64 5011415}
!65 = !{i64 2155555227}
!66 = !{i64 2155701774}
!67 = !{i64 2155770178}
!68 = !{i64 5011833}
!69 = !{i64 2155543160}
!70 = !{i64 2155543546}
!71 = !{i64 2155544022}
!72 = !{i64 2155545947}
!73 = !{i64 2155546429}
!74 = !{i64 2155548113}
!75 = !{i64 2155548499}
!76 = !{i64 2155550353}
!77 = !{i64 2155457783}
!78 = !{i64 2155551855}
!79 = !{i64 2155552275}
!80 = !{i64 2155552695}
!81 = !{i64 2155553115}
!82 = !{i64 2155553535}
!83 = !{i64 2155553955}
!84 = !{i64 2155554375}
!85 = !{i64 2155554795}
