; ModuleID = '/llk/IR_all_yes/drivers/clk/bcm/clk-bcm2835.c_pt.bc'
source_filename = "../drivers/clk/bcm/clk-bcm2835.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bcm2835_clk_desc = type { ptr, i32, ptr }
%struct.bcm2835_pll_ana_bits = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.bcm2835_pll_data = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32 }
%struct.bcm2835_pll_divider_data = type { ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.bcm2835_clock_data = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32 }
%struct.bcm2835_gate_data = type { ptr, ptr, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.debugfs_reg32 = type { ptr, i32 }
%struct.cprman_plat_data = type { i32 }
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
%struct.bcm2835_cprman = type { ptr, ptr, %struct.spinlock, i32, [7 x ptr], %struct.clk_hw_onecell_data }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.bcm2835_pll = type { %struct.clk_hw, ptr, ptr }
%struct.clk_divider = type { %struct.clk_hw, ptr, i8, i8, i8, ptr, ptr }
%struct.bcm2835_pll_divider = type { %struct.clk_divider, ptr, ptr }
%struct.bcm2835_clock = type { %struct.clk_hw, ptr, ptr }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@__initcall__kmod_clk_bcm2835__235_2319_bcm2835_clk_driver_init6 = internal global ptr @bcm2835_clk_driver_init, section ".initcall6.init", align 4
@__UNIQUE_ID_author236 = internal constant [49 x i8] c"clk_bcm2835.author=Eric Anholt <eric@anholt.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [45 x i8] c"clk_bcm2835.description=BCM2835 clock driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [45 x i8] c"clk_bcm2835.file=drivers/clk/bcm/clk-bcm2835\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [24 x i8] c"clk_bcm2835.license=GPL\00", section ".modinfo", align 1
@bcm2835_clk_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcm2835_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm2835_clk_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bcm2835-clk\00", [20 x i8] zeroinitializer }, align 32
@bcm2835_clk_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-cprman\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cprman_bcm2835_plat_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2711-cprman\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cprman_bcm2711_plat_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@bcm2835_clk_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&cprman->regs_lock\00", [45 x i8] zeroinitializer }, align 32
@cprman_parent_names = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], [36 x i8] zeroinitializer }, align 32
@clk_desc_array = internal constant { [52 x %struct.bcm2835_clk_desc], [144 x i8] } { [52 x %struct.bcm2835_clk_desc] [%struct.bcm2835_clk_desc { ptr @bcm2835_register_pll, i32 3, ptr @.compoundliteral }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_pll, i32 3, ptr @.compoundliteral.11 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_pll, i32 3, ptr @.compoundliteral.13 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_pll, i32 3, ptr @.compoundliteral.15 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_pll, i32 1, ptr @.compoundliteral.17 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_pll_divider, i32 3, ptr @.compoundliteral.19 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_pll_divider, i32 3, ptr @.compoundliteral.21 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_pll_divider, i32 3, ptr @.compoundliteral.23 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_pll_divider, i32 3, ptr @.compoundliteral.25 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_pll_divider, i32 3, ptr @.compoundliteral.27 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_pll_divider, i32 3, ptr @.compoundliteral.29 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_pll_divider, i32 3, ptr @.compoundliteral.31 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_pll_divider, i32 3, ptr @.compoundliteral.33 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_pll_divider, i32 3, ptr @.compoundliteral.35 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_pll_divider, i32 1, ptr @.compoundliteral.37 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_pll_divider, i32 1, ptr @.compoundliteral.39 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_pll_divider, i32 1, ptr @.compoundliteral.41 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.43 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.45 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.47 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.49 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.51 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.53 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.55 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.57 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.59 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.61 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.63 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.65 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_gate, i32 3, ptr @.compoundliteral.67 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.69 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.71 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_pll_divider, i32 3, ptr @.compoundliteral.73 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_pll_divider, i32 3, ptr @.compoundliteral.75 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_pll_divider, i32 3, ptr @.compoundliteral.77 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_pll_divider, i32 3, ptr @.compoundliteral.79 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.81 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.83 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.85 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.87 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.89 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.91 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.93 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.95 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.97 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.99 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.101 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.103 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.105 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.107 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.109 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 2, ptr @.compoundliteral.111 }], [144 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xosc\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dsi0_byte\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dsi0_ddr2\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dsi0_ddr\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dsi1_byte\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dsi1_ddr2\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dsi1_ddr\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"plla\00", [27 x i8] zeroinitializer }, align 32
@bcm2835_ana_default = internal constant { %struct.bcm2835_pll_ana_bits, [36 x i8] } { %struct.bcm2835_pll_ana_bits { i32 0, i32 0, i32 4161536, i32 1310720, i32 896, i32 256, i32 16384 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.bcm2835_pll_data, [48 x i8] } { %struct.bcm2835_pll_data { ptr @.str.9, i32 260, i32 4352, i32 4608, i32 4112, i32 64, i32 256, i32 0, ptr @bcm2835_ana_default, i32 600000000, i32 -1894967296, i32 1750000000 }, [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pllb\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal global { %struct.bcm2835_pll_data, [48 x i8] } { %struct.bcm2835_pll_data { ptr @.str.10, i32 368, i32 4576, i32 4832, i32 4336, i32 128, i32 512, i32 64, ptr @bcm2835_ana_default, i32 600000000, i32 -1294967296, i32 1750000000 }, [48 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pllc\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal global { %struct.bcm2835_pll_data, [48 x i8] } { %struct.bcm2835_pll_data { ptr @.str.12, i32 264, i32 4384, i32 4640, i32 4144, i32 1, i32 1024, i32 0, ptr @bcm2835_ana_default, i32 600000000, i32 -1294967296, i32 1750000000 }, [48 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"plld\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal global { %struct.bcm2835_pll_data, [48 x i8] } { %struct.bcm2835_pll_data { ptr @.str.14, i32 268, i32 4416, i32 4672, i32 4176, i32 16, i32 2048, i32 0, ptr @bcm2835_ana_default, i32 600000000, i32 -1894967296, i32 1750000000 }, [48 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pllh\00", [27 x i8] zeroinitializer }, align 32
@bcm2835_ana_pllh = internal constant { %struct.bcm2835_pll_ana_bits, [36 x i8] } { %struct.bcm2835_pll_ana_bits { i32 16252928, i32 9437184, i32 31, i32 12, i32 0, i32 0, i32 2048 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal global { %struct.bcm2835_pll_data, [48 x i8] } { %struct.bcm2835_pll_data { ptr @.str.16, i32 272, i32 4448, i32 4704, i32 4208, i32 1, i32 4096, i32 0, ptr @bcm2835_ana_pllh, i32 600000000, i32 -1294967296, i32 1750000000 }, [48 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"plla_core\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { %struct.bcm2835_pll_divider_data, [32 x i8] } { %struct.bcm2835_pll_divider_data { ptr @.str.18, ptr @.str.9, i32 260, i32 5120, i32 16, i32 32, i32 1, i32 4 }, [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"plla_per\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { %struct.bcm2835_pll_divider_data, [32 x i8] } { %struct.bcm2835_pll_divider_data { ptr @.str.20, ptr @.str.9, i32 260, i32 5376, i32 64, i32 128, i32 1, i32 4 }, [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pllb_arm\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { %struct.bcm2835_pll_divider_data, [32 x i8] } { %struct.bcm2835_pll_divider_data { ptr @.str.22, ptr @.str.10, i32 368, i32 5088, i32 1, i32 2, i32 1, i32 68 }, [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pllc_core0\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { %struct.bcm2835_pll_divider_data, [32 x i8] } { %struct.bcm2835_pll_divider_data { ptr @.str.24, ptr @.str.12, i32 264, i32 5664, i32 1, i32 2, i32 1, i32 4 }, [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pllc_core1\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { %struct.bcm2835_pll_divider_data, [32 x i8] } { %struct.bcm2835_pll_divider_data { ptr @.str.26, ptr @.str.12, i32 264, i32 5152, i32 4, i32 8, i32 1, i32 4 }, [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pllc_core2\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { %struct.bcm2835_pll_divider_data, [32 x i8] } { %struct.bcm2835_pll_divider_data { ptr @.str.28, ptr @.str.12, i32 264, i32 4896, i32 16, i32 32, i32 1, i32 4 }, [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pllc_per\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { %struct.bcm2835_pll_divider_data, [32 x i8] } { %struct.bcm2835_pll_divider_data { ptr @.str.30, ptr @.str.12, i32 264, i32 5408, i32 64, i32 128, i32 1, i32 4 }, [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"plld_core\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal global { %struct.bcm2835_pll_divider_data, [32 x i8] } { %struct.bcm2835_pll_divider_data { ptr @.str.32, ptr @.str.14, i32 268, i32 5184, i32 16, i32 32, i32 1, i32 4 }, [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"plld_per\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal global { %struct.bcm2835_pll_divider_data, [32 x i8] } { %struct.bcm2835_pll_divider_data { ptr @.str.34, ptr @.str.14, i32 268, i32 5440, i32 64, i32 128, i32 1, i32 2052 }, [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pllh_rcal\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { %struct.bcm2835_pll_divider_data, [32 x i8] } { %struct.bcm2835_pll_divider_data { ptr @.str.36, ptr @.str.16, i32 272, i32 5216, i32 4, i32 0, i32 10, i32 4 }, [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pllh_aux\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal global { %struct.bcm2835_pll_divider_data, [32 x i8] } { %struct.bcm2835_pll_divider_data { ptr @.str.38, ptr @.str.16, i32 272, i32 4960, i32 2, i32 0, i32 1, i32 4 }, [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pllh_pix\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.41 = internal global { %struct.bcm2835_pll_divider_data, [32 x i8] } { %struct.bcm2835_pll_divider_data { ptr @.str.40, ptr @.str.16, i32 272, i32 5472, i32 1, i32 0, i32 10, i32 4 }, [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"timer\00", [26 x i8] zeroinitializer }, align 32
@bcm2835_clock_osc_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.142, ptr @.str.2, ptr @.str.143, ptr @.str.144], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.43 = internal global { %struct.bcm2835_clock_data, [52 x i8] } { %struct.bcm2835_clock_data { ptr @.str.42, ptr @bcm2835_clock_osc_parents, i32 4, i32 0, i32 232, i32 236, i32 6, i32 12, i32 0, i8 0, i8 0, i8 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"otp\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.45 = internal global { %struct.bcm2835_clock_data, [52 x i8] } { %struct.bcm2835_clock_data { ptr @.str.44, ptr @bcm2835_clock_osc_parents, i32 4, i32 0, i32 144, i32 148, i32 4, i32 0, i32 0, i8 0, i8 0, i8 0, i32 6 }, [52 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"uart\00", [27 x i8] zeroinitializer }, align 32
@bcm2835_clock_per_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.142, ptr @.str.2, ptr @.str.143, ptr @.str.144, ptr @.str.20, ptr @.str.30, ptr @.str.34, ptr @.str.38], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.47 = internal global { %struct.bcm2835_clock_data, [52 x i8] } { %struct.bcm2835_clock_data { ptr @.str.46, ptr @bcm2835_clock_per_parents, i32 8, i32 0, i32 240, i32 244, i32 10, i32 12, i32 0, i8 0, i8 0, i8 0, i32 28 }, [52 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vpu\00", [28 x i8] zeroinitializer }, align 32
@bcm2835_clock_vpu_parents = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.142, ptr @.str.2, ptr @.str.143, ptr @.str.144, ptr @.str.18, ptr @.str.24, ptr @.str.32, ptr @.str.38, ptr @.str.26, ptr @.str.28], [56 x i8] zeroinitializer }, align 32
@.compoundliteral.49 = internal global { %struct.bcm2835_clock_data, [52 x i8] } { %struct.bcm2835_clock_data { ptr @.str.48, ptr @bcm2835_clock_vpu_parents, i32 10, i32 0, i32 8, i32 12, i32 12, i32 8, i32 2048, i8 1, i8 0, i8 0, i32 5 }, [52 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"v3d\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.51 = internal global { %struct.bcm2835_clock_data, [52 x i8] } { %struct.bcm2835_clock_data { ptr @.str.50, ptr @bcm2835_clock_vpu_parents, i32 10, i32 0, i32 56, i32 60, i32 4, i32 8, i32 0, i8 0, i8 0, i8 0, i32 4 }, [52 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"isp\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.53 = internal global { %struct.bcm2835_clock_data, [52 x i8] } { %struct.bcm2835_clock_data { ptr @.str.52, ptr @bcm2835_clock_vpu_parents, i32 10, i32 0, i32 48, i32 52, i32 4, i32 8, i32 0, i8 0, i8 0, i8 0, i32 2 }, [52 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"h264\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.55 = internal global { %struct.bcm2835_clock_data, [52 x i8] } { %struct.bcm2835_clock_data { ptr @.str.54, ptr @bcm2835_clock_vpu_parents, i32 10, i32 0, i32 40, i32 44, i32 4, i32 8, i32 0, i8 0, i8 0, i8 0, i32 1 }, [52 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vec\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.57 = internal global { %struct.bcm2835_clock_data, [52 x i8] } { %struct.bcm2835_clock_data { ptr @.str.56, ptr @bcm2835_clock_per_parents, i32 8, i32 128, i32 248, i32 252, i32 4, i32 0, i32 0, i8 0, i8 0, i8 0, i32 29 }, [52 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hsm\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal global { %struct.bcm2835_clock_data, [52 x i8] } { %struct.bcm2835_clock_data { ptr @.str.58, ptr @bcm2835_clock_per_parents, i32 8, i32 0, i32 136, i32 140, i32 4, i32 8, i32 0, i8 0, i8 0, i8 0, i32 22 }, [52 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sdram\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.61 = internal global { %struct.bcm2835_clock_data, [52 x i8] } { %struct.bcm2835_clock_data { ptr @.str.60, ptr @bcm2835_clock_vpu_parents, i32 10, i32 0, i32 424, i32 428, i32 6, i32 0, i32 0, i8 0, i8 0, i8 0, i32 3 }, [52 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tsens\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.63 = internal global { %struct.bcm2835_clock_data, [52 x i8] } { %struct.bcm2835_clock_data { ptr @.str.62, ptr @bcm2835_clock_osc_parents, i32 4, i32 0, i32 224, i32 228, i32 5, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"emmc\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.65 = internal global { %struct.bcm2835_clock_data, [52 x i8] } { %struct.bcm2835_clock_data { ptr @.str.64, ptr @bcm2835_clock_per_parents, i32 8, i32 0, i32 448, i32 452, i32 4, i32 8, i32 0, i8 0, i8 0, i8 0, i32 39 }, [52 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"peri_image\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.67 = internal global { %struct.bcm2835_gate_data, [20 x i8] } { %struct.bcm2835_gate_data { ptr @.str.66, ptr @.str.48, i32 32 }, [20 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pwm\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.69 = internal global { %struct.bcm2835_clock_data, [52 x i8] } { %struct.bcm2835_clock_data { ptr @.str.68, ptr @bcm2835_clock_per_parents, i32 8, i32 0, i32 160, i32 164, i32 12, i32 12, i32 0, i8 0, i8 1, i8 0, i32 24 }, [52 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pcm\00", [28 x i8] zeroinitializer }, align 32
@bcm2835_pcm_per_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.145, ptr @.str.2, ptr @.str.145, ptr @.str.145, ptr @.str.145, ptr @.str.145, ptr @.str.34, ptr @.str.145], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.71 = internal global { %struct.bcm2835_clock_data, [52 x i8] } { %struct.bcm2835_clock_data { ptr @.str.70, ptr @bcm2835_pcm_per_parents, i32 8, i32 0, i32 152, i32 156, i32 12, i32 12, i32 0, i8 0, i8 1, i8 1, i32 23 }, [52 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"plla_dsi0\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.73 = internal global { %struct.bcm2835_pll_divider_data, [32 x i8] } { %struct.bcm2835_pll_divider_data { ptr @.str.72, ptr @.str.9, i32 260, i32 4864, i32 1, i32 2, i32 1, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"plla_ccp2\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.75 = internal global { %struct.bcm2835_pll_divider_data, [32 x i8] } { %struct.bcm2835_pll_divider_data { ptr @.str.74, ptr @.str.9, i32 260, i32 5632, i32 4, i32 8, i32 1, i32 4 }, [32 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"plld_dsi0\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.77 = internal global { %struct.bcm2835_pll_divider_data, [32 x i8] } { %struct.bcm2835_pll_divider_data { ptr @.str.76, ptr @.str.14, i32 268, i32 4928, i32 1, i32 2, i32 1, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"plld_dsi1\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.79 = internal global { %struct.bcm2835_pll_divider_data, [32 x i8] } { %struct.bcm2835_pll_divider_data { ptr @.str.78, ptr @.str.14, i32 268, i32 5696, i32 4, i32 8, i32 1, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aveo\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.81 = internal global { %struct.bcm2835_clock_data, [52 x i8] } { %struct.bcm2835_clock_data { ptr @.str.80, ptr @bcm2835_clock_per_parents, i32 8, i32 0, i32 440, i32 444, i32 4, i32 0, i32 0, i8 0, i8 0, i8 0, i32 38 }, [52 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dft\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.83 = internal global { %struct.bcm2835_clock_data, [52 x i8] } { %struct.bcm2835_clock_data { ptr @.str.82, ptr @bcm2835_clock_per_parents, i32 8, i32 0, i32 360, i32 364, i32 5, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gp0\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.85 = internal global { %struct.bcm2835_clock_data, [52 x i8] } { %struct.bcm2835_clock_data { ptr @.str.84, ptr @bcm2835_clock_per_parents, i32 8, i32 0, i32 112, i32 116, i32 12, i32 12, i32 0, i8 0, i8 1, i8 0, i32 20 }, [52 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gp1\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.87 = internal global { %struct.bcm2835_clock_data, [52 x i8] } { %struct.bcm2835_clock_data { ptr @.str.86, ptr @bcm2835_clock_per_parents, i32 8, i32 0, i32 120, i32 124, i32 12, i32 12, i32 2048, i8 0, i8 1, i8 0, i32 21 }, [52 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gp2\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.89 = internal global { %struct.bcm2835_clock_data, [52 x i8] } { %struct.bcm2835_clock_data { ptr @.str.88, ptr @bcm2835_clock_per_parents, i32 8, i32 0, i32 128, i32 132, i32 12, i32 12, i32 2048, i8 0, i8 0, i8 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"slim\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.91 = internal global { %struct.bcm2835_clock_data, [52 x i8] } { %struct.bcm2835_clock_data { ptr @.str.90, ptr @bcm2835_clock_per_parents, i32 8, i32 0, i32 168, i32 172, i32 12, i32 12, i32 0, i8 0, i8 1, i8 0, i32 25 }, [52 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"smi\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.93 = internal global { %struct.bcm2835_clock_data, [52 x i8] } { %struct.bcm2835_clock_data { ptr @.str.92, ptr @bcm2835_clock_per_parents, i32 8, i32 0, i32 176, i32 180, i32 4, i32 8, i32 0, i8 0, i8 0, i8 0, i32 27 }, [52 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tec\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.95 = internal global { %struct.bcm2835_clock_data, [52 x i8] } { %struct.bcm2835_clock_data { ptr @.str.94, ptr @bcm2835_clock_osc_parents, i32 4, i32 0, i32 200, i32 204, i32 6, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dpi\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.97 = internal global { %struct.bcm2835_clock_data, [52 x i8] } { %struct.bcm2835_clock_data { ptr @.str.96, ptr @bcm2835_clock_per_parents, i32 8, i32 0, i32 104, i32 108, i32 4, i32 8, i32 0, i8 0, i8 0, i8 0, i32 17 }, [52 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cam0\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.99 = internal global { %struct.bcm2835_clock_data, [52 x i8] } { %struct.bcm2835_clock_data { ptr @.str.98, ptr @bcm2835_clock_per_parents, i32 8, i32 0, i32 64, i32 68, i32 4, i32 8, i32 0, i8 0, i8 0, i8 0, i32 14 }, [52 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cam1\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.101 = internal global { %struct.bcm2835_clock_data, [52 x i8] } { %struct.bcm2835_clock_data { ptr @.str.100, ptr @bcm2835_clock_per_parents, i32 8, i32 0, i32 72, i32 76, i32 4, i32 8, i32 0, i8 0, i8 0, i8 0, i32 15 }, [52 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dsi0e\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.103 = internal global { %struct.bcm2835_clock_data, [52 x i8] } { %struct.bcm2835_clock_data { ptr @.str.102, ptr @bcm2835_clock_per_parents, i32 8, i32 0, i32 88, i32 92, i32 4, i32 8, i32 0, i8 0, i8 0, i8 0, i32 18 }, [52 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dsi1e\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.105 = internal global { %struct.bcm2835_clock_data, [52 x i8] } { %struct.bcm2835_clock_data { ptr @.str.104, ptr @bcm2835_clock_per_parents, i32 8, i32 0, i32 344, i32 348, i32 4, i32 8, i32 0, i8 0, i8 0, i8 0, i32 19 }, [52 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dsi0p\00", [26 x i8] zeroinitializer }, align 32
@bcm2835_clock_dsi0_parents = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.142, ptr @.str.2, ptr @.str.143, ptr @.str.144, ptr @.str.5, ptr @.str.146, ptr @.str.4, ptr @.str.147, ptr @.str.3, ptr @.str.148], [56 x i8] zeroinitializer }, align 32
@.compoundliteral.107 = internal global { %struct.bcm2835_clock_data, [52 x i8] } { %struct.bcm2835_clock_data { ptr @.str.106, ptr @bcm2835_clock_dsi0_parents, i32 10, i32 0, i32 96, i32 100, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i32 12 }, [52 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dsi1p\00", [26 x i8] zeroinitializer }, align 32
@bcm2835_clock_dsi1_parents = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.142, ptr @.str.2, ptr @.str.143, ptr @.str.144, ptr @.str.8, ptr @.str.149, ptr @.str.7, ptr @.str.150, ptr @.str.6, ptr @.str.151], [56 x i8] zeroinitializer }, align 32
@.compoundliteral.109 = internal global { %struct.bcm2835_clock_data, [52 x i8] } { %struct.bcm2835_clock_data { ptr @.str.108, ptr @bcm2835_clock_dsi1_parents, i32 10, i32 0, i32 352, i32 356, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i32 13 }, [52 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"emmc2\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.111 = internal global { %struct.bcm2835_clock_data, [52 x i8] } { %struct.bcm2835_clock_data { ptr @.str.110, ptr @bcm2835_clock_per_parents, i32 8, i32 0, i32 464, i32 468, i32 4, i32 8, i32 0, i8 0, i8 0, i8 0, i32 42 }, [52 x i8] zeroinitializer }, align 32
@bcm2835_pll_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @bcm2835_pll_on, ptr @bcm2835_pll_off, ptr @bcm2835_pll_is_on, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm2835_pll_get_rate, ptr @bcm2835_pll_round_rate, ptr null, ptr null, ptr null, ptr @bcm2835_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm2835_pll_debug_init }, [60 x i8] zeroinitializer }, align 32
@bcm2835_pll_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.114, i32 647, ptr @.str.115, ptr @.str.116 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: couldn't lock PLL\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bcm2835_pll_on\00", [17 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/clk/bcm/clk-bcm2835.c\00", [34 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm2835_pll_on._entry_ptr = internal global ptr @bcm2835_pll_on._entry, section ".printk_index", align 4
@.str.117 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cm_ctrl\00", [24 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"a2w_ctrl\00", [23 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"frac\00", [27 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ana0\00", [27 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ana1\00", [27 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ana2\00", [27 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ana3\00", [27 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"regdump\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.125 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s_prediv\00", [22 x i8] zeroinitializer }, align 32
@bcm2835_pll_divider_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @bcm2835_pll_divider_on, ptr @bcm2835_pll_divider_off, ptr @bcm2835_pll_divider_is_on, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm2835_pll_divider_get_rate, ptr null, ptr @bcm2835_pll_divider_determine_rate, ptr null, ptr null, ptr @bcm2835_pll_divider_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm2835_pll_divider_debug_init }, [60 x i8] zeroinitializer }, align 32
@clk_divider_ops = external dso_local local_unnamed_addr constant %struct.clk_ops, align 4
@.str.126 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"cm\00", [29 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"a2w\00", [28 x i8] zeroinitializer }, align 32
@bcm2835_vpu_clock_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr @bcm2835_vpu_clock_is_on, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm2835_clock_get_rate, ptr null, ptr @bcm2835_clock_determine_rate, ptr @bcm2835_clock_set_parent, ptr @bcm2835_clock_get_parent, ptr @bcm2835_clock_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm2835_clock_debug_init }, [60 x i8] zeroinitializer }, align 32
@bcm2835_clock_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @bcm2835_clock_on, ptr @bcm2835_clock_off, ptr @bcm2835_clock_is_on, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm2835_clock_get_rate, ptr null, ptr @bcm2835_clock_determine_rate, ptr @bcm2835_clock_set_parent, ptr @bcm2835_clock_get_parent, ptr @bcm2835_clock_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm2835_clock_debug_init }, [60 x i8] zeroinitializer }, align 32
@bcm2835_clock_choose_div_and_prate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.114, i32 1153, ptr @.str.130, ptr @.str.116 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"frac bits are not used when propagating rate change\00", [44 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"bcm2835_clock_choose_div_and_prate\00", [61 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bcm2835_clock_choose_div_and_prate._entry_ptr = internal global ptr @bcm2835_clock_choose_div_and_prate._entry, section ".printk_index", align 4
@bcm2835_debugfs_clock_reg32 = internal constant { [2 x %struct.debugfs_reg32], [16 x i8] } { [2 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.131, i32 0 }, %struct.debugfs_reg32 { ptr @.str.132, i32 4 }], [16 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ctl\00", [28 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"div\00", [28 x i8] zeroinitializer }, align 32
@bcm2835_clock_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.114, i32 1065, ptr @.str.135, ptr @.str.116 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"clk %s: rate %ld, measure %ld\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bcm2835_clock_on\00", [47 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@bcm2835_clock_on._entry_ptr = internal global ptr @bcm2835_clock_on._entry, section ".printk_index", align 4
@bcm2835_measure_tcnt_mux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.137, ptr @.str.114, i32 371, ptr @.str.115, ptr @.str.116 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"timeout waiting for OSCCOUNT\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bcm2835_measure_tcnt_mux\00", [39 x i8] zeroinitializer }, align 32
@bcm2835_measure_tcnt_mux._entry_ptr = internal global ptr @bcm2835_measure_tcnt_mux._entry, section ".printk_index", align 4
@bcm2835_measure_tcnt_mux._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.137, ptr @.str.114, i32 382, ptr @.str.115, ptr @.str.116 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"timeout waiting for !BUSY\0A\00", [37 x i8] zeroinitializer }, align 32
@bcm2835_measure_tcnt_mux._entry_ptr.140 = internal global ptr @bcm2835_measure_tcnt_mux._entry.138, section ".printk_index", align 4
@bcm2835_clock_wait_busy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.141, ptr @.str.114, i32 1022, ptr @.str.115, ptr @.str.116 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bcm2835_clock_wait_busy\00", [40 x i8] zeroinitializer }, align 32
@bcm2835_clock_wait_busy._entry_ptr = internal global ptr @bcm2835_clock_wait_busy._entry, section ".printk_index", align 4
@.str.142 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gnd\00", [28 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"testdebug0\00", [21 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"testdebug1\00", [21 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"-\00", [30 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dsi0_ddr_inv\00", [19 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dsi0_ddr2_inv\00", [18 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dsi0_byte_inv\00", [18 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dsi1_ddr_inv\00", [19 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dsi1_ddr2_inv\00", [18 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dsi1_byte_inv\00", [18 x i8] zeroinitializer }, align 32
@cprman_bcm2835_plat_data = internal constant { %struct.cprman_plat_data, [28 x i8] } { %struct.cprman_plat_data { i32 1 }, [28 x i8] zeroinitializer }, align 32
@cprman_bcm2711_plat_data = internal constant { %struct.cprman_plat_data, [28 x i8] } { %struct.cprman_plat_data { i32 2 }, [28 x i8] zeroinitializer }, align 32
@___asan_gen_.152 = private unnamed_addr constant [19 x i8] c"bcm2835_clk_driver\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2311, i32 31 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2313, i32 11 }
@___asan_gen_.158 = private unnamed_addr constant [21 x i8] c"bcm2835_clk_of_match\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2304, i32 34 }
@___asan_gen_.161 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2253, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant [20 x i8] c"cprman_parent_names\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 303, i32 26 }
@___asan_gen_.170 = private unnamed_addr constant [15 x i8] c"clk_desc_array\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1635, i32 38 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 304, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 305, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 306, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 307, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 308, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 309, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 310, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1645, i32 20 }
@___asan_gen_.197 = private unnamed_addr constant [20 x i8] c"bcm2835_ana_default\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 448, i32 42 }
@___asan_gen_.200 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1701, i32 20 }
@___asan_gen_.204 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1734, i32 20 }
@___asan_gen_.208 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1796, i32 20 }
@___asan_gen_.212 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1861, i32 20 }
@___asan_gen_.216 = private unnamed_addr constant [17 x i8] c"bcm2835_ana_pllh\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 458, i32 42 }
@___asan_gen_.219 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1660, i32 24 }
@___asan_gen_.223 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1670, i32 23 }
@___asan_gen_.227 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1717, i32 23 }
@___asan_gen_.231 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1749, i32 25 }
@___asan_gen_.235 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1759, i32 25 }
@___asan_gen_.239 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1769, i32 25 }
@___asan_gen_.243 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1779, i32 23 }
@___asan_gen_.247 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1811, i32 24 }
@___asan_gen_.251 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1826, i32 23 }
@___asan_gen_.255 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1876, i32 24 }
@___asan_gen_.259 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1886, i32 23 }
@___asan_gen_.263 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1896, i32 23 }
@___asan_gen_.267 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1924, i32 26 }
@___asan_gen_.271 = private unnamed_addr constant [26 x i8] c"bcm2835_clock_osc_parents\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1511, i32 26 }
@___asan_gen_.274 = private unnamed_addr constant [20 x i8] c".compoundliteral.43\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1912, i32 24 }
@___asan_gen_.278 = private unnamed_addr constant [20 x i8] c".compoundliteral.45\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2140, i32 25 }
@___asan_gen_.282 = private unnamed_addr constant [26 x i8] c"bcm2835_clock_per_parents\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1525, i32 26 }
@___asan_gen_.285 = private unnamed_addr constant [20 x i8] c".compoundliteral.47\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1994, i32 24 }
@___asan_gen_.289 = private unnamed_addr constant [26 x i8] c"bcm2835_clock_vpu_parents\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1569, i32 26 }
@___asan_gen_.292 = private unnamed_addr constant [20 x i8] c".compoundliteral.49\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1980, i32 24 }
@___asan_gen_.296 = private unnamed_addr constant [20 x i8] c".compoundliteral.51\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1959, i32 24 }
@___asan_gen_.300 = private unnamed_addr constant [20 x i8] c".compoundliteral.53\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1951, i32 25 }
@___asan_gen_.304 = private unnamed_addr constant [20 x i8] c".compoundliteral.55\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2150, i32 24 }
@___asan_gen_.308 = private unnamed_addr constant [20 x i8] c".compoundliteral.57\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2096, i32 24 }
@___asan_gen_.312 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1972, i32 26 }
@___asan_gen_.316 = private unnamed_addr constant [20 x i8] c".compoundliteral.61\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1935, i32 26 }
@___asan_gen_.320 = private unnamed_addr constant [20 x i8] c".compoundliteral.63\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2047, i32 25 }
@___asan_gen_.324 = private unnamed_addr constant [20 x i8] c".compoundliteral.65\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2206, i32 31 }
@___asan_gen_.328 = private unnamed_addr constant [20 x i8] c".compoundliteral.67\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2114, i32 24 }
@___asan_gen_.332 = private unnamed_addr constant [20 x i8] c".compoundliteral.69\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2104, i32 24 }
@___asan_gen_.336 = private unnamed_addr constant [24 x i8] c"bcm2835_pcm_per_parents\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1551, i32 26 }
@___asan_gen_.339 = private unnamed_addr constant [20 x i8] c".compoundliteral.71\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1680, i32 24 }
@___asan_gen_.343 = private unnamed_addr constant [20 x i8] c".compoundliteral.73\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1689, i32 24 }
@___asan_gen_.347 = private unnamed_addr constant [20 x i8] c".compoundliteral.75\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1836, i32 24 }
@___asan_gen_.351 = private unnamed_addr constant [20 x i8] c".compoundliteral.77\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1845, i32 24 }
@___asan_gen_.355 = private unnamed_addr constant [20 x i8] c".compoundliteral.79\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2006, i32 25 }
@___asan_gen_.359 = private unnamed_addr constant [20 x i8] c".compoundliteral.81\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2030, i32 24 }
@___asan_gen_.363 = private unnamed_addr constant [20 x i8] c".compoundliteral.83\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2067, i32 24 }
@___asan_gen_.367 = private unnamed_addr constant [20 x i8] c".compoundliteral.85\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2076, i32 24 }
@___asan_gen_.371 = private unnamed_addr constant [20 x i8] c".compoundliteral.87\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2086, i32 24 }
@___asan_gen_.375 = private unnamed_addr constant [20 x i8] c".compoundliteral.89\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2123, i32 25 }
@___asan_gen_.379 = private unnamed_addr constant [20 x i8] c".compoundliteral.91\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2132, i32 24 }
@___asan_gen_.383 = private unnamed_addr constant [20 x i8] c".compoundliteral.93\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1942, i32 24 }
@___asan_gen_.387 = private unnamed_addr constant [20 x i8] c".compoundliteral.95\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2037, i32 24 }
@___asan_gen_.391 = private unnamed_addr constant [20 x i8] c".compoundliteral.97\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2014, i32 25 }
@___asan_gen_.395 = private unnamed_addr constant [20 x i8] c".compoundliteral.99\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2022, i32 25 }
@___asan_gen_.399 = private unnamed_addr constant [21 x i8] c".compoundliteral.101\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2165, i32 26 }
@___asan_gen_.403 = private unnamed_addr constant [21 x i8] c".compoundliteral.103\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2173, i32 26 }
@___asan_gen_.407 = private unnamed_addr constant [21 x i8] c".compoundliteral.105\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2181, i32 26 }
@___asan_gen_.411 = private unnamed_addr constant [27 x i8] c"bcm2835_clock_dsi0_parents\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1593, i32 26 }
@___asan_gen_.414 = private unnamed_addr constant [21 x i8] c".compoundliteral.107\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2189, i32 26 }
@___asan_gen_.418 = private unnamed_addr constant [27 x i8] c"bcm2835_clock_dsi1_parents\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1606, i32 26 }
@___asan_gen_.421 = private unnamed_addr constant [21 x i8] c".compoundliteral.109\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2057, i32 26 }
@___asan_gen_.425 = private unnamed_addr constant [21 x i8] c".compoundliteral.111\00", align 1
@___asan_gen_.426 = private unnamed_addr constant [20 x i8] c"bcm2835_pll_clk_ops\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 777, i32 29 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 646, i32 4 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 759, i32 17 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 761, i32 17 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 763, i32 17 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 765, i32 17 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 767, i32 17 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 769, i32 17 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 771, i32 17 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 413, i32 26 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1354, i32 12 }
@___asan_gen_.474 = private unnamed_addr constant [28 x i8] c"bcm2835_pll_divider_clk_ops\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 897, i32 29 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 889, i32 17 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 891, i32 17 }
@___asan_gen_.483 = private unnamed_addr constant [26 x i8] c"bcm2835_vpu_clock_clk_ops\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1299, i32 29 }
@___asan_gen_.486 = private unnamed_addr constant [22 x i8] c"bcm2835_clock_clk_ops\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1278, i32 29 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1152, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant [28 x i8] c"bcm2835_debugfs_clock_reg32\00", align 1
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1254, i32 35 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1256, i32 11 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1260, i32 11 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1061, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 371, i32 4 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 382, i32 4 }
@___asan_gen_.537 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1021, i32 4 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1512, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1514, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1515, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1552, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1599, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1601, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1603, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1612, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1614, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1616, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant [25 x i8] c"cprman_bcm2835_plat_data\00", align 1
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2296, i32 38 }
@___asan_gen_.576 = private unnamed_addr constant [25 x i8] c"cprman_bcm2711_plat_data\00", align 1
@___asan_gen_.577 = private constant [33 x i8] c"../drivers/clk/bcm/clk-bcm2835.c\00", align 1
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 2300, i32 38 }
@llvm.compiler.used = appending global [188 x ptr] [ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__initcall__kmod_clk_bcm2835__235_2319_bcm2835_clk_driver_init6, ptr @bcm2835_clock_choose_div_and_prate._entry, ptr @bcm2835_clock_choose_div_and_prate._entry_ptr, ptr @bcm2835_clock_on._entry, ptr @bcm2835_clock_on._entry_ptr, ptr @bcm2835_clock_wait_busy._entry, ptr @bcm2835_clock_wait_busy._entry_ptr, ptr @bcm2835_measure_tcnt_mux._entry, ptr @bcm2835_measure_tcnt_mux._entry.138, ptr @bcm2835_measure_tcnt_mux._entry_ptr, ptr @bcm2835_measure_tcnt_mux._entry_ptr.140, ptr @bcm2835_pll_on._entry, ptr @bcm2835_pll_on._entry_ptr, ptr @bcm2835_clk_driver, ptr @.str, ptr @bcm2835_clk_of_match, ptr @bcm2835_clk_probe.__key, ptr @.str.1, ptr @cprman_parent_names, ptr @clk_desc_array, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @bcm2835_ana_default, ptr @.compoundliteral, ptr @.str.10, ptr @.compoundliteral.11, ptr @.str.12, ptr @.compoundliteral.13, ptr @.str.14, ptr @.compoundliteral.15, ptr @.str.16, ptr @bcm2835_ana_pllh, ptr @.compoundliteral.17, ptr @.str.18, ptr @.compoundliteral.19, ptr @.str.20, ptr @.compoundliteral.21, ptr @.str.22, ptr @.compoundliteral.23, ptr @.str.24, ptr @.compoundliteral.25, ptr @.str.26, ptr @.compoundliteral.27, ptr @.str.28, ptr @.compoundliteral.29, ptr @.str.30, ptr @.compoundliteral.31, ptr @.str.32, ptr @.compoundliteral.33, ptr @.str.34, ptr @.compoundliteral.35, ptr @.str.36, ptr @.compoundliteral.37, ptr @.str.38, ptr @.compoundliteral.39, ptr @.str.40, ptr @.compoundliteral.41, ptr @.str.42, ptr @bcm2835_clock_osc_parents, ptr @.compoundliteral.43, ptr @.str.44, ptr @.compoundliteral.45, ptr @.str.46, ptr @bcm2835_clock_per_parents, ptr @.compoundliteral.47, ptr @.str.48, ptr @bcm2835_clock_vpu_parents, ptr @.compoundliteral.49, ptr @.str.50, ptr @.compoundliteral.51, ptr @.str.52, ptr @.compoundliteral.53, ptr @.str.54, ptr @.compoundliteral.55, ptr @.str.56, ptr @.compoundliteral.57, ptr @.str.58, ptr @.compoundliteral.59, ptr @.str.60, ptr @.compoundliteral.61, ptr @.str.62, ptr @.compoundliteral.63, ptr @.str.64, ptr @.compoundliteral.65, ptr @.str.66, ptr @.compoundliteral.67, ptr @.str.68, ptr @.compoundliteral.69, ptr @.str.70, ptr @bcm2835_pcm_per_parents, ptr @.compoundliteral.71, ptr @.str.72, ptr @.compoundliteral.73, ptr @.str.74, ptr @.compoundliteral.75, ptr @.str.76, ptr @.compoundliteral.77, ptr @.str.78, ptr @.compoundliteral.79, ptr @.str.80, ptr @.compoundliteral.81, ptr @.str.82, ptr @.compoundliteral.83, ptr @.str.84, ptr @.compoundliteral.85, ptr @.str.86, ptr @.compoundliteral.87, ptr @.str.88, ptr @.compoundliteral.89, ptr @.str.90, ptr @.compoundliteral.91, ptr @.str.92, ptr @.compoundliteral.93, ptr @.str.94, ptr @.compoundliteral.95, ptr @.str.96, ptr @.compoundliteral.97, ptr @.str.98, ptr @.compoundliteral.99, ptr @.str.100, ptr @.compoundliteral.101, ptr @.str.102, ptr @.compoundliteral.103, ptr @.str.104, ptr @.compoundliteral.105, ptr @.str.106, ptr @bcm2835_clock_dsi0_parents, ptr @.compoundliteral.107, ptr @.str.108, ptr @bcm2835_clock_dsi1_parents, ptr @.compoundliteral.109, ptr @.str.110, ptr @.compoundliteral.111, ptr @bcm2835_pll_clk_ops, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @bcm2835_pll_divider_clk_ops, ptr @.str.126, ptr @.str.127, ptr @bcm2835_vpu_clock_clk_ops, ptr @bcm2835_clock_clk_ops, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @bcm2835_debugfs_clock_reg32, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.139, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @cprman_bcm2835_plat_data, ptr @cprman_bcm2711_plat_data], section "llvm.metadata"
@0 = internal global [177 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_clk_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_clk_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_clk_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cprman_parent_names to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_desc_array to i32), i32 624, i32 768, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_ana_default to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_ana_pllh to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_clock_osc_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.43 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.45 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_clock_per_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.47 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_clock_vpu_parents to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.49 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.51 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.53 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.55 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.57 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.61 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.63 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.65 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.69 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_pcm_per_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.71 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.73 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.75 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.77 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.79 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.81 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.83 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.85 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.87 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.89 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.91 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.93 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.95 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.97 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.99 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.101 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.103 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.105 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_clock_dsi0_parents to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.107 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_clock_dsi1_parents to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.109 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.111 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_pll_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_pll_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_pll_divider_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_vpu_clock_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_clock_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_clock_choose_div_and_prate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_debugfs_clock_reg32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_clock_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_measure_tcnt_mux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_measure_tcnt_mux._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_clock_wait_busy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cprman_bcm2835_plat_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cprman_bcm2711_plat_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_clk_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm2835_clk_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_clk_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 296, i32 noundef 3520) #10
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.end
  %regs_lock = getelementptr inbounds %struct.bcm2835_cprman, ptr %call.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %regs_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @bcm2835_clk_probe.__key, i16 noundef signext 3) #10
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 4
  %call10 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #10
  %regs = getelementptr inbounds %struct.bcm2835_cprman, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call10, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end16

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %do.body
  %real_parent_names = getelementptr inbounds %struct.bcm2835_cprman, ptr %call.i, i32 0, i32 4
  %3 = call ptr @memcpy(ptr %real_parent_names, ptr @cprman_parent_names, i32 28)
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call19 = tail call i32 @of_clk_parent_fill(ptr noundef %5, ptr noundef %real_parent_names, i32 noundef 7) #10
  %6 = ptrtoint ptr %real_parent_names to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %real_parent_names, align 4
  %tobool21.not = icmp eq ptr %7, null
  br i1 %tobool21.not, label %if.end16.cleanup_crit_edge, label %if.end23

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23:                                         ; preds = %if.end16
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %onecell = getelementptr inbounds %struct.bcm2835_cprman, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %onecell to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 52, ptr %onecell, align 4
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call, align 4
  %soc24 = getelementptr inbounds %struct.bcm2835_cprman, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %soc24 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %soc24, align 4
  %hws26 = getelementptr inbounds %struct.bcm2835_cprman, ptr %call.i, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end23
  %i.093 = phi i32 [ 0, %if.end23 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx28 = getelementptr [52 x %struct.bcm2835_clk_desc], ptr @clk_desc_array, i32 0, i32 %i.093
  %13 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx28, align 4
  %tobool29.not = icmp eq ptr %14, null
  br i1 %tobool29.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %supported = getelementptr [52 x %struct.bcm2835_clk_desc], ptr @clk_desc_array, i32 0, i32 %i.093, i32 1
  %15 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %supported, align 4
  %17 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call, align 4
  %and = and i32 %18, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  br i1 %tobool33.not, label %land.lhs.true.for.inc_crit_edge, label %if.then34

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then34:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %data = getelementptr [52 x %struct.bcm2835_clk_desc], ptr @clk_desc_array, i32 0, i32 %i.093, i32 2
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %call37 = tail call ptr %14(ptr noundef nonnull %call.i, ptr noundef %20) #10
  %arrayidx38 = getelementptr ptr, ptr %hws26, i32 %i.093
  %21 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call37, ptr %arrayidx38, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then34, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.093, 1
  %exitcond.not = icmp eq i32 %inc, 52
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  %arrayidx40 = getelementptr %struct.bcm2835_cprman, ptr %call.i, i32 2, i32 2, i32 0, i32 0, i32 2
  %22 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx40, align 4
  %clk = getelementptr inbounds %struct.clk_hw, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk, align 4
  %call.i87 = tail call ptr @clk_get_parent(ptr noundef %25) #10
  %cmp.i.i = icmp ugt ptr %call.i87, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %bcm2835_mark_sdc_parent_critical.exit, label %if.end.i

if.end.i:                                         ; preds = %for.end
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %call.i87) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %call.i87) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end44, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %call.i87) #10
  br label %cleanup

bcm2835_mark_sdc_parent_critical.exit:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %call.i87 to i32
  br label %cleanup

if.end44:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %of_node, align 8
  %call47 = tail call i32 @of_clk_add_hw_provider(ptr noundef %28, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %onecell) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %bcm2835_mark_sdc_parent_critical.exit, %if.then3.i.i, %if.end.i.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.then13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then13 ], [ %call47, %if.end44 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -19, %if.end16.cleanup_crit_edge ], [ %26, %bcm2835_mark_sdc_parent_critical.exit ], [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_parent_fill(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bcm2835_register_pll(ptr noundef %cprman, ptr noundef %data) #2 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #10
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %real_parent_names = getelementptr inbounds %struct.bcm2835_cprman, ptr %cprman, i32 0, i32 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %2 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %real_parent_names, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %3 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %num_parents, align 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @bcm2835_pll_clk_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.bcm2835_pll_data, ptr %data, i32 0, i32 7
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %or = or i32 %9, 8
  %flags2 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %10 = ptrtoint ptr %flags2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or, ptr %flags2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 20) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %cprman3 = getelementptr inbounds %struct.bcm2835_pll, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %cprman3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %cprman, ptr %cprman3, align 4
  %data4 = getelementptr inbounds %struct.bcm2835_pll, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %data4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %data, ptr %data4, align 8
  %init5 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %init5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %init, ptr %init5, align 8
  %15 = ptrtoint ptr %cprman to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cprman, align 4
  %call7 = call i32 @devm_clk_hw_register(ptr noundef %16, ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.then9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then9 ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #10
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bcm2835_register_pll_divider(ptr noundef %cprman, ptr noundef %data) #2 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #10
  %fixed_divider = getelementptr inbounds %struct.bcm2835_pll_divider_data, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %fixed_divider to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fixed_divider, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %cprman to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cprman, align 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %call = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %3, i32 noundef 3264, ptr noundef nonnull @.str.125, ptr noundef %5) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then.if.end3_crit_edge
  %divider_name.0 = phi ptr [ %call, %if.then.if.end3_crit_edge ], [ %7, %if.else ]
  %8 = getelementptr inbounds i8, ptr %init, i32 12
  %9 = call ptr @memset(ptr %8, i32 0, i32 12)
  %source_pll = getelementptr inbounds %struct.bcm2835_pll_divider_data, ptr %data, i32 0, i32 1
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %10 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %source_pll, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %11 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %num_parents, align 4
  %12 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %divider_name.0, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @bcm2835_pll_divider_clk_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.bcm2835_pll_divider_data, ptr %data, i32 0, i32 7
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %or = or i32 %15, 8
  %flags5 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %16 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or, ptr %flags5, align 4
  %17 = ptrtoint ptr %cprman to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cprman, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %18, i32 noundef 36, i32 noundef 3520) #10
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.end3.cleanup_crit_edge, label %if.end10

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end3
  %regs = getelementptr inbounds %struct.bcm2835_cprman, ptr %cprman, i32 0, i32 1
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %a2w_reg = getelementptr inbounds %struct.bcm2835_pll_divider_data, ptr %data, i32 0, i32 3
  %21 = ptrtoint ptr %a2w_reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %a2w_reg, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 %22
  %reg = getelementptr inbounds %struct.clk_divider, ptr %call.i, i32 0, i32 1
  %23 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr, ptr %reg, align 4
  %shift = getelementptr inbounds %struct.clk_divider, ptr %call.i, i32 0, i32 2
  %24 = ptrtoint ptr %shift to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %shift, align 4
  %width = getelementptr inbounds %struct.clk_divider, ptr %call.i, i32 0, i32 3
  %25 = ptrtoint ptr %width to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 8, ptr %width, align 1
  %flags14 = getelementptr inbounds %struct.clk_divider, ptr %call.i, i32 0, i32 4
  %26 = ptrtoint ptr %flags14 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 64, ptr %flags14, align 2
  %regs_lock = getelementptr inbounds %struct.bcm2835_cprman, ptr %cprman, i32 0, i32 2
  %lock = getelementptr inbounds %struct.clk_divider, ptr %call.i, i32 0, i32 6
  %27 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %regs_lock, ptr %lock, align 4
  %init17 = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 2
  %28 = ptrtoint ptr %init17 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %init, ptr %init17, align 4
  %table = getelementptr inbounds %struct.clk_divider, ptr %call.i, i32 0, i32 5
  %29 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %table, align 4
  %cprman19 = getelementptr inbounds %struct.bcm2835_pll_divider, ptr %call.i, i32 0, i32 1
  %30 = ptrtoint ptr %cprman19 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %cprman, ptr %cprman19, align 4
  %data20 = getelementptr inbounds %struct.bcm2835_pll_divider, ptr %call.i, i32 0, i32 2
  %31 = ptrtoint ptr %data20 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %data, ptr %data20, align 4
  %32 = ptrtoint ptr %cprman to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cprman, align 4
  %call24 = call i32 @devm_clk_hw_register(ptr noundef %33, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end28, label %if.then26

if.then26:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %34 = inttoptr i32 %call24 to ptr
  br label %cleanup

if.end28:                                         ; preds = %if.end10
  %35 = ptrtoint ptr %fixed_divider to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fixed_divider, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp30.not = icmp eq i32 %36, 1
  br i1 %cmp30.not, label %if.end28.cleanup_crit_edge, label %if.then31

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %cprman to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cprman, align 4
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data, align 4
  %call35 = call ptr @clk_hw_register_fixed_factor(ptr noundef %38, ptr noundef %40, ptr noundef %divider_name.0, i32 noundef 4, i32 noundef 1, i32 noundef %36) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.end28.cleanup_crit_edge, %if.then26, %if.end3.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %34, %if.then26 ], [ %call35, %if.then31 ], [ null, %if.then.cleanup_crit_edge ], [ null, %if.end3.cleanup_crit_edge ], [ %call.i, %if.end28.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #10
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bcm2835_register_clock(ptr noundef %cprman, ptr noundef %data) #2 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  %parents = alloca [16 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %parents) #10
  %0 = call ptr @memset(ptr %parents, i32 255, i32 64)
  %num_mux_parents = getelementptr inbounds %struct.bcm2835_clock_data, ptr %data, i32 0, i32 2
  %1 = ptrtoint ptr %num_mux_parents to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_mux_parents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp71.not = icmp eq i32 %2, 0
  br i1 %cmp71.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %parents1 = getelementptr inbounds %struct.bcm2835_clock_data, ptr %data, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.072 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %parents1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parents1, align 4
  %arrayidx = getelementptr ptr, ptr %4, i32 %i.072
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr [16 x ptr], ptr %parents, i32 0, i32 %i.072
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %arrayidx2, align 4
  %call = tail call i32 @match_string(ptr noundef nonnull @cprman_parent_names, i32 noundef 7, ptr noundef %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp4 = icmp sgt i32 %call, -1
  br i1 %cmp4, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx5 = getelementptr %struct.bcm2835_cprman, ptr %cprman, i32 0, i32 4, i32 %call
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx5, align 4
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.072, 1
  %11 = ptrtoint ptr %num_mux_parents to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_mux_parents, align 4
  %cmp = icmp ult i32 %inc, %12
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end.loopexit

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %phi.cast = trunc i32 %12 to i8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %.lcssa = phi i8 [ 0, %entry.for.end_crit_edge ], [ %phi.cast, %for.end.loopexit ]
  %13 = getelementptr inbounds i8, ptr %init, i32 4
  %14 = call ptr @memset(ptr %13, i32 0, i32 20)
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %15 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %parents, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %16 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %.lcssa, ptr %num_parents, align 4
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %19 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %init, align 4
  %flags = getelementptr inbounds %struct.bcm2835_clock_data, ptr %data, i32 0, i32 8
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %or = or i32 %21, 8
  %flags9 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %22 = ptrtoint ptr %flags9 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or, ptr %flags9, align 4
  %set_rate_parent = getelementptr inbounds %struct.bcm2835_clock_data, ptr %data, i32 0, i32 3
  %23 = ptrtoint ptr %set_rate_parent to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %set_rate_parent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %for.end.if.end13_crit_edge, label %if.then10

for.end.if.end13_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then10:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %or12 = or i32 %21, 12
  %25 = ptrtoint ptr %flags9 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or12, ptr %flags9, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %for.end.if.end13_crit_edge
  %is_vpu_clock = getelementptr inbounds %struct.bcm2835_clock_data, ptr %data, i32 0, i32 9
  %26 = ptrtoint ptr %is_vpu_clock to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %is_vpu_clock, align 4, !range !258
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool14.not = icmp eq i8 %27, 0
  %ops16 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %ops16 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @bcm2835_vpu_clock_clk_ops, ptr %ops16, align 4
  br label %if.end25

if.else:                                          ; preds = %if.end13
  %29 = ptrtoint ptr %ops16 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @bcm2835_clock_clk_ops, ptr %ops16, align 4
  %30 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags9, align 4
  %or18 = or i32 %31, 3
  store i32 %or18, ptr %flags9, align 4
  %ctl_reg = getelementptr inbounds %struct.bcm2835_clock_data, ptr %data, i32 0, i32 4
  %32 = ptrtoint ptr %ctl_reg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ctl_reg, align 4
  %regs.i = getelementptr inbounds %struct.bcm2835_cprman, ptr %cprman, i32 0, i32 1
  %34 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %35, i32 %33
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !259
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  %37 = and i32 %36, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool20.not = icmp eq i32 %37, 0
  br i1 %tobool20.not, label %if.then21, label %if.else.if.end25_crit_edge

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags9, align 4
  %and23 = and i32 %39, -2049
  store i32 %and23, ptr %flags9, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.else.if.end25_crit_edge, %if.then15
  %40 = ptrtoint ptr %cprman to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cprman, align 4
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %41, i32 noundef 20, i32 noundef 3520) #10
  %tobool27.not = icmp eq ptr %call.i, null
  br i1 %tobool27.not, label %if.end25.cleanup_crit_edge, label %if.end29

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %cprman30 = getelementptr inbounds %struct.bcm2835_clock, ptr %call.i, i32 0, i32 1
  %42 = ptrtoint ptr %cprman30 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %cprman, ptr %cprman30, align 4
  %data31 = getelementptr inbounds %struct.bcm2835_clock, ptr %call.i, i32 0, i32 2
  %43 = ptrtoint ptr %data31 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %data, ptr %data31, align 4
  %init32 = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 2
  %44 = ptrtoint ptr %init32 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %init, ptr %init32, align 4
  %45 = ptrtoint ptr %cprman to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cprman, align 4
  %call35 = call i32 @devm_clk_hw_register(ptr noundef %46, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  %47 = inttoptr i32 %call35 to ptr
  %spec.select = select i1 %tobool36.not, ptr %call.i, ptr %47
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end25.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end25.cleanup_crit_edge ], [ %spec.select, %if.end29 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %parents) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #10
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bcm2835_register_gate(ptr noundef %cprman, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cprman to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cprman, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %parent = getelementptr inbounds %struct.bcm2835_gate_data, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 4
  %regs = getelementptr inbounds %struct.bcm2835_cprman, ptr %cprman, i32 0, i32 1
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %ctl_reg = getelementptr inbounds %struct.bcm2835_gate_data, ptr %data, i32 0, i32 2
  %8 = ptrtoint ptr %ctl_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctl_reg, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %9
  %regs_lock = getelementptr inbounds %struct.bcm2835_cprman, ptr %cprman, i32 0, i32 2
  %call = tail call ptr @__clk_hw_register_gate(ptr noundef %1, ptr noundef null, ptr noundef %3, ptr noundef %5, ptr noundef null, ptr noundef null, i32 noundef 9, ptr noundef %add.ptr, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef %regs_lock) #10
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_pll_on(ptr noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cprman1 = getelementptr inbounds %struct.bcm2835_pll, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cprman1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cprman1, align 4
  %data2 = getelementptr inbounds %struct.bcm2835_pll, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data2, align 4
  %a2w_ctrl_reg = getelementptr inbounds %struct.bcm2835_pll_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %a2w_ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %a2w_ctrl_reg, align 4
  %regs.i = getelementptr inbounds %struct.bcm2835_cprman, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %5
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  %9 = and i32 %8, -347
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  tail call void @arm_heavy_mb() #10
  %10 = or i32 %9, 90
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr.i47 = getelementptr i8, ptr %12, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 %10) #10, !srcloc !262
  %regs_lock = getelementptr inbounds %struct.bcm2835_cprman, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %regs_lock) #10
  %cm_ctrl_reg = getelementptr inbounds %struct.bcm2835_pll_data, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %cm_ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cm_ctrl_reg, align 4
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %16, i32 %14
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #10, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  %18 = and i32 %17, -65627
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  tail call void @arm_heavy_mb() #10
  %19 = or i32 %18, 90
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %add.ptr.i52 = getelementptr i8, ptr %21, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 %19) #10, !srcloc !262
  tail call void @_raw_spin_unlock(ptr noundef %regs_lock) #10
  %call8 = tail call i64 @ktime_get() #10
  %add = add i64 %call8, 100000000
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %add.ptr.i5460 = getelementptr i8, ptr %23, i32 276
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5460) #10, !srcloc !259
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  %lock_mask = getelementptr inbounds %struct.bcm2835_pll_data, ptr %3, i32 0, i32 6
  %26 = ptrtoint ptr %lock_mask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %lock_mask, align 4
  %and1061 = and i32 %27, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1061)
  %tobool.not62 = icmp eq i32 %and1061, 0
  br i1 %tobool.not62, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %do.end18.while.body_crit_edge, %entry.while.body_crit_edge
  %call11 = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call11, i64 %add)
  %cmp3.i.i = icmp sgt i64 %call11, %add
  br i1 %cmp3.i.i, label %do.end, label %do.end18

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %call13 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.112, ptr noundef %call13) #14
  br label %cleanup

do.end18:                                         ; preds = %while.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !263
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !264
  %30 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i, align 4
  %add.ptr.i54 = getelementptr i8, ptr %31, i32 276
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54) #10, !srcloc !259
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  %34 = ptrtoint ptr %lock_mask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %lock_mask, align 4
  %and10 = and i32 %35, %33
  %tobool.not = icmp eq i32 %and10, 0
  br i1 %tobool.not, label %do.end18.while.body_crit_edge, label %do.end18.while.end_crit_edge

do.end18.while.end_crit_edge:                     ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end18.while.body_crit_edge:                    ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %do.end18.while.end_crit_edge, %entry.while.end_crit_edge
  %36 = ptrtoint ptr %a2w_ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %a2w_ctrl_reg, align 4
  %38 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i, align 4
  %add.ptr.i56 = getelementptr i8, ptr %39, i32 %37
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i56) #10, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  tail call void @arm_heavy_mb() #10
  %41 = or i32 %40, 602
  %42 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i, align 4
  %add.ptr.i59 = getelementptr i8, ptr %43, i32 %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %41) #10, !srcloc !262
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end
  %retval.0 = phi i32 [ -110, %do.end ], [ 0, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_pll_off(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cprman1 = getelementptr inbounds %struct.bcm2835_pll, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cprman1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cprman1, align 4
  %data2 = getelementptr inbounds %struct.bcm2835_pll, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data2, align 4
  %regs_lock = getelementptr inbounds %struct.bcm2835_cprman, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %regs_lock) #10
  %cm_ctrl_reg = getelementptr inbounds %struct.bcm2835_pll_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %cm_ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cm_ctrl_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  tail call void @arm_heavy_mb() #10
  %regs.i = getelementptr inbounds %struct.bcm2835_cprman, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 65626) #10, !srcloc !262
  %a2w_ctrl_reg = getelementptr inbounds %struct.bcm2835_pll_data, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %a2w_ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %a2w_ctrl_reg, align 4
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %11, i32 %9
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #10, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  tail call void @arm_heavy_mb() #10
  %13 = or i32 %12, 346
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %15, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %13) #10, !srcloc !262
  tail call void @_raw_spin_unlock(ptr noundef %regs_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_pll_is_on(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cprman1 = getelementptr inbounds %struct.bcm2835_pll, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cprman1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cprman1, align 4
  %data2 = getelementptr inbounds %struct.bcm2835_pll, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data2, align 4
  %a2w_ctrl_reg = getelementptr inbounds %struct.bcm2835_pll_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %a2w_ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %a2w_ctrl_reg, align 4
  %regs.i = getelementptr inbounds %struct.bcm2835_cprman, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %5
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !259
  %9 = shl i32 %8, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  %and = and i32 %9, 131072
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_pll_get_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cprman1 = getelementptr inbounds %struct.bcm2835_pll, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cprman1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cprman1, align 4
  %data2 = getelementptr inbounds %struct.bcm2835_pll, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data2, align 4
  %a2w_ctrl_reg = getelementptr inbounds %struct.bcm2835_pll_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %a2w_ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %a2w_ctrl_reg, align 4
  %regs.i = getelementptr inbounds %struct.bcm2835_cprman, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %5
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %parent_rate)
  %cmp = icmp eq i32 %parent_rate, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #10
  %frac_reg = getelementptr inbounds %struct.bcm2835_pll_data, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %frac_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %frac_reg, align 4
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %add.ptr.i34 = getelementptr i8, ptr %13, i32 %11
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34) #10, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  %15 = and i32 %14, -61696
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %and4 = and i32 %9, 1023
  %and5 = lshr i32 %9, 12
  %shr6 = and i32 %and5, 7
  %ana_reg_base = getelementptr inbounds %struct.bcm2835_pll_data, ptr %3, i32 0, i32 4
  %17 = ptrtoint ptr %ana_reg_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ana_reg_base, align 4
  %add = add i32 %18, 4
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 4
  %add.ptr.i36 = getelementptr i8, ptr %20, i32 %add
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36) #10, !srcloc !259
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  %soc.i = getelementptr inbounds %struct.bcm2835_cprman, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %soc.i, align 4
  %and.i = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.bcm2835_pll_get_prediv_mask.exit_crit_edge

if.end.bcm2835_pll_get_prediv_mask.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %bcm2835_pll_get_prediv_mask.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ana.i = getelementptr inbounds %struct.bcm2835_pll_data, ptr %3, i32 0, i32 8
  %25 = ptrtoint ptr %ana.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ana.i, align 4
  %fb_prediv_mask.i = getelementptr inbounds %struct.bcm2835_pll_ana_bits, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %fb_prediv_mask.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fb_prediv_mask.i, align 4
  br label %bcm2835_pll_get_prediv_mask.exit

bcm2835_pll_get_prediv_mask.exit:                 ; preds = %if.end.i, %if.end.bcm2835_pll_get_prediv_mask.exit_crit_edge
  %retval.0.i = phi i32 [ %28, %if.end.i ], [ 0, %if.end.bcm2835_pll_get_prediv_mask.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr6)
  %cmp.i = icmp eq i32 %shr6, 0
  br i1 %cmp.i, label %bcm2835_pll_get_prediv_mask.exit.cleanup_crit_edge, label %if.end.i37

bcm2835_pll_get_prediv_mask.exit.cleanup_crit_edge: ; preds = %bcm2835_pll_get_prediv_mask.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i37:                                       ; preds = %bcm2835_pll_get_prediv_mask.exit
  %and9 = and i32 %retval.0.i, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool.not = icmp ne i32 %and9, 0
  %mul12 = zext i1 %tobool.not to i32
  %fdiv.0 = shl nuw nsw i32 %16, %mul12
  %ndiv.0 = shl nuw nsw i32 %and4, %mul12
  %conv.i = zext i32 %parent_rate to i64
  %shl.i = shl nuw nsw i32 %ndiv.0, 20
  %add.i = add nuw nsw i32 %shl.i, %fdiv.0
  %conv1.i = zext i32 %add.i to i64
  %mul.i = mul nuw nsw i64 %conv1.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp173.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp173.i, label %if.then177.i, label %if.else183.i, !prof !265

if.then177.i:                                     ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #12
  %conv178.i = trunc i64 %mul.i to i32
  %div181.i = udiv i32 %conv178.i, %shr6
  %29 = lshr i32 %div181.i, 20
  br label %cleanup

if.else183.i:                                     ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #12
  %30 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shr6, i64 %mul.i) #15, !srcloc !266
  %asmresult1.i.i = extractvalue { i64, i64 } %30, 1
  %extract300.i = lshr i64 %asmresult1.i.i, 20
  %extract.t301.i = trunc i64 %extract300.i to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else183.i, %if.then177.i, %bcm2835_pll_get_prediv_mask.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %bcm2835_pll_get_prediv_mask.exit.cleanup_crit_edge ], [ %29, %if.then177.i ], [ %extract.t301.i, %if.else183.i ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_pll_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.bcm2835_pll, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %min_rate = getelementptr inbounds %struct.bcm2835_pll_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %min_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %min_rate, align 4
  %4 = tail call i32 @llvm.umax.i32(i32 %3, i32 %rate)
  %max_rate = getelementptr inbounds %struct.bcm2835_pll_data, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_rate, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %4, i32 %6)
  %8 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %parent_rate, align 4
  %conv.i = zext i32 %7 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %7)
  %cmp168.i = icmp ult i32 %7, 4096
  br i1 %cmp168.i, label %if.then172.i, label %if.else178.i, !prof !265

if.then172.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv173.i = trunc i64 %shl.i to i32
  %div176.i = udiv i32 %conv173.i, %9
  %10 = lshr i32 %div176.i, 20
  br label %bcm2835_pll_choose_ndiv_and_fdiv.exit

if.else178.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %11 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %9, i64 %shl.i) #15, !srcloc !266
  %asmresult1.i.i = extractvalue { i64, i64 } %11, 1
  %extract.t293.i = trunc i64 %asmresult1.i.i to i32
  %extract298.i = lshr i64 %asmresult1.i.i, 20
  %extract.t299.i = trunc i64 %extract298.i to i32
  br label %bcm2835_pll_choose_ndiv_and_fdiv.exit

bcm2835_pll_choose_ndiv_and_fdiv.exit:            ; preds = %if.else178.i, %if.then172.i
  %div.0.off0.i = phi i32 [ %div176.i, %if.then172.i ], [ %extract.t293.i, %if.else178.i ]
  %div.0.off20.i = phi i32 [ %10, %if.then172.i ], [ %extract.t299.i, %if.else178.i ]
  %conv187.i = and i32 %div.0.off0.i, 1048575
  %conv.i17 = zext i32 %9 to i64
  %shl.i18 = shl i32 %div.0.off20.i, 20
  %add.i19 = or i32 %shl.i18, %conv187.i
  %conv1.i = zext i32 %add.i19 to i64
  %mul.i20 = mul nuw i64 %conv1.i, %conv.i17
  %extract.i22 = lshr i64 %mul.i20, 20
  %extract.t.i23 = trunc i64 %extract.i22 to i32
  ret i32 %extract.t.i23
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_pll_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cprman1 = getelementptr inbounds %struct.bcm2835_pll, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cprman1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cprman1, align 4
  %data2 = getelementptr inbounds %struct.bcm2835_pll, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data2, align 4
  %soc.i = getelementptr inbounds %struct.bcm2835_cprman, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %soc.i, align 4
  %and.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.bcm2835_pll_get_prediv_mask.exit_crit_edge

entry.bcm2835_pll_get_prediv_mask.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %bcm2835_pll_get_prediv_mask.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ana.i = getelementptr inbounds %struct.bcm2835_pll_data, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %ana.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ana.i, align 4
  %fb_prediv_mask.i = getelementptr inbounds %struct.bcm2835_pll_ana_bits, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %fb_prediv_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fb_prediv_mask.i, align 4
  br label %bcm2835_pll_get_prediv_mask.exit

bcm2835_pll_get_prediv_mask.exit:                 ; preds = %if.end.i, %entry.bcm2835_pll_get_prediv_mask.exit_crit_edge
  %retval.0.i = phi i32 [ %9, %if.end.i ], [ 0, %entry.bcm2835_pll_get_prediv_mask.exit_crit_edge ]
  %max_fb_rate = getelementptr inbounds %struct.bcm2835_pll_data, ptr %3, i32 0, i32 11
  %10 = ptrtoint ptr %max_fb_rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_fb_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %rate)
  %cmp = icmp ult i32 %11, %rate
  %div98 = zext i1 %cmp to i32
  %rate.addr.0 = lshr i32 %rate, %div98
  %conv.i = zext i32 %rate.addr.0 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %rate.addr.0)
  %cmp168.i = icmp ult i32 %rate.addr.0, 4096
  br i1 %cmp168.i, label %if.then172.i, label %if.else178.i, !prof !265

if.then172.i:                                     ; preds = %bcm2835_pll_get_prediv_mask.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv173.i = trunc i64 %shl.i to i32
  %div176.i = udiv i32 %conv173.i, %parent_rate
  %12 = lshr i32 %div176.i, 20
  br label %bcm2835_pll_choose_ndiv_and_fdiv.exit

if.else178.i:                                     ; preds = %bcm2835_pll_get_prediv_mask.exit
  call void @__sanitizer_cov_trace_pc() #12
  %13 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %parent_rate, i64 %shl.i) #15, !srcloc !266
  %asmresult1.i.i = extractvalue { i64, i64 } %13, 1
  %extract.t293.i = trunc i64 %asmresult1.i.i to i32
  %extract298.i = lshr i64 %asmresult1.i.i, 20
  %extract.t299.i = trunc i64 %extract298.i to i32
  br label %bcm2835_pll_choose_ndiv_and_fdiv.exit

bcm2835_pll_choose_ndiv_and_fdiv.exit:            ; preds = %if.else178.i, %if.then172.i
  %div.0.off0.i = phi i32 [ %div176.i, %if.then172.i ], [ %extract.t293.i, %if.else178.i ]
  %div.0.off20.i = phi i32 [ %12, %if.then172.i ], [ %extract.t299.i, %if.else178.i ]
  %ana_reg_base = getelementptr inbounds %struct.bcm2835_pll_data, ptr %3, i32 0, i32 4
  %regs.i = getelementptr inbounds %struct.bcm2835_cprman, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %ana_reg_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ana_reg_base, align 4
  %add = add i32 %15, 12
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 %add
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !259
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  %20 = ptrtoint ptr %ana_reg_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ana_reg_base, align 4
  %add.1 = add i32 %21, 8
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %23, i32 %add.1
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1) #10, !srcloc !259
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  %26 = ptrtoint ptr %ana_reg_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ana_reg_base, align 4
  %add.2 = add i32 %27, 4
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %29, i32 %add.2
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2) #10, !srcloc !259
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  %32 = ptrtoint ptr %ana_reg_base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ana_reg_base, align 4
  %34 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %35, i32 %33
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3) #10, !srcloc !259
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  %conv187.i = and i32 %div.0.off0.i, 1048575
  %and = and i32 %31, %retval.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %ana6 = getelementptr inbounds %struct.bcm2835_pll_data, ptr %3, i32 0, i32 8
  %38 = ptrtoint ptr %ana6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ana6, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %neg = xor i32 %41, -1
  %and8 = and i32 %37, %neg
  %set0 = getelementptr inbounds %struct.bcm2835_pll_ana_bits, ptr %39, i32 0, i32 1
  %42 = ptrtoint ptr %set0 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %set0, align 4
  %or = or i32 %43, %and8
  %mask1 = getelementptr inbounds %struct.bcm2835_pll_ana_bits, ptr %39, i32 0, i32 2
  %44 = ptrtoint ptr %mask1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mask1, align 4
  %neg12 = xor i32 %45, -1
  %and14 = and i32 %31, %neg12
  %set1 = getelementptr inbounds %struct.bcm2835_pll_ana_bits, ptr %39, i32 0, i32 3
  %46 = ptrtoint ptr %set1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %set1, align 4
  %or17 = or i32 %47, %and14
  %mask3 = getelementptr inbounds %struct.bcm2835_pll_ana_bits, ptr %39, i32 0, i32 4
  %48 = ptrtoint ptr %mask3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mask3, align 4
  %neg19 = xor i32 %49, -1
  %and21 = and i32 %19, %neg19
  %set3 = getelementptr inbounds %struct.bcm2835_pll_ana_bits, ptr %39, i32 0, i32 5
  %50 = ptrtoint ptr %set3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %set3, align 4
  %or24 = or i32 %51, %and21
  %brmerge = select i1 %tobool.not, i1 true, i1 %cmp
  br i1 %brmerge, label %if.else31, label %if.then27

if.then27:                                        ; preds = %bcm2835_pll_choose_ndiv_and_fdiv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %neg28 = xor i32 %retval.0.i, -1
  %and30 = and i32 %or17, %neg28
  br label %if.end40

if.else31:                                        ; preds = %bcm2835_pll_choose_ndiv_and_fdiv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %52 = select i1 %tobool.not, i1 %cmp, i1 false
  %or37 = select i1 %52, i32 %retval.0.i, i32 0
  %spec.select = or i32 %or17, %or37
  %not. = xor i1 %52, true
  br label %if.end40

if.end40:                                         ; preds = %if.else31, %if.then27
  %ana.sroa.7.0 = phi i32 [ %and30, %if.then27 ], [ %spec.select, %if.else31 ]
  %do_ana_setup_first.0.off0 = phi i1 [ true, %if.then27 ], [ %not., %if.else31 ]
  %regs_lock = getelementptr inbounds %struct.bcm2835_cprman, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %regs_lock) #10
  %53 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i, align 4
  %add.ptr.i102 = getelementptr i8, ptr %54, i32 4496
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i102) #10, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  %reference_enable_mask = getelementptr inbounds %struct.bcm2835_pll_data, ptr %3, i32 0, i32 5
  %56 = ptrtoint ptr %reference_enable_mask to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %reference_enable_mask, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  tail call void @arm_heavy_mb() #10
  %58 = or i32 %55, 90
  %59 = call i32 @llvm.bswap.i32(i32 %58)
  %or.i = or i32 %59, %57
  %60 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %61 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs.i, align 4
  %add.ptr.i104 = getelementptr i8, ptr %62, i32 4496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104, i32 %60) #10, !srcloc !262
  tail call void @_raw_spin_unlock(ptr noundef %regs_lock) #10
  br i1 %do_ana_setup_first.0.off0, label %if.then45, label %if.end40.if.end47_crit_edge

if.end40.if.end47_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then45:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %ana_reg_base to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ana_reg_base, align 4
  %add.i105 = add i32 %64, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  tail call void @arm_heavy_mb() #10
  %or.i.i = or i32 %or24, 1509949440
  %65 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #10
  %66 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %67, i32 %add.i105
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %65) #10, !srcloc !262
  %add.1.i = add i32 %64, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  tail call void @arm_heavy_mb() #10
  %or.i.1.i = or i32 %25, 1509949440
  %68 = tail call i32 @llvm.bswap.i32(i32 %or.i.1.i) #10
  %69 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.1.i = getelementptr i8, ptr %70, i32 %add.1.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.i, i32 %68) #10, !srcloc !262
  %add.2.i = add i32 %64, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  tail call void @arm_heavy_mb() #10
  %or.i.2.i = or i32 %ana.sroa.7.0, 1509949440
  %71 = tail call i32 @llvm.bswap.i32(i32 %or.i.2.i) #10
  %72 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.2.i = getelementptr i8, ptr %73, i32 %add.2.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2.i, i32 %71) #10, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  tail call void @arm_heavy_mb() #10
  %or.i.3.i = or i32 %or, 1509949440
  %74 = tail call i32 @llvm.bswap.i32(i32 %or.i.3.i) #10
  %75 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.3.i = getelementptr i8, ptr %76, i32 %64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3.i, i32 %74) #10, !srcloc !262
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end40.if.end47_crit_edge
  %frac_reg = getelementptr inbounds %struct.bcm2835_pll_data, ptr %3, i32 0, i32 3
  %77 = ptrtoint ptr %frac_reg to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %frac_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  tail call void @arm_heavy_mb() #10
  %or.i106 = or i32 %conv187.i, 1509949440
  %79 = tail call i32 @llvm.bswap.i32(i32 %or.i106) #10
  %80 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regs.i, align 4
  %add.ptr.i108 = getelementptr i8, ptr %81, i32 %78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108, i32 %79) #10, !srcloc !262
  %a2w_ctrl_reg = getelementptr inbounds %struct.bcm2835_pll_data, ptr %3, i32 0, i32 2
  %82 = ptrtoint ptr %a2w_ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %a2w_ctrl_reg, align 4
  %84 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs.i, align 4
  %add.ptr.i110 = getelementptr i8, ptr %85, i32 %83
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i110) #10, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  %87 = and i32 %86, 9240575
  %88 = tail call i32 @llvm.bswap.i32(i32 %87)
  %.masked = and i32 %div.0.off20.i, -1509978113
  %89 = ptrtoint ptr %a2w_ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %a2w_ctrl_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  tail call void @arm_heavy_mb() #10
  %and51 = or i32 %.masked, %88
  %or.i111 = or i32 %and51, 1509953536
  %91 = tail call i32 @llvm.bswap.i32(i32 %or.i111) #10
  %92 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs.i, align 4
  %add.ptr.i113 = getelementptr i8, ptr %93, i32 %90
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113, i32 %91) #10, !srcloc !262
  br i1 %do_ana_setup_first.0.off0, label %if.end47.if.end58_crit_edge, label %if.then55

if.end47.if.end58_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then55:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %94 = ptrtoint ptr %ana_reg_base to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ana_reg_base, align 4
  %add.i115 = add i32 %95, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  tail call void @arm_heavy_mb() #10
  %or.i.i117 = or i32 %or24, 1509949440
  %96 = tail call i32 @llvm.bswap.i32(i32 %or.i.i117) #10
  %97 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i118 = getelementptr i8, ptr %98, i32 %add.i115
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i118, i32 %96) #10, !srcloc !262
  %add.1.i119 = add i32 %95, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  tail call void @arm_heavy_mb() #10
  %or.i.1.i121 = or i32 %25, 1509949440
  %99 = tail call i32 @llvm.bswap.i32(i32 %or.i.1.i121) #10
  %100 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.1.i122 = getelementptr i8, ptr %101, i32 %add.1.i119
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.i122, i32 %99) #10, !srcloc !262
  %add.2.i123 = add i32 %95, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  tail call void @arm_heavy_mb() #10
  %or.i.2.i125 = or i32 %ana.sroa.7.0, 1509949440
  %102 = tail call i32 @llvm.bswap.i32(i32 %or.i.2.i125) #10
  %103 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.2.i126 = getelementptr i8, ptr %104, i32 %add.2.i123
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2.i126, i32 %102) #10, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  tail call void @arm_heavy_mb() #10
  %or.i.3.i127 = or i32 %or, 1509949440
  %105 = tail call i32 @llvm.bswap.i32(i32 %or.i.3.i127) #10
  %106 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.3.i128 = getelementptr i8, ptr %107, i32 %95
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3.i128, i32 %105) #10, !srcloc !262
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %if.end47.if.end58_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_pll_debug_init(ptr nocapture noundef readonly %hw, ptr noundef %dentry) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cprman1 = getelementptr inbounds %struct.bcm2835_pll, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cprman1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cprman1, align 4
  %data2 = getelementptr inbounds %struct.bcm2835_pll, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data2, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 56, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %call5.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.117, ptr %call5.i.i, align 4
  %cm_ctrl_reg = getelementptr inbounds %struct.bcm2835_pll_data, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %cm_ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cm_ctrl_reg, align 4
  %offset = getelementptr inbounds %struct.debugfs_reg32, ptr %call5.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %offset, align 4
  %arrayidx4 = getelementptr %struct.debugfs_reg32, ptr %call5.i.i, i32 1
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.118, ptr %arrayidx4, align 4
  %a2w_ctrl_reg = getelementptr inbounds %struct.bcm2835_pll_data, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %a2w_ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %a2w_ctrl_reg, align 4
  %offset7 = getelementptr %struct.debugfs_reg32, ptr %call5.i.i, i32 1, i32 1
  %13 = ptrtoint ptr %offset7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %offset7, align 4
  %arrayidx8 = getelementptr %struct.debugfs_reg32, ptr %call5.i.i, i32 2
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.119, ptr %arrayidx8, align 4
  %frac_reg = getelementptr inbounds %struct.bcm2835_pll_data, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %frac_reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %frac_reg, align 4
  %offset11 = getelementptr %struct.debugfs_reg32, ptr %call5.i.i, i32 2, i32 1
  %17 = ptrtoint ptr %offset11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %offset11, align 4
  %arrayidx12 = getelementptr %struct.debugfs_reg32, ptr %call5.i.i, i32 3
  %18 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.120, ptr %arrayidx12, align 4
  %ana_reg_base = getelementptr inbounds %struct.bcm2835_pll_data, ptr %3, i32 0, i32 4
  %19 = ptrtoint ptr %ana_reg_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ana_reg_base, align 4
  %offset15 = getelementptr %struct.debugfs_reg32, ptr %call5.i.i, i32 3, i32 1
  %21 = ptrtoint ptr %offset15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %offset15, align 4
  %arrayidx16 = getelementptr %struct.debugfs_reg32, ptr %call5.i.i, i32 4
  %22 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.121, ptr %arrayidx16, align 4
  %23 = load i32, ptr %ana_reg_base, align 4
  %add19 = add i32 %23, 4
  %offset21 = getelementptr %struct.debugfs_reg32, ptr %call5.i.i, i32 4, i32 1
  %24 = ptrtoint ptr %offset21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add19, ptr %offset21, align 4
  %arrayidx22 = getelementptr %struct.debugfs_reg32, ptr %call5.i.i, i32 5
  %25 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.122, ptr %arrayidx22, align 4
  %26 = load i32, ptr %ana_reg_base, align 4
  %add25 = add i32 %26, 8
  %offset27 = getelementptr %struct.debugfs_reg32, ptr %call5.i.i, i32 5, i32 1
  %27 = ptrtoint ptr %offset27 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add25, ptr %offset27, align 4
  %arrayidx28 = getelementptr %struct.debugfs_reg32, ptr %call5.i.i, i32 6
  %28 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.123, ptr %arrayidx28, align 4
  %29 = load i32, ptr %ana_reg_base, align 4
  %add31 = add i32 %29, 12
  %offset33 = getelementptr %struct.debugfs_reg32, ptr %call5.i.i, i32 6, i32 1
  %30 = ptrtoint ptr %offset33 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add31, ptr %offset33, align 4
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %32, i32 noundef 16, i32 noundef 3520) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call5.i.i, ptr %call.i.i, align 4
  %nregs2.i = getelementptr inbounds %struct.debugfs_regset32, ptr %call.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %nregs2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 7, ptr %nregs2.i, align 4
  %regs3.i = getelementptr inbounds %struct.bcm2835_cprman, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %regs3.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs3.i, align 4
  %base4.i = getelementptr inbounds %struct.debugfs_regset32, ptr %call.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %base4.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %base4.i, align 4
  tail call void @debugfs_create_regset32(ptr noundef nonnull @.str.124, i16 noundef zeroext 292, ptr noundef %dentry, ptr noundef nonnull %call.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_regset32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_pll_divider_on(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cprman1 = getelementptr inbounds %struct.bcm2835_pll_divider, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cprman1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cprman1, align 4
  %data2 = getelementptr inbounds %struct.bcm2835_pll_divider, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data2, align 4
  %regs_lock = getelementptr inbounds %struct.bcm2835_cprman, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %regs_lock) #10
  %a2w_reg = getelementptr inbounds %struct.bcm2835_pll_divider_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %a2w_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %a2w_reg, align 4
  %regs.i = getelementptr inbounds %struct.bcm2835_cprman, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %5
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  %9 = and i32 %8, -65627
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  tail call void @arm_heavy_mb() #10
  %10 = or i32 %9, 90
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %12, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %10) #10, !srcloc !262
  %cm_reg = getelementptr inbounds %struct.bcm2835_pll_divider_data, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %cm_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cm_reg, align 4
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %16, i32 %14
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #10, !srcloc !259
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  %hold_mask = getelementptr inbounds %struct.bcm2835_pll_divider_data, ptr %3, i32 0, i32 5
  %19 = ptrtoint ptr %hold_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hold_mask, align 4
  %neg = xor i32 %20, -1
  %and7 = and i32 %18, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  tail call void @arm_heavy_mb() #10
  %or.i23 = or i32 %and7, 1509949440
  %21 = tail call i32 @llvm.bswap.i32(i32 %or.i23) #10
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %23, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %21) #10, !srcloc !262
  tail call void @_raw_spin_unlock(ptr noundef %regs_lock) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_pll_divider_off(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cprman1 = getelementptr inbounds %struct.bcm2835_pll_divider, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cprman1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cprman1, align 4
  %data2 = getelementptr inbounds %struct.bcm2835_pll_divider, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data2, align 4
  %regs_lock = getelementptr inbounds %struct.bcm2835_cprman, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %regs_lock) #10
  %cm_reg = getelementptr inbounds %struct.bcm2835_pll_divider_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %cm_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cm_reg, align 4
  %regs.i = getelementptr inbounds %struct.bcm2835_cprman, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %5
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !259
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  %load_mask = getelementptr inbounds %struct.bcm2835_pll_divider_data, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %load_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %load_mask, align 4
  %neg = xor i32 %11, -1
  %and = and i32 %9, %neg
  %hold_mask = getelementptr inbounds %struct.bcm2835_pll_divider_data, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %hold_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hold_mask, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  tail call void @arm_heavy_mb() #10
  %or = or i32 %13, %and
  %or.i = or i32 %or, 1509949440
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %16, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %14) #10, !srcloc !262
  %a2w_reg = getelementptr inbounds %struct.bcm2835_pll_divider_data, ptr %3, i32 0, i32 3
  %17 = ptrtoint ptr %a2w_reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %a2w_reg, align 4
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %20, i32 %18
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23) #10, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  tail call void @arm_heavy_mb() #10
  %22 = or i32 %21, 65626
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %24, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 %22) #10, !srcloc !262
  tail call void @_raw_spin_unlock(ptr noundef %regs_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_pll_divider_is_on(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cprman1 = getelementptr inbounds %struct.bcm2835_pll_divider, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cprman1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cprman1, align 4
  %data2 = getelementptr inbounds %struct.bcm2835_pll_divider, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data2, align 4
  %a2w_reg = getelementptr inbounds %struct.bcm2835_pll_divider_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %a2w_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %a2w_reg, align 4
  %regs.i = getelementptr inbounds %struct.bcm2835_cprman, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %5
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !259
  %9 = lshr i32 %8, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  %and.lobit = and i32 %9, 1
  %10 = xor i32 %and.lobit, 1
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_pll_divider_get_rate(ptr noundef %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_divider_ops, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_divider_ops, i32 0, i32 10), align 4
  %call = tail call i32 %0(ptr noundef %hw, i32 noundef %parent_rate) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_pll_divider_determine_rate(ptr noundef %hw, ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_divider_ops, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_divider_ops, i32 0, i32 12), align 4
  %call = tail call i32 %0(ptr noundef %hw, ptr noundef %req) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_pll_divider_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cprman1 = getelementptr inbounds %struct.bcm2835_pll_divider, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cprman1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cprman1, align 4
  %data2 = getelementptr inbounds %struct.bcm2835_pll_divider, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data2, align 4
  %conv = zext i32 %parent_rate to i64
  %conv3 = zext i32 %rate to i64
  %add = add nsw i64 %conv3, -1
  %sub = add nsw i64 %add, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp173 = icmp ult i64 %sub, 4294967296
  br i1 %cmp173, label %if.then177, label %if.else183, !prof !265

if.then177:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv178 = trunc i64 %sub to i32
  %div181 = udiv i32 %conv178, %rate
  br label %if.end187

if.else183:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %rate, i64 %sub) #15, !srcloc !266
  %asmresult1.i = extractvalue { i64, i64 } %4, 1
  %extract.t338 = trunc i64 %asmresult1.i to i32
  br label %if.end187

if.end187:                                        ; preds = %if.else183, %if.then177
  %_tmp.0.off0 = phi i32 [ %div181, %if.then177 ], [ %extract.t338, %if.else183 ]
  %5 = tail call i32 @llvm.umin.i32(i32 %_tmp.0.off0, i32 256)
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %_tmp.0.off0)
  %cmp198 = icmp ugt i32 %_tmp.0.off0, 255
  %a2w_reg = getelementptr inbounds %struct.bcm2835_pll_divider_data, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %a2w_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %a2w_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  tail call void @arm_heavy_mb() #10
  %.op = or i32 %5, 1509949440
  %or.i = select i1 %cmp198, i32 1509949440, i32 %.op
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %regs.i = getelementptr inbounds %struct.bcm2835_cprman, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #10, !srcloc !262
  %cm_reg = getelementptr inbounds %struct.bcm2835_pll_divider_data, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %cm_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cm_reg, align 4
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr.i308 = getelementptr i8, ptr %14, i32 %12
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i308) #10, !srcloc !259
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  %17 = ptrtoint ptr %cm_reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cm_reg, align 4
  %load_mask = getelementptr inbounds %struct.bcm2835_pll_divider_data, ptr %3, i32 0, i32 4
  %19 = ptrtoint ptr %load_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %load_mask, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  tail call void @arm_heavy_mb() #10
  %or204 = or i32 %16, %20
  %or.i309 = or i32 %or204, 1509949440
  %21 = tail call i32 @llvm.bswap.i32(i32 %or.i309) #10
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %add.ptr.i311 = getelementptr i8, ptr %23, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i311, i32 %21) #10, !srcloc !262
  %24 = ptrtoint ptr %cm_reg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cm_reg, align 4
  %26 = ptrtoint ptr %load_mask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %load_mask, align 4
  %neg207 = xor i32 %27, -1
  %and208 = and i32 %16, %neg207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  tail call void @arm_heavy_mb() #10
  %or.i312 = or i32 %and208, 1509949440
  %28 = tail call i32 @llvm.bswap.i32(i32 %or.i312) #10
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  %add.ptr.i314 = getelementptr i8, ptr %30, i32 %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i314, i32 %28) #10, !srcloc !262
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_pll_divider_debug_init(ptr nocapture noundef readonly %hw, ptr noundef %dentry) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cprman1 = getelementptr inbounds %struct.bcm2835_pll_divider, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cprman1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cprman1, align 4
  %data2 = getelementptr inbounds %struct.bcm2835_pll_divider, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data2, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 56, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %call5.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.126, ptr %call5.i.i, align 4
  %cm_reg = getelementptr inbounds %struct.bcm2835_pll_divider_data, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %cm_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cm_reg, align 4
  %offset = getelementptr inbounds %struct.debugfs_reg32, ptr %call5.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %offset, align 4
  %arrayidx5 = getelementptr %struct.debugfs_reg32, ptr %call5.i.i, i32 1
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.127, ptr %arrayidx5, align 4
  %a2w_reg = getelementptr inbounds %struct.bcm2835_pll_divider_data, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %a2w_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %a2w_reg, align 4
  %offset8 = getelementptr %struct.debugfs_reg32, ptr %call5.i.i, i32 1, i32 1
  %13 = ptrtoint ptr %offset8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %offset8, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %15, i32 noundef 16, i32 noundef 3520) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call5.i.i, ptr %call.i.i, align 4
  %nregs2.i = getelementptr inbounds %struct.debugfs_regset32, ptr %call.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %nregs2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %nregs2.i, align 4
  %regs3.i = getelementptr inbounds %struct.bcm2835_cprman, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %regs3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs3.i, align 4
  %base4.i = getelementptr inbounds %struct.debugfs_regset32, ptr %call.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %base4.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %base4.i, align 4
  tail call void @debugfs_create_regset32(ptr noundef nonnull @.str.124, i16 noundef zeroext 292, ptr noundef %dentry, ptr noundef nonnull %call.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcm2835_vpu_clock_is_on(ptr nocapture noundef readnone %hw) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_clock_get_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cprman1 = getelementptr inbounds %struct.bcm2835_clock, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cprman1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cprman1, align 4
  %data2 = getelementptr inbounds %struct.bcm2835_clock, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data2, align 4
  %int_bits = getelementptr inbounds %struct.bcm2835_clock_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %int_bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %int_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %frac_bits = getelementptr inbounds %struct.bcm2835_clock_data, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %frac_bits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frac_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3 = icmp eq i32 %7, 0
  br i1 %cmp3, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %div_reg = getelementptr inbounds %struct.bcm2835_clock_data, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %div_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %div_reg, align 4
  %regs.i = getelementptr inbounds %struct.bcm2835_cprman, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %9
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !259
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  %14 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data2, align 4
  %int_bits.i = getelementptr inbounds %struct.bcm2835_clock_data, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %int_bits.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %int_bits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i = icmp eq i32 %17, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %frac_bits.i = getelementptr inbounds %struct.bcm2835_clock_data, ptr %15, i32 0, i32 7
  %18 = ptrtoint ptr %frac_bits.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %frac_bits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp2.i = icmp eq i32 %19, 0
  br i1 %cmp2.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %frac_bits3.i = getelementptr inbounds %struct.bcm2835_clock_data, ptr %15, i32 0, i32 7
  %20 = ptrtoint ptr %frac_bits3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %frac_bits3.i, align 4
  %sub.i = sub i32 12, %21
  %shr.i = lshr i32 %13, %sub.i
  %add.i = add i32 %21, %17
  %notmask.i = shl nsw i32 -1, %add.i
  %sub6.i = xor i32 %notmask.i, -1
  %and.i = and i32 %shr.i, %sub6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp7.i = icmp eq i32 %and.i, 0
  br i1 %cmp7.i, label %if.end.i.cleanup_crit_edge, label %if.end9.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i
  %conv.i = zext i32 %parent_rate to i64
  %sh_prom.i = zext i32 %21 to i64
  %shl11.i = shl i64 %conv.i, %sh_prom.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shl11.i)
  %cmp188.i = icmp ult i64 %shl11.i, 4294967296
  br i1 %cmp188.i, label %if.then192.i, label %if.else198.i, !prof !265

