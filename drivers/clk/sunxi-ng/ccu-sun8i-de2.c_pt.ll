; ModuleID = '/llk/IR_all_yes/drivers/clk/sunxi-ng/ccu-sun8i-de2.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu-sun8i-de2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sunxi_ccu_desc = type { ptr, i32, ptr, ptr, i32 }
%struct.ccu_reset_map = type { i16, i32 }
%struct.ccu_gate = type { i32, %struct.ccu_common }
%struct.ccu_common = type { ptr, i16, i16, i32, i32, ptr, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.ccu_div = type { i32, %struct.ccu_div_internal, %struct.ccu_mux_internal, %struct.ccu_common, i32 }
%struct.ccu_div_internal = type { i8, i8, i32, i32, i32, ptr }
%struct.ccu_mux_internal = type { i8, i8, ptr, ptr, i8, ptr, i8 }
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

@__initcall__kmod_sun8i_de2_ccu__170_397_sunxi_de2_clk_driver_init6 = internal global ptr @sunxi_de2_clk_driver_init, section ".initcall6.init", align 4
@sunxi_de2_clk_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sunxi_de2_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sunxi_de2_clk_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sunxi_de2_clk_driver_exit = internal global ptr @sunxi_de2_clk_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_import_ns171 = internal constant [34 x i8] c"sun8i_de2_ccu.import_ns=SUNXI_CCU\00", section ".modinfo", align 1
@__UNIQUE_ID_file172 = internal constant [54 x i8] c"sun8i_de2_ccu.file=drivers/clk/sunxi-ng/sun8i-de2-ccu\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [26 x i8] c"sun8i_de2_ccu.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sunxi-de2-clks\00", [17 x i8] zeroinitializer }, align 32
@sunxi_de2_clk_ids = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a83t-de2-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a83t_de2_clk_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-de2-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_h3_de2_clk_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-r40-de2-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_r40_de2_clk_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-v3s-de2-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_v3s_de2_clk_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a64-de2-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_a64_de2_clk_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h5-de2-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_h5_de2_clk_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h6-de3-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_h5_de2_clk_desc }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@sunxi_de2_clk_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 301, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Couldn't get bus clk: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sunxi_de2_clk_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/clk/sunxi-ng/ccu-sun8i-de2.c\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sunxi_de2_clk_probe._entry_ptr = internal global ptr @sunxi_de2_clk_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mod\00", [28 x i8] zeroinitializer }, align 32
@sunxi_de2_clk_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 309, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Couldn't get mod clk: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@sunxi_de2_clk_probe._entry_ptr.10 = internal global ptr @sunxi_de2_clk_probe._entry.8, section ".printk_index", align 4
@sunxi_de2_clk_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 318, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Couldn't get reset control: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@sunxi_de2_clk_probe._entry_ptr.13 = internal global ptr @sunxi_de2_clk_probe._entry.11, section ".printk_index", align 4
@sunxi_de2_clk_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 325, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't enable bus clk: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@sunxi_de2_clk_probe._entry_ptr.16 = internal global ptr @sunxi_de2_clk_probe._entry.14, section ".printk_index", align 4
@sunxi_de2_clk_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 331, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't enable mod clk: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@sunxi_de2_clk_probe._entry_ptr.19 = internal global ptr @sunxi_de2_clk_probe._entry.17, section ".printk_index", align 4
@sunxi_de2_clk_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 339, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Couldn't deassert reset control: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@sunxi_de2_clk_probe._entry_ptr.22 = internal global ptr @sunxi_de2_clk_probe._entry.20, section ".printk_index", align 4
@sun8i_a83t_de2_clk_desc = internal constant { %struct.sunxi_ccu_desc, [44 x i8] } { %struct.sunxi_ccu_desc { ptr @sun8i_a83t_de2_clks, i32 12, ptr @sun8i_a83t_de2_hw_clks, ptr @sun8i_a83t_de2_resets, i32 4 }, [44 x i8] zeroinitializer }, align 32
@sun8i_h3_de2_clk_desc = internal constant { %struct.sunxi_ccu_desc, [44 x i8] } { %struct.sunxi_ccu_desc { ptr @sun8i_h3_de2_clks, i32 9, ptr @sun8i_h3_de2_hw_clks, ptr @sun8i_h3_de2_resets, i32 3 }, [44 x i8] zeroinitializer }, align 32
@sun8i_r40_de2_clk_desc = internal constant { %struct.sunxi_ccu_desc, [44 x i8] } { %struct.sunxi_ccu_desc { ptr @sun50i_a64_de2_clks, i32 12, ptr @sun50i_a64_de2_hw_clks, ptr @sun8i_a83t_de2_resets, i32 4 }, [44 x i8] zeroinitializer }, align 32
@sun8i_v3s_de2_clk_desc = internal constant { %struct.sunxi_ccu_desc, [44 x i8] } { %struct.sunxi_ccu_desc { ptr @sun8i_v3s_de2_clks, i32 6, ptr @sun8i_v3s_de2_hw_clks, ptr @sun8i_a83t_de2_resets, i32 4 }, [44 x i8] zeroinitializer }, align 32
@sun50i_a64_de2_clk_desc = internal constant { %struct.sunxi_ccu_desc, [44 x i8] } { %struct.sunxi_ccu_desc { ptr @sun50i_a64_de2_clks, i32 12, ptr @sun50i_a64_de2_hw_clks, ptr @sun50i_a64_de2_resets, i32 4 }, [44 x i8] zeroinitializer }, align 32
@sun50i_h5_de2_clk_desc = internal constant { %struct.sunxi_ccu_desc, [44 x i8] } { %struct.sunxi_ccu_desc { ptr @sun8i_h3_de2_clks, i32 9, ptr @sun8i_h3_de2_hw_clks, ptr @sun50i_h5_de2_resets, i32 3 }, [44 x i8] zeroinitializer }, align 32
@sun8i_a83t_de2_clks = internal global { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr getelementptr (i8, ptr @mixer0_clk, i64 4), ptr getelementptr (i8, ptr @mixer1_clk, i64 4), ptr getelementptr (i8, ptr @wb_clk, i64 4), ptr getelementptr (i8, ptr @bus_mixer0_clk, i64 4), ptr getelementptr (i8, ptr @bus_mixer1_clk, i64 4), ptr getelementptr (i8, ptr @bus_wb_clk, i64 4), ptr getelementptr (i8, ptr @mixer0_div_a83_clk, i64 48), ptr getelementptr (i8, ptr @mixer1_div_a83_clk, i64 48), ptr getelementptr (i8, ptr @wb_div_a83_clk, i64 48), ptr getelementptr (i8, ptr @bus_rot_clk, i64 4), ptr getelementptr (i8, ptr @rot_clk, i64 4), ptr getelementptr (i8, ptr @rot_div_a83_clk, i64 48)], [48 x i8] zeroinitializer }, align 32
@sun8i_a83t_de2_resets = internal global { [4 x %struct.ccu_reset_map], [32 x i8] } { [4 x %struct.ccu_reset_map] [%struct.ccu_reset_map { i16 8, i32 1 }, %struct.ccu_reset_map zeroinitializer, %struct.ccu_reset_map { i16 8, i32 4 }, %struct.ccu_reset_map { i16 8, i32 8 }], [32 x i8] zeroinitializer }, align 32
@mixer0_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.25 } } }, [60 x i8] zeroinitializer }, align 32
@mixer1_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 2, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.29 } } }, [60 x i8] zeroinitializer }, align 32
@wb_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 4, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.33 } } }, [60 x i8] zeroinitializer }, align 32
@bus_mixer0_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 4, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.37 } } }, [60 x i8] zeroinitializer }, align 32
@bus_mixer1_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 2, %struct.ccu_common { ptr null, i16 4, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.40 } } }, [60 x i8] zeroinitializer }, align 32
@bus_wb_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 4, %struct.ccu_common { ptr null, i16 4, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.43 } } }, [60 x i8] zeroinitializer }, align 32
@mixer0_div_a83_clk = internal global { %struct.ccu_div, [44 x i8] } { %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 12, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.46 } }, i32 0 }, [44 x i8] zeroinitializer }, align 32
@mixer1_div_a83_clk = internal global { %struct.ccu_div, [44 x i8] } { %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 4, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 12, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.48 } }, i32 0 }, [44 x i8] zeroinitializer }, align 32
@wb_div_a83_clk = internal global { %struct.ccu_div, [44 x i8] } { %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 8, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 12, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.50 } }, i32 0 }, [44 x i8] zeroinitializer }, align 32
@bus_rot_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 8, %struct.ccu_common { ptr null, i16 4, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.53 } } }, [60 x i8] zeroinitializer }, align 32
@rot_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 8, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.57 } } }, [60 x i8] zeroinitializer }, align 32
@rot_div_a83_clk = internal global { %struct.ccu_div, [44 x i8] } { %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 12, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 12, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.59 } }, i32 0 }, [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mixer0\00", [25 x i8] zeroinitializer }, align 32
@ccu_gate_ops = external dso_local constant %struct.clk_ops, align 4
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mixer0-div\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.24], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.23, ptr @ccu_gate_ops, ptr @.compoundliteral, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mixer1\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mixer1-div\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.27], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.26, ptr @ccu_gate_ops, ptr @.compoundliteral.28, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"wb\00", [29 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wb-div\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.31], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.30, ptr @ccu_gate_ops, ptr @.compoundliteral.32, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bus-mixer0\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bus-de\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.35], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.34, ptr @ccu_gate_ops, ptr @.compoundliteral.36, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bus-mixer1\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.35], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.38, ptr @ccu_gate_ops, ptr @.compoundliteral.39, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bus-wb\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.35], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.43 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.41, ptr @ccu_gate_ops, ptr @.compoundliteral.42, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@ccu_div_ops = external dso_local constant %struct.clk_ops, align 4
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll-de\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.45 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.44], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.24, ptr @ccu_div_ops, ptr @.compoundliteral.45, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.47 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.44], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.27, ptr @ccu_div_ops, ptr @.compoundliteral.47, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.49 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.44], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.31, ptr @ccu_div_ops, ptr @.compoundliteral.49, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bus-rot\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.35], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.53 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.51, ptr @ccu_gate_ops, ptr @.compoundliteral.52, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rot\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rot-div\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.56 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.55], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.57 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.54, ptr @ccu_gate_ops, ptr @.compoundliteral.56, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.58 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.44], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.55, ptr @ccu_div_ops, ptr @.compoundliteral.58, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@sun8i_a83t_de2_hw_clks = internal global { { i32, [12 x ptr] }, [44 x i8] } { { i32, [12 x ptr] } { i32 12, [12 x ptr] [ptr getelementptr (i8, ptr @bus_mixer0_clk, i64 24), ptr getelementptr (i8, ptr @bus_mixer1_clk, i64 24), ptr getelementptr (i8, ptr @bus_wb_clk, i64 24), ptr getelementptr (i8, ptr @mixer0_div_a83_clk, i64 68), ptr getelementptr (i8, ptr @mixer1_div_a83_clk, i64 68), ptr getelementptr (i8, ptr @wb_div_a83_clk, i64 68), ptr getelementptr (i8, ptr @mixer0_clk, i64 24), ptr getelementptr (i8, ptr @mixer1_clk, i64 24), ptr getelementptr (i8, ptr @wb_clk, i64 24), ptr getelementptr (i8, ptr @bus_rot_clk, i64 24), ptr getelementptr (i8, ptr @rot_clk, i64 24), ptr getelementptr (i8, ptr @rot_div_a83_clk, i64 68)] }, [44 x i8] zeroinitializer }, align 32
@sun8i_h3_de2_clks = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr getelementptr (i8, ptr @mixer0_clk, i64 4), ptr getelementptr (i8, ptr @mixer1_clk, i64 4), ptr getelementptr (i8, ptr @wb_clk, i64 4), ptr getelementptr (i8, ptr @bus_mixer0_clk, i64 4), ptr getelementptr (i8, ptr @bus_mixer1_clk, i64 4), ptr getelementptr (i8, ptr @bus_wb_clk, i64 4), ptr getelementptr (i8, ptr @mixer0_div_clk, i64 48), ptr getelementptr (i8, ptr @mixer1_div_clk, i64 48), ptr getelementptr (i8, ptr @wb_div_clk, i64 48)], [60 x i8] zeroinitializer }, align 32
@sun8i_h3_de2_resets = internal global { [3 x %struct.ccu_reset_map], [40 x i8] } { [3 x %struct.ccu_reset_map] [%struct.ccu_reset_map { i16 8, i32 1 }, %struct.ccu_reset_map zeroinitializer, %struct.ccu_reset_map { i16 8, i32 4 }], [40 x i8] zeroinitializer }, align 32
@mixer0_div_clk = internal global { %struct.ccu_div, [44 x i8] } { %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 12, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.63 } }, i32 0 }, [44 x i8] zeroinitializer }, align 32
@mixer1_div_clk = internal global { %struct.ccu_div, [44 x i8] } { %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 4, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 12, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.65 } }, i32 0 }, [44 x i8] zeroinitializer }, align 32
@wb_div_clk = internal global { %struct.ccu_div, [44 x i8] } { %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 8, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 12, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.67 } }, i32 0 }, [44 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"de\00", [29 x i8] zeroinitializer }, align 32
@.compoundliteral.62 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.61], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.63 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.24, ptr @ccu_div_ops, ptr @.compoundliteral.62, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.61], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.65 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.27, ptr @ccu_div_ops, ptr @.compoundliteral.64, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.66 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.61], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.67 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.31, ptr @ccu_div_ops, ptr @.compoundliteral.66, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@sun8i_h3_de2_hw_clks = internal global { { i32, [9 x ptr] }, [56 x i8] } { { i32, [9 x ptr] } { i32 9, [9 x ptr] [ptr getelementptr (i8, ptr @bus_mixer0_clk, i64 24), ptr getelementptr (i8, ptr @bus_mixer1_clk, i64 24), ptr getelementptr (i8, ptr @bus_wb_clk, i64 24), ptr getelementptr (i8, ptr @mixer0_div_clk, i64 68), ptr getelementptr (i8, ptr @mixer1_div_clk, i64 68), ptr getelementptr (i8, ptr @wb_div_clk, i64 68), ptr getelementptr (i8, ptr @mixer0_clk, i64 24), ptr getelementptr (i8, ptr @mixer1_clk, i64 24), ptr getelementptr (i8, ptr @wb_clk, i64 24)] }, [56 x i8] zeroinitializer }, align 32
@sun50i_a64_de2_clks = internal global { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr getelementptr (i8, ptr @mixer0_clk, i64 4), ptr getelementptr (i8, ptr @mixer1_clk, i64 4), ptr getelementptr (i8, ptr @wb_clk, i64 4), ptr getelementptr (i8, ptr @bus_mixer0_clk, i64 4), ptr getelementptr (i8, ptr @bus_mixer1_clk, i64 4), ptr getelementptr (i8, ptr @bus_wb_clk, i64 4), ptr getelementptr (i8, ptr @mixer0_div_clk, i64 48), ptr getelementptr (i8, ptr @mixer1_div_clk, i64 48), ptr getelementptr (i8, ptr @wb_div_clk, i64 48), ptr getelementptr (i8, ptr @bus_rot_clk, i64 4), ptr getelementptr (i8, ptr @rot_clk, i64 4), ptr getelementptr (i8, ptr @rot_div_clk, i64 48)], [48 x i8] zeroinitializer }, align 32
@rot_div_clk = internal global { %struct.ccu_div, [44 x i8] } { %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 12, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 12, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.70 } }, i32 0 }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.69 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.61], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.70 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.55, ptr @ccu_div_ops, ptr @.compoundliteral.69, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@sun50i_a64_de2_hw_clks = internal global { { i32, [12 x ptr] }, [44 x i8] } { { i32, [12 x ptr] } { i32 12, [12 x ptr] [ptr getelementptr (i8, ptr @bus_mixer0_clk, i64 24), ptr getelementptr (i8, ptr @bus_mixer1_clk, i64 24), ptr getelementptr (i8, ptr @bus_wb_clk, i64 24), ptr getelementptr (i8, ptr @mixer0_div_clk, i64 68), ptr getelementptr (i8, ptr @mixer1_div_clk, i64 68), ptr getelementptr (i8, ptr @wb_div_clk, i64 68), ptr getelementptr (i8, ptr @mixer0_clk, i64 24), ptr getelementptr (i8, ptr @mixer1_clk, i64 24), ptr getelementptr (i8, ptr @wb_clk, i64 24), ptr getelementptr (i8, ptr @bus_rot_clk, i64 24), ptr getelementptr (i8, ptr @rot_clk, i64 24), ptr getelementptr (i8, ptr @rot_div_clk, i64 68)] }, [44 x i8] zeroinitializer }, align 32
@sun8i_v3s_de2_clks = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr getelementptr (i8, ptr @mixer0_clk, i64 4), ptr getelementptr (i8, ptr @wb_clk, i64 4), ptr getelementptr (i8, ptr @bus_mixer0_clk, i64 4), ptr getelementptr (i8, ptr @bus_wb_clk, i64 4), ptr getelementptr (i8, ptr @mixer0_div_clk, i64 48), ptr getelementptr (i8, ptr @wb_div_clk, i64 48)], [40 x i8] zeroinitializer }, align 32
@sun8i_v3s_de2_hw_clks = internal global { { i32, [9 x ptr] }, [56 x i8] } { { i32, [9 x ptr] } { i32 9, [9 x ptr] [ptr getelementptr (i8, ptr @bus_mixer0_clk, i64 24), ptr null, ptr getelementptr (i8, ptr @bus_wb_clk, i64 24), ptr getelementptr (i8, ptr @mixer0_div_clk, i64 68), ptr null, ptr getelementptr (i8, ptr @wb_div_clk, i64 68), ptr getelementptr (i8, ptr @mixer0_clk, i64 24), ptr null, ptr getelementptr (i8, ptr @wb_clk, i64 24)] }, [56 x i8] zeroinitializer }, align 32
@sun50i_a64_de2_resets = internal global { [4 x %struct.ccu_reset_map], [32 x i8] } { [4 x %struct.ccu_reset_map] [%struct.ccu_reset_map { i16 8, i32 1 }, %struct.ccu_reset_map { i16 8, i32 2 }, %struct.ccu_reset_map { i16 8, i32 4 }, %struct.ccu_reset_map { i16 8, i32 8 }], [32 x i8] zeroinitializer }, align 32
@sun50i_h5_de2_resets = internal global { [3 x %struct.ccu_reset_map], [40 x i8] } { [3 x %struct.ccu_reset_map] [%struct.ccu_reset_map { i16 8, i32 1 }, %struct.ccu_reset_map { i16 8, i32 2 }, %struct.ccu_reset_map { i16 8, i32 4 }], [40 x i8] zeroinitializer }, align 32
@___asan_gen_.73 = private unnamed_addr constant [21 x i8] c"sunxi_de2_clk_driver\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 390, i32 31 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 393, i32 11 }
@___asan_gen_.79 = private unnamed_addr constant [18 x i8] c"sunxi_de2_clk_ids\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 358, i32 34 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 297, i32 37 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 301, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 305, i32 37 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 309, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 317, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 325, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 331, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 338, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [24 x i8] c"sun8i_a83t_de2_clk_desc\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 221, i32 36 }
@___asan_gen_.139 = private unnamed_addr constant [22 x i8] c"sun8i_h3_de2_clk_desc\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 231, i32 36 }
@___asan_gen_.142 = private unnamed_addr constant [23 x i8] c"sun8i_r40_de2_clk_desc\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 241, i32 36 }
@___asan_gen_.145 = private unnamed_addr constant [23 x i8] c"sun8i_v3s_de2_clk_desc\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 251, i32 36 }
@___asan_gen_.148 = private unnamed_addr constant [24 x i8] c"sun50i_a64_de2_clk_desc\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 261, i32 36 }
@___asan_gen_.151 = private unnamed_addr constant [23 x i8] c"sun50i_h5_de2_clk_desc\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 271, i32 36 }
@___asan_gen_.154 = private unnamed_addr constant [20 x i8] c"sun8i_a83t_de2_clks\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 56, i32 27 }
@___asan_gen_.157 = private unnamed_addr constant [22 x i8] c"sun8i_a83t_de2_resets\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 188, i32 29 }
@___asan_gen_.160 = private unnamed_addr constant [11 x i8] c"mixer0_clk\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [11 x i8] c"mixer1_clk\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [7 x i8] c"wb_clk\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [15 x i8] c"bus_mixer0_clk\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [15 x i8] c"bus_mixer1_clk\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [11 x i8] c"bus_wb_clk\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [19 x i8] c"mixer0_div_a83_clk\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [19 x i8] c"mixer1_div_a83_clk\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 49, i32 8 }
@___asan_gen_.184 = private unnamed_addr constant [15 x i8] c"wb_div_a83_clk\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 51, i32 8 }
@___asan_gen_.187 = private unnamed_addr constant [12 x i8] c"bus_rot_clk\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [8 x i8] c"rot_clk\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [16 x i8] c"rot_div_a83_clk\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 53, i32 8 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 29, i32 8 }
@___asan_gen_.202 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 31, i32 8 }
@___asan_gen_.210 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 33, i32 8 }
@___asan_gen_.218 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.219 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 20, i32 8 }
@___asan_gen_.226 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 22, i32 8 }
@___asan_gen_.231 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.232 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 24, i32 8 }
@___asan_gen_.236 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [20 x i8] c".compoundliteral.43\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 47, i32 8 }
@___asan_gen_.241 = private unnamed_addr constant [20 x i8] c".compoundliteral.45\00", align 1
@___asan_gen_.242 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.243 = private unnamed_addr constant [20 x i8] c".compoundliteral.47\00", align 1
@___asan_gen_.244 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.245 = private unnamed_addr constant [20 x i8] c".compoundliteral.49\00", align 1
@___asan_gen_.246 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 26, i32 8 }
@___asan_gen_.250 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.251 = private unnamed_addr constant [20 x i8] c".compoundliteral.53\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 35, i32 8 }
@___asan_gen_.258 = private unnamed_addr constant [20 x i8] c".compoundliteral.56\00", align 1
@___asan_gen_.259 = private unnamed_addr constant [20 x i8] c".compoundliteral.57\00", align 1
@___asan_gen_.260 = private unnamed_addr constant [20 x i8] c".compoundliteral.58\00", align 1
@___asan_gen_.261 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.262 = private unnamed_addr constant [23 x i8] c"sun8i_a83t_de2_hw_clks\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 117, i32 35 }
@___asan_gen_.265 = private unnamed_addr constant [18 x i8] c"sun8i_h3_de2_clks\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 74, i32 27 }
@___asan_gen_.268 = private unnamed_addr constant [20 x i8] c"sun8i_h3_de2_resets\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 198, i32 29 }
@___asan_gen_.271 = private unnamed_addr constant [15 x i8] c"mixer0_div_clk\00", align 1
@___asan_gen_.274 = private unnamed_addr constant [15 x i8] c"mixer1_div_clk\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 40, i32 8 }
@___asan_gen_.277 = private unnamed_addr constant [11 x i8] c"wb_div_clk\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 42, i32 8 }
@___asan_gen_.280 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 38, i32 8 }
@___asan_gen_.283 = private unnamed_addr constant [20 x i8] c".compoundliteral.62\00", align 1
@___asan_gen_.284 = private unnamed_addr constant [20 x i8] c".compoundliteral.63\00", align 1
@___asan_gen_.285 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.286 = private unnamed_addr constant [20 x i8] c".compoundliteral.65\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [20 x i8] c".compoundliteral.66\00", align 1
@___asan_gen_.288 = private unnamed_addr constant [20 x i8] c".compoundliteral.67\00", align 1
@___asan_gen_.289 = private unnamed_addr constant [21 x i8] c"sun8i_h3_de2_hw_clks\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 137, i32 35 }
@___asan_gen_.292 = private unnamed_addr constant [20 x i8] c"sun50i_a64_de2_clks\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 99, i32 27 }
@___asan_gen_.295 = private unnamed_addr constant [12 x i8] c"rot_div_clk\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 44, i32 8 }
@___asan_gen_.298 = private unnamed_addr constant [20 x i8] c".compoundliteral.69\00", align 1
@___asan_gen_.299 = private unnamed_addr constant [20 x i8] c".compoundliteral.70\00", align 1
@___asan_gen_.300 = private unnamed_addr constant [23 x i8] c"sun50i_a64_de2_hw_clks\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 168, i32 35 }
@___asan_gen_.303 = private unnamed_addr constant [19 x i8] c"sun8i_v3s_de2_clks\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 88, i32 27 }
@___asan_gen_.306 = private unnamed_addr constant [22 x i8] c"sun8i_v3s_de2_hw_clks\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 154, i32 35 }
@___asan_gen_.309 = private unnamed_addr constant [22 x i8] c"sun50i_a64_de2_resets\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 208, i32 29 }
@___asan_gen_.312 = private unnamed_addr constant [21 x i8] c"sun50i_h5_de2_resets\00", align 1
@___asan_gen_.313 = private constant [40 x i8] c"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 215, i32 29 }
@llvm.compiler.used = appending global [114 x ptr] [ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_import_ns171, ptr @__UNIQUE_ID_license173, ptr @__exitcall_sunxi_de2_clk_driver_exit, ptr @__initcall__kmod_sun8i_de2_ccu__170_397_sunxi_de2_clk_driver_init6, ptr @sunxi_de2_clk_driver_exit, ptr @sunxi_de2_clk_probe._entry, ptr @sunxi_de2_clk_probe._entry.11, ptr @sunxi_de2_clk_probe._entry.14, ptr @sunxi_de2_clk_probe._entry.17, ptr @sunxi_de2_clk_probe._entry.20, ptr @sunxi_de2_clk_probe._entry.8, ptr @sunxi_de2_clk_probe._entry_ptr, ptr @sunxi_de2_clk_probe._entry_ptr.10, ptr @sunxi_de2_clk_probe._entry_ptr.13, ptr @sunxi_de2_clk_probe._entry_ptr.16, ptr @sunxi_de2_clk_probe._entry_ptr.19, ptr @sunxi_de2_clk_probe._entry_ptr.22, ptr @sunxi_de2_clk_driver, ptr @.str, ptr @sunxi_de2_clk_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @sun8i_a83t_de2_clk_desc, ptr @sun8i_h3_de2_clk_desc, ptr @sun8i_r40_de2_clk_desc, ptr @sun8i_v3s_de2_clk_desc, ptr @sun50i_a64_de2_clk_desc, ptr @sun50i_h5_de2_clk_desc, ptr @sun8i_a83t_de2_clks, ptr @sun8i_a83t_de2_resets, ptr @mixer0_clk, ptr @mixer1_clk, ptr @wb_clk, ptr @bus_mixer0_clk, ptr @bus_mixer1_clk, ptr @bus_wb_clk, ptr @mixer0_div_a83_clk, ptr @mixer1_div_a83_clk, ptr @wb_div_a83_clk, ptr @bus_rot_clk, ptr @rot_clk, ptr @rot_div_a83_clk, ptr @.str.23, ptr @.str.24, ptr @.compoundliteral, ptr @.compoundliteral.25, ptr @.str.26, ptr @.str.27, ptr @.compoundliteral.28, ptr @.compoundliteral.29, ptr @.str.30, ptr @.str.31, ptr @.compoundliteral.32, ptr @.compoundliteral.33, ptr @.str.34, ptr @.str.35, ptr @.compoundliteral.36, ptr @.compoundliteral.37, ptr @.str.38, ptr @.compoundliteral.39, ptr @.compoundliteral.40, ptr @.str.41, ptr @.compoundliteral.42, ptr @.compoundliteral.43, ptr @.str.44, ptr @.compoundliteral.45, ptr @.compoundliteral.46, ptr @.compoundliteral.47, ptr @.compoundliteral.48, ptr @.compoundliteral.49, ptr @.compoundliteral.50, ptr @.str.51, ptr @.compoundliteral.52, ptr @.compoundliteral.53, ptr @.str.54, ptr @.str.55, ptr @.compoundliteral.56, ptr @.compoundliteral.57, ptr @.compoundliteral.58, ptr @.compoundliteral.59, ptr @sun8i_a83t_de2_hw_clks, ptr @sun8i_h3_de2_clks, ptr @sun8i_h3_de2_resets, ptr @mixer0_div_clk, ptr @mixer1_div_clk, ptr @wb_div_clk, ptr @.str.61, ptr @.compoundliteral.62, ptr @.compoundliteral.63, ptr @.compoundliteral.64, ptr @.compoundliteral.65, ptr @.compoundliteral.66, ptr @.compoundliteral.67, ptr @sun8i_h3_de2_hw_clks, ptr @sun50i_a64_de2_clks, ptr @rot_div_clk, ptr @.compoundliteral.69, ptr @.compoundliteral.70, ptr @sun50i_a64_de2_hw_clks, ptr @sun8i_v3s_de2_clks, ptr @sun8i_v3s_de2_hw_clks, ptr @sun50i_a64_de2_resets, ptr @sun50i_h5_de2_resets], section "llvm.metadata"
@0 = internal global [102 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_de2_clk_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_de2_clk_ids to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_de2_clk_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_de2_clk_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_de2_clk_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_de2_clk_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_de2_clk_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_de2_clk_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_a83t_de2_clk_desc to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_h3_de2_clk_desc to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_r40_de2_clk_desc to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_v3s_de2_clk_desc to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_a64_de2_clk_desc to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_h5_de2_clk_desc to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_a83t_de2_clks to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_a83t_de2_resets to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixer0_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixer1_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wb_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_mixer0_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_mixer1_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_wb_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixer0_div_a83_clk to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixer1_div_a83_clk to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wb_div_a83_clk to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_rot_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rot_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rot_div_a83_clk to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_a83t_de2_hw_clks to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_h3_de2_clks to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_h3_de2_resets to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixer0_div_clk to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixer1_div_clk to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wb_div_clk to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_h3_de2_hw_clks to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_a64_de2_clks to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rot_div_clk to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.69 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.70 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_a64_de2_hw_clks to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_v3s_de2_clks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_v3s_de2_hw_clks to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_a64_de2_resets to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_h5_de2_resets to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_de2_clk_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sunxi_de2_clk_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sunxi_de2_clk_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @sunxi_de2_clk_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_de2_clk_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call7 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #4
  %cmp.i116 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116, label %if.then9, label %if.end14

if.then9:                                         ; preds = %if.end5
  %cmp.not = icmp eq ptr %call7, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then9.cleanup_crit_edge, label %do.end

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %call7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %1) #7
  br label %cleanup

