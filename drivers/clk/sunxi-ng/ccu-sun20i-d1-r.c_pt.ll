; ModuleID = '/llk/IR_all_yes/drivers/clk/sunxi-ng/ccu-sun20i-d1-r.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu-sun20i-d1-r.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.sunxi_ccu_desc = type { ptr, i32, ptr, ptr, i32 }
%struct.ccu_reset_map = type { i16, i32 }
%struct.ccu_mp = type { i32, %struct.ccu_div_internal, %struct.ccu_div_internal, %struct.ccu_mux_internal, i32, %struct.ccu_common }
%struct.ccu_div_internal = type { i8, i8, i32, i32, i32, ptr }
%struct.ccu_mux_internal = type { i8, i8, ptr, ptr, i8, ptr, i8 }
%struct.ccu_common = type { ptr, i16, i16, i32, i32, ptr, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.ccu_gate = type { i32, %struct.ccu_common }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_parent_data = type { ptr, ptr, ptr, i32 }
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

@__initcall__kmod_sun20i_d1_r_ccu__170_137_sun20i_d1_r_ccu_driver_init6 = internal global ptr @sun20i_d1_r_ccu_driver_init, section ".initcall6.init", align 4
@sun20i_d1_r_ccu_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun20i_d1_r_ccu_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @sun20i_d1_r_ccu_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sun20i_d1_r_ccu_driver_exit = internal global ptr @sun20i_d1_r_ccu_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_import_ns171 = internal constant [36 x i8] c"sun20i_d1_r_ccu.import_ns=SUNXI_CCU\00", section ".modinfo", align 1
@__UNIQUE_ID_file172 = internal constant [58 x i8] c"sun20i_d1_r_ccu.file=drivers/clk/sunxi-ng/sun20i-d1-r-ccu\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [28 x i8] c"sun20i_d1_r_ccu.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sun20i-d1-r-ccu\00", [16 x i8] zeroinitializer }, align 32
@sun20i_d1_r_ccu_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun20i-d1-r-ccu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sun20i_d1_r_ccu_desc = internal constant { %struct.sunxi_ccu_desc, [44 x i8] } { %struct.sunxi_ccu_desc { ptr @sun20i_d1_r_ccu_clks, i32 9, ptr @sun20i_d1_r_hw_clks, ptr @sun20i_d1_r_ccu_resets, i32 6 }, [44 x i8] zeroinitializer }, align 32
@sun20i_d1_r_ccu_clks = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr getelementptr (i8, ptr @r_ahb_clk, i64 72), ptr getelementptr (i8, ptr @r_apb0_clk, i64 72), ptr getelementptr (i8, ptr @bus_r_timer_clk, i64 4), ptr getelementptr (i8, ptr @bus_r_twd_clk, i64 4), ptr getelementptr (i8, ptr @bus_r_ppu_clk, i64 4), ptr getelementptr (i8, ptr @r_ir_rx_clk, i64 72), ptr getelementptr (i8, ptr @bus_r_ir_rx_clk, i64 4), ptr getelementptr (i8, ptr @bus_r_rtc_clk, i64 4), ptr getelementptr (i8, ptr @bus_r_cpucfg_clk, i64 4)], [60 x i8] zeroinitializer }, align 32
@sun20i_d1_r_ccu_resets = internal global { [6 x %struct.ccu_reset_map], [48 x i8] } { [6 x %struct.ccu_reset_map] [%struct.ccu_reset_map { i16 284, i32 65536 }, %struct.ccu_reset_map { i16 300, i32 65536 }, %struct.ccu_reset_map { i16 428, i32 65536 }, %struct.ccu_reset_map { i16 460, i32 65536 }, %struct.ccu_reset_map { i16 524, i32 65536 }, %struct.ccu_reset_map { i16 556, i32 65536 }], [48 x i8] zeroinitializer }, align 32
@r_ahb_clk = internal global { %struct.ccu_mp, [56 x i8] } { %struct.ccu_mp { i32 0, %struct.ccu_div_internal { i8 0, i8 5, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 8, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 3, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral } } }, [56 x i8] zeroinitializer }, align 32
@r_apb0_clk = internal global { %struct.ccu_mp, [56 x i8] } { %struct.ccu_mp { i32 0, %struct.ccu_div_internal { i8 0, i8 5, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 8, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 3, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 12, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.7 } } }, [56 x i8] zeroinitializer }, align 32
@bus_r_timer_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 284, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.9 } } }, [60 x i8] zeroinitializer }, align 32
@bus_r_twd_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 300, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.11 } } }, [60 x i8] zeroinitializer }, align 32
@bus_r_ppu_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 428, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.13 } } }, [60 x i8] zeroinitializer }, align 32
@r_ir_rx_clk = internal global { %struct.ccu_mp, [56 x i8] } { %struct.ccu_mp { i32 -2147483648, %struct.ccu_div_internal { i8 0, i8 5, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_div_internal { i8 8, i8 2, i32 0, i32 1, i32 0, ptr null }, %struct.ccu_mux_internal { i8 24, i8 2, ptr null, ptr null, i8 0, ptr null, i8 0 }, i32 0, %struct.ccu_common { ptr null, i16 448, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.15 } } }, [56 x i8] zeroinitializer }, align 32
@bus_r_ir_rx_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 460, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.17 } } }, [60 x i8] zeroinitializer }, align 32
@bus_r_rtc_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 524, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.19 } } }, [60 x i8] zeroinitializer }, align 32
@bus_r_cpucfg_clk = internal global { %struct.ccu_gate, [60 x i8] } { %struct.ccu_gate { i32 1, %struct.ccu_common { ptr null, i16 556, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.21 } } }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"r-ahb\00", [26 x i8] zeroinitializer }, align 32
@ccu_mp_ops = external dso_local constant %struct.clk_ops, align 4
@r_ahb_apb0_parents = internal constant { [4 x %struct.clk_parent_data], [32 x i8] } { [4 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.2, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.3, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.4, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.5, ptr null, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.1, ptr @ccu_mp_ops, ptr null, ptr @r_ahb_apb0_parents, ptr null, i8 4, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hosc\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"losc\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"iosc\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll-periph\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"r-apb0\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.7 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.6, ptr @ccu_mp_ops, ptr null, ptr @r_ahb_apb0_parents, ptr null, i8 4, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bus-r-timer\00", [20 x i8] zeroinitializer }, align 32
@ccu_gate_ops = external dso_local constant %struct.clk_ops, align 4
@r_apb0_hw = internal global { ptr, [28 x i8] } { ptr getelementptr inbounds (%struct.ccu_mp, ptr @r_apb0_clk, i32 0, i32 5, i32 6, i32 0), [28 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.8, ptr @ccu_gate_ops, ptr null, ptr null, ptr @r_apb0_hw, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bus-r-twd\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.10, ptr @ccu_gate_ops, ptr null, ptr null, ptr @r_apb0_hw, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bus-r-ppu\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.12, ptr @ccu_gate_ops, ptr null, ptr null, ptr @r_apb0_hw, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r-ir-rx\00", [24 x i8] zeroinitializer }, align 32
@r_ir_rx_parents = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.3, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.2, ptr null, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.14, ptr @ccu_mp_ops, ptr null, ptr @r_ir_rx_parents, ptr null, i8 2, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bus-r-ir-rx\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.16, ptr @ccu_gate_ops, ptr null, ptr null, ptr @r_apb0_hw, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bus-r-rtc\00", [22 x i8] zeroinitializer }, align 32
@r_ahb_hw = internal global { ptr, [28 x i8] } { ptr getelementptr inbounds (%struct.ccu_mp, ptr @r_ahb_clk, i32 0, i32 5, i32 6, i32 0), [28 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.18, ptr @ccu_gate_ops, ptr null, ptr null, ptr @r_ahb_hw, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bus-r-cpucfg\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.20, ptr @ccu_gate_ops, ptr null, ptr null, ptr @r_apb0_hw, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@sun20i_d1_r_hw_clks = internal global { { i32, [9 x ptr] }, [56 x i8] } { { i32, [9 x ptr] } { i32 9, [9 x ptr] [ptr getelementptr (i8, ptr @r_ahb_clk, i64 92), ptr getelementptr (i8, ptr @r_apb0_clk, i64 92), ptr getelementptr (i8, ptr @bus_r_timer_clk, i64 24), ptr getelementptr (i8, ptr @bus_r_twd_clk, i64 24), ptr getelementptr (i8, ptr @bus_r_ppu_clk, i64 24), ptr getelementptr (i8, ptr @r_ir_rx_clk, i64 92), ptr getelementptr (i8, ptr @bus_r_ir_rx_clk, i64 24), ptr getelementptr (i8, ptr @bus_r_rtc_clk, i64 24), ptr getelementptr (i8, ptr @bus_r_cpucfg_clk, i64 24)] }, [56 x i8] zeroinitializer }, align 32
@___asan_gen_.23 = private unnamed_addr constant [23 x i8] c"sun20i_d1_r_ccu_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 129, i32 31 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 132, i32 13 }
@___asan_gen_.29 = private unnamed_addr constant [20 x i8] c"sun20i_d1_r_ccu_ids\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 124, i32 34 }
@___asan_gen_.32 = private unnamed_addr constant [21 x i8] c"sun20i_d1_r_ccu_desc\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 103, i32 36 }
@___asan_gen_.35 = private unnamed_addr constant [21 x i8] c"sun20i_d1_r_ccu_clks\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 67, i32 27 }
@___asan_gen_.38 = private unnamed_addr constant [23 x i8] c"sun20i_d1_r_ccu_resets\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 94, i32 29 }
@___asan_gen_.41 = private unnamed_addr constant [10 x i8] c"r_ahb_clk\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [11 x i8] c"r_apb0_clk\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"bus_r_timer_clk\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [14 x i8] c"bus_r_twd_clk\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [14 x i8] c"bus_r_ppu_clk\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [12 x i8] c"r_ir_rx_clk\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [16 x i8] c"bus_r_ir_rx_clk\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [14 x i8] c"bus_r_rtc_clk\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"bus_r_cpucfg_clk\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 25, i32 8 }
@___asan_gen_.71 = private unnamed_addr constant [19 x i8] c"r_ahb_apb0_parents\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 19, i32 37 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 20, i32 15 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 21, i32 15 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 22, i32 15 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 23, i32 15 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 33, i32 8 }
@___asan_gen_.90 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 41, i32 8 }
@___asan_gen_.94 = private unnamed_addr constant [10 x i8] c"r_apb0_hw\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 39, i32 29 }
@___asan_gen_.97 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 43, i32 8 }
@___asan_gen_.101 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 45, i32 8 }
@___asan_gen_.105 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 52, i32 8 }
@___asan_gen_.109 = private unnamed_addr constant [16 x i8] c"r_ir_rx_parents\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 48, i32 37 }
@___asan_gen_.112 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 60, i32 8 }
@___asan_gen_.116 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 62, i32 8 }
@___asan_gen_.120 = private unnamed_addr constant [9 x i8] c"r_ahb_hw\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 31, i32 29 }
@___asan_gen_.123 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 64, i32 8 }
@___asan_gen_.127 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [20 x i8] c"sun20i_d1_r_hw_clks\00", align 1
@___asan_gen_.129 = private constant [42 x i8] c"../drivers/clk/sunxi-ng/ccu-sun20i-d1-r.c\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 79, i32 35 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_import_ns171, ptr @__UNIQUE_ID_license173, ptr @__exitcall_sun20i_d1_r_ccu_driver_exit, ptr @__initcall__kmod_sun20i_d1_r_ccu__170_137_sun20i_d1_r_ccu_driver_init6, ptr @sun20i_d1_r_ccu_driver_exit, ptr @sun20i_d1_r_ccu_driver, ptr @.str, ptr @sun20i_d1_r_ccu_ids, ptr @sun20i_d1_r_ccu_desc, ptr @sun20i_d1_r_ccu_clks, ptr @sun20i_d1_r_ccu_resets, ptr @r_ahb_clk, ptr @r_apb0_clk, ptr @bus_r_timer_clk, ptr @bus_r_twd_clk, ptr @bus_r_ppu_clk, ptr @r_ir_rx_clk, ptr @bus_r_ir_rx_clk, ptr @bus_r_rtc_clk, ptr @bus_r_cpucfg_clk, ptr @.str.1, ptr @r_ahb_apb0_parents, ptr @.compoundliteral, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.compoundliteral.7, ptr @.str.8, ptr @r_apb0_hw, ptr @.compoundliteral.9, ptr @.str.10, ptr @.compoundliteral.11, ptr @.str.12, ptr @.compoundliteral.13, ptr @.str.14, ptr @r_ir_rx_parents, ptr @.compoundliteral.15, ptr @.str.16, ptr @.compoundliteral.17, ptr @.str.18, ptr @r_ahb_hw, ptr @.compoundliteral.19, ptr @.str.20, ptr @.compoundliteral.21, ptr @sun20i_d1_r_hw_clks], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun20i_d1_r_ccu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun20i_d1_r_ccu_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun20i_d1_r_ccu_desc to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun20i_d1_r_ccu_clks to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun20i_d1_r_ccu_resets to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r_ahb_clk to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r_apb0_clk to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_r_timer_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_r_twd_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_r_ppu_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r_ir_rx_clk to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_r_ir_rx_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_r_rtc_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_r_cpucfg_clk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r_ahb_apb0_parents to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r_apb0_hw to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r_ir_rx_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r_ahb_hw to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun20i_d1_r_hw_clks to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun20i_d1_r_ccu_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun20i_d1_r_ccu_driver, ptr noundef null) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun20i_d1_r_ccu_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun20i_d1_r_ccu_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun20i_d1_r_ccu_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #3
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call3 = tail call i32 @devm_sunxi_ccu_probe(ptr noundef %dev, ptr noundef %call, ptr noundef nonnull @sun20i_d1_r_ccu_desc) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_sunxi_ccu_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !31, !32, !34, !35, !37, !39, !40, !42, !43, !45, !46, !48, !50, !51, !53, !54, !56, !58, !59, !61, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__initcall__kmod_sun20i_d1_r_ccu__170_137_sun20i_d1_r_ccu_driver_init6, !1, !"__initcall__kmod_sun20i_d1_r_ccu__170_137_sun20i_d1_r_ccu_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/sunxi-ng/ccu-sun20i-d1-r.c", i32 137, i32 1}
!2 = !{ptr @__exitcall_sun20i_d1_r_ccu_driver_exit, !1, !"__exitcall_sun20i_d1_r_ccu_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_import_ns171, !4, !"__UNIQUE_ID_import_ns171", i1 false, i1 false}
!4 = !{!"../drivers/clk/sunxi-ng/ccu-sun20i-d1-r.c", i32 139, i32 1}
!5 = !{ptr @__UNIQUE_ID_file172, !6, !"__UNIQUE_ID_file172", i1 false, i1 false}
!6 = !{!"../drivers/clk/sunxi-ng/ccu-sun20i-d1-r.c", i32 140, i32 1}
!7 = !{ptr @__UNIQUE_ID_license173, !6, !"__UNIQUE_ID_license173", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/sunxi-ng/ccu-sun20i-d1-r.c", i32 132, i32 13}
!10 = !{ptr @sun20i_d1_r_ccu_driver, !11, !"sun20i_d1_r_ccu_driver", i1 false, i1 false}
!11 = !{!"../drivers/clk/sunxi-ng/ccu-sun20i-d1-r.c", i32 129, i32 31}
!12 = !{ptr @sun20i_d1_r_ccu_desc, !13, !"sun20i_d1_r_ccu_desc", i1 false, i1 false}
!13 = !{!"../drivers/clk/sunxi-ng/ccu-sun20i-d1-r.c", i32 103, i32 36}
!14 = !{ptr @sun20i_d1_r_ccu_clks, !15, !"sun20i_d1_r_ccu_clks", i1 false, i1 false}
!15 = !{!"../drivers/clk/sunxi-ng/ccu-sun20i-d1-r.c", i32 67, i32 27}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/sunxi-ng/ccu-sun20i-d1-r.c", i32 25, i32 8}
!18 = !{ptr @r_ahb_clk, !17, !"r_ahb_clk", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/sunxi-ng/ccu-sun20i-d1-r.c", i32 20, i32 15}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/sunxi-ng/ccu-sun20i-d1-r.c", i32 21, i32 15}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/sunxi-ng/ccu-sun20i-d1-r.c", i32 22, i32 15}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/sunxi-ng/ccu-sun20i-d1-r.c", i32 23, i32 15}
!27 = !{ptr @r_ahb_apb0_parents, !28, !"r_ahb_apb0_parents", i1 false, i1 false}
!28 = !{!"../drivers/clk/sunxi-ng/ccu-sun20i-d1-r.c", i32 19, i32 37}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/sunxi-ng/ccu-sun20i-d1-r.c", i32 33, i32 8}
!31 = !{ptr @r_apb0_clk, !30, !"r_apb0_clk", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/sunxi-ng/ccu-sun20i-d1-r.c", i32 41, i32 8}
!34 = !{ptr @bus_r_timer_clk, !33, !"bus_r_timer_clk", i1 false, i1 false}
!35 = !{ptr @r_apb0_hw, !36, !"r_apb0_hw", i1 false, i1 false}
!36 = !{!"../drivers/clk/sunxi-ng/ccu-sun20i-d1-r.c", i32 39, i32 29}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/sunxi-ng/ccu-sun20i-d1-r.c", i32 43, i32 8}
!39 = !{ptr @bus_r_twd_clk, !38, !"bus_r_twd_clk", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/sunxi-ng/ccu-sun20i-d1-r.c", i32 45, i32 8}
!42 = !{ptr @bus_r_ppu_clk, !41, !"bus_r_ppu_clk", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clk/sunxi-ng/ccu-sun20i-d1-r.c", i32 52, i32 8}
!45 = !{ptr @r_ir_rx_clk, !44, !"r_ir_rx_clk", i1 false, i1 false}
!46 = !{ptr @r_ir_rx_parents, !47, !"r_ir_rx_parents", i1 false, i1 false}
!47 = !{!"../drivers/clk/sunxi-ng/ccu-sun20i-d1-r.c", i32 48, i32 37}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/sunxi-ng/ccu-sun20i-d1-r.c", i32 60, i32 8}
!50 = !{ptr @bus_r_ir_rx_clk, !49, !"bus_r_ir_rx_clk", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/sunxi-ng/ccu-sun20i-d1-r.c", i32 62, i32 8}
!53 = !{ptr @bus_r_rtc_clk, !52, !"bus_r_rtc_clk", i1 false, i1 false}
!54 = !{ptr @r_ahb_hw, !55, !"r_ahb_hw", i1 false, i1 false}
!55 = !{!"../drivers/clk/sunxi-ng/ccu-sun20i-d1-r.c", i32 31, i32 29}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/sunxi-ng/ccu-sun20i-d1-r.c", i32 64, i32 8}
!58 = !{ptr @bus_r_cpucfg_clk, !57, !"bus_r_cpucfg_clk", i1 false, i1 false}
!59 = !{ptr @sun20i_d1_r_hw_clks, !60, !"sun20i_d1_r_hw_clks", i1 false, i1 false}
!60 = !{!"../drivers/clk/sunxi-ng/ccu-sun20i-d1-r.c", i32 79, i32 35}
!61 = !{ptr @sun20i_d1_r_ccu_resets, !62, !"sun20i_d1_r_ccu_resets", i1 false, i1 false}
!62 = !{!"../drivers/clk/sunxi-ng/ccu-sun20i-d1-r.c", i32 94, i32 29}
!63 = !{ptr @sun20i_d1_r_ccu_ids, !64, !"sun20i_d1_r_ccu_ids", i1 false, i1 false}
!64 = !{!"../drivers/clk/sunxi-ng/ccu-sun20i-d1-r.c", i32 124, i32 34}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