if.then192.i:                                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv193.i = trunc i64 %shl11.i to i32
  %div196.i = udiv i32 %conv193.i, %and.i
  br label %cleanup

if.else198.i:                                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %and.i, i64 %shl11.i) #15, !srcloc !266
  %asmresult1.i.i = extractvalue { i64, i64 } %22, 1
  %extract.t321.i = trunc i64 %asmresult1.i.i to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else198.i, %if.then192.i, %if.end.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %parent_rate, %land.lhs.true.cleanup_crit_edge ], [ %parent_rate, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ %div196.i, %if.then192.i ], [ %extract.t321.i, %if.else198.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_clock_determine_rate(ptr noundef %hw, ptr nocapture noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #10
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %entry.bcm2835_clk_is_pllc.exit_crit_edge, label %if.end.i

entry.bcm2835_clk_is_pllc.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %bcm2835_clk_is_pllc.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call ptr @clk_hw_get_name(ptr noundef nonnull %call) #10
  %call1.i = tail call i32 @strncmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(5) @.str.12, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 0
  br label %bcm2835_clk_is_pllc.exit

bcm2835_clk_is_pllc.exit:                         ; preds = %if.end.i, %entry.bcm2835_clk_is_pllc.exit_crit_edge
  %retval.0.i = phi i1 [ %cmp.i, %if.end.i ], [ false, %entry.bcm2835_clk_is_pllc.exit_crit_edge ]
  %call276 = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call276)
  %cmp77.not = icmp eq i32 %call276, 0
  br i1 %cmp77.not, label %bcm2835_clk_is_pllc.exit.cleanup_crit_edge, label %for.body.lr.ph

bcm2835_clk_is_pllc.exit.cleanup_crit_edge:       ; preds = %bcm2835_clk_is_pllc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %bcm2835_clk_is_pllc.exit
  %cprman1.i = getelementptr inbounds %struct.bcm2835_clock, ptr %hw, i32 0, i32 1
  %data2.i = getelementptr inbounds %struct.bcm2835_clock, ptr %hw, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.082 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %best_avgrate.081 = phi i32 [ 0, %for.body.lr.ph ], [ %best_avgrate.1, %for.inc.for.body_crit_edge ]
  %best_prate.080 = phi i32 [ 0, %for.body.lr.ph ], [ %best_prate.1, %for.inc.for.body_crit_edge ]
  %best_rate.079 = phi i32 [ 0, %for.body.lr.ph ], [ %best_rate.1, %for.inc.for.body_crit_edge ]
  %best_parent.078 = phi ptr [ null, %for.body.lr.ph ], [ %best_parent.1, %for.inc.for.body_crit_edge ]
  %call3 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %hw, i32 noundef %i.082) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %bcm2835_clk_is_pllc.exit65

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