if.end14:                                         ; preds = %if.end5
  %call16 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #4
  %cmp.i117 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i117, label %if.then18, label %if.end27

if.then18:                                        ; preds = %if.end14
  %cmp20.not = icmp eq ptr %call16, inttoptr (i32 -517 to ptr)
  br i1 %cmp20.not, label %if.then18.cleanup_crit_edge, label %do.end24

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end24:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %call16 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %2) #7
  br label %cleanup

if.end27:                                         ; preds = %if.end14
  %call.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #4
  %cmp.i118 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i118, label %if.then31, label %if.end40

if.then31:                                        ; preds = %if.end27
  %cmp33.not = icmp eq ptr %call.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp33.not, label %if.then31.cleanup_crit_edge, label %do.end37

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end37:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %call.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %3) #7
  br label %cleanup

if.end40:                                         ; preds = %if.end27
  %call.i119 = tail call i32 @clk_prepare(ptr noundef %call7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool.not.i = icmp eq i32 %call.i119, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end40.do.end46_crit_edge

if.end40.do.end46_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end46

if.end.i:                                         ; preds = %if.end40
  %call1.i = tail call i32 @clk_enable(ptr noundef %call7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end48, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %call7) #4
  br label %do.end46

do.end46:                                         ; preds = %if.then3.i, %if.end40.do.end46_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i119, %if.end40.do.end46_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %retval.0.i.ph) #7
  br label %cleanup

