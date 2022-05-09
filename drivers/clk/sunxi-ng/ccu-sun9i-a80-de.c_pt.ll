; ModuleID = '/llk/IR_all_yes/drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c"
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

@__initcall__kmod_sun9i_a80_de_ccu__170_273_sun9i_a80_de_clk_driver_init6 = internal global ptr @sun9i_a80_de_clk_driver_init, section ".initcall6.init", align 4
@sun9i_a80_de_clk_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun9i_a80_de_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @sun9i_a80_de_clk_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sun9i_a80_de_clk_driver_exit = internal global ptr @sun9i_a80_de_clk_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_import_ns171 = internal constant [37 x i8] c"sun9i_a80_de_ccu.import_ns=SUNXI_CCU\00", section ".modinfo", align 1
@__UNIQUE_ID_file172 = internal constant [60 x i8] c"sun9i_a80_de_ccu.file=drivers/clk/sunxi-ng/sun9i-a80-de-ccu\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [29 x i8] c"sun9i_a80_de_ccu.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sun9i-a80-de-clks\00", [46 x i8] zeroinitializer }, align 32
@sun9i_a80_de_clk_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-de-clks\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@sun9i_a80_de_clk_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 219, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Couldn't get bus clk: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sun9i_a80_de_clk_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun9i_a80_de_clk_probe._entry_ptr = internal global ptr @sun9i_a80_de_clk_probe._entry, section ".printk_index", align 4
@sun9i_a80_de_clk_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 228, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Couldn't get reset control: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@sun9i_a80_de_clk_probe._entry_ptr.9 = internal global ptr @sun9i_a80_de_clk_probe._entry.7, section ".printk_index", align 4
@sun9i_a80_de_clk_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 235, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't enable bus clk: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@sun9i_a80_de_clk_probe._entry_ptr.12 = internal global ptr @sun9i_a80_de_clk_probe._entry.10, section ".printk_index", align 4
@sun9i_a80_de_clk_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 243, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Couldn't deassert reset control: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@sun9i_a80_de_clk_probe._entry_ptr.15 = internal global ptr @sun9i_a80_de_clk_probe._entry.13, section ".printk_index", align 4
@sun9i_a80_de_clk_desc = internal constant { %struct.sunxi_ccu_desc, [44 x i8] } { %struct.sunxi_ccu_desc { ptr @sun9i_a80_de_clks, i32 37, ptr @sun9i_a80_de_hw_clks, ptr @sun9i_a80_de_resets, i32 11 }, [44 x i8] zeroinitializer }, align 32
@sun9i_a80_de_clks = internal global { [37 x ptr], [44 x i8] } { [37 x ptr] [ptr getelementptr (i8, ptr @fe0_clk, i64 4), ptr getelementptr (i8, ptr @fe1_clk, i64 4), ptr getelementptr (i8, ptr @fe2_clk, i64 4), ptr getelementptr (i8, ptr @iep_deu0_clk, i64 4), ptr getelementptr (i8, ptr @iep_deu1_clk, i64 4), ptr getelementptr (i8, ptr @be0_clk, i64 4), ptr getelementptr (i8, ptr @be1_clk, i64 4), ptr getelementptr (i8, ptr @be2_clk, i64 4), ptr getelementptr (i8, ptr @iep_drc0_clk, i64 4), ptr getelementptr (i8, ptr @iep_drc1_clk, i64 4), ptr getelementptr (i8, ptr @merge_clk, i64 4), ptr getelementptr (i8, ptr @dram_fe0_clk, i64 4), ptr getelementptr (i8, ptr @dram_fe1_clk, i64 4), ptr getelementptr (i8, ptr @dram_fe2_clk, i64 4), ptr getelementptr (i8, ptr @dram_deu0_clk, i64 4), ptr getelementptr (i8, ptr @dram_deu1_clk, i64 4), ptr getelementptr (i8, ptr @dram_be0_clk, i64 4), ptr getelementptr (i8, ptr @dram_be1_clk, i64 4), ptr getelementptr (i8, ptr @dram_be2_clk, i64 4), ptr getelementptr (i8, ptr @dram_drc0_clk, i64 4), ptr getelementptr (i8, ptr @dram_drc1_clk, i64 4), ptr getelementptr (i8, ptr @bus_fe0_clk, i64 4), ptr getelementptr (i8, ptr @bus_fe1_clk, i64 4), ptr getelementptr (i8, ptr @bus_fe2_clk, i64 4), ptr getelementptr (i8, ptr @bus_deu0_clk, i64 4), ptr getelementptr (i8, ptr @bus_deu1_clk, i64 4), ptr getelementptr (i8, ptr @bus_be0_clk, i64 4), ptr getelementptr (i8, ptr @bus_be1_clk, i64 4), ptr getelementptr (i8, ptr @bus_be2_clk, i64 4), ptr getelementptr (i8, ptr @bus_drc0_clk, i64 4), ptr getelementptr (i8, ptr @bus_drc1_clk, i64 4), ptr getelementptr (i8, ptr @fe0_div_clk, i64 48), ptr getelementptr (i8, ptr @fe1_div_clk, i64 48), ptr getelementptr (i8, ptr @fe2_div_clk, i64 48), ptr getelementptr (i8, ptr @be0_div_clk, i64 48), ptr getelementptr (i8, ptr @be1_div_clk, i64 48), ptr getelementptr (i8, ptr @be2_div_clk, i64 48)], [44 x i8] zeroinitializer }, align 32
@sun9i_a80_de_resets = internal global { [11 x %struct.ccu_reset_map], [40 x i8] } { [11 x %struct.ccu_reset_map] [%struct.ccu_reset_map { i16 12, i32 1 }, %struct.ccu_reset_map { i16 12, i32 2 }, %struct.ccu_reset_map { i16 12, i32 4 }, %struct.ccu_reset_map { i16 12, i32 16 }, %struct.ccu_reset_map { i16 12, i32 32 }, %struct.ccu_reset_map { i16 12, i32 256 }, %struct.ccu_reset_map { i16 12, i32 512 }, %struct.ccu_reset_map { i16 12, i32 1024 }, %struct.ccu_reset_map { i16 12, i32 4096 }, %struct.ccu_reset_map { i16 12, i32 8192 }, %struct.ccu_reset_map { i16 12, i32 1048576 }], [40 x i8] zeroinitializer }, align 32
@fe0_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.18 } } }, [60 x i8] zeroinitializer }, align 32
@fe1_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 2, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.22 } } }, [60 x i8] zeroinitializer }, align 32
@fe2_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 4, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.26 } } }, [60 x i8] zeroinitializer }, align 32
@iep_deu0_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 16, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.30 } } }, [60 x i8] zeroinitializer }, align 32
@iep_deu1_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 32, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.33 } } }, [60 x i8] zeroinitializer }, align 32
@be0_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 256, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.37 } } }, [60 x i8] zeroinitializer }, align 32
@be1_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 512, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.41 } } }, [60 x i8] zeroinitializer }, align 32
@be2_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 1024, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.45 } } }, [60 x i8] zeroinitializer }, align 32
@iep_drc0_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 4096, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.48 } } }, [60 x i8] zeroinitializer }, align 32
@iep_drc1_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 8192, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.51 } } }, [60 x i8] zeroinitializer }, align 32
@merge_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 1048576, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.54 } } }, [60 x i8] zeroinitializer }, align 32
@dram_fe0_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 4, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.58 } } }, [60 x i8] zeroinitializer }, align 32
@dram_fe1_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 2, %struct.ccu_common { ptr null, i16 4, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.61 } } }, [60 x i8] zeroinitializer }, align 32
@dram_fe2_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 4, %struct.ccu_common { ptr null, i16 4, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.64 } } }, [60 x i8] zeroinitializer }, align 32
@dram_deu0_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 16, %struct.ccu_common { ptr null, i16 4, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.67 } } }, [60 x i8] zeroinitializer }, align 32
@dram_deu1_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 32, %struct.ccu_common { ptr null, i16 4, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.70 } } }, [60 x i8] zeroinitializer }, align 32
@dram_be0_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 256, %struct.ccu_common { ptr null, i16 4, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.73 } } }, [60 x i8] zeroinitializer }, align 32
@dram_be1_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 512, %struct.ccu_common { ptr null, i16 4, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.76 } } }, [60 x i8] zeroinitializer }, align 32
@dram_be2_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 1024, %struct.ccu_common { ptr null, i16 4, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.79 } } }, [60 x i8] zeroinitializer }, align 32
@dram_drc0_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 4096, %struct.ccu_common { ptr null, i16 4, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.82 } } }, [60 x i8] zeroinitializer }, align 32
@dram_drc1_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 8192, %struct.ccu_common { ptr null, i16 4, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.85 } } }, [60 x i8] zeroinitializer }, align 32
@bus_fe0_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 8, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.89 } } }, [60 x i8] zeroinitializer }, align 32
@bus_fe1_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 2, %struct.ccu_common { ptr null, i16 8, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.92 } } }, [60 x i8] zeroinitializer }, align 32
@bus_fe2_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 4, %struct.ccu_common { ptr null, i16 8, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.95 } } }, [60 x i8] zeroinitializer }, align 32
@bus_deu0_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 16, %struct.ccu_common { ptr null, i16 8, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.98 } } }, [60 x i8] zeroinitializer }, align 32
@bus_deu1_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 32, %struct.ccu_common { ptr null, i16 8, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.101 } } }, [60 x i8] zeroinitializer }, align 32
@bus_be0_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 256, %struct.ccu_common { ptr null, i16 8, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.104 } } }, [60 x i8] zeroinitializer }, align 32
@bus_be1_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 512, %struct.ccu_common { ptr null, i16 8, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.107 } } }, [60 x i8] zeroinitializer }, align 32
@bus_be2_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 1024, %struct.ccu_common { ptr null, i16 8, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.110 } } }, [60 x i8] zeroinitializer }, align 32
@bus_drc0_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 4096, %struct.ccu_common { ptr null, i16 8, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.113 } } }, [60 x i8] zeroinitializer }, align 32
@bus_drc1_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 8192, %struct.ccu_common { ptr null, i16 8, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.116 } } }, [60 x i8] zeroinitializer }, align 32
@fe0_div_clk = internal global { %struct.ccu_div, [44 x i8] } { %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 0, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 32, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.118 } }, i32 0 }, [44 x i8] zeroinitializer }, align 32
@fe1_div_clk = internal global { %struct.ccu_div, [44 x i8] } { %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 4, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 32, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.120 } }, i32 0 }, [44 x i8] zeroinitializer }, align 32
@fe2_div_clk = internal global { %struct.ccu_div, [44 x i8] } { %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 8, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 32, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.122 } }, i32 0 }, [44 x i8] zeroinitializer }, align 32
@be0_div_clk = internal global { %struct.ccu_div, [44 x i8] } { %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 16, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 32, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.124 } }, i32 0 }, [44 x i8] zeroinitializer }, align 32
@be1_div_clk = internal global { %struct.ccu_div, [44 x i8] } { %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 20, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 32, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.126 } }, i32 0 }, [44 x i8] zeroinitializer }, align 32
@be2_div_clk = internal global { %struct.ccu_div, [44 x i8] } { %struct.ccu_div { i32 0, %struct.ccu_div_internal { i8 24, i8 4, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal zeroinitializer, %struct.ccu_common { ptr null, i16 32, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.128 } }, i32 0 }, [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fe0\00", [28 x i8] zeroinitializer }, align 32
@ccu_gate_ops = external dso_local constant %struct.clk_ops, align 4
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fe0-div\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.17], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.16, ptr @ccu_gate_ops, ptr @.compoundliteral, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fe1\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fe1-div\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.20], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.19, ptr @ccu_gate_ops, ptr @.compoundliteral.21, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fe2\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fe2-div\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.24], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.23, ptr @ccu_gate_ops, ptr @.compoundliteral.25, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"iep-deu0\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"de\00", [29 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.28], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.27, ptr @ccu_gate_ops, ptr @.compoundliteral.29, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"iep-deu1\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.28], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.31, ptr @ccu_gate_ops, ptr @.compoundliteral.32, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"be0\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"be0-div\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.35], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.34, ptr @ccu_gate_ops, ptr @.compoundliteral.36, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"be1\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"be1-div\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.39], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.41 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.38, ptr @ccu_gate_ops, ptr @.compoundliteral.40, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"be2\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"be2-div\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.43], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.45 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.42, ptr @ccu_gate_ops, ptr @.compoundliteral.44, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"iep-drc0\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.47 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.28], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.46, ptr @ccu_gate_ops, ptr @.compoundliteral.47, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"iep-drc1\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.28], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.51 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.49, ptr @ccu_gate_ops, ptr @.compoundliteral.50, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"merge\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.53 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.28], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.52, ptr @ccu_gate_ops, ptr @.compoundliteral.53, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dram-fe0\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sdram\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.57 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.56], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.58 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.55, ptr @ccu_gate_ops, ptr @.compoundliteral.57, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dram-fe1\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.60 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.56], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.61 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.59, ptr @ccu_gate_ops, ptr @.compoundliteral.60, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dram-fe2\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.63 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.56], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.62, ptr @ccu_gate_ops, ptr @.compoundliteral.63, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dram-deu0\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.66 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.56], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.67 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.65, ptr @ccu_gate_ops, ptr @.compoundliteral.66, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dram-deu1\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.69 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.56], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.70 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.68, ptr @ccu_gate_ops, ptr @.compoundliteral.69, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dram-be0\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.72 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.56], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.73 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.71, ptr @ccu_gate_ops, ptr @.compoundliteral.72, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dram-be1\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.75 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.56], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.74, ptr @ccu_gate_ops, ptr @.compoundliteral.75, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dram-be2\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.78 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.56], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.79 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.77, ptr @ccu_gate_ops, ptr @.compoundliteral.78, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dram-drc0\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.81 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.56], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.82 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.80, ptr @ccu_gate_ops, ptr @.compoundliteral.81, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dram-drc1\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.84 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.56], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.85 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.83, ptr @ccu_gate_ops, ptr @.compoundliteral.84, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bus-fe0\00", [24 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bus-de\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.88 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.87], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.89 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.86, ptr @ccu_gate_ops, ptr @.compoundliteral.88, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bus-fe1\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.91 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.87], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.92 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.90, ptr @ccu_gate_ops, ptr @.compoundliteral.91, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bus-fe2\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.94 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.87], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.95 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.93, ptr @ccu_gate_ops, ptr @.compoundliteral.94, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bus-deu0\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.97 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.87], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.98 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.96, ptr @ccu_gate_ops, ptr @.compoundliteral.97, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bus-deu1\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.100 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.87], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.101 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.99, ptr @ccu_gate_ops, ptr @.compoundliteral.100, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bus-be0\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.103 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.87], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.104 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.102, ptr @ccu_gate_ops, ptr @.compoundliteral.103, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bus-be1\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.106 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.87], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.107 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.105, ptr @ccu_gate_ops, ptr @.compoundliteral.106, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bus-be2\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.109 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.87], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.110 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.108, ptr @ccu_gate_ops, ptr @.compoundliteral.109, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bus-drc0\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.112 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.87], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.113 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.111, ptr @ccu_gate_ops, ptr @.compoundliteral.112, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bus-drc1\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.115 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.87], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.116 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.114, ptr @ccu_gate_ops, ptr @.compoundliteral.115, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@ccu_div_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.117 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.28], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.118 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.17, ptr @ccu_div_ops, ptr @.compoundliteral.117, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.119 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.28], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.120 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.20, ptr @ccu_div_ops, ptr @.compoundliteral.119, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.121 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.28], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.122 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.24, ptr @ccu_div_ops, ptr @.compoundliteral.121, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.123 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.28], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.124 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.35, ptr @ccu_div_ops, ptr @.compoundliteral.123, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.125 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.28], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.126 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.39, ptr @ccu_div_ops, ptr @.compoundliteral.125, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.127 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.28], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.128 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.43, ptr @ccu_div_ops, ptr @.compoundliteral.127, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@sun9i_a80_de_hw_clks = internal global { { i32, [37 x ptr] }, [40 x i8] } { { i32, [37 x ptr] } { i32 37, [37 x ptr] [ptr getelementptr (i8, ptr @fe0_clk, i64 24), ptr getelementptr (i8, ptr @fe1_clk, i64 24), ptr getelementptr (i8, ptr @fe2_clk, i64 24), ptr getelementptr (i8, ptr @iep_deu0_clk, i64 24), ptr getelementptr (i8, ptr @iep_deu1_clk, i64 24), ptr getelementptr (i8, ptr @be0_clk, i64 24), ptr getelementptr (i8, ptr @be1_clk, i64 24), ptr getelementptr (i8, ptr @be2_clk, i64 24), ptr getelementptr (i8, ptr @iep_drc0_clk, i64 24), ptr getelementptr (i8, ptr @iep_drc1_clk, i64 24), ptr getelementptr (i8, ptr @merge_clk, i64 24), ptr getelementptr (i8, ptr @dram_fe0_clk, i64 24), ptr getelementptr (i8, ptr @dram_fe1_clk, i64 24), ptr getelementptr (i8, ptr @dram_fe2_clk, i64 24), ptr getelementptr (i8, ptr @dram_deu0_clk, i64 24), ptr getelementptr (i8, ptr @dram_deu1_clk, i64 24), ptr getelementptr (i8, ptr @dram_be0_clk, i64 24), ptr getelementptr (i8, ptr @dram_be1_clk, i64 24), ptr getelementptr (i8, ptr @dram_be2_clk, i64 24), ptr getelementptr (i8, ptr @dram_drc0_clk, i64 24), ptr getelementptr (i8, ptr @dram_drc1_clk, i64 24), ptr getelementptr (i8, ptr @bus_fe0_clk, i64 24), ptr getelementptr (i8, ptr @bus_fe1_clk, i64 24), ptr getelementptr (i8, ptr @bus_fe2_clk, i64 24), ptr getelementptr (i8, ptr @bus_deu0_clk, i64 24), ptr getelementptr (i8, ptr @bus_deu1_clk, i64 24), ptr getelementptr (i8, ptr @bus_be0_clk, i64 24), ptr getelementptr (i8, ptr @bus_be1_clk, i64 24), ptr getelementptr (i8, ptr @bus_be2_clk, i64 24), ptr getelementptr (i8, ptr @bus_drc0_clk, i64 24), ptr getelementptr (i8, ptr @bus_drc1_clk, i64 24), ptr getelementptr (i8, ptr @fe0_div_clk, i64 68), ptr getelementptr (i8, ptr @fe1_div_clk, i64 68), ptr getelementptr (i8, ptr @fe2_div_clk, i64 68), ptr getelementptr (i8, ptr @be0_div_clk, i64 68), ptr getelementptr (i8, ptr @be1_div_clk, i64 68), ptr getelementptr (i8, ptr @be2_div_clk, i64 68)] }, [40 x i8] zeroinitializer }, align 32
@___asan_gen_.130 = private unnamed_addr constant [24 x i8] c"sun9i_a80_de_clk_driver\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 265, i32 31 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 268, i32 11 }
@___asan_gen_.136 = private unnamed_addr constant [21 x i8] c"sun9i_a80_de_clk_ids\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 260, i32 34 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 215, i32 37 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 219, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 227, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 235, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 242, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant [22 x i8] c"sun9i_a80_de_clk_desc\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 194, i32 36 }
@___asan_gen_.181 = private unnamed_addr constant [18 x i8] c"sun9i_a80_de_clks\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 91, i32 27 }
@___asan_gen_.184 = private unnamed_addr constant [20 x i8] c"sun9i_a80_de_resets\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 180, i32 29 }
@___asan_gen_.187 = private unnamed_addr constant [8 x i8] c"fe0_clk\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [8 x i8] c"fe1_clk\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [8 x i8] c"fe2_clk\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [13 x i8] c"iep_deu0_clk\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [13 x i8] c"iep_deu1_clk\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [8 x i8] c"be0_clk\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [8 x i8] c"be1_clk\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [8 x i8] c"be2_clk\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [13 x i8] c"iep_drc0_clk\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [13 x i8] c"iep_drc1_clk\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [10 x i8] c"merge_clk\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [13 x i8] c"dram_fe0_clk\00", align 1
@___asan_gen_.223 = private unnamed_addr constant [13 x i8] c"dram_fe1_clk\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [13 x i8] c"dram_fe2_clk\00", align 1
@___asan_gen_.229 = private unnamed_addr constant [14 x i8] c"dram_deu0_clk\00", align 1
@___asan_gen_.232 = private unnamed_addr constant [14 x i8] c"dram_deu1_clk\00", align 1
@___asan_gen_.235 = private unnamed_addr constant [13 x i8] c"dram_be0_clk\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [13 x i8] c"dram_be1_clk\00", align 1
@___asan_gen_.241 = private unnamed_addr constant [13 x i8] c"dram_be2_clk\00", align 1
@___asan_gen_.244 = private unnamed_addr constant [14 x i8] c"dram_drc0_clk\00", align 1
@___asan_gen_.247 = private unnamed_addr constant [14 x i8] c"dram_drc1_clk\00", align 1
@___asan_gen_.250 = private unnamed_addr constant [12 x i8] c"bus_fe0_clk\00", align 1
@___asan_gen_.253 = private unnamed_addr constant [12 x i8] c"bus_fe1_clk\00", align 1
@___asan_gen_.256 = private unnamed_addr constant [12 x i8] c"bus_fe2_clk\00", align 1
@___asan_gen_.259 = private unnamed_addr constant [13 x i8] c"bus_deu0_clk\00", align 1
@___asan_gen_.262 = private unnamed_addr constant [13 x i8] c"bus_deu1_clk\00", align 1
@___asan_gen_.265 = private unnamed_addr constant [12 x i8] c"bus_be0_clk\00", align 1
@___asan_gen_.268 = private unnamed_addr constant [12 x i8] c"bus_be1_clk\00", align 1
@___asan_gen_.271 = private unnamed_addr constant [12 x i8] c"bus_be2_clk\00", align 1
@___asan_gen_.274 = private unnamed_addr constant [13 x i8] c"bus_drc0_clk\00", align 1
@___asan_gen_.277 = private unnamed_addr constant [13 x i8] c"bus_drc1_clk\00", align 1
@___asan_gen_.280 = private unnamed_addr constant [12 x i8] c"fe0_div_clk\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 84, i32 8 }
@___asan_gen_.283 = private unnamed_addr constant [12 x i8] c"fe1_div_clk\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 85, i32 8 }
@___asan_gen_.286 = private unnamed_addr constant [12 x i8] c"fe2_div_clk\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 86, i32 8 }
@___asan_gen_.289 = private unnamed_addr constant [12 x i8] c"be0_div_clk\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 87, i32 8 }
@___asan_gen_.292 = private unnamed_addr constant [12 x i8] c"be1_div_clk\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 88, i32 8 }
@___asan_gen_.295 = private unnamed_addr constant [12 x i8] c"be2_div_clk\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 89, i32 8 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 19, i32 8 }
@___asan_gen_.304 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.305 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 21, i32 8 }
@___asan_gen_.312 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.313 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 23, i32 8 }
@___asan_gen_.320 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.321 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 25, i32 8 }
@___asan_gen_.328 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.329 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 27, i32 8 }
@___asan_gen_.333 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.334 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 29, i32 8 }
@___asan_gen_.341 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.342 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 31, i32 8 }
@___asan_gen_.349 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.350 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 33, i32 8 }
@___asan_gen_.357 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.358 = private unnamed_addr constant [20 x i8] c".compoundliteral.45\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 35, i32 8 }
@___asan_gen_.362 = private unnamed_addr constant [20 x i8] c".compoundliteral.47\00", align 1
@___asan_gen_.363 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 37, i32 8 }
@___asan_gen_.367 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.368 = private unnamed_addr constant [20 x i8] c".compoundliteral.51\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 39, i32 8 }
@___asan_gen_.372 = private unnamed_addr constant [20 x i8] c".compoundliteral.53\00", align 1
@___asan_gen_.373 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 42, i32 8 }
@___asan_gen_.380 = private unnamed_addr constant [20 x i8] c".compoundliteral.57\00", align 1
@___asan_gen_.381 = private unnamed_addr constant [20 x i8] c".compoundliteral.58\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 44, i32 8 }
@___asan_gen_.385 = private unnamed_addr constant [20 x i8] c".compoundliteral.60\00", align 1
@___asan_gen_.386 = private unnamed_addr constant [20 x i8] c".compoundliteral.61\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 46, i32 8 }
@___asan_gen_.390 = private unnamed_addr constant [20 x i8] c".compoundliteral.63\00", align 1
@___asan_gen_.391 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 48, i32 8 }
@___asan_gen_.395 = private unnamed_addr constant [20 x i8] c".compoundliteral.66\00", align 1
@___asan_gen_.396 = private unnamed_addr constant [20 x i8] c".compoundliteral.67\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 50, i32 8 }
@___asan_gen_.400 = private unnamed_addr constant [20 x i8] c".compoundliteral.69\00", align 1
@___asan_gen_.401 = private unnamed_addr constant [20 x i8] c".compoundliteral.70\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 52, i32 8 }
@___asan_gen_.405 = private unnamed_addr constant [20 x i8] c".compoundliteral.72\00", align 1
@___asan_gen_.406 = private unnamed_addr constant [20 x i8] c".compoundliteral.73\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 54, i32 8 }
@___asan_gen_.410 = private unnamed_addr constant [20 x i8] c".compoundliteral.75\00", align 1
@___asan_gen_.411 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 56, i32 8 }
@___asan_gen_.415 = private unnamed_addr constant [20 x i8] c".compoundliteral.78\00", align 1
@___asan_gen_.416 = private unnamed_addr constant [20 x i8] c".compoundliteral.79\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 58, i32 8 }
@___asan_gen_.420 = private unnamed_addr constant [20 x i8] c".compoundliteral.81\00", align 1
@___asan_gen_.421 = private unnamed_addr constant [20 x i8] c".compoundliteral.82\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 60, i32 8 }
@___asan_gen_.425 = private unnamed_addr constant [20 x i8] c".compoundliteral.84\00", align 1
@___asan_gen_.426 = private unnamed_addr constant [20 x i8] c".compoundliteral.85\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 63, i32 8 }
@___asan_gen_.433 = private unnamed_addr constant [20 x i8] c".compoundliteral.88\00", align 1
@___asan_gen_.434 = private unnamed_addr constant [20 x i8] c".compoundliteral.89\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 65, i32 8 }
@___asan_gen_.438 = private unnamed_addr constant [20 x i8] c".compoundliteral.91\00", align 1
@___asan_gen_.439 = private unnamed_addr constant [20 x i8] c".compoundliteral.92\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 67, i32 8 }
@___asan_gen_.443 = private unnamed_addr constant [20 x i8] c".compoundliteral.94\00", align 1
@___asan_gen_.444 = private unnamed_addr constant [20 x i8] c".compoundliteral.95\00", align 1
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 69, i32 8 }
@___asan_gen_.448 = private unnamed_addr constant [20 x i8] c".compoundliteral.97\00", align 1
@___asan_gen_.449 = private unnamed_addr constant [20 x i8] c".compoundliteral.98\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 71, i32 8 }
@___asan_gen_.453 = private unnamed_addr constant [21 x i8] c".compoundliteral.100\00", align 1
@___asan_gen_.454 = private unnamed_addr constant [21 x i8] c".compoundliteral.101\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 73, i32 8 }
@___asan_gen_.458 = private unnamed_addr constant [21 x i8] c".compoundliteral.103\00", align 1
@___asan_gen_.459 = private unnamed_addr constant [21 x i8] c".compoundliteral.104\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 75, i32 8 }
@___asan_gen_.463 = private unnamed_addr constant [21 x i8] c".compoundliteral.106\00", align 1
@___asan_gen_.464 = private unnamed_addr constant [21 x i8] c".compoundliteral.107\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 77, i32 8 }
@___asan_gen_.468 = private unnamed_addr constant [21 x i8] c".compoundliteral.109\00", align 1
@___asan_gen_.469 = private unnamed_addr constant [21 x i8] c".compoundliteral.110\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 79, i32 8 }
@___asan_gen_.473 = private unnamed_addr constant [21 x i8] c".compoundliteral.112\00", align 1
@___asan_gen_.474 = private unnamed_addr constant [21 x i8] c".compoundliteral.113\00", align 1
@___asan_gen_.475 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 81, i32 8 }
@___asan_gen_.478 = private unnamed_addr constant [21 x i8] c".compoundliteral.115\00", align 1
@___asan_gen_.479 = private unnamed_addr constant [21 x i8] c".compoundliteral.116\00", align 1
@___asan_gen_.480 = private unnamed_addr constant [21 x i8] c".compoundliteral.117\00", align 1
@___asan_gen_.481 = private unnamed_addr constant [21 x i8] c".compoundliteral.118\00", align 1
@___asan_gen_.482 = private unnamed_addr constant [21 x i8] c".compoundliteral.119\00", align 1
@___asan_gen_.483 = private unnamed_addr constant [21 x i8] c".compoundliteral.120\00", align 1
@___asan_gen_.484 = private unnamed_addr constant [21 x i8] c".compoundliteral.121\00", align 1
@___asan_gen_.485 = private unnamed_addr constant [21 x i8] c".compoundliteral.122\00", align 1
@___asan_gen_.486 = private unnamed_addr constant [21 x i8] c".compoundliteral.123\00", align 1
@___asan_gen_.487 = private unnamed_addr constant [21 x i8] c".compoundliteral.124\00", align 1
@___asan_gen_.488 = private unnamed_addr constant [21 x i8] c".compoundliteral.125\00", align 1
@___asan_gen_.489 = private unnamed_addr constant [21 x i8] c".compoundliteral.126\00", align 1
@___asan_gen_.490 = private unnamed_addr constant [21 x i8] c".compoundliteral.127\00", align 1
@___asan_gen_.491 = private unnamed_addr constant [21 x i8] c".compoundliteral.128\00", align 1
@___asan_gen_.492 = private unnamed_addr constant [21 x i8] c"sun9i_a80_de_hw_clks\00", align 1
@___asan_gen_.493 = private constant [43 x i8] c"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 134, i32 35 }
@llvm.compiler.used = appending global [181 x ptr] [ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_import_ns171, ptr @__UNIQUE_ID_license173, ptr @__exitcall_sun9i_a80_de_clk_driver_exit, ptr @__initcall__kmod_sun9i_a80_de_ccu__170_273_sun9i_a80_de_clk_driver_init6, ptr @sun9i_a80_de_clk_driver_exit, ptr @sun9i_a80_de_clk_probe._entry, ptr @sun9i_a80_de_clk_probe._entry.10, ptr @sun9i_a80_de_clk_probe._entry.13, ptr @sun9i_a80_de_clk_probe._entry.7, ptr @sun9i_a80_de_clk_probe._entry_ptr, ptr @sun9i_a80_de_clk_probe._entry_ptr.12, ptr @sun9i_a80_de_clk_probe._entry_ptr.15, ptr @sun9i_a80_de_clk_probe._entry_ptr.9, ptr @sun9i_a80_de_clk_driver, ptr @.str, ptr @sun9i_a80_de_clk_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @sun9i_a80_de_clk_desc, ptr @sun9i_a80_de_clks, ptr @sun9i_a80_de_resets, ptr @fe0_clk, ptr @fe1_clk, ptr @fe2_clk, ptr @iep_deu0_clk, ptr @iep_deu1_clk, ptr @be0_clk, ptr @be1_clk, ptr @be2_clk, ptr @iep_drc0_clk, ptr @iep_drc1_clk, ptr @merge_clk, ptr @dram_fe0_clk, ptr @dram_fe1_clk, ptr @dram_fe2_clk, ptr @dram_deu0_clk, ptr @dram_deu1_clk, ptr @dram_be0_clk, ptr @dram_be1_clk, ptr @dram_be2_clk, ptr @dram_drc0_clk, ptr @dram_drc1_clk, ptr @bus_fe0_clk, ptr @bus_fe1_clk, ptr @bus_fe2_clk, ptr @bus_deu0_clk, ptr @bus_deu1_clk, ptr @bus_be0_clk, ptr @bus_be1_clk, ptr @bus_be2_clk, ptr @bus_drc0_clk, ptr @bus_drc1_clk, ptr @fe0_div_clk, ptr @fe1_div_clk, ptr @fe2_div_clk, ptr @be0_div_clk, ptr @be1_div_clk, ptr @be2_div_clk, ptr @.str.16, ptr @.str.17, ptr @.compoundliteral, ptr @.compoundliteral.18, ptr @.str.19, ptr @.str.20, ptr @.compoundliteral.21, ptr @.compoundliteral.22, ptr @.str.23, ptr @.str.24, ptr @.compoundliteral.25, ptr @.compoundliteral.26, ptr @.str.27, ptr @.str.28, ptr @.compoundliteral.29, ptr @.compoundliteral.30, ptr @.str.31, ptr @.compoundliteral.32, ptr @.compoundliteral.33, ptr @.str.34, ptr @.str.35, ptr @.compoundliteral.36, ptr @.compoundliteral.37, ptr @.str.38, ptr @.str.39, ptr @.compoundliteral.40, ptr @.compoundliteral.41, ptr @.str.42, ptr @.str.43, ptr @.compoundliteral.44, ptr @.compoundliteral.45, ptr @.str.46, ptr @.compoundliteral.47, ptr @.compoundliteral.48, ptr @.str.49, ptr @.compoundliteral.50, ptr @.compoundliteral.51, ptr @.str.52, ptr @.compoundliteral.53, ptr @.compoundliteral.54, ptr @.str.55, ptr @.str.56, ptr @.compoundliteral.57, ptr @.compoundliteral.58, ptr @.str.59, ptr @.compoundliteral.60, ptr @.compoundliteral.61, ptr @.str.62, ptr @.compoundliteral.63, ptr @.compoundliteral.64, ptr @.str.65, ptr @.compoundliteral.66, ptr @.compoundliteral.67, ptr @.str.68, ptr @.compoundliteral.69, ptr @.compoundliteral.70, ptr @.str.71, ptr @.compoundliteral.72, ptr @.compoundliteral.73, ptr @.str.74, ptr @.compoundliteral.75, ptr @.compoundliteral.76, ptr @.str.77, ptr @.compoundliteral.78, ptr @.compoundliteral.79, ptr @.str.80, ptr @.compoundliteral.81, ptr @.compoundliteral.82, ptr @.str.83, ptr @.compoundliteral.84, ptr @.compoundliteral.85, ptr @.str.86, ptr @.str.87, ptr @.compoundliteral.88, ptr @.compoundliteral.89, ptr @.str.90, ptr @.compoundliteral.91, ptr @.compoundliteral.92, ptr @.str.93, ptr @.compoundliteral.94, ptr @.compoundliteral.95, ptr @.str.96, ptr @.compoundliteral.97, ptr @.compoundliteral.98, ptr @.str.99, ptr @.compoundliteral.100, ptr @.compoundliteral.101, ptr @.str.102, ptr @.compoundliteral.103, ptr @.compoundliteral.104, ptr @.str.105, ptr @.compoundliteral.106, ptr @.compoundliteral.107, ptr @.str.108, ptr @.compoundliteral.109, ptr @.compoundliteral.110, ptr @.str.111, ptr @.compoundliteral.112, ptr @.compoundliteral.113, ptr @.str.114, ptr @.compoundliteral.115, ptr @.compoundliteral.116, ptr @.compoundliteral.117, ptr @.compoundliteral.118, ptr @.compoundliteral.119, ptr @.compoundliteral.120, ptr @.compoundliteral.121, ptr @.compoundliteral.122, ptr @.compoundliteral.123, ptr @.compoundliteral.124, ptr @.compoundliteral.125, ptr @.compoundliteral.126, ptr @.compoundliteral.127, ptr @.compoundliteral.128, ptr @sun9i_a80_de_hw_clks], section "llvm.metadata"
@0 = internal global [171 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_de_clk_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_de_clk_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_de_clk_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_de_clk_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_de_clk_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_de_clk_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_de_clk_desc to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_de_clks to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_de_resets to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fe0_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fe1_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fe2_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iep_deu0_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iep_deu1_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @be0_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @be1_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @be2_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iep_drc0_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iep_drc1_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @merge_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dram_fe0_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dram_fe1_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dram_fe2_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dram_deu0_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dram_deu1_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dram_be0_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dram_be1_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dram_be2_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dram_drc0_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dram_drc1_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_fe0_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_fe1_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_fe2_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_deu0_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_deu1_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_be0_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_be1_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_be2_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_drc0_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_drc1_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fe0_div_clk to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fe1_div_clk to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fe2_div_clk to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @be0_div_clk to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @be1_div_clk to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @be2_div_clk to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.69 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.70 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.73 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.75 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.78 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.79 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.81 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.82 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.84 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.88 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.89 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.91 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.92 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.94 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.95 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.97 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.98 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.100 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.101 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.103 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.104 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.106 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.107 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.109 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.110 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.112 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.113 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.115 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.116 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.117 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.118 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.119 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.120 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.121 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.122 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.123 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.124 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.125 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.126 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.127 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.128 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_de_hw_clks to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun9i_a80_de_clk_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun9i_a80_de_clk_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun9i_a80_de_clk_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun9i_a80_de_clk_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun9i_a80_de_clk_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call3 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #4
  %cmp.i75 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i75, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.end
  %cmp.not = icmp eq ptr %call3, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then5.cleanup_crit_edge, label %do.end

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %call3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %1) #7
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #4
  %cmp.i76 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i76, label %if.then14, label %if.end23