bcm2835_clk_is_pllc.exit65:                       ; preds = %for.body
  %call.i60 = tail call ptr @clk_hw_get_name(ptr noundef nonnull %call3) #10
  %call1.i61 = tail call i32 @strncmp(ptr noundef %call.i60, ptr noundef nonnull dereferenceable(5) @.str.12, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i61)
  %cmp.i62 = icmp ne i32 %call1.i61, 0
  %brmerge = select i1 %cmp.i62, i1 true, i1 %retval.0.i
  br i1 %brmerge, label %if.end7, label %bcm2835_clk_is_pllc.exit65.for.inc_crit_edge

bcm2835_clk_is_pllc.exit65.for.inc_crit_edge:     ; preds = %bcm2835_clk_is_pllc.exit65
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end7:                                          ; preds = %bcm2835_clk_is_pllc.exit65
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 4
  %2 = ptrtoint ptr %cprman1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cprman1.i, align 4
  %4 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data2.i, align 4
  %call3.i = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %hw, i32 noundef %i.082) #10
  %shl.i = shl nuw i32 1, %i.082
  %set_rate_parent.i = getelementptr inbounds %struct.bcm2835_clock_data, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %set_rate_parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %set_rate_parent.i, align 4
  %and.i = and i32 %7, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i66 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i66, label %if.then.i, label %if.end16.i