if.end48:                                         ; preds = %if.end.i
  %call.i120 = tail call i32 @clk_prepare(ptr noundef %call16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %tobool.not.i121 = icmp eq i32 %call.i120, 0
  br i1 %tobool.not.i121, label %if.end.i124, label %if.end48.do.end54_crit_edge

if.end48.do.end54_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end54

if.end.i124:                                      ; preds = %if.end48
  %call1.i122 = tail call i32 @clk_enable(ptr noundef %call16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i122)
  %tobool2.not.i123 = icmp eq i32 %call1.i122, 0
  br i1 %tobool2.not.i123, label %if.end56, label %if.then3.i125

if.then3.i125:                                    ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %call16) #4
  br label %do.end54

do.end54:                                         ; preds = %if.then3.i125, %if.end48.do.end54_crit_edge
  %retval.0.i126.ph = phi i32 [ %call1.i122, %if.then3.i125 ], [ %call.i120, %if.end48.do.end54_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %retval.0.i126.ph) #7
  br label %err_disable_bus_clk

if.end56:                                         ; preds = %if.end.i124
  %call57 = tail call i32 @reset_control_deassert(ptr noundef %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end64, label %do.end62

do.end62:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %call57) #7
  br label %err_disable_mod_clk

if.end64:                                         ; preds = %if.end56
  %call66 = tail call i32 @devm_sunxi_ccu_probe(ptr noundef %dev, ptr noundef %call1, ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end64.cleanup_crit_edge, label %err_assert_reset

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

err_assert_reset:                                 ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #6
  %call70 = tail call i32 @reset_control_assert(ptr noundef %call.i) #4
  br label %err_disable_mod_clk

err_disable_mod_clk:                              ; preds = %err_assert_reset, %do.end62
  %ret.0 = phi i32 [ %call57, %do.end62 ], [ %call66, %err_assert_reset ]
  tail call void @clk_disable(ptr noundef %call16) #4
  tail call void @clk_unprepare(ptr noundef %call16) #4
  br label %err_disable_bus_clk

err_disable_bus_clk:                              ; preds = %err_disable_mod_clk, %do.end54
  %ret.1 = phi i32 [ %retval.0.i126.ph, %do.end54 ], [ %ret.0, %err_disable_mod_clk ]
  tail call void @clk_disable(ptr noundef %call7) #4
  tail call void @clk_unprepare(ptr noundef %call7) #4
  br label %cleanup

cleanup:                                          ; preds = %err_disable_bus_clk, %if.end64.cleanup_crit_edge, %do.end46, %do.end37, %if.then31.cleanup_crit_edge, %do.end24, %if.then18.cleanup_crit_edge, %do.end, %if.then9.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.then3 ], [ %retval.0.i.ph, %do.end46 ], [ %ret.1, %err_disable_bus_clk ], [ -22, %entry.cleanup_crit_edge ], [ %1, %do.end ], [ -517, %if.then9.cleanup_crit_edge ], [ %2, %do.end24 ], [ -517, %if.then18.cleanup_crit_edge ], [ %3, %do.end37 ], [ -517, %if.then31.cleanup_crit_edge ], [ 0, %if.end64.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_sunxi_ccu_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !71, !72, !74, !75, !77, !79, !81, !82, !84, !85, !86, !88, !90, !92, !94, !96, !98, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127}
!llvm.module.flags = !{!129, !130, !131, !132, !133, !134, !135, !136}
!llvm.ident = !{!137}