if.then14:                                        ; preds = %if.end10
  %cmp16.not = icmp eq ptr %call.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp16.not, label %if.then14.cleanup_crit_edge, label %do.end20

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end20:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %call.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %2) #7
  br label %cleanup

if.end23:                                         ; preds = %if.end10
  %call.i77 = tail call i32 @clk_prepare(ptr noundef %call3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %tobool.not.i = icmp eq i32 %call.i77, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end23.do.end28_crit_edge

if.end23.do.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end28

if.end.i:                                         ; preds = %if.end23
  %call1.i = tail call i32 @clk_enable(ptr noundef %call3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end30, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %call3) #4
  br label %do.end28

do.end28:                                         ; preds = %if.then3.i, %if.end23.do.end28_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i77, %if.end23.do.end28_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %retval.0.i.ph) #7
  br label %cleanup

if.end30:                                         ; preds = %if.end.i
  %call31 = tail call i32 @reset_control_deassert(ptr noundef %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end38, label %do.end36

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call31) #7
  br label %err_disable_clk

if.end38:                                         ; preds = %if.end30
  %call40 = tail call i32 @devm_sunxi_ccu_probe(ptr noundef %dev, ptr noundef %call, ptr noundef nonnull @sun9i_a80_de_clk_desc) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end38.cleanup_crit_edge, label %err_assert_reset

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