if.then.i:                                        ; preds = %if.end7
  %call4.i = tail call i32 @clk_hw_get_rate(ptr noundef %call3.i) #10
  %8 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data2.i, align 4
  %frac_bits.i.i = getelementptr inbounds %struct.bcm2835_clock_data, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %frac_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %frac_bits.i.i, align 4
  %conv.i.i = zext i32 %call4.i to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %call4.i)
  %cmp177.i.i = icmp ult i32 %call4.i, 1048576
  br i1 %cmp177.i.i, label %if.then181.i.i, label %if.else187.i.i, !prof !265

if.then181.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv182.i.i = trunc i64 %shl.i.i to i32
  %div185.i.i = udiv i32 %conv182.i.i, %1
  br label %if.end191.i.i

if.else187.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %12 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %shl.i.i) #15, !srcloc !266
  %asmresult1.i.i.i = extractvalue { i64, i64 } %12, 1
  %extract.t346.i.i = trunc i64 %asmresult1.i.i.i to i32
  br label %if.end191.i.i

if.end191.i.i:                                    ; preds = %if.else187.i.i, %if.then181.i.i
  %temp.0.off0.i.i = phi i32 [ %div185.i.i, %if.then181.i.i ], [ %extract.t346.i.i, %if.else187.i.i ]
  %is_mash_clock.i.i = getelementptr inbounds %struct.bcm2835_clock_data, ptr %9, i32 0, i32 10
  %13 = ptrtoint ptr %is_mash_clock.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_mash_clock.i.i, align 1, !range !258
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool197.not.i.i = icmp eq i8 %14, 0
  br i1 %tobool197.not.i.i, label %if.else202.i.i, label %if.then198.i.i