!0 = !{ptr @__initcall__kmod_sun8i_de2_ccu__170_397_sunxi_de2_clk_driver_init6, !1, !"__initcall__kmod_sun8i_de2_ccu__170_397_sunxi_de2_clk_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 397, i32 1}
!2 = !{ptr @__exitcall_sunxi_de2_clk_driver_exit, !1, !"__exitcall_sunxi_de2_clk_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_import_ns171, !4, !"__UNIQUE_ID_import_ns171", i1 false, i1 false}
!4 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 399, i32 1}
!5 = !{ptr @__UNIQUE_ID_file172, !6, !"__UNIQUE_ID_file172", i1 false, i1 false}
!6 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 400, i32 1}
!7 = !{ptr @__UNIQUE_ID_license173, !6, !"__UNIQUE_ID_license173", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 393, i32 11}
!10 = !{ptr @sunxi_de2_clk_driver, !11, !"sunxi_de2_clk_driver", i1 false, i1 false}
!11 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 390, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 297, i32 37}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 301, i32 4}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sunxi_de2_clk_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @sunxi_de2_clk_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 305, i32 37}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 309, i32 4}
!26 = !{ptr @sunxi_de2_clk_probe._entry.8, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @sunxi_de2_clk_probe._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 317, i32 4}
!30 = !{ptr @sunxi_de2_clk_probe._entry.11, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @sunxi_de2_clk_probe._entry_ptr.13, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 325, i32 3}
!34 = !{ptr @sunxi_de2_clk_probe._entry.14, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @sunxi_de2_clk_probe._entry_ptr.16, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 331, i32 3}
!38 = !{ptr @sunxi_de2_clk_probe._entry.17, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @sunxi_de2_clk_probe._entry_ptr.19, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 338, i32 3}
!42 = !{ptr @sunxi_de2_clk_probe._entry.20, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @sunxi_de2_clk_probe._entry_ptr.22, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @sunxi_de2_clk_ids, !45, !"sunxi_de2_clk_ids", i1 false, i1 false}
!45 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 358, i32 34}
!46 = !{ptr @sun8i_a83t_de2_clk_desc, !47, !"sun8i_a83t_de2_clk_desc", i1 false, i1 false}
!47 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 221, i32 36}
!48 = !{ptr @sun8i_a83t_de2_clks, !49, !"sun8i_a83t_de2_clks", i1 false, i1 false}
!49 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 56, i32 27}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 29, i32 8}
!52 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @mixer0_clk, !51, !"mixer0_clk", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 31, i32 8}
!56 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @mixer1_clk, !55, !"mixer1_clk", i1 false, i1 false}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 33, i32 8}
!60 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @wb_clk, !59, !"wb_clk", i1 false, i1 false}
!62 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 20, i32 8}
!64 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @bus_mixer0_clk, !63, !"bus_mixer0_clk", i1 false, i1 false}
!66 = !{ptr @.str.38, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 22, i32 8}
!68 = !{ptr @bus_mixer1_clk, !67, !"bus_mixer1_clk", i1 false, i1 false}
!69 = !{ptr @.str.41, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 24, i32 8}
!71 = !{ptr @bus_wb_clk, !70, !"bus_wb_clk", i1 false, i1 false}
!72 = !{ptr @.str.44, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 47, i32 8}
!74 = !{ptr @mixer0_div_a83_clk, !73, !"mixer0_div_a83_clk", i1 false, i1 false}
!75 = !{ptr @mixer1_div_a83_clk, !76, !"mixer1_div_a83_clk", i1 false, i1 false}
!76 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 49, i32 8}
!77 = !{ptr @wb_div_a83_clk, !78, !"wb_div_a83_clk", i1 false, i1 false}
!78 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 51, i32 8}
!79 = !{ptr @.str.51, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 26, i32 8}
!81 = !{ptr @bus_rot_clk, !80, !"bus_rot_clk", i1 false, i1 false}
!82 = !{ptr @.str.54, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 35, i32 8}
!84 = !{ptr @.str.55, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @rot_clk, !83, !"rot_clk", i1 false, i1 false}
!86 = !{ptr @rot_div_a83_clk, !87, !"rot_div_a83_clk", i1 false, i1 false}
!87 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 53, i32 8}
!88 = !{ptr @sun8i_a83t_de2_hw_clks, !89, !"sun8i_a83t_de2_hw_clks", i1 false, i1 false}
!89 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 117, i32 35}
!90 = !{ptr @sun8i_a83t_de2_resets, !91, !"sun8i_a83t_de2_resets", i1 false, i1 false}
!91 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 188, i32 29}
!92 = !{ptr @sun8i_h3_de2_clk_desc, !93, !"sun8i_h3_de2_clk_desc", i1 false, i1 false}
!93 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 231, i32 36}
!94 = !{ptr @sun8i_h3_de2_clks, !95, !"sun8i_h3_de2_clks", i1 false, i1 false}
!95 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 74, i32 27}
!96 = !{ptr @.str.61, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 38, i32 8}
!98 = !{ptr @mixer0_div_clk, !97, !"mixer0_div_clk", i1 false, i1 false}
!99 = !{ptr @mixer1_div_clk, !100, !"mixer1_div_clk", i1 false, i1 false}
!100 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 40, i32 8}
!101 = !{ptr @wb_div_clk, !102, !"wb_div_clk", i1 false, i1 false}
!102 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 42, i32 8}
!103 = !{ptr @sun8i_h3_de2_hw_clks, !104, !"sun8i_h3_de2_hw_clks", i1 false, i1 false}
!104 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 137, i32 35}
!105 = !{ptr @sun8i_h3_de2_resets, !106, !"sun8i_h3_de2_resets", i1 false, i1 false}
!106 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 198, i32 29}
!107 = !{ptr @sun8i_r40_de2_clk_desc, !108, !"sun8i_r40_de2_clk_desc", i1 false, i1 false}
!108 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 241, i32 36}
!109 = !{ptr @sun50i_a64_de2_clks, !110, !"sun50i_a64_de2_clks", i1 false, i1 false}
!110 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 99, i32 27}
!111 = !{ptr @rot_div_clk, !112, !"rot_div_clk", i1 false, i1 false}
!112 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 44, i32 8}
!113 = !{ptr @sun50i_a64_de2_hw_clks, !114, !"sun50i_a64_de2_hw_clks", i1 false, i1 false}
!114 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 168, i32 35}
!115 = !{ptr @sun8i_v3s_de2_clk_desc, !116, !"sun8i_v3s_de2_clk_desc", i1 false, i1 false}
!116 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 251, i32 36}
!117 = !{ptr @sun8i_v3s_de2_clks, !118, !"sun8i_v3s_de2_clks", i1 false, i1 false}
!118 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 88, i32 27}
!119 = !{ptr @sun8i_v3s_de2_hw_clks, !120, !"sun8i_v3s_de2_hw_clks", i1 false, i1 false}
!120 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 154, i32 35}
!121 = !{ptr @sun50i_a64_de2_clk_desc, !122, !"sun50i_a64_de2_clk_desc", i1 false, i1 false}
!122 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 261, i32 36}
!123 = !{ptr @sun50i_a64_de2_resets, !124, !"sun50i_a64_de2_resets", i1 false, i1 false}
!124 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 208, i32 29}
!125 = !{ptr @sun50i_h5_de2_clk_desc, !126, !"sun50i_h5_de2_clk_desc", i1 false, i1 false}
!126 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 271, i32 36}
!127 = !{ptr @sun50i_h5_de2_resets, !128, !"sun50i_h5_de2_resets", i1 false, i1 false}
!128 = !{!"../drivers/clk/sunxi-ng/ccu-sun8i-de2.c", i32 215, i32 29}
!129 = !{i32 1, !"wchar_size", i32 2}
!130 = !{i32 1, !"min_enum_size", i32 4}
!131 = !{i32 8, !"branch-target-enforcement", i32 0}
!132 = !{i32 8, !"sign-return-address", i32 0}
!133 = !{i32 8, !"sign-return-address-all", i32 0}
!134 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!135 = !{i32 7, !"uwtable", i32 1}
!136 = !{i32 7, !"frame-pointer", i32 2}
!137 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