err_assert_reset:                                 ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  %call44 = tail call i32 @reset_control_assert(ptr noundef %call.i) #4
  br label %err_disable_clk

err_disable_clk:                                  ; preds = %err_assert_reset, %do.end36
  %ret.0 = phi i32 [ %call31, %do.end36 ], [ %call40, %err_assert_reset ]
  tail call void @clk_disable(ptr noundef %call3) #4
  tail call void @clk_unprepare(ptr noundef %call3) #4
  br label %cleanup

cleanup:                                          ; preds = %err_disable_clk, %if.end38.cleanup_crit_edge, %do.end28, %do.end20, %if.then14.cleanup_crit_edge, %do.end, %if.then5.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %retval.0.i.ph, %do.end28 ], [ %ret.0, %err_disable_clk ], [ %1, %do.end ], [ -517, %if.then5.cleanup_crit_edge ], [ %2, %do.end20 ], [ -517, %if.then14.cleanup_crit_edge ], [ 0, %if.end38.cleanup_crit_edge ]
  ret i32 %retval.0
}

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 171)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 171)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !111, !112, !113, !115, !116, !118, !119, !121, !122, !124, !125, !127, !128, !130, !131, !133, !134, !136, !137, !139, !140, !142, !144, !146, !148, !150, !152, !154, !156}
!llvm.module.flags = !{!158, !159, !160, !161, !162, !163, !164, !165}
!llvm.ident = !{!166}