if.then198.i.i:                                   ; preds = %if.end191.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %int_bits.i.i = getelementptr inbounds %struct.bcm2835_clock_data, ptr %9, i32 0, i32 6
  %15 = ptrtoint ptr %int_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %int_bits.i.i, align 4
  %notmask.i.i = shl nsw i32 -1, %16
  %sub200.i.i = xor i32 %notmask.i.i, -1
  %shl201.i.i = shl i32 %sub200.i.i, 12
  br label %bcm2835_clock_choose_div.exit.i

if.else202.i.i:                                   ; preds = %if.end191.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub204.i.i = sub i32 12, %11
  %shl205.neg.i.i = shl nsw i32 -1, %sub204.i.i
  %int_bits208.i.i = getelementptr inbounds %struct.bcm2835_clock_data, ptr %9, i32 0, i32 6
  %17 = ptrtoint ptr %int_bits208.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %int_bits208.i.i, align 4
  %sub211.i.i = sub i32 20, %18
  %shr212.i.i = lshr i32 -1, %sub211.i.i
  %and213.i.i = and i32 %shr212.i.i, %shl205.neg.i.i
  br label %bcm2835_clock_choose_div.exit.i

bcm2835_clock_choose_div.exit.i:                  ; preds = %if.else202.i.i, %if.then198.i.i
  %mindiv.0.i.i = phi i32 [ 8192, %if.then198.i.i ], [ 4096, %if.else202.i.i ]
  %maxdiv.0.i.i = phi i32 [ %shl201.i.i, %if.then198.i.i ], [ %and213.i.i, %if.else202.i.i ]
  %sub2.i.i = add i32 %11, 19
  %shr.i.i = lshr i32 -1, %sub2.i.i
  %shr3.i.i = lshr i32 %shr.i.i, 1
  %neg195.i.i = xor i32 %shr3.i.i, -1
  %and196.i.i = and i32 %temp.0.off0.i.i, %neg195.i.i
  %19 = tail call i32 @llvm.umax.i32(i32 %and196.i.i, i32 %mindiv.0.i.i) #10
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 %maxdiv.0.i.i) #10
  %int_bits.i94.i = getelementptr inbounds %struct.bcm2835_clock_data, ptr %9, i32 0, i32 6
  %21 = ptrtoint ptr %int_bits.i94.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %int_bits.i94.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i95.i = icmp eq i32 %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp2.i.i = icmp eq i32 %11, 0
  %or.cond = select i1 %cmp.i95.i, i1 %cmp2.i.i, i1 false
  br i1 %or.cond, label %bcm2835_clock_rate_from_divisor.exit.i.thread, label %if.end.i.i