!0 = !{ptr @__initcall__kmod_sun9i_a80_de_ccu__170_273_sun9i_a80_de_clk_driver_init6, !1, !"__initcall__kmod_sun9i_a80_de_ccu__170_273_sun9i_a80_de_clk_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 273, i32 1}
!2 = !{ptr @__exitcall_sun9i_a80_de_clk_driver_exit, !1, !"__exitcall_sun9i_a80_de_clk_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_import_ns171, !4, !"__UNIQUE_ID_import_ns171", i1 false, i1 false}
!4 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 275, i32 1}
!5 = !{ptr @__UNIQUE_ID_file172, !6, !"__UNIQUE_ID_file172", i1 false, i1 false}
!6 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 276, i32 1}
!7 = !{ptr @__UNIQUE_ID_license173, !6, !"__UNIQUE_ID_license173", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 268, i32 11}
!10 = !{ptr @sun9i_a80_de_clk_driver, !11, !"sun9i_a80_de_clk_driver", i1 false, i1 false}
!11 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 265, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 215, i32 37}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 219, i32 4}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sun9i_a80_de_clk_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @sun9i_a80_de_clk_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 227, i32 4}
!24 = !{ptr @sun9i_a80_de_clk_probe._entry.7, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @sun9i_a80_de_clk_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 235, i32 3}
!28 = !{ptr @sun9i_a80_de_clk_probe._entry.10, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @sun9i_a80_de_clk_probe._entry_ptr.12, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 242, i32 3}
!32 = !{ptr @sun9i_a80_de_clk_probe._entry.13, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @sun9i_a80_de_clk_probe._entry_ptr.15, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @sun9i_a80_de_clk_desc, !35, !"sun9i_a80_de_clk_desc", i1 false, i1 false}
!35 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 194, i32 36}
!36 = !{ptr @sun9i_a80_de_clks, !37, !"sun9i_a80_de_clks", i1 false, i1 false}
!37 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 91, i32 27}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 19, i32 8}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @fe0_clk, !39, !"fe0_clk", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 21, i32 8}
!44 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @fe1_clk, !43, !"fe1_clk", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 23, i32 8}
!48 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @fe2_clk, !47, !"fe2_clk", i1 false, i1 false}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 25, i32 8}
!52 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @iep_deu0_clk, !51, !"iep_deu0_clk", i1 false, i1 false}
!54 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 27, i32 8}
!56 = !{ptr @iep_deu1_clk, !55, !"iep_deu1_clk", i1 false, i1 false}
!57 = !{ptr @.str.34, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 29, i32 8}
!59 = !{ptr @.str.35, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @be0_clk, !58, !"be0_clk", i1 false, i1 false}
!61 = !{ptr @.str.38, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 31, i32 8}
!63 = !{ptr @.str.39, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @be1_clk, !62, !"be1_clk", i1 false, i1 false}
!65 = !{ptr @.str.42, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 33, i32 8}
!67 = !{ptr @.str.43, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @be2_clk, !66, !"be2_clk", i1 false, i1 false}
!69 = !{ptr @.str.46, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 35, i32 8}
!71 = !{ptr @iep_drc0_clk, !70, !"iep_drc0_clk", i1 false, i1 false}
!72 = !{ptr @.str.49, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 37, i32 8}
!74 = !{ptr @iep_drc1_clk, !73, !"iep_drc1_clk", i1 false, i1 false}
!75 = !{ptr @.str.52, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 39, i32 8}
!77 = !{ptr @merge_clk, !76, !"merge_clk", i1 false, i1 false}
!78 = !{ptr @.str.55, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 42, i32 8}
!80 = !{ptr @.str.56, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @dram_fe0_clk, !79, !"dram_fe0_clk", i1 false, i1 false}
!82 = !{ptr @.str.59, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 44, i32 8}
!84 = !{ptr @dram_fe1_clk, !83, !"dram_fe1_clk", i1 false, i1 false}
!85 = !{ptr @.str.62, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 46, i32 8}
!87 = !{ptr @dram_fe2_clk, !86, !"dram_fe2_clk", i1 false, i1 false}
!88 = !{ptr @.str.65, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 48, i32 8}
!90 = !{ptr @dram_deu0_clk, !89, !"dram_deu0_clk", i1 false, i1 false}
!91 = !{ptr @.str.68, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 50, i32 8}
!93 = !{ptr @dram_deu1_clk, !92, !"dram_deu1_clk", i1 false, i1 false}
!94 = !{ptr @.str.71, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 52, i32 8}
!96 = !{ptr @dram_be0_clk, !95, !"dram_be0_clk", i1 false, i1 false}
!97 = !{ptr @.str.74, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 54, i32 8}
!99 = !{ptr @dram_be1_clk, !98, !"dram_be1_clk", i1 false, i1 false}
!100 = !{ptr @.str.77, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 56, i32 8}
!102 = !{ptr @dram_be2_clk, !101, !"dram_be2_clk", i1 false, i1 false}
!103 = !{ptr @.str.80, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 58, i32 8}
!105 = !{ptr @dram_drc0_clk, !104, !"dram_drc0_clk", i1 false, i1 false}
!106 = !{ptr @.str.83, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 60, i32 8}
!108 = !{ptr @dram_drc1_clk, !107, !"dram_drc1_clk", i1 false, i1 false}
!109 = !{ptr @.str.86, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 63, i32 8}
!111 = !{ptr @.str.87, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @bus_fe0_clk, !110, !"bus_fe0_clk", i1 false, i1 false}
!113 = !{ptr @.str.90, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 65, i32 8}
!115 = !{ptr @bus_fe1_clk, !114, !"bus_fe1_clk", i1 false, i1 false}
!116 = !{ptr @.str.93, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 67, i32 8}
!118 = !{ptr @bus_fe2_clk, !117, !"bus_fe2_clk", i1 false, i1 false}
!119 = !{ptr @.str.96, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 69, i32 8}
!121 = !{ptr @bus_deu0_clk, !120, !"bus_deu0_clk", i1 false, i1 false}
!122 = !{ptr @.str.99, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 71, i32 8}
!124 = !{ptr @bus_deu1_clk, !123, !"bus_deu1_clk", i1 false, i1 false}
!125 = !{ptr @.str.102, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 73, i32 8}
!127 = !{ptr @bus_be0_clk, !126, !"bus_be0_clk", i1 false, i1 false}
!128 = !{ptr @.str.105, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 75, i32 8}
!130 = !{ptr @bus_be1_clk, !129, !"bus_be1_clk", i1 false, i1 false}
!131 = !{ptr @.str.108, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 77, i32 8}
!133 = !{ptr @bus_be2_clk, !132, !"bus_be2_clk", i1 false, i1 false}
!134 = !{ptr @.str.111, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 79, i32 8}
!136 = !{ptr @bus_drc0_clk, !135, !"bus_drc0_clk", i1 false, i1 false}
!137 = !{ptr @.str.114, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 81, i32 8}
!139 = !{ptr @bus_drc1_clk, !138, !"bus_drc1_clk", i1 false, i1 false}
!140 = !{ptr @fe0_div_clk, !141, !"fe0_div_clk", i1 false, i1 false}
!141 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 84, i32 8}
!142 = !{ptr @fe1_div_clk, !143, !"fe1_div_clk", i1 false, i1 false}
!143 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 85, i32 8}
!144 = !{ptr @fe2_div_clk, !145, !"fe2_div_clk", i1 false, i1 false}
!145 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 86, i32 8}
!146 = !{ptr @be0_div_clk, !147, !"be0_div_clk", i1 false, i1 false}
!147 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 87, i32 8}
!148 = !{ptr @be1_div_clk, !149, !"be1_div_clk", i1 false, i1 false}
!149 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 88, i32 8}
!150 = !{ptr @be2_div_clk, !151, !"be2_div_clk", i1 false, i1 false}
!151 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 89, i32 8}
!152 = !{ptr @sun9i_a80_de_hw_clks, !153, !"sun9i_a80_de_hw_clks", i1 false, i1 false}
!153 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 134, i32 35}
!154 = !{ptr @sun9i_a80_de_resets, !155, !"sun9i_a80_de_resets", i1 false, i1 false}
!155 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 180, i32 29}
!156 = !{ptr @sun9i_a80_de_clk_ids, !157, !"sun9i_a80_de_clk_ids", i1 false, i1 false}
!157 = !{!"../drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c", i32 260, i32 34}
!158 = !{i32 1, !"wchar_size", i32 2}
!159 = !{i32 1, !"min_enum_size", i32 4}
!160 = !{i32 8, !"branch-target-enforcement", i32 0}
!161 = !{i32 8, !"sign-return-address", i32 0}
!162 = !{i32 8, !"sign-return-address-all", i32 0}
!163 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!164 = !{i32 7, !"uwtable", i32 1}
!165 = !{i32 7, !"frame-pointer", i32 2}
!166 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