if.end.i.i:                                       ; preds = %bcm2835_clock_choose_div.exit.i
  %sub.i.i = sub i32 12, %11
  %shr.i97.i = lshr i32 %20, %sub.i.i
  %add.i.i = add i32 %22, %11
  %notmask.i98.i = shl nsw i32 -1, %add.i.i
  %sub6.i.i = xor i32 %notmask.i98.i, -1
  %and.i.i = and i32 %shr.i97.i, %sub6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp7.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp7.i.i, label %if.end.i.i.bcm2835_clock_rate_from_divisor.exit.i_crit_edge, label %if.end9.i.i

if.end.i.i.bcm2835_clock_rate_from_divisor.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bcm2835_clock_rate_from_divisor.exit.i

if.end9.i.i:                                      ; preds = %if.end.i.i
  %sh_prom.i100.i = zext i32 %11 to i64
  %shl11.i.i = shl i64 %conv.i.i, %sh_prom.i100.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shl11.i.i)
  %cmp188.i.i = icmp ult i64 %shl11.i.i, 4294967296
  br i1 %cmp188.i.i, label %if.then192.i.i, label %if.else198.i.i, !prof !265

if.then192.i.i:                                   ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv193.i.i = trunc i64 %shl11.i.i to i32
  %div196.i.i = udiv i32 %conv193.i.i, %and.i.i
  br label %bcm2835_clock_rate_from_divisor.exit.i

if.else198.i.i:                                   ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %and.i.i, i64 %shl11.i.i) #15, !srcloc !266
  %asmresult1.i.i134.i = extractvalue { i64, i64 } %23, 1
  %extract.t321.i.i = trunc i64 %asmresult1.i.i134.i to i32
  br label %bcm2835_clock_rate_from_divisor.exit.i

bcm2835_clock_rate_from_divisor.exit.i:           ; preds = %if.else198.i.i, %if.then192.i.i, %if.end.i.i.bcm2835_clock_rate_from_divisor.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end.i.i.bcm2835_clock_rate_from_divisor.exit.i_crit_edge ], [ %div196.i.i, %if.then192.i.i ], [ %extract.t321.i.i, %if.else198.i.i ]
  %low_jitter.i = getelementptr inbounds %struct.bcm2835_clock_data, ptr %5, i32 0, i32 11
  %24 = ptrtoint ptr %low_jitter.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %low_jitter.i, align 2, !range !258
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool7.not.i = icmp eq i8 %25, 0
  %and8.i = and i32 %20, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  %or.cond73 = select i1 %tobool7.not.i, i1 true, i1 %tobool9.not.i
  br i1 %or.cond73, label %bcm2835_clock_rate_from_divisor.exit.i.bcm2835_clock_choose_div_and_prate.exit_crit_edge, label %if.then10.i

bcm2835_clock_rate_from_divisor.exit.i.bcm2835_clock_choose_div_and_prate.exit_crit_edge: ; preds = %bcm2835_clock_rate_from_divisor.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bcm2835_clock_choose_div_and_prate.exit

bcm2835_clock_rate_from_divisor.exit.i.thread:    ; preds = %bcm2835_clock_choose_div.exit.i
  %low_jitter.i87 = getelementptr inbounds %struct.bcm2835_clock_data, ptr %5, i32 0, i32 11
  %26 = ptrtoint ptr %low_jitter.i87 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %low_jitter.i87, align 2, !range !258
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool7.not.i88 = icmp eq i8 %27, 0
  %and8.i89 = and i32 %20, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i89)
  %tobool9.not.i90 = icmp eq i32 %and8.i89, 0
  %or.cond7391 = select i1 %tobool7.not.i88, i1 true, i1 %tobool9.not.i90
  br i1 %or.cond7391, label %bcm2835_clock_rate_from_divisor.exit.i.thread.bcm2835_clock_choose_div_and_prate.exit_crit_edge, label %bcm2835_clock_rate_from_divisor.exit.i.thread.bcm2835_clock_rate_from_divisor.exit402.i_crit_edge

bcm2835_clock_rate_from_divisor.exit.i.thread.bcm2835_clock_rate_from_divisor.exit402.i_crit_edge: ; preds = %bcm2835_clock_rate_from_divisor.exit.i.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %bcm2835_clock_rate_from_divisor.exit402.i

bcm2835_clock_rate_from_divisor.exit.i.thread.bcm2835_clock_choose_div_and_prate.exit_crit_edge: ; preds = %bcm2835_clock_rate_from_divisor.exit.i.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %bcm2835_clock_choose_div_and_prate.exit

if.then10.i:                                      ; preds = %bcm2835_clock_rate_from_divisor.exit.i
  %and11.i = and i32 %20, -4096
  br i1 %or.cond, label %if.then10.i.bcm2835_clock_rate_from_divisor.exit402.i_crit_edge, label %if.end.i149.i

if.then10.i.bcm2835_clock_rate_from_divisor.exit402.i_crit_edge: ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bcm2835_clock_rate_from_divisor.exit402.i

if.end.i149.i:                                    ; preds = %if.then10.i
  %sub.i142.i = sub i32 12, %11
  %shr.i143.i = lshr i32 %and11.i, %sub.i142.i
  %add.i144.i = add i32 %22, %11
  %notmask.i145.i = shl nsw i32 -1, %add.i144.i
  %sub6.i146.i = xor i32 %notmask.i145.i, -1
  %and.i147.i = and i32 %shr.i143.i, %sub6.i146.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i147.i)
  %cmp7.i148.i = icmp eq i32 %and.i147.i, 0
  br i1 %cmp7.i148.i, label %if.end.i149.i.if.end.i283.i_crit_edge, label %if.end9.i153.i

if.end.i149.i.if.end.i283.i_crit_edge:            ; preds = %if.end.i149.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i283.i

if.end9.i153.i:                                   ; preds = %if.end.i149.i
  %sh_prom.i151.i = zext i32 %11 to i64
  %shl11.i152.i = shl i64 %conv.i.i, %sh_prom.i151.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shl11.i152.i)
  %cmp188.i259.i = icmp ult i64 %shl11.i152.i, 4294967296
  br i1 %cmp188.i259.i, label %if.then192.i263.i, label %if.else198.i266.i, !prof !265

if.then192.i263.i:                                ; preds = %if.end9.i153.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv193.i261.i = trunc i64 %shl11.i152.i to i32
  %div196.i262.i = udiv i32 %conv193.i261.i, %and.i147.i
  br label %if.end.i283.i

if.else198.i266.i:                                ; preds = %if.end9.i153.i
  call void @__sanitizer_cov_trace_pc() #12
  %28 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %and.i147.i, i64 %shl11.i152.i) #15, !srcloc !266
  %asmresult1.i.i264.i = extractvalue { i64, i64 } %28, 1
  %extract.t321.i265.i = trunc i64 %asmresult1.i.i264.i to i32
  br label %if.end.i283.i

if.end.i283.i:                                    ; preds = %if.else198.i266.i, %if.then192.i263.i, %if.end.i149.i.if.end.i283.i_crit_edge
  %retval.0.i267.i = phi i32 [ 0, %if.end.i149.i.if.end.i283.i_crit_edge ], [ %div196.i262.i, %if.then192.i263.i ], [ %extract.t321.i265.i, %if.else198.i266.i ]
  %add.i = add i32 %and11.i, 4096
  %shr.i277.i = lshr i32 %add.i, %sub.i142.i
  %and.i281.i = and i32 %shr.i277.i, %sub6.i146.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i281.i)
  %cmp7.i282.i = icmp eq i32 %and.i281.i, 0
  br i1 %cmp7.i282.i, label %if.end.i283.i.bcm2835_clock_rate_from_divisor.exit402.i_crit_edge, label %if.end9.i287.i

if.end.i283.i.bcm2835_clock_rate_from_divisor.exit402.i_crit_edge: ; preds = %if.end.i283.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bcm2835_clock_rate_from_divisor.exit402.i

if.end9.i287.i:                                   ; preds = %if.end.i283.i
  %sh_prom.i285.i = zext i32 %11 to i64
  %shl11.i286.i = shl i64 %conv.i.i, %sh_prom.i285.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shl11.i286.i)
  %cmp188.i393.i = icmp ult i64 %shl11.i286.i, 4294967296
  br i1 %cmp188.i393.i, label %if.then192.i397.i, label %if.else198.i400.i, !prof !265

if.then192.i397.i:                                ; preds = %if.end9.i287.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv193.i395.i = trunc i64 %shl11.i286.i to i32
  %div196.i396.i = udiv i32 %conv193.i395.i, %and.i281.i
  br label %bcm2835_clock_rate_from_divisor.exit402.i

if.else198.i400.i:                                ; preds = %if.end9.i287.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %and.i281.i, i64 %shl11.i286.i) #15, !srcloc !266
  %asmresult1.i.i398.i = extractvalue { i64, i64 } %29, 1
  %extract.t321.i399.i = trunc i64 %asmresult1.i.i398.i to i32
  br label %bcm2835_clock_rate_from_divisor.exit402.i

bcm2835_clock_rate_from_divisor.exit402.i:        ; preds = %if.else198.i400.i, %if.then192.i397.i, %if.end.i283.i.bcm2835_clock_rate_from_divisor.exit402.i_crit_edge, %if.then10.i.bcm2835_clock_rate_from_divisor.exit402.i_crit_edge, %bcm2835_clock_rate_from_divisor.exit.i.thread.bcm2835_clock_rate_from_divisor.exit402.i_crit_edge
  %retval.0.i.i9295 = phi i32 [ %retval.0.i.i, %if.end.i283.i.bcm2835_clock_rate_from_divisor.exit402.i_crit_edge ], [ %retval.0.i.i, %if.then192.i397.i ], [ %retval.0.i.i, %if.else198.i400.i ], [ %retval.0.i.i, %if.then10.i.bcm2835_clock_rate_from_divisor.exit402.i_crit_edge ], [ %call4.i, %bcm2835_clock_rate_from_divisor.exit.i.thread.bcm2835_clock_rate_from_divisor.exit402.i_crit_edge ]
  %retval.0.i267405.i = phi i32 [ %retval.0.i267.i, %if.end.i283.i.bcm2835_clock_rate_from_divisor.exit402.i_crit_edge ], [ %retval.0.i267.i, %if.then192.i397.i ], [ %retval.0.i267.i, %if.else198.i400.i ], [ %call4.i, %if.then10.i.bcm2835_clock_rate_from_divisor.exit402.i_crit_edge ], [ %call4.i, %bcm2835_clock_rate_from_divisor.exit.i.thread.bcm2835_clock_rate_from_divisor.exit402.i_crit_edge ]
  %retval.0.i401.i = phi i32 [ 0, %if.end.i283.i.bcm2835_clock_rate_from_divisor.exit402.i_crit_edge ], [ %div196.i396.i, %if.then192.i397.i ], [ %extract.t321.i399.i, %if.else198.i400.i ], [ %call4.i, %if.then10.i.bcm2835_clock_rate_from_divisor.exit402.i_crit_edge ], [ %call4.i, %bcm2835_clock_rate_from_divisor.exit.i.thread.bcm2835_clock_rate_from_divisor.exit402.i_crit_edge ]
  %sub.i = sub i32 %retval.0.i.i9295, %retval.0.i401.i
  %sub14.i = sub i32 %retval.0.i267405.i, %retval.0.i.i9295
  %30 = tail call i32 @llvm.umax.i32(i32 %sub.i, i32 %sub14.i) #10
  %sub15.i = sub i32 %retval.0.i.i9295, %30
  br label %bcm2835_clock_choose_div_and_prate.exit

if.end16.i:                                       ; preds = %if.end7
  %frac_bits.i = getelementptr inbounds %struct.bcm2835_clock_data, ptr %5, i32 0, i32 7
  %31 = ptrtoint ptr %frac_bits.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %frac_bits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool17.not.i = icmp eq i32 %32, 0
  br i1 %tobool17.not.i, label %if.end16.i.if.end19.i_crit_edge, label %do.end.i

if.end16.i.if.end19.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i

do.end.i:                                         ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull @.str.128) #14
  br label %if.end19.i

if.end19.i:                                       ; preds = %do.end.i, %if.end16.i.if.end19.i_crit_edge
  %is_mash_clock.i = getelementptr inbounds %struct.bcm2835_clock_data, ptr %5, i32 0, i32 10
  %35 = ptrtoint ptr %is_mash_clock.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %is_mash_clock.i, align 1, !range !258
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool20.not.i = icmp eq i8 %36, 0
  %cond21.i = select i1 %tobool20.not.i, i32 1, i32 2
  %int_bits.i = getelementptr inbounds %struct.bcm2835_clock_data, ptr %5, i32 0, i32 6
  %37 = ptrtoint ptr %int_bits.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %int_bits.i, align 4
  %curdiv.0.highbits410.i = lshr i32 %cond21.i, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %curdiv.0.highbits410.i)
  %cmp24.not.not411.i = icmp eq i32 %curdiv.0.highbits410.i, 0
  br i1 %cmp24.not.not411.i, label %if.end19.i.for.body.i_crit_edge, label %if.end19.i.for.end.i_crit_edge

if.end19.i.for.end.i_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.end19.i.for.body.i_crit_edge:                  ; preds = %if.end19.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end19.i.for.body.i_crit_edge
  %curdiv.0413.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ %cond21.i, %if.end19.i.for.body.i_crit_edge ]
  %best_rate.0412.i = phi i32 [ %best_rate.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end19.i.for.body.i_crit_edge ]
  %mul.i = mul i32 %curdiv.0413.i, %1
  %call25.i = tail call i32 @clk_hw_round_rate(ptr noundef %call3.i, i32 noundef %mul.i) #10
  %div26.i = udiv i32 %call25.i, %curdiv.0413.i
  call void @__sanitizer_cov_trace_cmp4(i32 %curdiv.0413.i, i32 %cond21.i)
  %cmp27.i = icmp eq i32 %curdiv.0413.i, %cond21.i
  br i1 %cmp27.i, label %for.body.i.if.then31.i_crit_edge, label %lor.lhs.false.i

for.body.i.if.then31.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div26.i, i32 %best_rate.0412.i)
  %cmp28.i = icmp ule i32 %div26.i, %best_rate.0412.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div26.i, i32 %1)
  %cmp30.not.i = icmp ugt i32 %div26.i, %1
  %or.cond.i = or i1 %cmp28.i, %cmp30.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i.if.end32.i_crit_edge, label %lor.lhs.false.i.if.then31.i_crit_edge

lor.lhs.false.i.if.then31.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31.i

lor.lhs.false.i.if.end32.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.i

if.then31.i:                                      ; preds = %lor.lhs.false.i.if.then31.i_crit_edge, %for.body.i.if.then31.i_crit_edge
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then31.i, %lor.lhs.false.i.if.end32.i_crit_edge
  %best_rate.1.i = phi i32 [ %div26.i, %if.then31.i ], [ %best_rate.0412.i, %lor.lhs.false.i.if.end32.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %best_rate.1.i, i32 %1)
  %cmp33.i = icmp eq i32 %best_rate.1.i, %1
  br i1 %cmp33.i, label %if.end32.i.for.end.i_crit_edge, label %for.inc.i

if.end32.i.for.end.i_crit_edge:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i:                                        ; preds = %if.end32.i
  %inc.i = add i32 %curdiv.0413.i, 1
  %curdiv.0.highbits.i = lshr i32 %inc.i, %38
  %cmp24.not.not.i = icmp eq i32 %curdiv.0.highbits.i, 0
  br i1 %cmp24.not.not.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end32.i.for.end.i_crit_edge, %if.end19.i.for.end.i_crit_edge
  %curdiv.0.lcssa.i = phi i32 [ %cond21.i, %if.end19.i.for.end.i_crit_edge ], [ %curdiv.0413.i, %if.end32.i.for.end.i_crit_edge ], [ %inc.i, %for.inc.i.for.end.i_crit_edge ]
  %best_rate.2.i = phi i32 [ 0, %if.end19.i.for.end.i_crit_edge ], [ %1, %if.end32.i.for.end.i_crit_edge ], [ %best_rate.1.i, %for.inc.i.for.end.i_crit_edge ]
  %mul37.i = mul i32 %best_rate.2.i, %curdiv.0.lcssa.i
  br label %bcm2835_clock_choose_div_and_prate.exit

bcm2835_clock_choose_div_and_prate.exit:          ; preds = %for.end.i, %bcm2835_clock_rate_from_divisor.exit402.i, %bcm2835_clock_rate_from_divisor.exit.i.thread.bcm2835_clock_choose_div_and_prate.exit_crit_edge, %bcm2835_clock_rate_from_divisor.exit.i.bcm2835_clock_choose_div_and_prate.exit_crit_edge
  %prate.0 = phi i32 [ %call4.i, %bcm2835_clock_rate_from_divisor.exit.i.bcm2835_clock_choose_div_and_prate.exit_crit_edge ], [ %call4.i, %bcm2835_clock_rate_from_divisor.exit402.i ], [ %mul37.i, %for.end.i ], [ %call4.i, %bcm2835_clock_rate_from_divisor.exit.i.thread.bcm2835_clock_choose_div_and_prate.exit_crit_edge ]
  %avgrate.0 = phi i32 [ %retval.0.i.i, %bcm2835_clock_rate_from_divisor.exit.i.bcm2835_clock_choose_div_and_prate.exit_crit_edge ], [ %retval.0.i.i9295, %bcm2835_clock_rate_from_divisor.exit402.i ], [ %best_rate.2.i, %for.end.i ], [ %call4.i, %bcm2835_clock_rate_from_divisor.exit.i.thread.bcm2835_clock_choose_div_and_prate.exit_crit_edge ]
  %retval.0.i67 = phi i32 [ %retval.0.i.i, %bcm2835_clock_rate_from_divisor.exit.i.bcm2835_clock_choose_div_and_prate.exit_crit_edge ], [ %sub15.i, %bcm2835_clock_rate_from_divisor.exit402.i ], [ %best_rate.2.i, %for.end.i ], [ %call4.i, %bcm2835_clock_rate_from_divisor.exit.i.thread.bcm2835_clock_choose_div_and_prate.exit_crit_edge ]
  %39 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %req, align 4
  %sub = sub i32 %40, %retval.0.i67
  %41 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %sub15 = sub i32 %40, %best_rate.079
  %42 = tail call i32 @llvm.abs.i32(i32 %sub15, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %42)
  %cmp23 = icmp slt i32 %41, %42
  br i1 %cmp23, label %if.then24, label %bcm2835_clock_choose_div_and_prate.exit.for.inc_crit_edge

bcm2835_clock_choose_div_and_prate.exit.for.inc_crit_edge: ; preds = %bcm2835_clock_choose_div_and_prate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then24:                                        ; preds = %bcm2835_clock_choose_div_and_prate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %if.then24, %bcm2835_clock_choose_div_and_prate.exit.for.inc_crit_edge, %bcm2835_clk_is_pllc.exit65.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %best_parent.1 = phi ptr [ %call3, %if.then24 ], [ %best_parent.078, %bcm2835_clock_choose_div_and_prate.exit.for.inc_crit_edge ], [ %best_parent.078, %for.body.for.inc_crit_edge ], [ %best_parent.078, %bcm2835_clk_is_pllc.exit65.for.inc_crit_edge ]
  %best_rate.1 = phi i32 [ %retval.0.i67, %if.then24 ], [ %best_rate.079, %bcm2835_clock_choose_div_and_prate.exit.for.inc_crit_edge ], [ %best_rate.079, %for.body.for.inc_crit_edge ], [ %best_rate.079, %bcm2835_clk_is_pllc.exit65.for.inc_crit_edge ]
  %best_prate.1 = phi i32 [ %prate.0, %if.then24 ], [ %best_prate.080, %bcm2835_clock_choose_div_and_prate.exit.for.inc_crit_edge ], [ %best_prate.080, %for.body.for.inc_crit_edge ], [ %best_prate.080, %bcm2835_clk_is_pllc.exit65.for.inc_crit_edge ]
  %best_avgrate.1 = phi i32 [ %avgrate.0, %if.then24 ], [ %best_avgrate.081, %bcm2835_clock_choose_div_and_prate.exit.for.inc_crit_edge ], [ %best_avgrate.081, %for.body.for.inc_crit_edge ], [ %best_avgrate.081, %bcm2835_clk_is_pllc.exit65.for.inc_crit_edge ]
  %inc = add nuw i32 %i.082, 1
  %call2 = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #10
  %cmp = icmp ult i32 %inc, %call2
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool26.not = icmp eq ptr %best_parent.1, null
  br i1 %tobool26.not, label %for.end.cleanup_crit_edge, label %if.end28

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %best_parent_hw = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 4
  %43 = ptrtoint ptr %best_parent_hw to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %best_parent.1, ptr %best_parent_hw, align 4
  %best_parent_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %44 = ptrtoint ptr %best_parent_rate to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %best_prate.1, ptr %best_parent_rate, align 4
  %45 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %best_avgrate.1, ptr %req, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %for.end.cleanup_crit_edge, %bcm2835_clk_is_pllc.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28 ], [ -22, %for.end.cleanup_crit_edge ], [ -22, %bcm2835_clk_is_pllc.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_clock_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cprman1 = getelementptr inbounds %struct.bcm2835_clock, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cprman1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cprman1, align 4
  %data2 = getelementptr inbounds %struct.bcm2835_clock, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data2, align 4
  %4 = and i8 %index, 15
  %ctl_reg = getelementptr inbounds %struct.bcm2835_clock_data, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %ctl_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ctl_reg, align 4
  %conv4 = zext i8 %4 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  tail call void @arm_heavy_mb() #10
  %or.i = or i32 %conv4, 1509949440
  %7 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %regs.i = getelementptr inbounds %struct.bcm2835_cprman, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #10, !srcloc !262
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @bcm2835_clock_get_parent(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cprman1 = getelementptr inbounds %struct.bcm2835_clock, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cprman1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cprman1, align 4
  %data2 = getelementptr inbounds %struct.bcm2835_clock, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data2, align 4
  %ctl_reg = getelementptr inbounds %struct.bcm2835_clock_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ctl_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctl_reg, align 4
  %regs.i = getelementptr inbounds %struct.bcm2835_cprman, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %5
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !259
  %9 = lshr i32 %8, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  %10 = trunc i32 %9 to i8
  %conv = and i8 %10, 15
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_clock_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cprman1 = getelementptr inbounds %struct.bcm2835_clock, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cprman1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cprman1, align 4
  %data2 = getelementptr inbounds %struct.bcm2835_clock, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data2, align 4
  %frac_bits.i = getelementptr inbounds %struct.bcm2835_clock_data, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %frac_bits.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frac_bits.i, align 4
  %conv.i = zext i32 %parent_rate to i64
  %shl.i = shl nuw nsw i64 %conv.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %parent_rate)
  %cmp177.i = icmp ult i32 %parent_rate, 1048576
  br i1 %cmp177.i, label %if.then181.i, label %if.else187.i, !prof !265

if.then181.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv182.i = trunc i64 %shl.i to i32
  %div185.i = udiv i32 %conv182.i, %rate
  br label %if.end191.i

if.else187.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %rate, i64 %shl.i) #15, !srcloc !266
  %asmresult1.i.i = extractvalue { i64, i64 } %6, 1
  %extract.t346.i = trunc i64 %asmresult1.i.i to i32
  br label %if.end191.i

if.end191.i:                                      ; preds = %if.else187.i, %if.then181.i
  %temp.0.off0.i = phi i32 [ %div185.i, %if.then181.i ], [ %extract.t346.i, %if.else187.i ]
  %is_mash_clock.i = getelementptr inbounds %struct.bcm2835_clock_data, ptr %3, i32 0, i32 10
  %7 = ptrtoint ptr %is_mash_clock.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_mash_clock.i, align 1, !range !258
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool197.not.i = icmp eq i8 %8, 0
  br i1 %tobool197.not.i, label %if.else202.i, label %if.then198.i

if.then198.i:                                     ; preds = %if.end191.i
  call void @__sanitizer_cov_trace_pc() #12
  %int_bits.i = getelementptr inbounds %struct.bcm2835_clock_data, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %int_bits.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %int_bits.i, align 4
  %notmask.i = shl nsw i32 -1, %10
  %sub200.i = xor i32 %notmask.i, -1
  %shl201.i = shl i32 %sub200.i, 12
  br label %bcm2835_clock_choose_div.exit

if.else202.i:                                     ; preds = %if.end191.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub204.i = sub i32 12, %5
  %shl205.neg.i = shl nsw i32 -1, %sub204.i
  %int_bits208.i = getelementptr inbounds %struct.bcm2835_clock_data, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %int_bits208.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %int_bits208.i, align 4
  %sub211.i = sub i32 20, %12
  %shr212.i = lshr i32 -1, %sub211.i
  %and213.i = and i32 %shr212.i, %shl205.neg.i
  br label %bcm2835_clock_choose_div.exit

bcm2835_clock_choose_div.exit:                    ; preds = %if.else202.i, %if.then198.i
  %mindiv.0.i = phi i32 [ 8192, %if.then198.i ], [ 4096, %if.else202.i ]
  %maxdiv.0.i = phi i32 [ %shl201.i, %if.then198.i ], [ %and213.i, %if.else202.i ]
  %sub2.i = add i32 %5, 19
  %shr.i = lshr i32 -1, %sub2.i
  %shr3.i = lshr i32 %shr.i, 1
  %neg195.i = xor i32 %shr3.i, -1
  %and196.i = and i32 %temp.0.off0.i, %neg195.i
  %13 = tail call i32 @llvm.umax.i32(i32 %and196.i, i32 %mindiv.0.i) #10
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 %maxdiv.0.i) #10
  %regs_lock = getelementptr inbounds %struct.bcm2835_cprman, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %regs_lock) #10
  %ctl_reg = getelementptr inbounds %struct.bcm2835_clock_data, ptr %3, i32 0, i32 4
  %15 = ptrtoint ptr %ctl_reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ctl_reg, align 4
  %regs.i = getelementptr inbounds %struct.bcm2835_cprman, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 %16
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  %20 = and i32 %19, -131073
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %and5 = and i32 %14, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  %22 = ptrtoint ptr %ctl_reg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ctl_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  tail call void @arm_heavy_mb() #10
  %or = select i1 %tobool.not, i32 1509949440, i32 1509949952
  %or.i = or i32 %or, %21
  %24 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %26, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %24) #10, !srcloc !262
  %div_reg = getelementptr inbounds %struct.bcm2835_clock_data, ptr %3, i32 0, i32 5
  %27 = ptrtoint ptr %div_reg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %div_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  tail call void @arm_heavy_mb() #10
  %or.i20 = or i32 %14, 1509949440
  %29 = tail call i32 @llvm.bswap.i32(i32 %or.i20) #10
  %30 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %31, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %29) #10, !srcloc !262
  tail call void @_raw_spin_unlock(ptr noundef %regs_lock) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_clock_debug_init(ptr nocapture noundef readonly %hw, ptr noundef %dentry) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cprman1 = getelementptr inbounds %struct.bcm2835_clock, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cprman1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cprman1, align 4
  %data2 = getelementptr inbounds %struct.bcm2835_clock, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data2, align 4
  %ctl_reg = getelementptr inbounds %struct.bcm2835_clock_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ctl_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctl_reg, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 16, i32 noundef 3520) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.bcm2835_debugfs_regset.exit_crit_edge, label %if.end.i

entry.bcm2835_debugfs_regset.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %bcm2835_debugfs_regset.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @bcm2835_debugfs_clock_reg32, ptr %call.i.i, align 4
  %nregs2.i = getelementptr inbounds %struct.debugfs_regset32, ptr %call.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %nregs2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %nregs2.i, align 4
  %regs3.i = getelementptr inbounds %struct.bcm2835_cprman, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %regs3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs3.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %5
  %base4.i = getelementptr inbounds %struct.debugfs_regset32, ptr %call.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %base4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr.i, ptr %base4.i, align 4
  tail call void @debugfs_create_regset32(ptr noundef nonnull @.str.124, i16 noundef zeroext 292, ptr noundef %dentry, ptr noundef nonnull %call.i.i) #10
  br label %bcm2835_debugfs_regset.exit

bcm2835_debugfs_regset.exit:                      ; preds = %if.end.i, %entry.bcm2835_debugfs_regset.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_clock_on(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cprman1 = getelementptr inbounds %struct.bcm2835_clock, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cprman1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cprman1, align 4
  %data2 = getelementptr inbounds %struct.bcm2835_clock, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data2, align 4
  %regs_lock = getelementptr inbounds %struct.bcm2835_cprman, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %regs_lock) #10
  %ctl_reg = getelementptr inbounds %struct.bcm2835_clock_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ctl_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctl_reg, align 4
  %regs.i = getelementptr inbounds %struct.bcm2835_cprman, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %5
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  tail call void @arm_heavy_mb() #10
  %9 = or i32 %8, 1342177370
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %11, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %9) #10, !srcloc !262
  tail call void @_raw_spin_unlock(ptr noundef %regs_lock) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_clock_off(ptr noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cprman1 = getelementptr inbounds %struct.bcm2835_clock, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cprman1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cprman1, align 4
  %data2 = getelementptr inbounds %struct.bcm2835_clock, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data2, align 4
  %regs_lock = getelementptr inbounds %struct.bcm2835_cprman, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %regs_lock) #10
  %ctl_reg = getelementptr inbounds %struct.bcm2835_clock_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ctl_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctl_reg, align 4
  %regs.i = getelementptr inbounds %struct.bcm2835_cprman, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %5
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  %9 = and i32 %8, -268435547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  tail call void @arm_heavy_mb() #10
  %10 = or i32 %9, 90
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %12, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %10) #10, !srcloc !262
  tail call void @_raw_spin_unlock(ptr noundef %regs_lock) #10
  %13 = ptrtoint ptr %cprman1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cprman1, align 4
  %15 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data2, align 4
  %call.i = tail call i64 @ktime_get() #10
  %add.i = add i64 %call.i, 100000000
  %ctl_reg.i = getelementptr inbounds %struct.bcm2835_clock_data, ptr %16, i32 0, i32 4
  %regs.i.i = getelementptr inbounds %struct.bcm2835_cprman, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %ctl_reg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ctl_reg.i, align 4
  %19 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %20, i32 %18
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21.i) #10, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %tobool.not22.i = icmp sgt i32 %21, -1
  br i1 %tobool.not22.i, label %entry.bcm2835_clock_wait_busy.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.bcm2835_clock_wait_busy.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %bcm2835_clock_wait_busy.exit

while.body.i:                                     ; preds = %do.end11.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %call4.i = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call4.i, i64 %add.i)
  %cmp3.i.i.i = icmp sgt i64 %call4.i, %add.i
  br i1 %cmp3.i.i.i, label %do.end.i, label %do.end11.i

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %14, align 4
  %call6.i = tail call ptr @clk_hw_get_name(ptr noundef %hw) #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.112, ptr noundef %call6.i) #14
  br label %bcm2835_clock_wait_busy.exit

do.end11.i:                                       ; preds = %while.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !267
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !268
  %24 = ptrtoint ptr %ctl_reg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ctl_reg.i, align 4
  %26 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 %25
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  %tobool.not.i = icmp sgt i32 %28, -1
  br i1 %tobool.not.i, label %do.end11.i.bcm2835_clock_wait_busy.exit_crit_edge, label %do.end11.i.while.body.i_crit_edge

do.end11.i.while.body.i_crit_edge:                ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

do.end11.i.bcm2835_clock_wait_busy.exit_crit_edge: ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bcm2835_clock_wait_busy.exit

bcm2835_clock_wait_busy.exit:                     ; preds = %do.end11.i.bcm2835_clock_wait_busy.exit_crit_edge, %do.end.i, %entry.bcm2835_clock_wait_busy.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_clock_is_on(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cprman1 = getelementptr inbounds %struct.bcm2835_clock, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cprman1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cprman1, align 4
  %data2 = getelementptr inbounds %struct.bcm2835_clock, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data2, align 4
  %ctl_reg = getelementptr inbounds %struct.bcm2835_clock_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ctl_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctl_reg, align 4
  %regs.i = getelementptr inbounds %struct.bcm2835_cprman, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %5
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !259
  %9 = lshr i32 %8, 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  %and.lobit = and i32 %9, 1
  ret i32 %and.lobit
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_gate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 177)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 177)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !143, !144, !145, !146, !147, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !181, !182, !183, !184, !186, !188, !190, !192, !194, !195, !196, !197, !198, !200, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247}
!llvm.module.flags = !{!249, !250, !251, !252, !253, !254, !255, !256}
!llvm.ident = !{!257}

!0 = !{ptr @__initcall__kmod_clk_bcm2835__235_2319_bcm2835_clk_driver_init6, !1, !"__initcall__kmod_clk_bcm2835__235_2319_bcm2835_clk_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 2319, i32 1}
!2 = !{ptr @__UNIQUE_ID_author236, !3, !"__UNIQUE_ID_author236", i1 false, i1 false}
!3 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 2321, i32 1}
!4 = !{ptr @__UNIQUE_ID_description237, !5, !"__UNIQUE_ID_description237", i1 false, i1 false}
!5 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 2322, i32 1}
!6 = !{ptr @__UNIQUE_ID_file238, !7, !"__UNIQUE_ID_file238", i1 false, i1 false}
!7 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 2323, i32 1}
!8 = !{ptr @__UNIQUE_ID_license239, !7, !"__UNIQUE_ID_license239", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 2313, i32 11}
!11 = !{ptr @bcm2835_clk_driver, !12, !"bcm2835_clk_driver", i1 false, i1 false}
!12 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 2311, i32 31}
!13 = !{ptr @bcm2835_clk_probe.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 2253, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 304, i32 2}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 305, i32 2}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 306, i32 2}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 307, i32 2}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 308, i32 2}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 309, i32 2}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 310, i32 2}
!30 = !{ptr @cprman_parent_names, !31, !"cprman_parent_names", i1 false, i1 false}
!31 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 303, i32 26}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1645, i32 20}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1701, i32 20}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1734, i32 20}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1796, i32 20}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1861, i32 20}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1660, i32 24}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1670, i32 23}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1717, i32 23}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1749, i32 25}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1759, i32 25}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1769, i32 25}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1779, i32 23}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1811, i32 24}
!58 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1826, i32 23}
!60 = !{ptr @.str.36, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1876, i32 24}
!62 = !{ptr @.str.38, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1886, i32 23}
!64 = !{ptr @.str.40, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1896, i32 23}
!66 = !{ptr @.str.42, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1924, i32 26}
!68 = !{ptr @.str.44, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1912, i32 24}
!70 = !{ptr @.str.46, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 2140, i32 25}
!72 = !{ptr @.str.48, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1994, i32 24}
!74 = !{ptr @.str.50, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1980, i32 24}
!76 = !{ptr @.str.52, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1959, i32 24}
!78 = !{ptr @.str.54, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1951, i32 25}
!80 = !{ptr @.str.56, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 2150, i32 24}
!82 = !{ptr @.str.58, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 2096, i32 24}
!84 = !{ptr @.str.60, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1972, i32 26}
!86 = !{ptr @.str.62, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1935, i32 26}
!88 = !{ptr @.str.64, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 2047, i32 25}
!90 = !{ptr @.str.66, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 2206, i32 31}
!92 = !{ptr @.str.68, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 2114, i32 24}
!94 = !{ptr @.str.70, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 2104, i32 24}
!96 = !{ptr @.str.72, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1680, i32 24}
!98 = !{ptr @.str.74, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1689, i32 24}
!100 = !{ptr @.str.76, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1836, i32 24}
!102 = !{ptr @.str.78, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1845, i32 24}
!104 = !{ptr @.str.80, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 2006, i32 25}
!106 = !{ptr @.str.82, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 2030, i32 24}
!108 = !{ptr @.str.84, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 2067, i32 24}
!110 = !{ptr @.str.86, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 2076, i32 24}
!112 = !{ptr @.str.88, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 2086, i32 24}
!114 = !{ptr @.str.90, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 2123, i32 25}
!116 = !{ptr @.str.92, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 2132, i32 24}
!118 = !{ptr @.str.94, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1942, i32 24}
!120 = !{ptr @.str.96, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 2037, i32 24}
!122 = !{ptr @.str.98, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 2014, i32 25}
!124 = !{ptr @.str.100, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 2022, i32 25}
!126 = !{ptr @.str.102, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 2165, i32 26}
!128 = !{ptr @.str.104, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 2173, i32 26}
!130 = !{ptr @.str.106, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 2181, i32 26}
!132 = !{ptr @.str.108, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 2189, i32 26}
!134 = !{ptr @.str.110, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 2057, i32 26}
!136 = !{ptr @clk_desc_array, !137, !"clk_desc_array", i1 false, i1 false}
!137 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1635, i32 38}
!138 = !{ptr @bcm2835_pll_clk_ops, !139, !"bcm2835_pll_clk_ops", i1 false, i1 false}
!139 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 777, i32 29}
!140 = !{ptr @.str.112, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 646, i32 4}
!142 = !{ptr @.str.113, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.114, !141, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.115, !141, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.116, !141, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @bcm2835_pll_on._entry, !141, !"_entry", i1 false, i1 false}
!147 = !{ptr @bcm2835_pll_on._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.117, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 759, i32 17}
!150 = !{ptr @.str.118, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 761, i32 17}
!152 = !{ptr @.str.119, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 763, i32 17}
!154 = !{ptr @.str.120, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 765, i32 17}
!156 = !{ptr @.str.121, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 767, i32 17}
!158 = !{ptr @.str.122, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 769, i32 17}
!160 = !{ptr @.str.123, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 771, i32 17}
!162 = !{ptr @.str.124, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 413, i32 26}
!164 = !{ptr @bcm2835_ana_default, !165, !"bcm2835_ana_default", i1 false, i1 false}
!165 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 448, i32 42}
!166 = !{ptr @bcm2835_ana_pllh, !167, !"bcm2835_ana_pllh", i1 false, i1 false}
!167 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 458, i32 42}
!168 = !{ptr @.str.125, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1354, i32 12}
!170 = !{ptr @bcm2835_pll_divider_clk_ops, !171, !"bcm2835_pll_divider_clk_ops", i1 false, i1 false}
!171 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 897, i32 29}
!172 = !{ptr @.str.126, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 889, i32 17}
!174 = !{ptr @.str.127, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 891, i32 17}
!176 = !{ptr @bcm2835_vpu_clock_clk_ops, !177, !"bcm2835_vpu_clock_clk_ops", i1 false, i1 false}
!177 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1299, i32 29}
!178 = !{ptr @.str.128, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1152, i32 3}
!180 = !{ptr @.str.129, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.130, !179, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @bcm2835_clock_choose_div_and_prate._entry, !179, !"_entry", i1 false, i1 false}
!183 = !{ptr @bcm2835_clock_choose_div_and_prate._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.131, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1256, i32 11}
!186 = !{ptr @.str.132, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1260, i32 11}
!188 = !{ptr @bcm2835_debugfs_clock_reg32, !189, !"bcm2835_debugfs_clock_reg32", i1 false, i1 false}
!189 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1254, i32 35}
!190 = !{ptr @bcm2835_clock_clk_ops, !191, !"bcm2835_clock_clk_ops", i1 false, i1 false}
!191 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1278, i32 29}
!192 = !{ptr @.str.133, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1061, i32 3}
!194 = !{ptr @.str.134, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @.str.135, !193, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @bcm2835_clock_on._entry, !193, !"_entry", i1 false, i1 false}
!197 = !{ptr @bcm2835_clock_on._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.136, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 371, i32 4}
!200 = !{ptr @.str.137, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @bcm2835_measure_tcnt_mux._entry, !199, !"_entry", i1 false, i1 false}
!202 = !{ptr @bcm2835_measure_tcnt_mux._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.139, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 382, i32 4}
!205 = !{ptr @bcm2835_measure_tcnt_mux._entry.138, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @bcm2835_measure_tcnt_mux._entry_ptr.140, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.141, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1021, i32 4}
!209 = !{ptr @bcm2835_clock_wait_busy._entry, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @bcm2835_clock_wait_busy._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.142, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1512, i32 2}
!213 = !{ptr @.str.143, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1514, i32 2}
!215 = !{ptr @.str.144, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1515, i32 2}
!217 = !{ptr @bcm2835_clock_osc_parents, !218, !"bcm2835_clock_osc_parents", i1 false, i1 false}
!218 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1511, i32 26}
!219 = !{ptr @bcm2835_clock_per_parents, !220, !"bcm2835_clock_per_parents", i1 false, i1 false}
!220 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1525, i32 26}
!221 = !{ptr @bcm2835_clock_vpu_parents, !222, !"bcm2835_clock_vpu_parents", i1 false, i1 false}
!222 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1569, i32 26}
!223 = !{ptr @.str.145, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1552, i32 2}
!225 = !{ptr @bcm2835_pcm_per_parents, !226, !"bcm2835_pcm_per_parents", i1 false, i1 false}
!226 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1551, i32 26}
!227 = !{ptr @.str.146, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1599, i32 2}
!229 = !{ptr @.str.147, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1601, i32 2}
!231 = !{ptr @.str.148, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1603, i32 2}
!233 = !{ptr @bcm2835_clock_dsi0_parents, !234, !"bcm2835_clock_dsi0_parents", i1 false, i1 false}
!234 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1593, i32 26}
!235 = !{ptr @.str.149, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1612, i32 2}
!237 = !{ptr @.str.150, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1614, i32 2}
!239 = !{ptr @.str.151, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1616, i32 2}
!241 = !{ptr @bcm2835_clock_dsi1_parents, !242, !"bcm2835_clock_dsi1_parents", i1 false, i1 false}
!242 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 1606, i32 26}
!243 = !{ptr @bcm2835_clk_of_match, !244, !"bcm2835_clk_of_match", i1 false, i1 false}
!244 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 2304, i32 34}
!245 = !{ptr @cprman_bcm2835_plat_data, !246, !"cprman_bcm2835_plat_data", i1 false, i1 false}
!246 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 2296, i32 38}
!247 = !{ptr @cprman_bcm2711_plat_data, !248, !"cprman_bcm2711_plat_data", i1 false, i1 false}
!248 = !{!"../drivers/clk/bcm/clk-bcm2835.c", i32 2300, i32 38}
!249 = !{i32 1, !"wchar_size", i32 2}
!250 = !{i32 1, !"min_enum_size", i32 4}
!251 = !{i32 8, !"branch-target-enforcement", i32 0}
!252 = !{i32 8, !"sign-return-address", i32 0}
!253 = !{i32 8, !"sign-return-address-all", i32 0}
!254 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!255 = !{i32 7, !"uwtable", i32 1}
!256 = !{i32 7, !"frame-pointer", i32 2}
!257 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!258 = !{i8 0, i8 2}
!259 = !{i64 5851272}
!260 = !{i64 2153814432}
!261 = !{i64 2153813558}
!262 = !{i64 5850854}
!263 = !{i64 2153857793}
!264 = !{i64 2153857635}
!265 = !{!"branch_weights", i32 2000, i32 1}
!266 = !{i64 2149000969, i64 2149001249, i64 2149001583, i64 2149001917}
!267 = !{i64 2153887101}
!268 = !{i64 2153886943}
